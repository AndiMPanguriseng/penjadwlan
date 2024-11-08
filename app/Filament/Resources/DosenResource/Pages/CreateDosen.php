<?php

namespace App\Filament\Resources\DosenResource\Pages;

use App\Filament\Resources\DosenResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateDosen extends CreateRecord
{
    protected static string $resource = DosenResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Dosen registered')
            ->body('The Dosen has been created successfully.');
    }
}
