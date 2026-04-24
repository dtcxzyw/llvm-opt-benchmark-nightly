inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@fft:bb.a

.lr.ph130:                                        ; preds = %._crit_edge128
  %i.gi = uitofp nneg i32 %.0100 to double        ; 2 uses
  %wide.trip.count161 = zext nneg i32 %.0100 to i64 ; 2 uses
  %min.iters.check180 = icmp samesign ult i32 %.0100, 2
  br i1 %min.iters.check180, label %scalar.ph179.preheader, label %vector.ph181

scalar.ph179.preheader:                           ; preds = %.lr.ph130
  %3 = insertelement <2 x double> poison, double %i.gi, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  br label %scalar.ph179

vector.ph181:                                     ; preds = %.lr.ph130
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gi, i64 0
end_hunk_0
begin_hunk_1_@fft:bb.a
  %i.gl = icmp eq i64 %index.next187, %wide.trip.count161
  br i1 %i.gl, label %.loopexit, label %vector.body184, !llvm.loop !37

scalar.ph179:                                     ; preds = %scalar.ph179.preheader, %scalar.ph179
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %scalar.ph179 ], [ 0, %scalar.ph179.preheader ] ; 2 uses
  %5 = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv158 ; 2 uses
  %6 = load <2 x double>, ptr %5, align 8, !tbaa !35
  %i.gm = fdiv <2 x double> %6, %4
  store <2 x double> %i.gm, ptr %5, align 8, !tbaa !35
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.loopexit, label %scalar.ph179, !llvm.loop !38

.loopexit:                                        ; preds = %vector.body184, %scalar.ph179, %._crit_edge128, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %._crit_edge128 ], [ 0, %scalar.ph179 ], [ 0, %vector.body184 ]
end_hunk_1
begin_hunk_2_@llvm.assume
!35 = !{!32, !32, i64 0}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18, !22, !23}
!38 = distinct !{!38, !18, !23, !22}
end_hunk_2
