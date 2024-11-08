<?php

namespace App\Filament\Resources\HariResource\Pages;

use App\Filament\Resources\HariResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateHari extends CreateRecord
{
    protected static string $resource = HariResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Hari registered')
            ->body('The hari has been created successfully.');
    }
}
