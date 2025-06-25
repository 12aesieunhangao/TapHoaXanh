import { Module } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      useFactory: (configService: ConfigService) => ({
        type: 'mysql',
        host: configService.getOrThrow('MYSQL_HOST'),
        port: configService.getOrThrow('MYSQL_PORT'),
        database: configService.getOrThrow('MYSQL_DATABASE'),
        username: configService.getOrThrow('MYSQL_USERNAME'),
        password: configService.getOrThrow('MYSQL_PASSWORD'),
        autoLoadEntities: true,
        synchronize: configService.get('MYSQL_SYNCHRONIZE') === 'true',
        migrationsRun: false,
        logging: false,
        timezone: '+07:00',
        // --------------- get datetime string default -------------------
        supportBigNumbers: true,
        dateStrings: true,
        // --------------- get datetime string default -------------------
        retryAttempts: 10,
        retryDelay: 3000,
      }),
      inject: [ConfigService],
    }),
  ],
})
export class DatabaseModule {}
