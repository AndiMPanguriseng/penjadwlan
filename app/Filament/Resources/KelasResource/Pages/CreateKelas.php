<?php

namespace App\Filament\Resources\KelasResource\Pages;

use App\Filament\Resources\KelasResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateKelas extends CreateRecord
{
    protected static string $resource = KelasResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Kelas registered')
            ->body('The Kelas has been created successfully.');
    }
}
