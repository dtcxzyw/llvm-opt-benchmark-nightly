inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0_@pcf_load_font:bb.a
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.PCF_TableRec_, align 8      ; 5 uses
  %i.e = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 6 uses
end_hunk_0
begin_hunk_1_@pcf_load_font:bb.a
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i64 %i.jj, ptr %i.lb, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.lc = call fastcc i32 @pcf_get_encodings(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  store i32 %i.lc, ptr %i.e, align 4, !tbaa !3
  %.not175 = icmp eq i32 %i.lc, 0
end_hunk_1
begin_hunk_2_@pcf_load_font:bb.a
  br i1 %.not171242, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ld = call fastcc i32 @pcf_get_accel(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 256)
  %.not176 = icmp eq i32 %i.ld, 0
  br i1 %.not176, label %bb.cn, label %.thread266

end_hunk_2
