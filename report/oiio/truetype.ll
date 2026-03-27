begin_hunk_0
; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_set_mm_blend(ptr noundef initializes((1209, 1210)) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i8 noundef zeroext range(i8 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.GX_GVar_Head_, align 8      ; 11 uses
  %i.c = alloca i32, align 4                      ; 12 uses
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !473
  %i.aa = call i32 %i.z(ptr noundef nonnull %0, i64 noundef 1735811442, ptr noundef %i.v, ptr noundef nonnull %i.b) #24 ; 3 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.g, label %ft_var_load_gvar.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call i64 @FT_Stream_Pos(ptr noundef nonnull %i.v) #24 ; 3 uses
  %i.ac = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %i.v, ptr noundef nonnull @ft_var_load_gvar.gvar_fields, ptr noundef nonnull %4) #24 ; 3 uses
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !3
  %.not91.i = icmp eq i32 %i.ac, 0
  br i1 %.not91.i, label %bb.h, label %ft_var_load_gvar.exit

end_hunk_1
