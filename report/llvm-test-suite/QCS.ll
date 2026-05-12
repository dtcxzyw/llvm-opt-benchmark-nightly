inline.NumInlined: 264
inline.NumDeleted: 54
begin_hunk_0_@_ZN3QCS10setVelDiffEii:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %3 = add nsw i64 %n.vec, %i.am
  %i.aq = load <2 x double>, ptr %i.ak, align 8
  %broadcast.splat88 = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = load double, ptr %i.al, align 8, !tbaa !23, !alias.scope !122
  %i.ar = fmul double %4, 2.000000e+00
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_0
begin_hunk_1_@_ZN3QCS10setVelDiffEii:bb.a
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph69, %middle.block
  %indvars.iv71.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph69 ], [ %3, %middle.block ] ; 7 uses
  %i.be = sub nsw i64 %wide.trip.count74, %indvars.iv71.ph
  %xtraiter = and i64 %i.be, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
