import { Module } from '@nestjs/common';
import { UsersController } from './users.controller';
import { Users } from './entities/users.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UsersRepositoryProvider, UsersServiceProvider } from './users.provider';

@Module({
  imports: [TypeOrmModule.forFeature([Users])],
  controllers: [UsersController],
  providers: [UsersRepositoryProvider, UsersServiceProvider],
  exports: [UsersRepositoryProvider],
})
export class UsersModule {}
