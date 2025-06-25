import { Users } from '../entities/users.entity';
import { RegisterAuthDto } from 'src/auth/dto/register.dto';

export abstract class IUsersService {
  abstract findByEmail(email: string): Promise<Users | null>;
  abstract createUser(registerDto: RegisterAuthDto): Promise<Users | null>;
  abstract updatePassword(email: string, newPassword: string): Promise<boolean>;
  abstract findById(id: number): Promise<Users | null>;
}
