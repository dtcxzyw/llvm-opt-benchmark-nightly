begin_hunk_0
.preheader:                                       ; preds = %.loopexit
  %i.zg = load i32, ptr %i.i, align 8             ; 3 uses
  %.not729 = icmp eq i32 %i.zg, 0                 ; 2 uses
  br i1 %.not729, label %._crit_edge703, label %.lr.ph702

.lr.ph702:                                        ; preds = %.preheader
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
begin_hunk_1
  br label %bb.da

._crit_edge692:                                   ; preds = %bb.da, %bb.cz
  %.sroa.0471.1.lcssa = phi <2 x float> [ %.sroa.0471.0697, %bb.cz ], [ %i.zw, %bb.da ] ; 2 uses
  %.sroa.12.1.lcssa = phi float [ %.sroa.12.0698, %bb.cz ], [ %i.aaa, %bb.da ] ; 2 uses
  %.sroa.0459.1.lcssa = phi <2 x float> [ %.sroa.0459.0699, %bb.cz ], [ %i.zy, %bb.da ] ; 2 uses
  %.sroa.14.1.lcssa = phi float [ %.sroa.14.0700, %bb.cz ], [ %i.zt, %bb.da ] ; 2 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %._crit_edge703, label %bb.cz, !llvm.loop !59
end_hunk_1
begin_hunk_2
  %exitcond.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge692, label %bb.da, !llvm.loop !60

._crit_edge703:                                   ; preds = %._crit_edge692, %.preheader
  %.sroa.0471.0.lcssa = phi <2 x float> [ splat (float 1.000000e+10), %.preheader ], [ %.sroa.0471.1.lcssa, %._crit_edge692 ] ; 2 uses
  %.sroa.12.0.lcssa = phi float [ -1.000000e+10, %.preheader ], [ %.sroa.12.1.lcssa, %._crit_edge692 ]
  %.sroa.0459.0.lcssa = phi <2 x float> [ splat (float -1.000000e+10), %.preheader ], [ %.sroa.0459.1.lcssa, %._crit_edge692 ]
  %.sroa.14.0.lcssa = phi float [ 1.000000e+10, %.preheader ], [ %.sroa.14.1.lcssa, %._crit_edge692 ] ; 2 uses
  %i.aab = fsub float %.sroa.12.0.lcssa, %.sroa.14.0.lcssa ; 3 uses
  %i.aac = fsub <2 x float> %.sroa.0459.0.lcssa, %.sroa.0471.0.lcssa ; 3 uses
  %i.aad = fmul <2 x float> %i.aac, splat (float 5.000000e-01)
  %i.aae = fmul float %i.aab, 5.000000e-01
  %i.aaf = fadd <2 x float> %.sroa.0471.0.lcssa, %i.aad
  %i.aag = fadd float %.sroa.14.0.lcssa, %i.aae
  br i1 %.not729, label %._crit_edge715, label %.lr.ph714

.lr.ph714:                                        ; preds = %._crit_edge703
end_hunk_2
begin_hunk_3
  %i.abn = icmp samesign ult i64 %indvars.iv.next817, %i.abm
  br i1 %i.abn, label %bb.dc, label %._crit_edge711.loopexit, !llvm.loop !62

._crit_edge715:                                   ; preds = %._crit_edge711, %._crit_edge703, %.loopexit
  %i.abo = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.dd unwind label %bb.q

end_hunk_3
