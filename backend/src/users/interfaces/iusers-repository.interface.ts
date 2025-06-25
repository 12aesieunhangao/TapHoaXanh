import { Users } from '../entities/users.entity';

export abstract class IUsersRepository {
  abstract findById(id: number): Promise<Users | null>;
  abstract findByEmail(email: string): Promise<Users | null>;
  abstract createUser(userData: Partial<Users>): Promise<Users>;
  abstract updatePassword(email: string, newHashedPassword: string): Promise<void>;
}
