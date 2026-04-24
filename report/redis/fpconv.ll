inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@fpconv_g_fmt
define dso_local noundef i32 @fpconv_g_fmt(ptr noundef writeonly captures(none) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = add i32 %2, -1
  %or.cond.i = icmp ult i32 %i.c, 14
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %.0.i.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %.0.i.sroa.gep.a = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %.0.i.sroa.gep12.a = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@fpconv_g_fmt:bb.a
  br i1 %.not.i, label %set_number_format.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 49, ptr %.0.i.sroa.gep12, align 1, !tbaa !8
  br label %set_number_format.exit

set_number_format.exit:                           ; preds = %bb.c, %bb.d
  %.0.i.sroa.phi = phi ptr [ %.0.i.sroa.gep, %bb.d ], [ %.0.i.sroa.gep12, %bb.c ]
  %.sroa.phi = phi ptr [ %.0.i.sroa.gep.a, %bb.d ], [ %.0.i.sroa.gep, %bb.c ]
  %.0.i.sroa.phi.a = phi ptr [ %.0.i.sroa.gep12.a, %bb.d ], [ %.0.i.sroa.gep.a, %bb.c ]
  %.urem.i = add nuw nsw i32 %2, 246
  %i.e = select i1 %.not.i, i32 %2, i32 %.urem.i
  %i.f = trunc i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  store i8 %i.g, ptr %.0.i.sroa.phi, align 1, !tbaa !8
  store i8 103, ptr %.sroa.phi, align 1, !tbaa !8
  store i8 0, ptr %.0.i.sroa.phi.a, align 1, !tbaa !8
  %i.h = load i8, ptr @locale_decimal_point, align 1, !tbaa !8
  %i.i = icmp eq i8 %i.h, 46
  br i1 %i.i, label %bb.e, label %bb.f
end_hunk_1
