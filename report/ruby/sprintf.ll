inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@ruby_vsprintf0
define internal fastcc void @ruby_vsprintf0(i64 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rb_printf_buffer_extra, align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %5 = trunc i64 %i.e to i32
  %6 = and i32 %5, 3145728                        ; 2 uses
  store i32 %6, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
