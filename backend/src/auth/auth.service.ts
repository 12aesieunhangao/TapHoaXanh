import { Injectable, UnauthorizedException, NotFoundException, Inject } from '@nestjs/common';
import * as bcrypt from 'bcrypt';
import { RegisterAuthDto } from './dto/register.dto';
import { IUsersRepository } from 'src/users/interfaces/iusers-repository.interface';
import * as nodemailer from 'nodemailer';
@Injectable()
export class AuthService {
  constructor(@Inject(IUsersRepository) private readonly userRepository: IUsersRepository) {}

  async getUserById(id: number) {
    const user = await this.userRepository.findById(id);
    if (!user) throw new NotFoundException('User not found');
    return user;
  }
  async register(registerDto: RegisterAuthDto) {
    const existUser = await this.userRepository.findByEmail(registerDto.email);
    if (existUser) throw new UnauthorizedException('Email đã tồn tại');
    const hashedPassword = await bcrypt.hash(registerDto.password, 10);
    const user = await this.userRepository.createUser({
      ...registerDto,
      password: hashedPassword,
    });
    return user;
  }
  async login(email: string, password: string) {
    const user = await this.userRepository.findByEmail(email);
    if (!user) throw new UnauthorizedException('Email không tồn tại');
    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) throw new UnauthorizedException('Sai mật khẩu');
    const { password: _, ...userWithoutPassword } = user;
    return userWithoutPassword;
  }
  async forgotPassword(email: string) {
    const user = await this.userRepository.findByEmail(email);
    if (!user) throw new NotFoundException('Email không tồn tại!');
    const newPass = Math.random().toString(36).slice(-8);
    const hashedPassword = await bcrypt.hash(newPass, 10);
    await this.userRepository.updatePassword(email, hashedPassword);

    // Gửi email mật khẩu mới
    const transporter = nodemailer.createTransport({
      service: 'gmail',
      auth: {
        user: 'phongndps37996@gmail.com',
        pass: 'idff zvtr tggn ebcy',
      },
    });

    await transporter.sendMail({
      from: '"TapHoaXanh" <phongndps37996@gmail.com>',
      to: email,
      subject: 'Đặt lại mất khẩu tài khoản tạp hóa xanh',
      text: `Mật khẩu mới của bạn là: ${newPass}`,
    });

    return { message: 'Tạp hóa xanh đã gữi mật khẩu mới qua mail của bạn.' };
  }
}
