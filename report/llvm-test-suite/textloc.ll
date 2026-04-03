begin_hunk_0
  %i.k = load i32, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %i.l = add i32 %i.k, -10                        ; 2 uses
  %i.m = icmp sgt i32 %i.k, 20
  %i.n = load i32, ptr @HVAR_WINDOW, align 4      ; 7 uses
  %i.o = sub i32 0, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = shl nsw i32 %i.n, 1
end_hunk_0
begin_hunk_1
  %i.ay = and i32 %i.ax, 2
  %i.az = icmp ult i32 %i.n, 2
  %indvars.iv.next80.prol = add nsw i64 %i.au, 1
  %2 = icmp eq i32 %i.n, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge58.split.us67, %.preheader.lr.ph.split.us.split
end_hunk_1
begin_hunk_2
  %i.bs = load i8, ptr %gep119.prol, align 1, !tbaa !20
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fsub float %i.bt, %i.bq                 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %.promoted.us) ; 3 uses
  store float %i.bv, ptr %i.br, align 4, !tbaa !24
  br i1 %2, label %._crit_edge55.us, label %.lr.ph54.us.new

.lr.ph54.us.new:                                  ; preds = %.lr.ph54.us, %.lr.ph54.us.new
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.1, %.lr.ph54.us.new ], [ %indvars.iv.next80.prol, %.lr.ph54.us ] ; 3 uses
  %i.bw = phi float [ %i.cf, %.lr.ph54.us.new ], [ %i.bv, %.lr.ph54.us ]
  %gep119 = getelementptr i8, ptr %invariant.gep118, i64 %indvars.iv79
  %i.bx = load i8, ptr %gep119, align 1, !tbaa !20
  %i.by = uitofp i8 %i.bx to float
end_hunk_2
begin_hunk_3
.prol.loopexit:                                   ; preds = %bb.b
  br i1 %i.az, label %.lr.ph54.us, label %.lr.ph.us65.new

._crit_edge55.us:                                 ; preds = %.lr.ph54.us.new, %.lr.ph54.us
  %.lcssa143 = phi float [ %i.bv, %.lr.ph54.us ], [ %i.cf, %.lr.ph54.us.new ]
  %i.ck = fdiv float %.lcssa143, %i.s             ; 2 uses
  %i.cl = fcmp ugt float %i.ck, %i.t
  %. = select i1 %i.cl, float 2.550000e+02, float 0.000000e+00
  %storemerge120 = select i1 %.not47, float %i.ck, float %.
end_hunk_3
