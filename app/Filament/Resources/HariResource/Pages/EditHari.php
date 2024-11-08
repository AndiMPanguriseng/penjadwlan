<?php

namespace App\Filament\Resources\HariResource\Pages;

use App\Filament\Resources\HariResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditHari extends EditRecord
{
    protected static string $resource = HariResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Hari updated')
            ->body('The hari has been updated successfully.');
    }
}
