inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_gzip_check_header(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = tail call i32 @FT_Stream_Seek(ptr noundef nonnull %0, i64 noundef 0) #5 ; 3 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @FT_Stream_Read(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 4) #5 ; 3 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !3
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.c, label %.thread

end_hunk_0
