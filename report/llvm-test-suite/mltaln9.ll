Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@treeconstruction:bb.a
  br i1 %exitcond68.not, label %._crit_edge46, label %.lr.ph, !llvm.loop !367

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph45.preheader
  %indvars.iv64 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next65, %.loopexit ] ; 3 uses
  %indvars.iv57 = phi i64 [ 1, %.lr.ph45.preheader ], [ %indvars.iv.next58, %.loopexit ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %substitution_hosei.exit
  %indvars.iv59 = phi i64 [ %indvars.iv57, %.lr.ph ], [ %indvars.iv.next60, %substitution_hosei.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  br label %.outer.i

.outer.i:                                         ; preds = %bb.f, %bb.c
  %.018.ph.i = phi ptr [ %i.o, %bb.f ], [ %i.i, %bb.c ]
  %.017.ph.i = phi ptr [ %i.p, %bb.f ], [ %i.m, %bb.c ]
  %.016.ph.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.0.ph.i = phi i32 [ %i.v, %bb.f ], [ 0, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.outer.i
  %.018.i = phi ptr [ %i.o, %bb.e ], [ %.018.ph.i, %.outer.i ] ; 2 uses
  %.017.i = phi ptr [ %i.p, %bb.e ], [ %.017.ph.i, %.outer.i ] ; 2 uses
  %i.n = load i8, ptr %.018.i, align 1, !tbaa !14 ; 3 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 1 ; 2 uses
  %i.q = load i8, ptr %.017.i, align 1, !tbaa !14 ; 2 uses
  %i.r = icmp eq i8 %i.n, 45
  %i.s = icmp eq i8 %i.q, 45
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %bb.d, label %bb.f, !llvm.loop !4

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ne i8 %i.n, %i.q
  %i.u = zext i1 %i.t to i32
  %i.v = add nuw nsw i32 %.0.ph.i, %i.u
  %i.w = add nuw nsw i32 %.016.ph.i, 1
  br label %.outer.i, !llvm.loop !4

bb.g:                                             ; preds = %bb.d
  %.not23.i = icmp eq i32 %.016.ph.i, 0
  %i.x = uitofp nneg i32 %.0.ph.i to float
  %i.y = uitofp nneg i32 %.016.ph.i to float
  %i.z = fdiv float %i.x, %i.y
  %i.aa = fpext float %i.z to double
  %.015.i = select i1 %.not23.i, double 1.000000e+00, double %i.aa ; 2 uses
  %i.ab = fcmp olt double %.015.i, f0x3FEE666666666666
  br i1 %i.ab, label %bb.h, label %substitution_hosei.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = fsub double 1.000000e+00, %.015.i
  %i.ad = tail call double @log(double noundef %i.ac) #33, !tbaa !13
  %i.ae = fptrunc double %i.ad to float
  %i.af = fneg float %i.ae
  %i.ag = fpext float %i.af to double
  br label %substitution_hosei.exit

substitution_hosei.exit:                          ; preds = %bb.g, %bb.h
  %.1.i = phi double [ %i.ag, %bb.h ], [ 3.000000e+00, %bb.g ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv59
  store double %.1.i, ptr %i.ah, align 8, !tbaa !26
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.loopexit, label %bb.c, !llvm.loop !368

._crit_edge46:                                    ; preds = %.loopexit, %.preheader
  tail call void @spg(i32 noundef %1, ptr noundef %4, ptr noundef %2, ptr noundef %3)
  tail call void @counteff(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %.loopexit35

.preheader33:                                     ; preds = %.preheader33.preheader, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.preheader33.preheader ], [ %indvars.iv.next53, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv52
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader33, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader33 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ak, align 8, !tbaa !26
  store <2 x double> splat (double 1.000000e+00), ptr %i.al, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader33, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader33 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count55
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !370

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit35, label %.preheader33, !llvm.loop !371

.loopexit35:                                      ; preds = %._crit_edge, %.preheader34, %bb.b, %._crit_edge46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @bscore_calc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
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

.lr.ph81.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv103 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next104, %.loopexit.us ] ; 3 uses
  %indvars.iv96 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next97, %.loopexit.us ] ; 2 uses
  %.087.us = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.bg, %.loopexit.us ]
  %.06186.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bi, %.loopexit.us ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph81.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge.us.us ], [ %indvars.iv96, %.lr.ph81.us ] ; 3 uses
  %.179.us.us = phi i64 [ %i.bg, %._crit_edge.us.us ], [ %.087.us, %.lr.ph81.us ]
  %.16278.us.us = phi i32 [ %i.bi, %._crit_edge.us.us ], [ %.06186.us, %.lr.ph81.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv98
  %i.n = load double, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv98
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.275.us.us = phi i64 [ %i.bg, %bb.b ], [ %.179.us.us, %.lr.ph.us.us ]
  %.26374.us.us = phi i32 [ %i.bi, %bb.b ], [ %.16278.us.us, %.lr.ph.us.us ]
  %.06473.us.us = phi i32 [ %i.x, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.06572.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 6 uses
  %i.t = zext i1 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14    ; 2 uses
  %i.w = icmp eq i8 %i.v, 45                      ; 6 uses
  %i.x = zext i1 %i.w to i32
  %i.y = xor i32 %.06572.us.us, 1                 ; 2 uses
  %i.z = select i1 %i.s, i32 %i.y, i32 0          ; 2 uses
  %i.aa = xor i32 %.06473.us.us, 1                ; 2 uses
  %i.ab = select i1 %i.s, i32 0, i32 %i.y
  %.v.us.us = select i1 %i.w, i32 %i.ab, i32 %i.z
  %i.ac = mul nuw nsw i32 %.v.us.us, %i.aa
  %i.ad = mul nuw nsw i32 %i.z, %.06473.us.us
  %i.ae = select i1 %i.s, i32 0, i32 %.06572.us.us ; 2 uses
  %i.af = mul nuw nsw i32 %i.ae, %i.aa
  %i.ag = select i1 %i.w, i32 %i.af, i32 %i.ad
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = mul nuw nsw i32 %i.ae, %.06473.us.us
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = select i1 %i.w, double %i.ak, double 0.000000e+00
  %i.am = fadd double %i.al, %i.ai
  %i.an = select i1 %i.s, i32 %.06572.us.us, i32 0
  %i.ao = mul nuw nsw i32 %i.an, %.06473.us.us
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = select i1 %i.w, double 0.000000e+00, double %i.ap
  %i.ar = fadd double %i.aq, %i.am
  %i.as = fptosi double %i.ar to i32
  %3 = zext nneg i32 %i.as to i64
  %i.at = mul nsw i64 %3, %i.h
  %i.au = sitofp i64 %i.at to double
  %i.av = sitofp i64 %.275.us.us to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.n, double %i.av)
  %i.ax = fptosi double %i.aw to i64
  %i.ay = sext i8 %i.r to i64
  %i.az = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ay
  %i.ba = sext i8 %i.v to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !13
  %i.bd = sitofp i32 %i.bc to double
  %i.be = sitofp i64 %i.ax to double
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.n, double %i.be)
  %i.bg = fptosi double %i.bf to i64              ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.s, %i.w
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.bh = zext i1 %mulbool.us.us to i32
  %i.bi = add nsw i32 %.26374.us.us, %i.bh        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !372

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !373

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge.loopexit, label %.lr.ph81.us, !llvm.loop !374

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.bj = sitofp i64 %i.bg to float
  %i.bk = sitofp i32 %i.bi to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bk, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bj, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.bl = fdiv float %.0.lcssa, %.061.lcssa
  %i.bm = fpext float %i.bl to double
  %i.bn = load i32, ptr @scoremtx, align 4, !tbaa !13
  %.not = icmp eq i32 %i.bn, 0
  %i.bo = uitofp i1 %.not to double
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double 4.000000e+02, double %i.bm)
  %i.bq = fptrunc double %i.bp to float
  ret float %i.bq
}

; Function Attrs: nounwind uwtable
define dso_local void @AllocateTmpSeqs(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @njob, align 4, !tbaa !13
  %i.b = add nsw i32 %2, 1                        ; 2 uses
  %i.c = tail call ptr @AllocateCharMtx(i32 noundef %i.a, i32 noundef %i.b) #33
  store ptr %i.c, ptr %0, align 8, !tbaa !32
  %i.d = tail call ptr @AllocateCharVec(i32 noundef %i.b) #33
  store ptr %i.d, ptr %1, align 8, !tbaa !18
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
  %i.a = load i8, ptr %.0, align 1, !tbaa !14     ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 0, label %bb.e
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.a, ptr %.06, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.b, %bb.c ], [ %.06, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !375

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %.06, align 1, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gappick(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !18
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
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod119 = trunc i32 %0 to i1
  br label %.preheader58.us.us

.preheader58.us.us:                               ; preds = %.preheader58.us.us.preheader, %bb.l
  %indvars.iv96 = phi i64 [ 0, %.preheader58.us.us.preheader ], [ %indvars.iv.next97, %bb.l ] ; 7 uses
  %.04567.us.us = phi i32 [ 0, %.preheader58.us.us.preheader ], [ %.146.us.us, %bb.l ] ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader58.us.us.new

.preheader58.us.us.new:                           ; preds = %.preheader58.us.us, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader58.us.us ] ; 4 uses
  %.060.us.us = phi i32 [ %.1.us.us.1, %bb.e ], [ 1, %.preheader58.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader58.us.us ]
  %.not55.us.us = icmp eq i64 %indvars.iv, %i.f
  br i1 %.not55.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader58.us.us.new
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv96
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = icmp eq i8 %i.m, 45
  %i.o = select i1 %i.n, i32 %.060.us.us, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader58.us.us.new
  %.1.us.us = phi i32 [ %i.o, %bb.b ], [ %.060.us.us, %.preheader58.us.us.new ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not55.us.us.1 = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not55.us.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv96
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = icmp eq i8 %i.s, 45
  %i.u = select i1 %i.t, i32 %.1.us.us, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us.us.1 = phi i32 [ %i.u, %bb.d ], [ %.1.us.us, %bb.c ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.preheader58.us.us.new, !llvm.loop !376

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader58.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader58.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.060.us.us.epil.init = phi i32 [ 1, %.preheader58.us.us ], [ %.1.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %.not55.us.us.epil = icmp eq i64 %indvars.iv.epil.init, %i.f
  br i1 %.not55.us.us.epil, label %._crit_edge.us.us, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv96
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, 45
  %i.aa = select i1 %i.z, i32 %.060.us.us.epil.init, i32 0
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %.epil.preheader, %bb.f, %._crit_edge.us.us.unr-lcssa
  %.1.us.us.lcssa = phi i32 [ %.1.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %i.aa, %bb.f ], [ %.060.us.us.epil.init, %.epil.preheader ]
  %i.ab = icmp eq i32 %.1.us.us.lcssa, 0
  br i1 %i.ab, label %.preheader57.us.us, label %bb.l

.preheader57.us.us:                               ; preds = %._crit_edge.us.us
  %i.ac = sext i32 %.04567.us.us to i64           ; 3 uses
  br i1 %i.i, label %.epil.preheader116, label %.preheader57.us.us.new

end_hunk_0
begin_hunk_1_@score_calc_s:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !411

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !412

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge.loopexit, label %.lr.ph79.us, !llvm.loop !413

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.az = sitofp i32 %i.ay to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.az, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aw, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.ba = fdiv float %.0.lcssa, %.061.lcssa
  %i.bb = fadd float %i.ba, 4.000000e+02
  ret float %i.bb
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @score_calc_for_score_s(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
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

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv94 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next95, %.loopexit.us ] ; 2 uses
  %indvars.iv87 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next88, %.loopexit.us ] ; 2 uses
  %.078.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %.05677.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.as, %.loopexit.us ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge.us.us ], [ %indvars.iv87, %.preheader.lr.ph.us ] ; 2 uses
  %.172.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.078.us, %.preheader.lr.ph.us ]
  %.15771.us.us = phi i32 [ %i.as, %._crit_edge.us.us ], [ %.05677.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv89
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.268.us.us = phi float [ %i.aq, %bb.b ], [ %.172.us.us, %.preheader.us.us ]
  %.25867.us.us = phi i32 [ %i.as, %bb.b ], [ %.15771.us.us, %.preheader.us.us ]
  %.05966.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06065.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14    ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 5 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 4 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.06065.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.05966.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.06065.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.06065.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.05966.us.us
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %mulbool.demorgan.us.us = or i1 %i.o, %i.s
  %mulbool.us.us = xor i1 %mulbool.demorgan.us.us, true
  %i.ar = zext i1 %mulbool.us.us to i32
  %i.as = add nsw i32 %.25867.us.us, %i.ar        ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !414

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !415

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !416

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.at = fpext float %i.aq to double
  %i.au = sitofp i32 %i.as to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.056.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.au, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.at, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.av = fdiv double %.0.lcssa, %.056.lcssa
  %i.aw = fadd double %i.av, 4.000000e+02
  ret double %i.aw
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore___(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
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
  %.166.us = phi float [ %.071.us, %.preheader.us ], [ %i.ay, %bb.b ]
  %.05764.us = phi i32 [ 0, %.preheader.us ], [ %i.s, %bb.b ] ; 3 uses
  %.05863.us = phi i32 [ 0, %.preheader.us ], [ %i.o, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14    ; 2 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 5 uses
  %i.o = zext i1 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14    ; 2 uses
  %i.r = icmp eq i8 %i.q, 45                      ; 5 uses
  %i.s = zext i1 %i.r to i32
  %i.t = xor i32 %.05863.us, 1                    ; 3 uses
  %i.u = select i1 %i.n, i32 %i.t, i32 0
  %i.v = xor i32 %.05764.us, 1                    ; 2 uses
  %i.w = select i1 %i.n, i32 0, i32 %.05863.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.n, i32 %i.t, i32 %.05863.us
  %i.z = select i1 %i.n, i32 0, i32 %i.t          ; 2 uses
  %.v.us = select i1 %i.r, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us, %i.v
  %i.ab = mul nuw nsw i32 %i.z, %.05764.us
  %i.ac = select i1 %i.r, i32 0, i32 %i.ab
  %i.ad = add nuw nsw i32 %i.aa, %i.ac
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = mul nuw nsw i32 %i.u, %.05764.us
  %i.ag = uitofp nneg i32 %i.af to double
  %i.ah = select i1 %i.r, double 0.000000e+00, double %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double %i.ae)
  %i.aj = uitofp nneg i32 %i.x to double
  %i.ak = select i1 %i.r, double %i.aj, double 0.000000e+00
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double 2.000000e+00, double %i.ai)
  %i.am = fptosi double %i.al to i32
  %3 = uitofp nneg i32 %i.am to float
  %i.an = fpext nnan ninf float %3 to double
  %i.ao = fmul nnan double %i.an, 5.000000e-01
  %i.ap = fpext float %.166.us to double
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.i, double %i.ap)
  %i.ar = fptrunc double %i.aq to float
  %i.as = sext i8 %i.m to i64
  %i.at = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.as
  %i.au = sext i8 %i.q to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !13
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fadd float %i.ax, %i.ar                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !417

..loopexit_crit_edge.us:                          ; preds = %bb.b, %.lr.ph72.split.us
  %.2.us = phi float [ %.071.us, %.lr.ph72.split.us ], [ %i.ay, %bb.b ] ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge.loopexit, label %.lr.ph72.split.us, !llvm.loop !418

.preheader.us:                                    ; preds = %.lr.ph72.split.us
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.bc = fpext float %.2.us to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph72, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bc, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph72 ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @SSPscore(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
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

.preheader.lr.ph.us:                              ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv84 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next85, %.loopexit.us ] ; 2 uses
  %.077.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84, %.preheader.lr.ph.us ] ; 2 uses
  %.171.us.us = phi float [ %i.aq, %._crit_edge.us.us ], [ %.077.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.267.us.us = phi float [ %i.aq, %bb.b ], [ %.171.us.us, %.preheader.us.us ]
  %.05865.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.05964.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14    ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 4 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 3 uses
  %i.t = zext i1 %i.s to i32
  %i.u = xor i32 %.05964.us.us, 1                 ; 3 uses
  %i.v = xor i32 %.05865.us.us, 1                 ; 2 uses
  %i.w = select i1 %i.o, i32 0, i32 %.05964.us.us
  %i.x = mul nuw nsw i32 %i.w, %i.v
  %i.y = select i1 %i.o, i32 %i.u, i32 %.05964.us.us
  %i.z = select i1 %i.o, i32 0, i32 %i.u
  %.v.us.us = select i1 %i.s, i32 %i.z, i32 %i.y
  %i.aa = mul nuw nsw i32 %.v.us.us, %i.v
  %i.ab = mul nuw nsw i32 %i.u, %.05865.us.us
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fadd float %i.ap, %i.aj                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !419

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !420

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge.loopexit, label %.preheader.lr.ph.us, !llvm.loop !421

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
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
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

.lr.ph84.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv105 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next106, %.loopexit.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %.05287.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bw, %.loopexit.us ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 4 uses
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %._crit_edge75.us.us, %.lr.ph84.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge75.us.us ], [ %indvars.iv100, %.lr.ph84.us ] ; 2 uses
  %.15382.us.us = phi double [ %i.bw, %._crit_edge75.us.us ], [ %.05287.us, %.lr.ph84.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph74.us.us
  %.072.us.us = phi double [ 0.000000e+00, %.lr.ph74.us.us ], [ %.3.us.us, %bb.g ] ; 3 uses
  %.05471.us.us = phi i32 [ 0, %.lr.ph74.us.us ], [ %i.bu, %bb.g ] ; 7 uses
  %i.n = sext i32 %.05471.us.us to i64            ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 2 uses
  %i.q = icmp eq i8 %i.p, 45
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sext i8 %i.p to i64
  %i.s = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = sitofp i32 %i.x to double
  %i.z = fadd double %.072.us.us, %i.y            ; 2 uses
  %i.aa = icmp eq i8 %i.u, 45
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd double %i.z, %i.i                  ; 2 uses
  %i.ac = add nsw i32 %.05471.us.us, 1
end_hunk_1
