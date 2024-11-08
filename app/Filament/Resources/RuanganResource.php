<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RuanganResource\Pages;
use App\Filament\Resources\RuanganResource\RelationManagers;
use App\Models\Ruangan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RuanganResource extends Resource
{
    protected static ?string $model = Ruangan::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-office-2';

    protected static ?string $navigationGroup = 'Admin';

    protected static ?int $navigationSort = 4;

    protected static ?string $navigationLabel = 'Ruangan';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('Nama_Ruangan')->required(),
                Forms\Components\TextInput::make('Kode_Ruangan')->required(),
                Forms\Components\Select::make('Lokasi')
                ->options([
                    'Kampus 1' => 'Kampus 1',
                    'Kampus 2' => 'Kampus 2',
                ])->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('Nama_Ruangan')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('Kode_Ruangan')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('Lokasi')->searchable()->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('Lokasi')
                ->options([
                    'kampus 1' => 'Kampus 1',
                    'kampus 2' => 'Kampus 2',
                ]),
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
            'index' => Pages\ListRuangans::route('/'),
            'create' => Pages\CreateRuangan::route('/create'),
            'edit' => Pages\EditRuangan::route('/{record}/edit'),
        ];
    }
}
