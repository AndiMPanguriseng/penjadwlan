<?php

namespace App\Filament\Resources;

use App\Filament\Resources\HariResource\Pages;
use App\Filament\Resources\HariResource\RelationManagers;
use App\Models\Hari;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class HariResource extends Resource
{
    protected static ?string $model = Hari::class;

    protected static ?string $navigationIcon = 'heroicon-o-calendar';

    protected static ?string $navigationGroup = 'Admin';

    protected static ?int $navigationSort = 5;

    protected static ?string $navigationLabel = 'Hari';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('Nama_Hari')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('Nama_Hari')->searchable()->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListHaris::route('/'),
            'create' => Pages\CreateHari::route('/create'),
            'edit' => Pages\EditHari::route('/{record}/edit'),
        ];
    }
}
