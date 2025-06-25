import { IsEmail } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';

export class ForgotPasswordAuthDto {
  @ApiProperty({ example: 'user@gmail.com' })
  @IsEmail()
  email: string;
}
