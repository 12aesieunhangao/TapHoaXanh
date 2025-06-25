import { Injectable } from '@nestjs/common';
import { Repository } from 'typeorm';
import { Users } from '../entities/users.entity';
import { IUsersRepository } from '../interfaces/iusers-repository.interface';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class UsersRepository implements IUsersRepository {
  constructor(
    @InjectRepository(Users)
    private usersRepository: Repository<Users>,
  ) {}

  async findById(id: number): Promise<Users | null> {
    return this.usersRepository.findOneBy({ id });
  }
  async findByEmail(email: string): Promise<Users | null> {
    return this.usersRepository.findOne({ where: { email } });
  }

  async createUser(userData: Partial<Users>): Promise<Users> {
    const user = this.usersRepository.create(userData);
    return this.usersRepository.save(user);
  }

  async updatePassword(email: string, newHashedPassword: string): Promise<void> {
    await this.usersRepository.update({ email }, { password: newHashedPassword });
  }
}
