<?php

namespace App\Filament\Resources\PengampuTMJResource\Pages;

use App\Filament\Resources\PengampuTMJResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPengampuTMJS extends ListRecords
{
    protected static string $resource = PengampuTMJResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTitle(): string {
        return "Pengampu TMJ";
    }
}
