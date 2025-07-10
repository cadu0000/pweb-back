import { IsOptional, IsPositive, Min } from 'class-validator';
import { Type } from 'class-transformer';

export class PaginationDto {
  @IsOptional()
  @Type(() => Number)
  @IsPositive()
  @Min(1)
  take?: number = 10;

  @IsOptional()
  @Type(() => Number)
  @Min(0)
  skip?: number = 0;
} 