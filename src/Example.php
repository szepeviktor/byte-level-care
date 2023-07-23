<?php

/**
 * Copyright (c) 2017-2023 Andreas Moeller
 *
 * For the full copyright and license information, please view
 * the LICENSE.md file that was distributed with this source code.
 *
 * @see https://github.com/ergebnis/php-package-template
 */

declare(strict_types=1);

namespace Project;

final class Example
{
    private function __construct(private readonly string $value)
    {
    }

    public static function fromString(string $value): self
    {
        return new self($value);
    }

    public function toString(): string
    {
        return $this->value;
    }
}
