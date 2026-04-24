inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@fft:bb.a

.lr.ph130:                                        ; preds = %._crit_edge128
  %i.gi = uitofp nneg i32 %.0100 to double        ; 2 uses
  %wide.trip.count161 = zext nneg i32 %.0100 to i64
  %min.iters.check180 = icmp samesign ult i32 %.0100, 2
  br i1 %min.iters.check180, label %scalar.ph179, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph130
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gi, i64 0
end_hunk_0
begin_hunk_1_@fft:bb.a
  %i.gl = icmp eq i64 %index.next187, %wide.trip.count161
  br i1 %i.gl, label %.loopexit, label %vector.body184, !llvm.loop !37

scalar.ph179:                                     ; preds = %.lr.ph130
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !35
  %4 = insertelement <2 x double> poison, double %i.gi, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fdiv <2 x double> %3, %5
  store <2 x double> %i.gm, ptr %1, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body184, %scalar.ph179, %._crit_edge128, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %._crit_edge128 ], [ 0, %scalar.ph179 ], [ 0, %vector.body184 ]
end_hunk_1
begin_hunk_2_@llvm.assume
!35 = !{!32, !32, i64 0}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18, !22, !23}
end_hunk_2
