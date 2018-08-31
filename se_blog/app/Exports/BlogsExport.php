<?php

namespace App\Exports;

use App\Blog;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class BlogsExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Blog::all();
    }

    /**
     * @return array
     */
    public function headings(): array
    {
        // TODO: Implement headings() method.
        return [
            'ID',
            'Title',
            'Body',
            'Type',
            'User Id',
            'Date Created',
            'Date Modified',
            'File Name',
            'Mime',
            'Original File Name'

        ];
    }
}
