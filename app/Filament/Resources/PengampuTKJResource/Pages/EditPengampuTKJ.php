<?php

namespace App\Filament\Resources\PengampuTKJResource\Pages;

use App\Filament\Resources\PengampuTKJResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPengampuTKJ extends EditRecord
{
    protected static string $resource = PengampuTKJResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
