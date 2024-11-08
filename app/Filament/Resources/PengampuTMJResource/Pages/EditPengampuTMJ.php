<?php

namespace App\Filament\Resources\PengampuTMJResource\Pages;

use App\Filament\Resources\PengampuTMJResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPengampuTMJ extends EditRecord
{
    protected static string $resource = PengampuTMJResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
