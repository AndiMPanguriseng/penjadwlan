<?php

namespace App\Filament\Resources;

use App\Filament\Resources\JamResource\Pages;
use App\Filament\Resources\JamResource\RelationManagers;
use App\Models\Jam;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class JamResource extends Resource
{
    protected static ?string $model = Jam::class;

    protected static ?string $navigationIcon = 'heroicon-o-clock';

    protected static ?string $navigationGroup = 'Admin';


    protected static ?int $navigationSort = 6;

    protected static ?string $navigationLabel = 'Jam';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('Jam_Ke')->required(),
                Forms\Components\TextInput::make('Waktu')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('Jam_Ke')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('Waktu')->searchable()->sortable(),
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
            'index' => Pages\ListJams::route('/'),
            'create' => Pages\CreateJam::route('/create'),
            'edit' => Pages\EditJam::route('/{record}/edit'),
        ];
    }
}
