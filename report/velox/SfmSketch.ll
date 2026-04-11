inline.NumInlined: 374
inline.NumDeleted: 200
begin_hunk_0_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a
.lr.ph:                                           ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 56
  %7 = fsub double 1.000000e+00, %i.aa
  %8 = fsub double 1.000000e+00, %i.ad
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.t

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !31
  %i.dx = and i64 %indvars.iv60, 63
  %i.dy = shl nuw i64 1, %i.dx                    ; 2 uses
  %9 = and i64 %i.dw, %i.dy
  %.not52 = icmp eq i64 %9, 0
  %10 = select i1 %.not52, double 0.000000e+00, double 1.000000e+00
  %11 = load ptr, ptr %i.ds, align 8, !tbaa !47
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.du
  %13 = load i64, ptr %12, align 8, !tbaa !31
  %14 = and i64 %13, %i.dy
  %.not53 = icmp eq i64 %14, 0
  %15 = select i1 %.not53, double 0.000000e+00, double 1.000000e+00
  %16 = fsub double %7, %10
  %i.dz = fmul double %i.cw, %16
  %17 = fsub double %8, %15
  %i.ea = fmul double %i.dz, %17
  %i.eb = fsub double %i.cr, %i.ea
  %i.ec = fmul double %i.cw, %i.eb
  %i.ed = fadd double %i.cp, %i.ec                ; 2 uses
end_hunk_1
