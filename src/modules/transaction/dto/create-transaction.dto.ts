import { TransactionType } from '@prisma/client';
import {
  IsEnum,
  IsNumber,
  IsString,
  MinLength,
  IsOptional,
} from 'class-validator';
import { Type } from 'class-transformer';

export class CreateTransactionDto {
  @IsString({ message: 'Title must be a string' })
  @MinLength(5, { message: 'Title must be at least 5 characters long' })
  title: string;
  
  @IsString({ message: 'Category must be a string' })
  category: string;

  @IsOptional()
  @Type(() => Date)
  data?: Date;

  @IsNumber({}, { message: 'Price must be a number' })
  price: number;

  @IsEnum(TransactionType)
  type: TransactionType;
}
