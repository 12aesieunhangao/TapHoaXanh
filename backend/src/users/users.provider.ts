import { Provider } from '@nestjs/common';
import { IUsersRepository } from './interfaces/iusers-repository.interface';
import { UsersRepository } from './implements/users.repository';
import { IUsersService } from './interfaces/iusers-service.interface';
import { UsersService } from './implements/users.service';

export const UsersRepositoryProvider: Provider = {
  provide: IUsersRepository,
  useClass: UsersRepository,
};

export const UsersServiceProvider: Provider = {
  provide: IUsersService,
  useClass: UsersService,
};
