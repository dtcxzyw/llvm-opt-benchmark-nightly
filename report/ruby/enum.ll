inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0_@partition_i:bb.a
enum_yield.exit:                                  ; preds = %bb.b, %bb.c, %.thread
  %.0.i10 = phi i64 [ %i.b, %bb.b ], [ %i.e, %bb.c ], [ %.0.i1113, %.thread ]
  %.0.i8 = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %.thread ]
  %5 = inttoptr i64 %1 to ptr
  %i.h = and i64 %.0.i8, -5
  %.not = icmp eq i64 %i.h, 0
  %.0.in.v = select i1 %.not, i64 24, i64 16
  %.0.in = getelementptr i8, ptr %5, i64 %.0.in.v
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !11
  %i.i = tail call i64 @rb_ary_push(i64 noundef %.0, i64 noundef %.0.i10) #14 ; 0 uses
end_hunk_0
