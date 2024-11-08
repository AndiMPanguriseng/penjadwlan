<?php

namespace App\Filament\Resources\MatkulResource\Pages;

use App\Filament\Resources\MatkulResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;


class CreateMatkul extends CreateRecord
{
    protected static string $resource = MatkulResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Mata kuliah registered')
            ->body('The mata kuliah has been created successfully.');
    }
}
