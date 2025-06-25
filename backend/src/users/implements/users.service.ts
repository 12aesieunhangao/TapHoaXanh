import { Injectable, NotFoundException, ConflictException } from '@nestjs/common';
import * as bcrypt from 'bcrypt';
import { Users } from '../entities/users.entity';
import { RegisterAuthDto } from 'src/auth/dto/register.dto';
import { IUsersService } from '../interfaces/iusers-service.interface';
import { IUsersRepository } from '../interfaces/iusers-repository.interface';

@Injectable()
export class UsersService implements IUsersService {
  constructor(private readonly _usersRepository: IUsersRepository) {}

  async createUser(registerDto: RegisterAuthDto): Promise<Users> {
    const existing = await this._usersRepository.findByEmail(registerDto.email);
    if (existing) throw new ConflictException('Email đã tồn tại');
    const hashedPassword = await bcrypt.hash(registerDto.password, 10);
    return this._usersRepository.createUser({ ...registerDto, password: hashedPassword, role: 'user' });
  }

  async findByEmail(email: string): Promise<Users | null> {
    return await this._usersRepository.findByEmail(email);
  }

  async updatePassword(email: string, newPassword: string): Promise<boolean> {
    const user = await this.findByEmail(email);
    if (!user) throw new NotFoundException('Email không tồn tại');
    const hashedPassword = await bcrypt.hash(newPassword, 10);
    await this._usersRepository.updatePassword(email, hashedPassword);
    return true;
  }

  async findById(id: number): Promise<Users | null> {
    const user = await this._usersRepository.findById(id);
    if (!user) throw new NotFoundException('Người dùng không tồn tại');
    return user;
  }
}
