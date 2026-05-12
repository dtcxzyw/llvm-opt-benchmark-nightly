inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@T42_Face_Init:bb.a
  %5 = alloca %struct.T1_TokenRec_, align 8       ; 4 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %6 = alloca %struct.T42_Loader_, align 8        ; 59 uses
  %7 = alloca %struct.FT_Open_Args_, align 8      ; 11 uses
  %8 = alloca %struct.FT_CharMapRec_, align 8     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@T42_Face_Init:bb.a
  br i1 %.not135, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %9 = load i32, ptr %7, align 8, !tbaa !160
  %10 = or i32 %9, 16
  store i32 %10, ptr %7, align 8, !tbaa !160
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %3, ptr %i.iv, align 8, !tbaa !168
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 56
end_hunk_1
