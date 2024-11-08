<?php

namespace App\Filament\Resources\JamResource\Pages;

use App\Filament\Resources\JamResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateJam extends CreateRecord
{
    protected static string $resource = JamResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Jam registered')
            ->body('The jam has been created successfully.');
    }
}
