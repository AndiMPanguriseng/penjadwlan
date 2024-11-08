<?php

namespace App\Filament\Resources\MatkulResource\Pages;

use App\Filament\Resources\MatkulResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditMatkul extends EditRecord
{
    protected static string $resource = MatkulResource::class;

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
            ->title('Mata kuliah updated')
            ->body('The mata kuliah has been updated successfully.');
    }
}
