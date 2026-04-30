inline.NumInlined: 49
inline.NumDeleted: 18
begin_hunk_0_@vba56_dir_read:bb.a
  %i.d = alloca i16, align 2                      ; 10 uses
  %i.e = alloca i16, align 2                      ; 18 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %1 = alloca %struct.vba56_header, align 1       ; 8 uses
  %i.h = alloca [257 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
end_hunk_0
begin_hunk_1_@vba56_dir_read:bb.a
bb.cq:                                            ; preds = %bb.co
  %i.jk = load i32, ptr %i.g, align 4, !tbaa !4   ; 2 uses
  %i.jl = call i32 @llvm.bswap.i32(i32 %i.jk)
  %.0.i170 = select i1 %.not.i.i, i32 %i.jk, i32 %i.jl ; 3 uses
  store i32 %.0.i170, ptr %i.g, align 4, !tbaa !4
  %i.jm = load ptr, ptr %i.gm, align 8, !tbaa !24
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv
  store i32 %.0.i170, ptr %i.jn, align 4, !tbaa !4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, i32 noundef %.0.i170) #12
  %i.jo = call i64 @lseek(i32 noundef %i.j, i64 noundef 2, i32 noundef 1) #12 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.jp = load i16, ptr %i.c, align 2, !tbaa !14
end_hunk_1
