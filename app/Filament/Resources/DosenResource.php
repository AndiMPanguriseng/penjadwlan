<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DosenResource\Pages;
use App\Filament\Resources\DosenResource\RelationManagers;
use App\Models\Dosen;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DosenResource extends Resource
{
    protected static ?string $model = Dosen::class;

    protected static ?string $navigationIcon = 'heroicon-o-user';

    protected static ?string $navigationGroup = 'Admin';

    protected static ?int $navigationSort = 1;

    protected static ?string $navigationLabel = 'Dosen';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('Nama_Dosen')->required(),
                Forms\Components\TextInput::make('NIP')->required(),
                Forms\Components\Select::make('Prodi')
                ->options([
                    'D4-Teknik Komputer Jaringan' => 'D4-Teknik Komputer Jaringan',
                    'D4-Teknik Multimedia Jaringan' => 'D4-Teknik Multimedia Jaringan',
                ])->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('Nama_Dosen')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('NIP')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('Prodi')->searchable()->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('Prodi')
                ->options([
                    'D4-Teknik Komputer Jaringan' => 'D4-Teknik Komputer Jaringan',
                    'D4-Teknik Multimedia Jaringan' => 'D4-Teknik Multimedia Jaringan',
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
            'index' => Pages\ListDosens::route('/'),
            'create' => Pages\CreateDosen::route('/create'),
            'edit' => Pages\EditDosen::route('/{record}/edit'),
        ];
    }
}
