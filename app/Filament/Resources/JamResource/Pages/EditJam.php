<?php

namespace App\Filament\Resources\JamResource\Pages;

use App\Filament\Resources\JamResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditJam extends EditRecord
{
    protected static string $resource = JamResource::class;

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
            ->title('Jam updated')
            ->body('The jam has been updated successfully.');
    }
}
