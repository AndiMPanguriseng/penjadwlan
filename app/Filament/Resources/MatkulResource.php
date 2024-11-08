<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MatkulResource\Pages;
use App\Filament\Resources\MatkulResource\RelationManagers;
use App\Models\Matkul;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class MatkulResource extends Resource
{
    protected static ?string $model = Matkul::class;

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    protected static ?string $navigationGroup = 'Admin';

    protected static ?int $navigationSort = 2;

    protected static ?string $navigationLabel = 'Mata Kuliah';

    public static function shouldRegisterNavigation(): bool
    {
        return auth()->check() &&  auth()->user()->role === 'admin';
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nama_mata_kuliah')->required(),
                Forms\Components\TextInput::make('kode_mata_kuliah')->required(),
                Forms\Components\TextInput::make('sks')->required(),
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
                Tables\Columns\TextColumn::make('nama_mata_kuliah')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('kode_mata_kuliah')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('sks')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('prodi')->searchable()->sortable(),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('sks')
                    ->options([
                        '2' => '2',
                        '3' => '3',
                    ]),
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
            'index' => Pages\ListMatkuls::route('/'),
            'create' => Pages\CreateMatkul::route('/create'),
            'edit' => Pages\EditMatkul::route('/{record}/edit'),
        ];
    }
}
