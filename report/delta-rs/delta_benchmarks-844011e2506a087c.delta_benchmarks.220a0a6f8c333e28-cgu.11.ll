inline.NumInlined: 4119
inline.NumDeleted: 1444
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
    i8 3, label %bb.b
  ]

common.ret.sink.split:                            ; preds = %bb.a, %common.ret.sink.split.i
  %.sink.i.sink = phi ptr [ %.sink.i, %common.ret.sink.split.i ], [ %0, %bb.a ]
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs8Hz2sPNgbCO_10datafusion10datasource11file_format7options18ParquetReadOptionsECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %.sink.i.sink)
  br label %common.ret

end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.d = load i8, ptr %i.c, align 8, !range !1734, !noundef !9
  switch i8 %i.d, label %common.ret [
    i8 0, label %common.ret.sink.split.i
    i8 3, label %bb.c
  ]

common.ret.sink.split.i:                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.b
  %.pn = phi i64 [ 440, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ 216, %bb.b ]
  %.sink.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  br label %common.ret.sink.split

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %.val.i = load ptr, ptr %i.e, align 8           ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context7parquetNtBO_14SessionContext12read_parquetRNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2xb0BKvnu80_21datafusion_datasource3url15ListingTableUrlEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 850
  store i8 0, ptr %i.au, align 2
  br label %common.ret.sink.split.i
}

; Function Attrs: nonlazybind uwtable
end_hunk_2
