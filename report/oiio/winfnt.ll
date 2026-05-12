inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@winfnt_get_service:bb.a
; Function Attrs: nounwind uwtable
define internal i32 @FNT_Face_Init(ptr noundef %0, ptr noundef initializes((248, 256)) %1, i32 noundef %2, i32 %3, ptr readnone captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 40 uses
  %5 = alloca %struct.WinMZ_HeaderRec_, align 2   ; 5 uses
  %6 = alloca %struct.WinNE_HeaderRec_, align 2   ; 11 uses
  %7 = alloca %struct.WinPE32_HeaderRec_, align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@FNT_Face_Init:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 12 uses
  store ptr null, ptr %i.j, align 8, !tbaa !28
  %i.k = zext nneg i32 %i.g to i64                ; 5 uses
  %i.l = tail call i32 @FT_Stream_Seek(ptr noundef %i.i, i64 noundef 0) #10 ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

end_hunk_1
