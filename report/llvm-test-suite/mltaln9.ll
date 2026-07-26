inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@substitution:bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01725.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.01824.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.119.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod37 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %.not22.epil = icmp eq i8 %i.v, 45
  br i1 %.not22.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %.not23.epil = icmp eq i8 %i.x, 45
  br i1 %.not23.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ne i8 %i.v, %i.x
  %i.z = uitofp i1 %i.y to float
  %i.aa = fadd float %.01824.epil.init, %i.z
  %i.ab = add i32 %.01725.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.g, %bb.h, %._crit_edge.unr-lcssa
  %.119.lcssa = phi float [ %.119.1, %._crit_edge.unr-lcssa ], [ %i.aa, %bb.h ], [ %.01824.epil.init, %bb.g ], [ %.01824.epil.init, %.lr.ph.epil.preheader ]
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.ab, %bb.h ], [ %.01725.epil.init, %bb.g ], [ %.01725.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.not = icmp eq i32 %.1.lcssa, 0
  %i.ac = sitofp i32 %.1.lcssa to float
  %i.ad = fdiv float %.119.lcssa, %i.ac
  br i1 %.not, label %._crit_edge.thread, label %bb.i

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ae = phi float [ 1.000000e+00, %._crit_edge.thread ], [ %i.ad, %._crit_edge ]
  ret float %i.ae
}

; Function Attrs: nounwind uwtable
define dso_local void @treeconstruction(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @weight, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.preheader34

.preheader34:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.preheader33.preheader, label %.loopexit35

.preheader33.preheader:                           ; preds = %.preheader34
  %wide.trip.count55 = zext nneg i32 %1 to i64    ; 4 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count55, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count55
  br label %.preheader33

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @utree, align 4, !tbaa !4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %.loopexit35

.preheader:                                       ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %.preheader
  %i.g = add nsw i32 %1, -1
  %wide.trip.count67 = zext nneg i32 %i.g to i64
  %wide.trip.count62 = zext nneg i32 %1 to i64
  br label %.lr.ph

.loopexit:                                        ; preds = %substitution_hosei.exit
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge46, label %.lr.ph, !llvm.loop !356

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph45.preheader
  %indvars.iv64 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next65, %.loopexit ] ; 3 uses
  %indvars.iv57 = phi i64 [ 1, %.lr.ph45.preheader ], [ %indvars.iv.next58, %.loopexit ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %substitution_hosei.exit
  %indvars.iv59 = phi i64 [ %indvars.iv57, %.lr.ph ], [ %indvars.iv.next60, %substitution_hosei.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  br label %.outer.i

.outer.i:                                         ; preds = %bb.f, %bb.c
  %.018.ph.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.016.ph.i = phi i32 [ %i.v, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.015.ph.i = phi ptr [ %i.p, %bb.f ], [ %i.m, %bb.c ]
  %.0.ph.i = phi ptr [ %i.o, %bb.f ], [ %i.i, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.outer.i
  %.015.i = phi ptr [ %i.p, %bb.e ], [ %.015.ph.i, %.outer.i ] ; 2 uses
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %.0.ph.i, %.outer.i ] ; 2 uses
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !8    ; 3 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %i.q = load i8, ptr %.015.i, align 1, !tbaa !8  ; 2 uses
  %i.r = icmp eq i8 %i.n, 45
  %i.s = icmp eq i8 %i.q, 45
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %bb.d, label %bb.f, !llvm.loop !354

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ne i8 %i.n, %i.q
  %i.u = zext i1 %i.t to i32
  %i.v = add nuw nsw i32 %.016.ph.i, %i.u
  %i.w = add nuw nsw i32 %.018.ph.i, 1
  br label %.outer.i, !llvm.loop !354

bb.g:                                             ; preds = %bb.d
  %.not23.i = icmp eq i32 %.018.ph.i, 0
  %i.x = uitofp nneg i32 %.016.ph.i to float
  %i.y = uitofp nneg i32 %.018.ph.i to float
  %i.z = fdiv float %i.x, %i.y
  %i.aa = fpext float %i.z to double
  %.017.i = select i1 %.not23.i, double 1.000000e+00, double %i.aa ; 2 uses
  %i.ab = fcmp olt double %.017.i, f0x3FEE666666666666
  br i1 %i.ab, label %bb.h, label %substitution_hosei.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = fsub double 1.000000e+00, %.017.i
  %i.ad = tail call double @log(double noundef %i.ac) #33, !tbaa !4
  %i.ae = fptrunc double %i.ad to float
  %i.af = fneg float %i.ae
  %i.ag = fpext float %i.af to double
  br label %substitution_hosei.exit

substitution_hosei.exit:                          ; preds = %bb.g, %bb.h
  %.1.i = phi double [ %i.ag, %bb.h ], [ 3.000000e+00, %bb.g ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv59
  store double %.1.i, ptr %i.ah, align 8, !tbaa !24
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.loopexit, label %bb.c, !llvm.loop !357

._crit_edge46:                                    ; preds = %.loopexit, %.preheader
  tail call void @spg(i32 noundef %1, ptr noundef %4, ptr noundef %2, ptr noundef %3)
  tail call void @counteff(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %.loopexit35

.preheader33:                                     ; preds = %.preheader33.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader33.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv52
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader33, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader33 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ak, align 8, !tbaa !24
  store <2 x double> splat (double 1.000000e+00), ptr %i.al, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader33, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader33 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count55
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !359

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit35, label %.preheader33, !llvm.loop !360

.loopexit35:                                      ; preds = %._crit_edge, %.preheader34, %bb.b, %._crit_edge46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @bscore_calc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sext i32 %i.g to i64
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count106 = zext nneg i32 %i.c to i64
  %wide.trip.count101 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph81.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge.loopexit, label %.lr.ph81.us, !llvm.loop !361

.lr.ph81.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv103 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next104, %.loopexit.us ] ; 3 uses
  %indvars.iv96 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next97, %.loopexit.us ] ; 2 uses
  %.06186.us = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.bh, %.loopexit.us ]
  %.06385.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bj, %.loopexit.us ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph81.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge.us.us ], [ %indvars.iv96, %.lr.ph81.us ] ; 3 uses
  %.179.us.us = phi i64 [ %i.bh, %._crit_edge.us.us ], [ %.06186.us, %.lr.ph81.us ]
  %.16477.us.us = phi i32 [ %i.bj, %._crit_edge.us.us ], [ %.06385.us, %.lr.ph81.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv98
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv98
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.275.us.us = phi i64 [ %i.bh, %bb.b ], [ %.179.us.us, %.lr.ph.us.us ]
  %.26574.us.us = phi i32 [ %i.bj, %bb.b ], [ %.16477.us.us, %.lr.ph.us.us ]
  %.06772.us.us = phi i32 [ %i.x, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.06871.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 6 uses
  %i.t = zext i1 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %i.w = icmp eq i8 %i.v, 45                      ; 6 uses
  %i.x = zext i1 %i.w to i32
  %i.y = xor i32 %.06871.us.us, 1                 ; 2 uses
  %i.z = select i1 %i.s, i32 %i.y, i32 0          ; 2 uses
  %i.aa = xor i32 %.06772.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.s, i32 0, i32 %i.y
  %.v.us.us = select i1 %i.w, i32 %i.ab, i32 %i.z
  %i.ac = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ad = mul nuw nsw i32 %i.z, %.06772.us.us
  %i.ae = select i1 %i.s, i32 0, i32 %.06871.us.us ; 2 uses
  %i.af = mul nuw nsw i32 %i.ae, %i.aa
  %i.ag = select i1 %i.w, i32 %i.af, i32 %i.ad
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = mul nuw nsw i32 %i.ae, %.06772.us.us
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = select i1 %i.w, double %i.ak, double 0.000000e+00
  %i.am = fadd double %i.al, %i.ai
  %i.an = select i1 %i.s, i32 %.06871.us.us, i32 0
  %i.ao = mul nuw nsw i32 %i.an, %.06772.us.us
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = select i1 %i.w, double 0.000000e+00, double %i.ap
  %i.ar = fadd double %i.aq, %i.am
  %i.as = fptosi double %i.ar to i32
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, %i.h
  %i.av = sitofp i64 %i.au to double
  %i.aw = sitofp i64 %.275.us.us to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.n, double %i.aw)
  %i.ay = fptosi double %i.ax to i64
  %i.az = sext i8 %i.r to i64
  %i.ba = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.az
  %i.bb = sext i8 %i.v to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = sitofp i32 %i.bd to double
  %i.bf = sitofp i64 %i.ay to double
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.be, double %i.n, double %i.bf)
  %i.bh = fptosi double %i.bg to i64              ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.s, %i.w
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bi = zext i1 %mulbool.us.us to i32
  %i.bj = add nsw i32 %.26574.us.us, %i.bi        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !362

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !363

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bk = sitofp i64 %i.bh to float
  %i.bl = sitofp i32 %i.bj to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.063.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bl, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bk, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bm = fdiv float %.061.lcssa, %.063.lcssa
  %i.bn = fpext float %i.bm to double
  %i.bo = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bo, 0
  %i.bp = uitofp i1 %.not to double
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 4.000000e+02, double %i.bn)
  %i.br = fptrunc double %i.bq to float
  ret float %i.br
}

; Function Attrs: nounwind uwtable
define dso_local void @AllocateTmpSeqs(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !4
  %i.b = add nsw i32 %2, 1                        ; 2 uses
  %i.c = tail call ptr @AllocateCharMtx(i32 noundef %i.a, i32 noundef %i.b) #33
  store ptr %i.c, ptr %0, align 8, !tbaa !77
  %i.d = tail call ptr @AllocateCharVec(i32 noundef %i.b) #33
  store ptr %i.d, ptr %1, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FreeTmpSeqs(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #12 {
bb.a:
  tail call void @FreeCharMtx(ptr noundef %0) #33
  tail call void @free(ptr noundef %1) #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gappick0(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #24 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.06 = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ]    ; 4 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.d ]    ; 2 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 0, label %bb.e
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.a, ptr %.06, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.b, %bb.c ], [ %.06, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !364

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %.06, align 1, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gappick(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader58.lr.ph, label %.preheader56

.preheader58.lr.ph:                               ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.preheader58.us.us.preheader, label %._crit_edge

.preheader58.us.us.preheader:                     ; preds = %.preheader58.lr.ph
  %i.f = zext i32 %1 to i64                       ; 6 uses
  %wide.trip.count99 = and i64 %i.b, 2147483647
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %i.g = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i64 %i.g, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = trunc i32 %0 to i1
  %xtraiter117 = and i64 %wide.trip.count, 1
  %i.i = icmp eq i64 %i.g, 0
  %unroll_iter120 = and i64 %wide.trip.count, 2147483646
end_hunk_0
begin_hunk_1_@score_calc_for_score:bb.a
  br i1 %i.ad, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.p, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.next
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %.preheader, label %bb.d, !llvm.loop !390

bb.d:                                             ; preds = %.preheader
  %i.ah = fadd double %i.ab, %i.k                 ; 2 uses
  %i.ai = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.aj = icmp slt i32 %i.f, %i.ai
  br i1 %i.aj, label %._crit_edge.us.us, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp eq i8 %i.al, 45
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sext i8 %i.al to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next83
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = icmp eq i8 %i.ar, 45
  br i1 %i.as, label %bb.g, label %bb.h, !llvm.loop !391

bb.h:                                             ; preds = %bb.g
  %i.at = sitofp i32 %i.ap to double
  %i.au = fadd double %.05062.us.us, %i.at
  %i.av = add nsw i32 %.05660.us.us, 1            ; 2 uses
  %i.aw = fadd double %i.au, %i.k                 ; 2 uses
  %i.ax = trunc nsw i64 %indvars.iv82 to i32      ; 2 uses
  %i.ay = icmp slt i32 %i.f, %i.ax
  br i1 %i.ay, label %._crit_edge.us.us, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.d, %bb.c
  %.157.us.us = phi i32 [ %.05660.us.us, %bb.e ], [ %i.av, %bb.h ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %.3.us.us = phi i32 [ %.05361.us.us, %bb.e ], [ %i.ax, %bb.h ], [ %i.ai, %bb.d ], [ %.05361.us.us, %bb.c ]
  %.1.us.us = phi double [ %.05062.us.us, %bb.e ], [ %i.aw, %bb.h ], [ %i.ah, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %i.az = add nsw i32 %.3.us.us, 1                ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.c
  br i1 %i.ba, label %bb.b, label %._crit_edge.us.us, !llvm.loop !392

._crit_edge.us.us:                                ; preds = %bb.i, %bb.h, %bb.d
  %.258.us.us = phi i32 [ %i.ac, %bb.d ], [ %i.av, %bb.h ], [ %.157.us.us, %bb.i ]
  %.2.us.us = phi double [ %i.ah, %bb.d ], [ %i.aw, %bb.h ], [ %.1.us.us, %bb.i ]
  %i.bb = sitofp i32 %.258.us.us to double
  %i.bc = fdiv double %.2.us.us, %i.bb
  %i.bd = fadd double %.15270.us.us, %i.bc        ; 3 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond90.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !393

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.051.lcssa = phi double [ 0.000000e+00, %bb.a ], [ +qnan, %.lr.ph ], [ %i.bd, %.loopexit.us ] ; 2 uses
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.29, double noundef %.051.lcssa) #31 ; 0 uses
  %i.bg = sitofp i32 %0 to double                 ; 2 uses
  %i.bh = fadd nnan double %i.bg, -1.000000e+00
  %i.bi = fmul double %i.bh, %i.bg
  %i.bj = fmul double %i.bi, 5.000000e-01
  %i.bk = fdiv double %.051.lcssa, %i.bj
  %i.bl = fadd double %i.bk, 4.000000e+02
  ret double %i.bl
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @floatncpy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.not4 = icmp eq i32 %2, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.d = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 4294967288               ; 4 uses
  %i.e = trunc nuw i64 %n.vec to i32
  %i.f = sub i32 %2, %i.e
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %0, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.j  ; 2 uses
  %next.gep8 = getelementptr i8, ptr %0, i64 %i.j ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !21
  %wide.load9 = load <4 x float>, ptr %i.k, align 4, !tbaa !21
  %i.l = getelementptr i8, ptr %next.gep8, i64 16
  store <4 x float> %wide.load, ptr %next.gep8, align 4, !tbaa !21
  store <4 x float> %wide.load9, ptr %i.l, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %.07.ph = phi i32 [ %2, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 4 uses
  %.026.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 2 uses
  %.035.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 2 uses
  %i.n = add nsw i32 %.07.ph, -1
  %xtraiter = and i32 %.07.ph, 7                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader12, %.lr.ph.prol
  %.07.prol = phi i32 [ %i.o, %.lr.ph.prol ], [ %.07.ph, %.lr.ph.preheader12 ]
  %.026.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.026.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.035.prol = phi ptr [ %i.r, %.lr.ph.prol ], [ %.035.ph, %.lr.ph.preheader12 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader12 ]
  %i.o = add nsw i32 %.07.prol, -1                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.026.prol, i64 4 ; 2 uses
  %i.q = load float, ptr %.026.prol, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %.035.prol, i64 4 ; 2 uses
  store float %i.q, ptr %.035.prol, align 4, !tbaa !21
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !395

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader12
  %.07.unr = phi i32 [ %.07.ph, %.lr.ph.preheader12 ], [ %i.o, %.lr.ph.prol ]
  %.026.unr = phi ptr [ %.026.ph, %.lr.ph.preheader12 ], [ %i.p, %.lr.ph.prol ]
  %.035.unr = phi ptr [ %.035.ph, %.lr.ph.preheader12 ], [ %i.r, %.lr.ph.prol ]
  %i.s = icmp ult i32 %i.n, 7
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07 = phi i32 [ %i.ao, %.lr.ph ], [ %.07.unr, %.lr.ph.prol.loopexit ]
  %.026 = phi ptr [ %i.ap, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.035 = phi ptr [ %i.ar, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %i.u = load float, ptr %.026, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.035, i64 4
  store float %i.u, ptr %.035, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 8
  %i.x = load float, ptr %i.t, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.035, i64 8
  store float %i.x, ptr %i.v, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.026, i64 12
  %i.aa = load float, ptr %i.w, align 4, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.035, i64 12
  store float %i.aa, ptr %i.y, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.ad = load float, ptr %i.z, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 16
  store float %i.ad, ptr %i.ab, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.026, i64 20
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.035, i64 20
  store float %i.ag, ptr %i.ae, align 4, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.026, i64 24
  %i.aj = load float, ptr %i.af, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 24
  store float %i.aj, ptr %i.ah, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.026, i64 28
  %i.am = load float, ptr %i.ai, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.035, i64 28
  store float %i.am, ptr %i.ak, align 4, !tbaa !21
  %i.ao = add nsw i32 %.07, -8                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 32
  %i.aq = load float, ptr %i.al, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.035, i64 32
  store float %i.aq, ptr %i.an, align 4, !tbaa !21
  %.not.7 = icmp eq i32 %i.ao, 0
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !396

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calc_a(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count122 = zext nneg i32 %i.c to i64
  %wide.trip.count117 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph97.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge.loopexit, label %.lr.ph97.us, !llvm.loop !397

.lr.ph97.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next120, %.loopexit.us ] ; 3 uses
  %indvars.iv112 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next113, %.loopexit.us ] ; 2 uses
  %.077102.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.be, %.loopexit.us ]
  %.079101.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bg, %.loopexit.us ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv119
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph97.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us.us ], [ %indvars.iv112, %.lr.ph97.us ] ; 3 uses
  %.195.us.us = phi float [ %i.be, %._crit_edge.us.us ], [ %.077102.us, %.lr.ph97.us ]
  %.18093.us.us = phi i32 [ %i.bg, %._crit_edge.us.us ], [ %.079101.us, %.lr.ph97.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv114
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv114
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.291.us.us = phi float [ %i.be, %bb.b ], [ %.195.us.us, %.lr.ph.us.us ]
  %.28190.us.us = phi i32 [ %i.bg, %bb.b ], [ %.18093.us.us, %.lr.ph.us.us ]
  %.08388.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.08487.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 7 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.08487.us.us, 1                 ; 4 uses
  %i.aa = select i1 %i.t, i32 %i.z, i32 0
  %i.ab = xor i32 %.08388.us.us, 1                ; 3 uses
  %i.ac = select i1 %i.t, i32 0, i32 %.08487.us.us
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.08487.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.ab
  %i.ag = mul nuw nsw i32 %i.aa, %.08388.us.us
  %i.ah = select i1 %i.t, i32 %.08487.us.us, i32 0 ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, %i.ab
  %i.aj = add nuw nsw i32 %i.ab, %.08388.us.us
  %i.ak = mul nuw nsw i32 %i.ac, %i.aj
  %i.al = add nuw nsw i32 %i.z, %i.ah
  %i.am = mul nuw nsw i32 %i.al, %.08388.us.us
  %i.an = add nuw nsw i32 %i.ak, %i.ag
  %i.ao = add nuw nsw i32 %i.an, %i.ai
  %i.ap = select i1 %i.x, i32 %i.ao, i32 %i.am
  %i.aq = add nuw nsw i32 %i.ap, %i.af
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fpext nnan ninf float %i.ar to double
  %i.at = fmul nnan double %i.as, 5.000000e-01
  %i.au = fmul double %i.at, %i.h
  %i.av = fpext float %.291.us.us to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.n, double %i.av)
  %i.ax = fptrunc double %i.aw to float
  %i.ay = sext i8 %i.s to i64
  %i.az = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ay
  %i.ba = sext i8 %i.w to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sitofp i32 %i.bc to float
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.q, float %i.ax) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bf = zext i1 %mulbool.us.us to i32
  %i.bg = add nsw i32 %.28190.us.us, %i.bf        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !398

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !399

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bh = sitofp i32 %i.bg to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.079.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bh, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.077.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.be, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bi = fdiv float %.077.lcssa, %.079.lcssa
  %i.bj = fpext float %i.bi to double
  %i.bk = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bk, 0
  %i.bl = uitofp i1 %.not to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double 4.000000e+02, double %i.bj)
  %i.bn = fptrunc double %i.bm to float
  ret float %i.bn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @score_calc_s(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count104 = zext nneg i32 %i.c to i64
  %wide.trip.count99 = zext nneg i32 %1 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph79.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge.loopexit, label %.lr.ph79.us, !llvm.loop !400

.lr.ph79.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv101 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next102, %.loopexit.us ] ; 3 uses
  %indvars.iv94 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %.06184.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aw, %.loopexit.us ]
  %.06383.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.ay, %.loopexit.us ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv101
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph79.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.us.us ], [ %indvars.iv94, %.lr.ph79.us ] ; 3 uses
  %.177.us.us = phi float [ %i.aw, %._crit_edge.us.us ], [ %.06184.us, %.lr.ph79.us ]
  %.16475.us.us = phi i32 [ %i.ay, %._crit_edge.us.us ], [ %.06383.us, %.lr.ph79.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv96
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.273.us.us = phi float [ %i.aw, %bb.b ], [ %.177.us.us, %.lr.ph.us.us ]
  %.26572.us.us = phi i32 [ %i.ay, %bb.b ], [ %.16475.us.us, %.lr.ph.us.us ]
  %.06770.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.06869.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 5 uses
  %i.u = zext i1 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 4 uses
  %i.y = zext i1 %i.x to i32
  %i.z = xor i32 %.06869.us.us, 1                 ; 3 uses
  %i.aa = xor i32 %.06770.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.t, i32 0, i32 %.06869.us.us
  %i.ac = mul nuw nsw i32 %i.ab, %i.aa
  %i.ad = select i1 %i.t, i32 %i.z, i32 %.06869.us.us
  %i.ae = select i1 %i.t, i32 0, i32 %i.z
  %.v.us.us = select i1 %i.x, i32 %i.ae, i32 %i.ad
  %i.af = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ag = mul nuw nsw i32 %i.z, %.06770.us.us
  %i.ah = select i1 %i.x, i32 %i.ac, i32 %i.ag
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = uitofp nneg i32 %i.ai to float
  %i.ak = fpext nnan ninf float %i.aj to double
  %i.al = fmul nnan double %i.ak, 5.000000e-01
  %i.am = fmul double %i.al, %i.h
  %i.an = fpext float %.273.us.us to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.n, double %i.an)
  %i.ap = fptrunc double %i.ao to float
  %i.aq = sext i8 %i.s to i64
  %i.ar = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.aq
  %i.as = sext i8 %i.w to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sitofp i32 %i.au to float
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.q, float %i.ap) ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.t, %i.x
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ax = zext i1 %mulbool.us.us to i32
  %i.ay = add nsw i32 %.26572.us.us, %i.ax        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !401

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !402

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.az = sitofp i32 %i.ay to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.063.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.az, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.ba = fdiv float %.061.lcssa, %.063.lcssa
  %i.bb = fadd float %i.ba, 4.000000e+02
  ret float %i.bb
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc_for_score_s(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count97 = zext nneg i32 %i.c to i64
  %wide.trip.count92 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !403

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv94 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %indvars.iv87 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next88, %.loopexit.us ] ; 2 uses
  %.078.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %.05776.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.as, %.loopexit.us ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge.us.us ], [ %indvars.iv87, %.preheader.lr.ph.us ] ; 2 uses
  %.172.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.078.us, %.preheader.lr.ph.us ]
  %.15871.us.us = phi i32 [ %i.as, %._crit_edge.us.us ], [ %.05776.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv89
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.268.us.us = phi float [ %i.aq, %bb.b ], [ %.172.us.us, %.preheader.us.us ]
  %.25967.us.us = phi i32 [ %i.as, %bb.b ], [ %.15871.us.us, %.preheader.us.us ]
  %.06166.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06265.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 5 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 4 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06265.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.06166.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06265.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06265.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.06166.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fpext nnan ninf float %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01
  %i.ah = fpext float %.268.us.us to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.h, double %i.ah)
  %i.aj = fptrunc double %i.ai to float
  %i.ak = sext i8 %i.n to i64
  %i.al = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ak
  %i.am = sext i8 %i.r to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.o, %i.s
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ar = zext i1 %mulbool.us.us to i32
  %i.as = add nsw i32 %.25967.us.us, %i.ar        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !404

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !405

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.at = fpext float %i.aq to double
  %i.au = sitofp i32 %i.as to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.057.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.au, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.at, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.av = fdiv double %.0.lcssa, %.057.lcssa
  %i.aw = fadd double %i.av, 4.000000e+02
  ret double %i.aw
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore___(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.a
  %i.d = trunc i64 %.fr to i32
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double
  br i1 %i.e, label %.lr.ph72.split.us.preheader, label %._crit_edge

.lr.ph72.split.us.preheader:                      ; preds = %.lr.ph72
  %i.j = zext i32 %2 to i64
  %wide.trip.count81 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.lr.ph72.split.us

.lr.ph72.split.us:                                ; preds = %.lr.ph72.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv78 = phi i64 [ 0, %.lr.ph72.split.us.preheader ], [ %indvars.iv.next79, %..loopexit_crit_edge.us ] ; 3 uses
  %.071.us = phi float [ 0.000000e+00, %.lr.ph72.split.us.preheader ], [ %.2.us, %..loopexit_crit_edge.us ] ; 2 uses
  %i.k = icmp eq i64 %indvars.iv78, %i.j
  br i1 %i.k, label %..loopexit_crit_edge.us, label %.preheader.us

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.166.us = phi float [ %.071.us, %.preheader.us ], [ %i.az, %bb.b ]
  %.05963.us = phi i32 [ 0, %.preheader.us ], [ %i.s, %bb.b ] ; 3 uses
  %.06062.us = phi i32 [ 0, %.preheader.us ], [ %i.o, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 5 uses
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.r = icmp eq i8 %i.q, 45                      ; 5 uses
  %i.s = zext i1 %i.r to i32
  %i.t = xor i32 %.06062.us, 1                    ; 3 uses
  %i.u = select i1 %i.n, i32 %i.t, i32 0
  %i.v = xor i32 %.05963.us, 1                    ; 2 uses
  %i.w = select i1 %i.n, i32 0, i32 %.06062.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.n, i32 %i.t, i32 %.06062.us
  %i.z = select i1 %i.n, i32 0, i32 %i.t          ; 2 uses
  %.v.us = select i1 %i.r, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us, %i.v
  %i.ab = mul nuw nsw i32 %i.z, %.05963.us
  %i.ac = select i1 %i.r, i32 0, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.aa, %i.ac
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = mul nuw nsw i32 %i.u, %.05963.us
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = select i1 %i.r, double 0.000000e+00, double %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double %i.ae)
  %i.aj = uitofp nneg i32 %i.x to double
  %i.ak = select i1 %i.r, double %i.aj, double 0.000000e+00
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double 2.000000e+00, double %i.ai)
  %i.am = fptosi double %i.al to i32
  %i.an = sitofp i32 %i.am to float
  %i.ao = fpext nnan ninf float %i.an to double
  %i.ap = fmul nnan double %i.ao, 5.000000e-01
  %i.aq = fpext float %.166.us to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.i, double %i.aq)
  %i.as = fptrunc double %i.ar to float
  %i.at = sext i8 %i.m to i64
  %i.au = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.at
  %i.av = sext i8 %i.q to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fadd float %i.ay, %i.as                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !406

..loopexit_crit_edge.us:                          ; preds = %bb.b, %.lr.ph72.split.us
  %.2.us = phi float [ %.071.us, %.lr.ph72.split.us ], [ %i.az, %bb.b ] ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge.loopexit, label %.lr.ph72.split.us, !llvm.loop !407

.preheader.us:                                    ; preds = %.lr.ph72.split.us
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.bd = fpext float %.2.us to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph72, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bd, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph72 ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b                          ; 2 uses
  %i.c = add nsw i32 %0, -1
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = trunc i64 %.fr to i32
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i32, ptr @penalty, align 4
  %i.h = sitofp i32 %i.g to double
  br i1 %i.f, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count94 = zext nneg i32 %i.c to i64
  %wide.trip.count89 = zext nneg i32 %0 to i64
  %wide.trip.count = and i64 %.fr, 2147483647
  br label %.preheader.lr.ph.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !408

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv84 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next85, %.loopexit.us ] ; 2 uses
  %.077.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84, %.preheader.lr.ph.us ] ; 2 uses
  %.171.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.077.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.267.us.us = phi float [ %i.aq, %bb.b ], [ %.171.us.us, %.preheader.us.us ]
  %.06065.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06164.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 4 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 3 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06164.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.06065.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06164.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06164.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.06065.us.us
  %i.ac = select i1 %i.s, i32 %i.x, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.ac, %i.aa
  %i.ae = uitofp nneg i32 %i.ad to float
  %i.af = fpext nnan ninf float %i.ae to double
  %i.ag = fmul nnan double %i.af, 5.000000e-01
  %i.ah = fpext float %.267.us.us to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.h, double %i.ah)
  %i.aj = fptrunc double %i.ai to float
  %i.ak = sext i8 %i.n to i64
  %i.al = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ak
  %i.am = sext i8 %i.r to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !409

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !410

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ar = fpext float %i.aq to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ar, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @DSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add nsw i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4
  %i.i = sitofp i32 %i.h to double                ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count108 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph84.us

.loopexit.us:                                     ; preds = %._crit_edge75.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph84.us, !llvm.loop !411

.lr.ph84.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv105 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next106, %.loopexit.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %.05486.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bw, %.loopexit.us ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 4 uses
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %._crit_edge75.us.us, %.lr.ph84.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge75.us.us ], [ %indvars.iv100, %.lr.ph84.us ] ; 2 uses
  %.15581.us.us = phi double [ %i.bw, %._crit_edge75.us.us ], [ %.05486.us, %.lr.ph84.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph74.us.us
  %.05372.us.us = phi double [ 0.000000e+00, %.lr.ph74.us.us ], [ %.3.us.us, %bb.g ] ; 3 uses
  %.05671.us.us = phi i32 [ 0, %.lr.ph74.us.us ], [ %i.bu, %bb.g ] ; 7 uses
  %i.n = sext i32 %.05671.us.us to i64            ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8     ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sext i8 %i.p to i64
  %i.s = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sitofp i32 %i.x to double
  %i.z = fadd double %.05372.us.us, %i.y          ; 2 uses
  %i.aa = icmp eq i8 %i.u, 45
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd double %i.z, %i.i                  ; 2 uses
  %i.ac = add nsw i32 %.05671.us.us, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %.lr.ph.us.us, label %._crit_edge.us.us

.lr.ph.us.us:                                     ; preds = %bb.d, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us.us ], [ %i.ad, %bb.d ] ; 3 uses
  %.263.us.us = phi double [ %i.ao, %.lr.ph.us.us ], [ %i.ab, %bb.d ]
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 180
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sitofp i32 %i.am to double
  %i.ao = fadd double %.263.us.us, %i.an          ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = icmp eq i8 %i.aq, 45
  br i1 %i.ar, label %.lr.ph.us.us, label %._crit_edge.us.us.loopexit, !llvm.loop !412

._crit_edge.us.us.loopexit:                       ; preds = %.lr.ph.us.us
  %i.as = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.loopexit, %bb.d
  %.258.lcssa.us.us = phi i32 [ %.05671.us.us, %bb.d ], [ %i.as, %._crit_edge.us.us.loopexit ] ; 2 uses
  %.2.lcssa.us.us = phi double [ %i.ab, %bb.d ], [ %i.ao, %._crit_edge.us.us.loopexit ] ; 2 uses
  %i.at = icmp sgt i32 %.258.lcssa.us.us, %i.f
  br i1 %i.at, label %._crit_edge75.us.us, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8   ; 2 uses
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sext i8 %i.av to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fadd double %.05372.us.us, %i.ba
  %i.bc = fadd double %i.bb, %i.i                 ; 2 uses
  %i.bd = add nsw i32 %.05671.us.us, 1
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.k, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = icmp eq i8 %i.bg, 45
  br i1 %i.bh, label %.lr.ph67.us.us, label %._crit_edge68.us.us

.lr.ph67.us.us:                                   ; preds = %bb.f, %.lr.ph67.us.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph67.us.us ], [ %i.be, %bb.f ] ; 3 uses
  %.165.us.us = phi double [ %i.bo, %.lr.ph67.us.us ], [ %i.bc, %bb.f ]
  %i.bi = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv97
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @amino_dis, i64 23040), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fadd double %.165.us.us, %i.bn          ; 2 uses
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next98
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = icmp eq i8 %i.bq, 45
  br i1 %i.br, label %.lr.ph67.us.us, label %._crit_edge68.us.us.loopexit, !llvm.loop !413

._crit_edge68.us.us.loopexit:                     ; preds = %.lr.ph67.us.us
  %i.bs = trunc nsw i64 %indvars.iv97 to i32
  br label %._crit_edge68.us.us

._crit_edge68.us.us:                              ; preds = %._crit_edge68.us.us.loopexit, %bb.f
  %.157.lcssa.us.us = phi i32 [ %.05671.us.us, %bb.f ], [ %i.bs, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %.1.lcssa.us.us = phi double [ %i.bc, %bb.f ], [ %i.bo, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %i.bt = icmp sgt i32 %.157.lcssa.us.us, %i.f
  br i1 %i.bt, label %._crit_edge75.us.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge68.us.us, %bb.e, %._crit_edge.us.us, %bb.c
  %.359.us.us = phi i32 [ %.05671.us.us, %bb.e ], [ %.157.lcssa.us.us, %._crit_edge68.us.us ], [ %.258.lcssa.us.us, %._crit_edge.us.us ], [ %.05671.us.us, %bb.c ]
  %.3.us.us = phi double [ %.05372.us.us, %bb.e ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %i.z, %bb.c ] ; 2 uses
  %i.bu = add nsw i32 %.359.us.us, 1              ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.c
  br i1 %i.bv, label %bb.b, label %._crit_edge75.us.us, !llvm.loop !414

._crit_edge75.us.us:                              ; preds = %bb.g, %._crit_edge68.us.us, %._crit_edge.us.us
  %.4.us.us = phi double [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.3.us.us, %bb.g ]
  %i.bw = fadd double %.15581.us.us, %.4.us.us    ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph74.us.us, !llvm.loop !415

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.054.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph ], [ %i.bw, %.loopexit.us ]
  ret double %.054.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @searchAnchors(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = load i32, ptr @searchAnchors.alloclen, align 4, !tbaa !4 ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @searchAnchors.stra, align 8, !tbaa !52
  tail call void @FreeDoubleVec(ptr noundef %i.f) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr @divThreshold, align 4, !tbaa !4
  %i.h = sitofp i32 %i.g to double
  %i.i = fdiv nnan double %i.h, 1.000000e+02
  %i.j = fmul nnan double %i.i, 6.000000e+02
  %i.k = load i32, ptr @divWinSize, align 4, !tbaa !4
  %i.l = sitofp i32 %i.k to double
  %i.m = fmul double %i.j, %i.l
  store double %i.m, ptr @searchAnchors.threshold, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call ptr @AllocateDoubleVec(i32 noundef %i.c) #33
  store ptr %i.n, ptr @searchAnchors.stra, align 8, !tbaa !52
  store i32 %i.c, ptr @searchAnchors.alloclen, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.o = icmp sgt i32 %i.c, 0
  br i1 %i.o, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.f
end_hunk_1
begin_hunk_2_@searchAnchors:bb.a
bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %.078118, i64 4
  store i32 %i.cw, ptr %i.dj, align 4, !tbaa !428
  %i.dk = load i32, ptr %.078118, align 8, !tbaa !427
  %i.dl = add nsw i32 %i.dk, %i.cw
  %i.dm = add nsw i32 %i.dl, %.pre163
  %i.dn = sdiv i32 %i.dm, 2
  %i.do = getelementptr inbounds nuw i8, ptr %.078118, i64 8
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !429
  %i.dp = getelementptr inbounds nuw i8, ptr %.078118, i64 16
  store double %.2, ptr %i.dp, align 8, !tbaa !430
  %spec.select = zext i1 %i.dh to i32             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.078118, i64 24
  store i32 %spec.select, ptr %i.dq, align 8, !tbaa !421
  %i.dr = getelementptr inbounds nuw i8, ptr %.078118, i64 76
  store i32 %spec.select, ptr %i.dr, align 4, !tbaa !424
  %i.ds = add nsw i32 %.080117, 1                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.078118, i64 48 ; 2 uses
  %i.du = icmp sgt i32 %.080117, 99996
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ErrorExit(ptr noundef nonnull @.str.30) #33
  %.pre = load ptr, ptr @searchAnchors.stra, align 8, !tbaa !52
  %.pre160 = load double, ptr @searchAnchors.threshold, align 8, !tbaa !24
  %.pre162 = load i32, ptr @divWinSize, align 4, !tbaa !4 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.pre163.pre168 = phi i32 [ %.pre162, %bb.o ], [ %.pre163.pre169, %bb.n ], [ %.pre163.pre169, %bb.m ]
  %.pre163165 = phi i32 [ %.pre162, %bb.o ], [ %.pre163, %bb.n ], [ %.pre163, %bb.m ] ; 3 uses
  %i.dv = phi double [ %.pre160, %bb.o ], [ %i.cq, %bb.n ], [ %i.cq, %bb.m ]
  %i.dw = phi ptr [ %.pre, %bb.o ], [ %i.cr, %bb.n ], [ %i.cr, %bb.m ]
  %.388 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %.287, %bb.m ] ; 2 uses
  %.181 = phi i32 [ %i.ds, %bb.o ], [ %i.ds, %bb.n ], [ %.080117, %bb.m ] ; 3 uses
  %.179 = phi ptr [ %i.dt, %bb.o ], [ %i.dt, %bb.n ], [ %.078118, %bb.m ] ; 5 uses
  %.377 = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %.276, %bb.m ]
  %.3 = phi double [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ %.2, %bb.m ] ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 3 uses
  %i.dx = sub nsw i32 %i.c, %.pre163165
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next156, %i.dy
  br i1 %i.dz, label %.lr.ph121, label %._crit_edge, !llvm.loop !431

._crit_edge:                                      ; preds = %bb.p
  %i.ea = icmp eq i32 %.388, 0
  br i1 %i.ea, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.eb = trunc nuw nsw i64 %indvars.iv.next156 to i32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.179, i64 4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !428
  %i.ed = load i32, ptr %.179, align 8, !tbaa !427
  %i.ee = add i32 %.pre163165, %i.eb
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = sdiv i32 %i.ef, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %.179, i64 8
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !429
  %i.ei = getelementptr inbounds nuw i8, ptr %.179, i64 16
  store double %.3, ptr %i.ei, align 8, !tbaa !430
  %i.ej = add nsw i32 %.181, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.q, %._crit_edge
  %.282 = phi i32 [ %i.ej, %bb.q ], [ %.181, %._crit_edge ], [ 0, %.preheader ]
  ret i32 %.282
}

declare void @FreeDoubleVec(ptr noundef) local_unnamed_addr #13

declare ptr @AllocateDoubleVec(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @dontcalcimportance(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @dontcalcimportance.nogaplen, align 8, !tbaa !89 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @AllocateIntVec(i32 noundef %0) #33 ; 2 uses
  store ptr %i.c, ptr @dontcalcimportance.nogaplen, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge34.split

.lr.ph:                                           ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.d

.preheader.preheader:                             ; preds = %seqlen.exit
  %wide.trip.count44 = zext nneg i32 %0 to i64    ; 2 uses
  br label %.preheader

bb.d:                                             ; preds = %.lr.ph, %seqlen.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %seqlen.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 2 uses
  %.not6.i = icmp eq i8 %i.h, 0
  br i1 %.not6.i, label %seqlen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.i = phi i8 [ %i.l, %.lr.ph.i ], [ %i.h, %bb.d ]
  %.08.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.d ]
  %.037.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.037.i, i64 1 ; 2 uses
  %.not5.i = icmp ne i8 %i.i, 45
  %i.k = zext i1 %.not5.i to i32
  %spec.select.i = add nuw nsw i32 %.08.i, %i.k   ; 2 uses
  %i.l = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %seqlen.exit, label %.lr.ph.i, !llvm.loop !9

seqlen.exit:                                      ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %spec.select.i, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %.0.lcssa.i, ptr %i.m, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.d, !llvm.loop !432

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge32
  %indvars.iv41 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next42, %._crit_edge32 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv41
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !433  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv36 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next37, %._crit_edge ] ; 2 uses
  br i1 %.not27, label %._crit_edge, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %indvars.iv36
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %.lr.ph29
  %.028 = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.p, %.lr.ph29.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !435
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !437
  %i.u = sitofp i32 %i.t to double
  %i.v = fdiv double %i.r, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 56
  store double %i.v, ptr %i.w, align 8, !tbaa !438
  %i.x = fptrunc double %i.v to float
  %i.y = getelementptr inbounds nuw i8, ptr %.028, i64 64
  store float %i.x, ptr %i.y, align 8, !tbaa !439
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !440 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %.lr.ph29, !llvm.loop !441

._crit_edge:                                      ; preds = %.lr.ph29, %bb.e
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count44
  br i1 %exitcond40.not, label %._crit_edge32, label %bb.e, !llvm.loop !442

._crit_edge32:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !443

._crit_edge34.split:                              ; preds = %._crit_edge32, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @calcimportance(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @calcimportance.importance, align 8, !tbaa !52
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.d = tail call ptr @AllocateDoubleVec(i32 noundef %i.c) #33
  store ptr %i.d, ptr @calcimportance.importance, align 8, !tbaa !52
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %0) #33
  store ptr %i.e, ptr @calcimportance.nogaplen, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge180

.lr.ph:                                           ; preds = %bb.c
  %i.g = load ptr, ptr @calcimportance.nogaplen, align 8, !tbaa !89
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.l

.preheader121.lr.ph:                              ; preds = %seqlen.exit
  %i.h = load i32, ptr @nlenmax, align 4, !tbaa !4 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = load ptr, ptr @calcimportance.importance, align 8 ; 18 uses
  %i.k = zext nneg i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %wide.trip.count213 = zext nneg i32 %0 to i64   ; 3 uses
  %scevgep249 = getelementptr i8, ptr %i.j, i64 8
  br label %.preheader121.us

.preheader121.us:                                 ; preds = %._crit_edge147.us, %.preheader121.lr.ph
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %._crit_edge147.us ], [ 0, %.preheader121.lr.ph ] ; 5 uses
  br i1 %i.i, label %.lr.ph127.us.preheader, label %.lr.ph135.us

.lr.ph127.us.preheader:                           ; preds = %.preheader121.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.l, i1 false), !tbaa !24
  br label %.lr.ph135.us

bb.d:                                             ; preds = %.lr.ph135.us, %.loopexit118.us
  %indvars.iv195 = phi i64 [ 0, %.lr.ph135.us ], [ %indvars.iv.next196, %.loopexit118.us ] ; 5 uses
  %i.m = shl nuw nsw i64 %indvars.iv195, 3        ; 2 uses
  %scevgep251 = getelementptr i8, ptr %1, i64 %i.m
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %scevgep252 = getelementptr i8, ptr %i.n, i64 8
  %i.o = icmp eq i64 %indvars.iv210, %indvars.iv195
  br i1 %i.o, label %.loopexit118.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.ee, align 8, !tbaa !433 ; 2 uses
  %.not111131.us = icmp eq ptr %i.p, null
  br i1 %.not111131.us, label %.loopexit118.us, label %.lr.ph133.us

bb.f:                                             ; preds = %.lr.ph133.us, %.loopexit115.us
  %.099132.us = phi ptr [ %i.ec, %.lr.ph133.us ], [ %i.bq, %.loopexit115.us ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.099132.us, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !435
  %i.s = fcmp oeq double %i.r, -1.000000e+00
  br i1 %i.s, label %.loopexit115.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.099132.us, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !444  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.099132.us, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !445  ; 6 uses
  %.not112128.us = icmp sgt i32 %i.u, %i.w
  br i1 %.not112128.us, label %.loopexit115.us, label %.lr.ph130.us.preheader

.lr.ph130.us.preheader:                           ; preds = %bb.g
  %i.x = sext i32 %i.u to i64                     ; 6 uses
  %i.y = add i32 %i.w, 1
  %i.z = sub i32 %i.w, %i.u                       ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 5
  br i1 %min.iters.check, label %.lr.ph130.us.preheader257, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph130.us.preheader
  %i.ac = shl nsw i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.ac
  %i.ad = sub i32 %i.w, %i.u
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nsw i64 %i.x, %i.ae
  %i.ag = shl nsw i64 %i.af, 3
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.ag
  %bound0 = icmp ult ptr %scevgep, %scevgep252
  %bound1 = icmp ult ptr %scevgep251, %scevgep250
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph130.us.preheader257, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 8589934588              ; 3 uses
  %i.ah = add nsw i64 %n.vec, %i.x
  %i.ai = load double, ptr %i.ed, align 8, !tbaa !24, !alias.scope !446
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  %wide.load253 = load <2 x double>, ptr %i.aj, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  %i.ak = fadd <2 x double> %broadcast.splat, %wide.load
  %i.al = fadd <2 x double> %broadcast.splat, %wide.load253
  store <2 x double> %i.ak, ptr %gep, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  store <2 x double> %i.al, ptr %i.aj, align 8, !tbaa !24, !alias.scope !449, !noalias !446
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit115.us, label %.lr.ph130.us.preheader257

.lr.ph130.us.preheader257:                        ; preds = %vector.memcheck, %.lr.ph130.us.preheader, %middle.block
  %indvars.iv191.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph130.us.preheader ], [ %i.ah, %middle.block ] ; 3 uses
  %i.an = add i32 %i.w, 1
  %i.ao = trunc i64 %indvars.iv191.ph to i32      ; 2 uses
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = sub i32 %i.w, %i.ao
  %xtraiter = and i32 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.us.prol.loopexit, label %.lr.ph130.us.prol

.lr.ph130.us.prol:                                ; preds = %.lr.ph130.us.preheader257, %.lr.ph130.us.prol
  %indvars.iv191.prol = phi i64 [ %indvars.iv.next192.prol, %.lr.ph130.us.prol ], [ %indvars.iv191.ph, %.lr.ph130.us.preheader257 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph130.us.prol ], [ 0, %.lr.ph130.us.preheader257 ]
  %i.ar = load double, ptr %i.ed, align 8, !tbaa !24
  %i.as = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv191.prol ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !24
  %i.au = fadd double %i.ar, %i.at
  store double %i.au, ptr %i.as, align 8, !tbaa !24
  %indvars.iv.next192.prol = add nsw i64 %indvars.iv191.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph130.us.prol.loopexit, label %.lr.ph130.us.prol, !llvm.loop !452

.lr.ph130.us.prol.loopexit:                       ; preds = %.lr.ph130.us.prol, %.lr.ph130.us.preheader257
  %indvars.iv191.unr = phi i64 [ %indvars.iv191.ph, %.lr.ph130.us.preheader257 ], [ %indvars.iv.next192.prol, %.lr.ph130.us.prol ]
  %i.av = icmp ult i32 %i.aq, 3
  br i1 %i.av, label %.loopexit115.us, label %.lr.ph130.us

.lr.ph130.us:                                     ; preds = %.lr.ph130.us.prol.loopexit, %.lr.ph130.us
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.3, %.lr.ph130.us ], [ %indvars.iv191.unr, %.lr.ph130.us.prol.loopexit ] ; 5 uses
  %i.aw = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv191 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !24
  %i.az = fadd double %i.aw, %i.ay
  store double %i.az, ptr %i.ax, align 8, !tbaa !24
  %i.ba = load double, ptr %i.ed, align 8, !tbaa !24
  %i.bb = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fadd double %i.ba, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !24
  %i.bf = load double, ptr %i.ed, align 8, !tbaa !24
  %i.bg = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.bh = getelementptr i8, ptr %i.bg, i64 16     ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !24
  %i.bj = fadd double %i.bf, %i.bi
  store double %i.bj, ptr %i.bh, align 8, !tbaa !24
  %i.bk = load double, ptr %i.ed, align 8, !tbaa !24
  %i.bl = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv191
  %i.bm = getelementptr i8, ptr %i.bl, i64 24     ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !24
  %i.bo = fadd double %i.bk, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !24
  %indvars.iv.next192.3 = add nsw i64 %indvars.iv191, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next192.3 to i32
  %exitcond194.not.3 = icmp eq i32 %i.y, %lftr.wideiv.3
  br i1 %exitcond194.not.3, label %.loopexit115.us, label %.lr.ph130.us, !llvm.loop !453

.loopexit115.us:                                  ; preds = %.lr.ph130.us.prol.loopexit, %.lr.ph130.us, %middle.block, %bb.g, %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.099132.us, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !440 ; 2 uses
  %.not111.us = icmp eq ptr %i.bq, null
  br i1 %.not111.us, label %.loopexit118.us, label %bb.f, !llvm.loop !454

.loopexit118.us:                                  ; preds = %.loopexit115.us, %bb.e, %bb.d
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count213
  br i1 %exitcond199.not, label %.preheader119.us, label %bb.d, !llvm.loop !455

bb.h:                                             ; preds = %.preheader119.us, %.loopexit117.us
  %indvars.iv205 = phi i64 [ 0, %.preheader119.us ], [ %indvars.iv.next206, %.loopexit117.us ] ; 3 uses
  %i.br = icmp eq i64 %indvars.iv210, %indvars.iv205
  br i1 %i.br, label %.loopexit117.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.eb, align 8, !tbaa !433 ; 2 uses
  %i.bt = getelementptr inbounds nuw [80 x i8], ptr %i.bs, i64 %indvars.iv205 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !435
  %i.bw = fcmp oeq double %i.bv, -1.000000e+00
  %.not142.us = icmp eq ptr %i.bs, null
  %or.cond = or i1 %i.bw, %.not142.us
  br i1 %or.cond, label %.loopexit117.us, label %.lr.ph144.us

.lr.ph144.us:                                     ; preds = %bb.i, %bb.k
  %.1100143.us = phi ptr [ %i.ea, %bb.k ], [ %i.bt, %bb.i ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.1100143.us, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !435 ; 2 uses
  %i.bz = fcmp oeq double %i.by, -1.000000e+00
  br i1 %i.bz, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph144.us
  %i.ca = getelementptr inbounds nuw i8, ptr %.1100143.us, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !444 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1100143.us, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !445 ; 3 uses
  %.not110136.us = icmp sgt i32 %i.cb, %i.cd
  br i1 %.not110136.us, label %._crit_edge.us, label %.lr.ph140.us.preheader

.lr.ph140.us.preheader:                           ; preds = %bb.j
  %i.ce = sext i32 %i.cb to i64                   ; 2 uses
  %i.cf = add i32 %i.cd, 1                        ; 3 uses
  %i.cg = sub i32 %i.cf, %i.cb
  %i.ch = sub i32 %i.cd, %i.cb
  %xtraiter259 = and i32 %i.cg, 7                 ; 2 uses
  %lcmp.mod260.not = icmp eq i32 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph140.us.prol.loopexit, label %.lr.ph140.us.prol

.lr.ph140.us.prol:                                ; preds = %.lr.ph140.us.preheader, %.lr.ph140.us.prol
end_hunk_2
