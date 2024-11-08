<?php

namespace App\Filament\Resources;

use App\Filament\Resources\KelasResource\Pages;
use App\Filament\Resources\KelasResource\RelationManagers;
use App\Models\Kelas;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KelasResource extends Resource
{
    protected static ?string $model = Kelas::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-group';

    protected static ?string $navigationGroup = 'Admin';


    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nama_kelas')->required(),
                Forms\Components\Select::make('prodi')
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
                Tables\Columns\TextColumn::make('nama_kelas')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('prodi')->searchable()->sortable(),
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
            'index' => Pages\ListKelas::route('/'),
            'create' => Pages\CreateKelas::route('/create'),
            'edit' => Pages\EditKelas::route('/{record}/edit'),
        ];
    }
}
