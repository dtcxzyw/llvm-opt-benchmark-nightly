inline.NumInlined: 158
inline.NumDeleted: 36
begin_hunk_0_@mz_zip_writer_add_mem_ex:bb.a
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca [30 x i8], align 16               ; 14 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.mz_zip_writer_add_state, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
end_hunk_0
begin_hunk_1_@mz_zip_writer_add_mem_ex:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cs = add i64 %.0.i186, %i.y                  ; 2 uses
  %i.ct = add i64 %i.cb, %i.y                     ; 2 uses
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !266
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !211
  %i.cw = call i64 %i.cu(ptr noundef %i.cv, i64 noundef %i.ct, ptr noundef nonnull %1, i64 noundef %i.ah) #33
end_hunk_1
begin_hunk_2_@mz_zip_writer_add_file:bb.a
  %7 = alloca %struct.stat, align 8               ; 5 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca [30 x i8], align 16               ; 14 uses
  %8 = alloca %struct.mz_zip_writer_add_state, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
end_hunk_2
begin_hunk_3_@mz_zip_writer_add_file:bb.a
bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.bn = add i64 %i.az, %i.q                     ; 2 uses
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !266
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !211
  %i.bq = call i64 %i.bo(ptr noundef %i.bp, i64 noundef %i.bn, ptr noundef nonnull %1, i64 noundef %i.w) #33
end_hunk_3
