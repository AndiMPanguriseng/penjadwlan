<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PengampuTKJResource\Pages;
use App\Filament\Resources\PengampuTKJResource\RelationManagers;
use App\Models\PengampuTKJ;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PengampuTKJResource extends Resource
{
    protected static ?string $model = PengampuTKJ::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Pengampu TKJ';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('matkul_id')->label('Mata Kuliah')
                ->relationship('matkul', 'nama_mata_kuliah', fn (Builder $query) =>
                    $query->where('Prodi', 'D4-Teknik Komputer Jaringan') // Ganti sesuai prodi yang diinginkan
                )
                ->required(),
                Forms\Components\Select::make('dosen_pj')->label('Dosen PJ')
                ->relationship('dosenPJ', 'Nama_Dosen', fn (Builder $query) =>
                    $query->where('Prodi', 'D4-Teknik Komputer Jaringan') // Ganti sesuai prodi yang diinginkan
                )
                ->required(),
                Forms\Components\Select::make('dosen_anggota')->label('Dosen Anggota')
                ->relationship('dosenAnggota', 'Nama_Dosen', fn (Builder $query) =>
                    $query->where('Prodi', 'D4-Teknik Komputer Jaringan') // Ganti sesuai prodi yang diinginkan
                )
                ->required(),

                Forms\Components\Select::make('kelas_id')->label('Kelas')
                ->relationship('kelas', 'nama_kelas', fn (Builder $query) =>
                    $query->where('Prodi', 'D4-Teknik Komputer Jaringan') // Ganti sesuai prodi yang diinginkan
                )
                ->required(),

                Forms\Components\TextInput::make('jumlah_jam')->label('Jumlah Jam')->required(),
                // ->relationship('dosen', 'Nama_Dosen')
                // ->required()
                // ->query(function (Builder $query) {
                //     $query->where('Prodi', 'D4-Teknik Komputer Jaringan'); // Ganti 'TKJ' dengan nama prodi yang diinginkan
                // }),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('matkul.nama_mata_kuliah')->label('Mata Kuliah')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('dosenPJ.Nama_Dosen')->label('Dosen PJ')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('dosenAnggota.Nama_Dosen')->label('Dosen Anggota')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('kelas.nama_kelas')->label('Kelas')->searchable()->sortable(),
                Tables\Columns\TextColumn::make('jumlah_jam')->label('Jumlah Jam')->searchable()->sortable(),
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
            'index' => Pages\ListPengampuTKJS::route('/'),
            'create' => Pages\CreatePengampuTKJ::route('/create'),
            'edit' => Pages\EditPengampuTKJ::route('/{record}/edit'),
        ];
    }
}
