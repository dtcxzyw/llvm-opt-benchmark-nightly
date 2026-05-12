inline.NumInlined: 142
inline.NumDeleted: 53
begin_hunk_0_@ttymode:bb.a
bb.a:
  %5 = alloca %struct.termios, align 4            ; 6 uses
  %6 = alloca %struct.termios, align 4            ; 6 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %7 = alloca [2 x %struct.termios], align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 -1, ptr %i.a, align 4, !tbaa !6
end_hunk_0
begin_hunk_1_@ttymode:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit66, %bb.a
  %.023 = phi i32 [ 0, %bb.f ], [ %i.i, %.loopexit66 ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.b, %bb.f ], [ -1, %.loopexit66 ], [ -1, %bb.a ] ; 6 uses
  %i.j = call i64 @rb_io_get_write_io(i64 noundef %0) #12
end_hunk_1
begin_hunk_2_@ttymode:bb.a
bb.m:                                             ; preds = %.loopexit, %bb.h, %bb.g
  %.1.ph = phi i32 [ %.023, %bb.g ], [ %.023, %bb.h ], [ %i.s, %.loopexit ] ; 2 uses
  %.sroa.11.0.ph = phi i32 [ -1, %bb.g ], [ %.sroa.0.0, %bb.h ], [ -1, %.loopexit ] ; 2 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !6
  %8 = icmp eq i32 %.pr, 0
  br i1 %8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
end_hunk_2
