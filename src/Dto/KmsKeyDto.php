<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\KmsKeys\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class KmsKeyDto {
    public function __construct(
        public readonly ?int $id,
        public readonly int $providerId,
        public readonly string $externalKeyRef,
        public readonly string $purpose,
        public readonly ?string $algorithm,
        public readonly string $status,
        public readonly \DateTimeImmutable $createdAt
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
