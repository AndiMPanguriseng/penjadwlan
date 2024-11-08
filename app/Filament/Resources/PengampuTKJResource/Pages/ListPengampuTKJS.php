<?php

namespace App\Filament\Resources\PengampuTKJResource\Pages;

use App\Filament\Resources\PengampuTKJResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPengampuTKJS extends ListRecords
{
    protected static string $resource = PengampuTKJResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }

    public function getTitle(): string {
        return "Pengampu TKJ";
    }
}
