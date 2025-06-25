import { IsEmail, IsNotEmpty, MinLength } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';

export class RegisterAuthDto {
  @ApiProperty({ example: 'Nguyen Van A' })
  @IsNotEmpty()
  name: string;

  @ApiProperty({ example: '0123456789' })
  @IsNotEmpty()
  phone: string;

  @ApiProperty({ example: 'user@gmail.com' })
  @IsEmail()
  email: string;

  @ApiProperty({ example: '12345678' })
  @MinLength(8)
  password: string;
}
