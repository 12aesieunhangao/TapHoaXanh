import { Controller, Post, Body, Get } from '@nestjs/common';
import { AuthService } from './auth.service';
import { RegisterAuthDto } from './dto/register.dto';
import { LoginAuthDto } from './dto/login.dto';
import { ForgotPasswordAuthDto } from './dto/forgot-password.dto';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('register')
  async register(@Body() dto: RegisterAuthDto) {
    return this.authService.register(dto);
  }

  @Post('login')
  async login(@Body() dto: LoginAuthDto) {
    return this.authService.login(dto.email, dto.password);
  }

  @Post('forgot-password')
  async forgotPassword(@Body() dto: ForgotPasswordAuthDto) {
    return this.authService.forgotPassword(dto.email);
  }
  @Post('logout')
  logout() {
    return { message: 'Đăng xuất thành công.' };
  }
  @Get('user/:id')
  async getUserById(@Body('id') id: number) {
    return await this.authService.getUserById(id);
  }
}
