inline.NumInlined: 374
inline.NumDeleted: 200
begin_hunk_0_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a
.lr.ph:                                           ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 56
  %7 = insertelement <2 x double> poison, double %i.aa, i64 0
  %8 = insertelement <2 x double> %7, double %i.ad, i64 1
  %9 = fsub <2 x double> splat (double 1.000000e+00), %8
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.t

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !31
  %i.dx = and i64 %indvars.iv60, 63
  %i.dy = shl nuw i64 1, %i.dx                    ; 2 uses
  %10 = load ptr, ptr %i.ds, align 8, !tbaa !47
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.du
  %12 = load i64, ptr %11, align 8, !tbaa !31
  %13 = and i64 %12, %i.dy
  %14 = and i64 %i.dw, %i.dy
  %15 = insertelement <2 x i64> poison, i64 %14, i64 0
  %16 = insertelement <2 x i64> %15, i64 %13, i64 1
  %17 = icmp eq <2 x i64> %16, zeroinitializer
  %18 = select <2 x i1> %17, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)
  %19 = fsub <2 x double> %9, %18                 ; 2 uses
  %20 = extractelement <2 x double> %19, i64 0
  %i.dz = fmul double %i.cw, %20
  %21 = extractelement <2 x double> %19, i64 1
  %i.ea = fmul double %i.dz, %21
  %i.eb = fsub double %i.cr, %i.ea
  %i.ec = fmul double %i.cw, %i.eb
  %i.ed = fadd double %i.cp, %i.ec                ; 2 uses
end_hunk_1
