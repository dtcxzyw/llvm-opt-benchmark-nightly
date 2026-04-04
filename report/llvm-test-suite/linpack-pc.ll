begin_hunk_0

.lr.ph103.preheader:                              ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = zext nneg i32 %2 to i64                  ; 5 uses
  %wide.trip.count110 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %i.e = shl nsw i64 %i.c, 2
  %i.f = add nsw i64 %i.e, 4
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 3 uses
end_hunk_0
begin_hunk_1
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep117 = getelementptr i8, ptr %i.j, i64 %i.g
  %scevgep120 = getelementptr i8, ptr %0, i64 %i.g
  %i.k = add nsw i64 %wide.trip.count, -2
  %i.l = add nsw i64 %wide.trip.count, -2
  %stride.check = icmp slt i32 %1, 0
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 16 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph103.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %5 = xor i64 %indvars.iv107, -1
  %6 = add nsw i64 %5, %wide.trip.count           ; 3 uses
  %i.m = xor i64 %indvars.iv107, -1
  %i.n = add nsw i64 %i.m, %i.d                   ; 3 uses
  %7 = xor i64 %indvars.iv107, -1
  %8 = add nsw i64 %7, %i.d                       ; 3 uses
  %i.o = add nuw i64 %indvars.iv107, 1
  %i.p = mul i64 %i.f, %i.o
  %scevgep = getelementptr i8, ptr %0, i64 %i.p
end_hunk_1
begin_hunk_2
bb.b:                                             ; preds = %.lr.ph103
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !11
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %xtraiter = and i64 %6, 1
  %i.af = icmp eq i64 %i.k, %indvars.iv107
  br i1 %i.af, label %.lr.ph48.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %6, -2
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.new
end_hunk_2
begin_hunk_3
  %indvars.iv52.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next53.i.1, %idamax.exit.loopexit.unr-lcssa ] ; 2 uses
  %.247.i.epil.init = phi i32 [ 0, %bb.b ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %.23345.i.epil.init = phi float [ %i.ae, %bb.b ], [ %.334.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv52.i.epil.init
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11
end_hunk_3
begin_hunk_4
  %i.bd = fdiv float -1.000000e+00, %i.bc         ; 2 uses
  %i.be = sub nsw i64 %i.d, %indvars.iv.next108   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ab, i64 4      ; 6 uses
  %min.iters.check126 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check126, label %.lr.ph25.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.e
  %n.vec129 = and i64 %i.n, -8                    ; 3 uses
  %broadcast.splatinsert130 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132
end_hunk_4
begin_hunk_5
  br i1 %i.bk, label %middle.block137, label %vector.body132, !llvm.loop !68

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %i.n, %n.vec129
  br i1 %cmp.n138, label %.lr.ph, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.e, %middle.block137
end_hunk_5
begin_hunk_6

.lr.ph:                                           ; preds = %.lr.ph25.i, %middle.block137
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ax
  %min.iters.check = icmp ult i64 %8, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep121
  %bound1 = icmp ult ptr %scevgep119, %scevgep117
  %found.conflict = and i1 %bound0, %bound1
  %i.bo = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %8, -8                         ; 3 uses
  %cmp.n = icmp eq i64 %8, %n.vec
  %i.bp = sub nsw i64 %indvars.iv107, %wide.trip.count
  %i.bq = and i64 %i.bp, 1
  %lcmp.mod144.not.not = icmp eq i64 %i.bq, 0
  br label %bb.f
end_hunk_6
begin_hunk_7
.lr.ph.i.preheader140:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.ch = add i64 %indvars.iv107, %indvars.iv.i.ph
  br i1 %lcmp.mod144.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader140
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.ph ; 2 uses
end_hunk_7
