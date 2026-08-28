Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@treeconstruction:bb.a
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
  %.018.ph.i = phi ptr [ %i.o, %bb.f ], [ %i.i, %bb.c ]
  %.017.ph.i = phi ptr [ %i.p, %bb.f ], [ %i.m, %bb.c ]
  %.016.ph.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.0.ph.i = phi i32 [ %i.v, %bb.f ], [ 0, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.outer.i
  %.018.i = phi ptr [ %i.o, %bb.e ], [ %.018.ph.i, %.outer.i ] ; 2 uses
  %.017.i = phi ptr [ %i.p, %bb.e ], [ %.017.ph.i, %.outer.i ] ; 2 uses
  %i.n = load i8, ptr %.018.i, align 1, !tbaa !8  ; 3 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 1 ; 2 uses
  %i.q = load i8, ptr %.017.i, align 1, !tbaa !8  ; 2 uses
  %i.r = icmp eq i8 %i.n, 45
  %i.s = icmp eq i8 %i.q, 45
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %bb.d, label %bb.f, !llvm.loop !354

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ne i8 %i.n, %i.q
  %i.u = zext i1 %i.t to i32
  %i.v = add nuw nsw i32 %.0.ph.i, %i.u
  %i.w = add nuw nsw i32 %.016.ph.i, 1
  br label %.outer.i, !llvm.loop !354

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
  %.087.us = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.ao, %.loopexit.us ]
  %.06186.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.ap, %.loopexit.us ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph81.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge.us.us ], [ %indvars.iv96, %.lr.ph81.us ] ; 3 uses
  %.179.us.us = phi i64 [ %i.ao, %._crit_edge.us.us ], [ %.087.us, %.lr.ph81.us ]
  %.16278.us.us = phi i32 [ %i.ap, %._crit_edge.us.us ], [ %.06186.us, %.lr.ph81.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv98
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv98
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.275.us.us = phi i64 [ %i.ao, %bb.b ], [ %.179.us.us, %.lr.ph.us.us ]
  %.26374.us.us = phi i32 [ %i.ap, %bb.b ], [ %.16278.us.us, %.lr.ph.us.us ]
  %.06473.us.us = phi i32 [ %i.x, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.06572.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 2 uses
  %i.t = zext i1 %i.s to i32                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8     ; 2 uses
  %i.w = icmp eq i8 %i.v, 45                      ; 2 uses
  %i.x = zext i1 %i.w to i32                      ; 3 uses
  %i.y = xor i32 %.06572.us.us, 1                 ; 2 uses
  %3 = and i32 %i.y, %i.t                         ; 2 uses
  %i.z = xor i32 %.06473.us.us, 1                 ; 2 uses
  %4 = xor i1 %i.w, true
  %5 = zext i1 %4 to i32                          ; 4 uses
  %6 = and i32 %3, %5
  %7 = and i32 %6, %i.z
  %8 = xor i1 %i.s, true
  %9 = zext i1 %8 to i32                          ; 3 uses
  %10 = and i32 %i.z, %i.x                        ; 2 uses
  %11 = and i32 %10, %i.y
  %12 = and i32 %11, %9
  %i.aa = add nuw nsw i32 %7, %12
  %13 = and i32 %.06473.us.us, %5
  %14 = and i32 %13, %3
  %15 = add nuw nsw i32 %i.aa, %14
  %16 = and i32 %.06572.us.us, %9                 ; 2 uses
  %17 = and i32 %10, %16
  %18 = add nuw nsw i32 %15, %17
  %19 = and i32 %16, %i.x
  %20 = and i32 %19, %.06473.us.us
  %21 = add nuw nsw i32 %18, %20
  %22 = and i32 %.06473.us.us, %.06572.us.us
  %23 = and i32 %22, %i.t
  %24 = and i32 %23, %5
  %25 = add nuw nsw i32 %21, %24
  %26 = zext nneg i32 %25 to i64
  %i.ab = mul nsw i64 %26, %i.h
  %i.ac = sitofp i64 %i.ab to double
  %i.ad = sitofp i64 %.275.us.us to double
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.n, double %i.ad)
  %i.af = fptosi double %i.ae to i64
  %i.ag = sext i8 %i.r to i64
  %i.ah = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ag
  %i.ai = sext i8 %i.v to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = sitofp i32 %i.ak to double
  %i.am = sitofp i64 %i.af to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.n, double %i.am)
  %i.ao = fptosi double %i.an to i64              ; 4 uses
  %27 = and i32 %5, %9
  %i.ap = add nsw i32 %27, %.26374.us.us          ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !362

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !363

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.aq = sitofp i64 %i.ao to float
  %i.ar = sitofp i32 %i.ap to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ar, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.aq, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.as = fdiv float %.0.lcssa, %.061.lcssa
  %i.at = fpext float %i.as to double
  %i.au = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.au, 0
  %i.av = uitofp i1 %.not to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double 4.000000e+02, double %i.at)
  %i.ax = fptrunc double %i.aw to float
  ret float %i.ax
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
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod119 = trunc i32 %0 to i1
  br label %.preheader58.us.us

.preheader58.us.us:                               ; preds = %.preheader58.us.us.preheader, %bb.j
  %indvars.iv96 = phi i64 [ 0, %.preheader58.us.us.preheader ], [ %indvars.iv.next97, %bb.j ] ; 7 uses
  %.04567.us.us = phi i32 [ 0, %.preheader58.us.us.preheader ], [ %.146.us.us, %bb.j ] ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader58.us.us.new

.preheader58.us.us.new:                           ; preds = %.preheader58.us.us, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader58.us.us ] ; 4 uses
  %.060.us.us = phi i32 [ %.1.us.us.1, %bb.e ], [ 1, %.preheader58.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader58.us.us ]
  %.not55.us.us = icmp eq i64 %indvars.iv, %i.f
  br i1 %.not55.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader58.us.us.new
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv96
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv96
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = icmp eq i8 %i.s, 45
  %i.u = select i1 %i.t, i32 %.1.us.us, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us.us.1 = phi i32 [ %i.u, %bb.d ], [ %.1.us.us, %bb.c ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.preheader58.us.us.new, !llvm.loop !365

.preheader57.us.us.new:                           ; preds = %.preheader57.us.us, %bb.i
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %bb.i ], [ 0, %.preheader57.us.us ] ; 4 uses
  %.04362.us.us = phi i32 [ %.144.us.us.1, %bb.i ], [ 0, %.preheader57.us.us ] ; 3 uses
  %niter121 = phi i64 [ %niter121.next.1, %bb.i ], [ 0, %.preheader57.us.us ]
  %.not54.us.us = icmp eq i64 %indvars.iv91, %i.f
  br i1 %.not54.us.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader57.us.us.new
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv91
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv96
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = sext i32 %.04362.us.us to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %3, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.an
  store i8 %i.y, ptr %i.ac, align 1, !tbaa !8
  %i.ad = add nsw i32 %.04362.us.us, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader57.us.us.new
  %.144.us.us = phi i32 [ %i.ad, %bb.f ], [ %.04362.us.us, %.preheader57.us.us.new ] ; 3 uses
  %indvars.iv.next92 = or disjoint i64 %indvars.iv91, 1 ; 2 uses
  %.not54.us.us.1 = icmp eq i64 %indvars.iv.next92, %i.f
  br i1 %.not54.us.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next92
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv96
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = sext i32 %.144.us.us to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  store i8 %i.ah, ptr %i.al, align 1, !tbaa !8
  %i.am = add nsw i32 %.144.us.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.144.us.us.1 = phi i32 [ %i.am, %bb.h ], [ %.144.us.us, %bb.g ] ; 2 uses
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %niter121.next.1 = add i64 %niter121, 2         ; 2 uses
  %niter121.ncmp.1 = icmp eq i64 %niter121.next.1, %unroll_iter120
  br i1 %niter121.ncmp.1, label %._crit_edge64.us.us.unr-lcssa, label %.preheader57.us.us.new, !llvm.loop !366

bb.j:                                             ; preds = %._crit_edge64.us.us, %._crit_edge.us.us
  %.146.us.us = phi i32 [ %i.bd, %._crit_edge64.us.us ], [ %.04567.us.us, %._crit_edge.us.us ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.preheader56.loopexit, label %.preheader58.us.us, !llvm.loop !367
end_hunk_0
begin_hunk_1_@score_calc_for_score:bb.a
  %i.ba = icmp slt i32 %i.az, %i.c
  br i1 %i.ba, label %bb.b, label %._crit_edge.us.us, !llvm.loop !392

._crit_edge.us.us:                                ; preds = %bb.i, %bb.h, %bb.d
  %.253.us.us = phi i32 [ %i.ac, %bb.d ], [ %i.av, %bb.h ], [ %.152.us.us, %bb.i ]
  %.2.us.us = phi double [ %i.ah, %bb.d ], [ %i.aw, %bb.h ], [ %.1.us.us, %bb.i ]
  %i.bb = sitofp i32 %.253.us.us to double
  %i.bc = fdiv double %.2.us.us, %i.bb
  %i.bd = fadd double %.15071.us.us, %i.bc        ; 3 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond90.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !393

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.049.lcssa = phi double [ 0.000000e+00, %bb.a ], [ +qnan, %.lr.ph ], [ %i.bd, %.loopexit.us ] ; 2 uses
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.29, double noundef %.049.lcssa) #31 ; 0 uses
  %i.bg = sitofp i32 %0 to double                 ; 2 uses
  %i.bh = fadd nnan double %i.bg, -1.000000e+00
  %i.bi = fmul double %i.bh, %i.bg
  %i.bj = fmul double %i.bi, 5.000000e-01
  %i.bk = fdiv double %.049.lcssa, %i.bj
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
  %.0103.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.at, %.loopexit.us ]
  %.077102.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.au, %.loopexit.us ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv119
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph97.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._crit_edge.us.us ], [ %indvars.iv112, %.lr.ph97.us ] ; 3 uses
  %.195.us.us = phi float [ %i.at, %._crit_edge.us.us ], [ %.0103.us, %.lr.ph97.us ]
  %.17894.us.us = phi i32 [ %i.au, %._crit_edge.us.us ], [ %.077102.us, %.lr.ph97.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv114
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv114
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.291.us.us = phi float [ %i.at, %bb.b ], [ %.195.us.us, %.lr.ph.us.us ]
  %.27990.us.us = phi i32 [ %i.au, %bb.b ], [ %.17894.us.us, %.lr.ph.us.us ]
  %.08089.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.08188.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 2 uses
  %i.u = zext i1 %i.t to i32                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 2 uses
  %i.y = zext i1 %i.x to i32                      ; 5 uses
  %i.z = xor i32 %.08188.us.us, 1                 ; 2 uses
  %3 = and i32 %i.z, %i.u                         ; 2 uses
  %i.aa = xor i32 %.08089.us.us, 1                ; 3 uses
  %4 = and i32 %3, %i.aa
  %5 = xor i1 %i.x, true
  %6 = zext i1 %5 to i32                          ; 5 uses
  %7 = and i32 %4, %6
  %8 = xor i1 %i.t, true
  %9 = zext i1 %8 to i32                          ; 3 uses
  %10 = and i32 %.08188.us.us, %9                 ; 2 uses
  %11 = and i32 %10, %i.aa                        ; 2 uses
  %12 = and i32 %11, %6
  %13 = add nuw nsw i32 %7, %12
  %14 = and i32 %i.z, %9                          ; 2 uses
  %15 = and i32 %i.aa, %i.y                       ; 2 uses
  %16 = and i32 %15, %14
  %17 = add nuw nsw i32 %13, %16
  %18 = and i32 %.08089.us.us, %6                 ; 2 uses
  %19 = and i32 %18, %14
  %20 = add nuw nsw i32 %17, %19
  %21 = and i32 %3, %.08089.us.us                 ; 2 uses
  %22 = and i32 %21, %6
  %23 = add nuw nsw i32 %20, %22
  %24 = and i32 %11, %i.y
  %i.ab = add nuw nsw i32 %23, %24
  %25 = and i32 %10, %.08089.us.us
  %26 = and i32 %25, %i.y
  %i.ac = add nuw nsw i32 %i.ab, %26
  %27 = and i32 %.08188.us.us, %i.u               ; 2 uses
  %28 = and i32 %18, %27
  %i.ad = add nuw nsw i32 %i.ac, %28
  %29 = and i32 %21, %i.y
  %i.ae = add nuw nsw i32 %i.ad, %29
  %30 = and i32 %15, %27
  %i.af = add nuw nsw i32 %i.ae, %30
  %i.ag = uitofp nneg i32 %i.af to float
  %i.ah = fpext nnan ninf float %i.ag to double
  %i.ai = fmul nnan double %i.ah, 5.000000e-01
  %i.aj = fmul double %i.ai, %i.h
  %i.ak = fpext float %.291.us.us to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.n, double %i.ak)
  %i.am = fptrunc double %i.al to float
  %i.an = sext i8 %i.s to i64
  %i.ao = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.an
  %i.ap = sext i8 %i.w to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = sitofp i32 %i.ar to float
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.q, float %i.am) ; 4 uses
  %31 = and i32 %6, %9
  %i.au = add nsw i32 %31, %.27990.us.us          ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !398

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !399

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.av = sitofp i32 %i.au to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.077.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.av, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.at, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.aw = fdiv float %.0.lcssa, %.077.lcssa
  %i.ax = fpext float %i.aw to double
  %i.ay = load i32, ptr @scoremtx, align 4, !tbaa !4
  %.not = icmp eq i32 %i.ay, 0
  %i.az = uitofp i1 %.not to double
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double 4.000000e+02, double %i.ax)
  %i.bb = fptrunc double %i.ba to float
  ret float %i.bb
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
  %.085.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.ap, %.loopexit.us ]
  %.06184.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.aq, %.loopexit.us ]
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv101
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph79.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.us.us ], [ %indvars.iv94, %.lr.ph79.us ] ; 3 uses
  %.177.us.us = phi float [ %i.ap, %._crit_edge.us.us ], [ %.085.us, %.lr.ph79.us ]
  %.16276.us.us = phi i32 [ %i.aq, %._crit_edge.us.us ], [ %.06184.us, %.lr.ph79.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv96
  %i.n = load double, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.n to float
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.273.us.us = phi float [ %i.ap, %bb.b ], [ %.177.us.us, %.lr.ph.us.us ]
  %.26372.us.us = phi i32 [ %i.aq, %bb.b ], [ %.16276.us.us, %.lr.ph.us.us ]
  %.06471.us.us = phi i32 [ %i.y, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.06570.us.us = phi i32 [ %i.u, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = icmp eq i8 %i.s, 45                      ; 2 uses
  %i.u = zext i1 %i.t to i32                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = icmp eq i8 %i.w, 45                      ; 2 uses
  %i.y = zext i1 %i.x to i32                      ; 3 uses
  %i.z = xor i32 %.06570.us.us, 1                 ; 2 uses
  %3 = and i32 %i.z, %i.u                         ; 2 uses
  %i.aa = xor i32 %.06471.us.us, 1                ; 3 uses
  %4 = xor i1 %i.x, true
  %5 = zext i1 %4 to i32                          ; 4 uses
  %6 = and i32 %3, %5
  %7 = and i32 %6, %i.aa
  %8 = xor i1 %i.t, true
  %9 = zext i1 %8 to i32                          ; 3 uses
  %10 = and i32 %i.aa, %.06570.us.us
  %11 = and i32 %10, %9                           ; 2 uses
  %12 = and i32 %11, %5
  %13 = add nuw nsw i32 %7, %12
  %14 = and i32 %i.z, %9                          ; 2 uses
  %15 = and i32 %14, %i.aa
  %16 = and i32 %15, %i.y
  %17 = add nuw nsw i32 %13, %16
  %18 = and i32 %.06471.us.us, %5                 ; 2 uses
  %19 = and i32 %18, %14
  %20 = add nuw nsw i32 %17, %19
  %21 = and i32 %18, %3
  %22 = add nuw nsw i32 %20, %21
  %23 = and i32 %11, %i.y
  %i.ab = add nuw nsw i32 %22, %23
  %i.ac = uitofp nneg i32 %i.ab to float
  %i.ad = fpext nnan ninf float %i.ac to double
  %i.ae = fmul nnan double %i.ad, 5.000000e-01
  %i.af = fmul double %i.ae, %i.h
  %i.ag = fpext float %.273.us.us to double
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.af, double %i.n, double %i.ag)
  %i.ai = fptrunc double %i.ah to float
  %i.aj = sext i8 %i.s to i64
  %i.ak = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.aj
  %i.al = sext i8 %i.w to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = sitofp i32 %i.an to float
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.q, float %i.ai) ; 4 uses
  %24 = and i32 %5, %9
  %i.aq = add nsw i32 %24, %.26372.us.us          ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !401

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !402

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ar = sitofp i32 %i.aq to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ar, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ap, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.as = fdiv float %.0.lcssa, %.061.lcssa
  %i.at = fadd float %i.as, 4.000000e+02
  ret float %i.at
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
  %.078.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aj, %.loopexit.us ]
  %.05677.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.ak, %.loopexit.us ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge.us.us ], [ %indvars.iv87, %.preheader.lr.ph.us ] ; 2 uses
  %.172.us.us = phi float [ %i.aj, %._crit_edge.us.us ], [ %.078.us, %.preheader.lr.ph.us ]
  %.15771.us.us = phi i32 [ %i.ak, %._crit_edge.us.us ], [ %.05677.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv89
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.268.us.us = phi float [ %i.aj, %bb.b ], [ %.172.us.us, %.preheader.us.us ]
  %.25867.us.us = phi i32 [ %i.ak, %bb.b ], [ %.15771.us.us, %.preheader.us.us ]
  %.05966.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.06065.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 2 uses
  %i.p = zext i1 %i.o to i32                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 2 uses
  %i.t = zext i1 %i.s to i32                      ; 3 uses
  %i.u = xor i32 %.06065.us.us, 1                 ; 2 uses
  %2 = and i32 %i.u, %i.p                         ; 2 uses
  %i.v = xor i32 %.05966.us.us, 1                 ; 3 uses
  %3 = xor i1 %i.s, true
  %4 = zext i1 %3 to i32                          ; 4 uses
  %5 = and i32 %2, %4
  %6 = and i32 %5, %i.v
  %7 = xor i1 %i.o, true
  %8 = zext i1 %7 to i32                          ; 3 uses
  %9 = and i32 %i.v, %.06065.us.us
  %10 = and i32 %9, %8                            ; 2 uses
  %11 = and i32 %10, %4
  %12 = add nuw nsw i32 %6, %11
  %13 = and i32 %i.u, %8                          ; 2 uses
  %14 = and i32 %13, %i.v
  %15 = and i32 %14, %i.t
  %16 = add nuw nsw i32 %12, %15
  %17 = and i32 %.05966.us.us, %4                 ; 2 uses
  %18 = and i32 %17, %13
  %19 = add nuw nsw i32 %16, %18
  %20 = and i32 %17, %2
  %21 = add nuw nsw i32 %19, %20
  %22 = and i32 %10, %i.t
  %i.w = add nuw nsw i32 %21, %22
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fpext nnan ninf float %i.x to double
  %i.z = fmul nnan double %i.y, 5.000000e-01
  %i.aa = fpext float %.268.us.us to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.h, double %i.aa)
  %i.ac = fptrunc double %i.ab to float
  %i.ad = sext i8 %i.n to i64
  %i.ae = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ad
  %i.af = sext i8 %i.r to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fadd float %i.ai, %i.ac                 ; 4 uses
  %23 = and i32 %4, %8
  %i.ak = add nsw i32 %23, %.25867.us.us          ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !404

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !405

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.al = fpext float %i.aj to double
  %i.am = sitofp i32 %i.ak to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.056.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.am, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.al, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %i.an = fdiv double %.0.lcssa, %.056.lcssa
  %i.ao = fadd double %i.an, 4.000000e+02
  ret double %i.ao
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
  %.166.us = phi float [ %.071.us, %.preheader.us ], [ %i.am, %bb.b ]
  %.05764.us = phi i32 [ 0, %.preheader.us ], [ %i.s, %bb.b ] ; 2 uses
  %.05863.us = phi i32 [ 0, %.preheader.us ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = icmp eq i8 %i.m, 45                      ; 2 uses
  %i.o = zext i1 %i.n to i32                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.r = icmp eq i8 %i.q, 45                      ; 2 uses
  %i.s = zext i1 %i.r to i32                      ; 3 uses
  %i.t = xor i32 %.05863.us, 1                    ; 2 uses
  %3 = and i32 %i.t, %i.o                         ; 2 uses
  %i.u = xor i32 %.05764.us, 1                    ; 3 uses
  %4 = xor i1 %i.r, true
  %5 = zext i1 %4 to i32                          ; 3 uses
  %6 = and i32 %3, %5
  %7 = and i32 %6, %i.u
  %8 = xor i1 %i.n, true
  %9 = zext i1 %8 to i32                          ; 2 uses
  %10 = and i32 %i.u, %.05863.us
  %11 = and i32 %10, %9                           ; 2 uses
  %12 = and i32 %11, %5
  %13 = add nuw nsw i32 %7, %12
  %14 = and i32 %i.t, %9                          ; 2 uses
  %15 = and i32 %14, %i.u
  %16 = and i32 %15, %i.s
  %i.v = add nuw nsw i32 %13, %16
  %17 = and i32 %.05764.us, %5                    ; 2 uses
  %18 = and i32 %17, %14
  %19 = add nuw nsw i32 %i.v, %18
  %i.w = uitofp nneg i32 %19 to double
  %20 = and i32 %17, %3
  %21 = uitofp nneg i32 %20 to double
  %i.x = tail call double @llvm.fmuladd.f64(double %21, double 2.000000e+00, double %i.w)
  %22 = and i32 %11, %i.s
  %23 = uitofp nneg i32 %22 to double
  %i.y = tail call double @llvm.fmuladd.f64(double %23, double 2.000000e+00, double %i.x)
  %i.z = fptosi double %i.y to i32
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fpext nnan ninf float %i.aa to double
  %i.ac = fmul nnan double %i.ab, 5.000000e-01
  %i.ad = fpext float %.166.us to double
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.i, double %i.ad)
  %i.af = fptrunc double %i.ae to float
  %i.ag = sext i8 %i.m to i64
  %i.ah = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ag
  %i.ai = sext i8 %i.q to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = sitofp i32 %i.ak to float
  %i.am = fadd float %i.al, %i.af                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !406

..loopexit_crit_edge.us:                          ; preds = %bb.b, %.lr.ph72.split.us
  %.2.us = phi float [ %.071.us, %.lr.ph72.split.us ], [ %i.am, %bb.b ] ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge.loopexit, label %.lr.ph72.split.us, !llvm.loop !407

.preheader.us:                                    ; preds = %.lr.ph72.split.us
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %i.aq = fpext float %.2.us to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph72, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.aq, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph72 ]
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
  %.077.us = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.aj, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %._crit_edge.us.us ], [ %indvars.iv84, %.preheader.lr.ph.us ] ; 2 uses
  %.171.us.us = phi float [ %i.aj, %._crit_edge.us.us ], [ %.077.us, %.preheader.lr.ph.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv86
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us ] ; 3 uses
  %.267.us.us = phi float [ %i.aj, %bb.b ], [ %.171.us.us, %.preheader.us.us ]
  %.05865.us.us = phi i32 [ %i.t, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %.05964.us.us = phi i32 [ %i.p, %bb.b ], [ 0, %.preheader.us.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8     ; 2 uses
  %i.o = icmp eq i8 %i.n, 45                      ; 2 uses
  %i.p = zext i1 %i.o to i32                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45                      ; 2 uses
  %i.t = zext i1 %i.s to i32                      ; 3 uses
  %i.u = xor i32 %.05964.us.us, 1                 ; 2 uses
  %2 = and i32 %i.u, %i.p                         ; 2 uses
  %i.v = xor i32 %.05865.us.us, 1                 ; 3 uses
  %3 = xor i1 %i.s, true
  %4 = zext i1 %3 to i32                          ; 3 uses
  %5 = and i32 %2, %4
  %6 = and i32 %5, %i.v
  %7 = xor i1 %i.o, true
  %8 = zext i1 %7 to i32                          ; 2 uses
  %9 = and i32 %i.v, %.05964.us.us
  %10 = and i32 %9, %8                            ; 2 uses
  %11 = and i32 %10, %4
  %12 = add nuw nsw i32 %6, %11
  %13 = and i32 %i.u, %8                          ; 2 uses
  %14 = and i32 %13, %i.v
  %15 = and i32 %14, %i.t
  %16 = add nuw nsw i32 %12, %15
  %17 = and i32 %.05865.us.us, %4                 ; 2 uses
  %18 = and i32 %17, %13
  %19 = add nuw nsw i32 %16, %18
  %20 = and i32 %17, %2
  %21 = add nuw nsw i32 %19, %20
  %22 = and i32 %10, %i.t
  %i.w = add nuw nsw i32 %21, %22
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fpext nnan ninf float %i.x to double
  %i.z = fmul nnan double %i.y, 5.000000e-01
  %i.aa = fpext float %.267.us.us to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.h, double %i.aa)
  %i.ac = fptrunc double %i.ab to float
  %i.ad = sext i8 %i.n to i64
  %i.ae = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ad
  %i.af = sext i8 %i.r to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fadd float %i.ai, %i.ac                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !409

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit.us, label %.preheader.us.us, !llvm.loop !410

._crit_edge.loopexit:                             ; preds = %.loopexit.us
  %i.ak = fpext float %i.aj to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ak, %._crit_edge.loopexit ], [ 0.000000e+00, %.lr.ph ]
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
  %.05287.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bw, %.loopexit.us ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv105
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 4 uses
  br label %.lr.ph74.us.us

.lr.ph74.us.us:                                   ; preds = %._crit_edge75.us.us, %.lr.ph84.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge75.us.us ], [ %indvars.iv100, %.lr.ph84.us ] ; 2 uses
  %.15382.us.us = phi double [ %i.bw, %._crit_edge75.us.us ], [ %.05287.us, %.lr.ph84.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph74.us.us
  %.072.us.us = phi double [ 0.000000e+00, %.lr.ph74.us.us ], [ %.3.us.us, %bb.g ] ; 3 uses
  %.05471.us.us = phi i32 [ 0, %.lr.ph74.us.us ], [ %i.bu, %bb.g ] ; 7 uses
  %i.n = sext i32 %.05471.us.us to i64            ; 3 uses
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
  %i.z = fadd double %.072.us.us, %i.y            ; 2 uses
  %i.aa = icmp eq i8 %i.u, 45
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd double %i.z, %i.i                  ; 2 uses
  %i.ac = add nsw i32 %.05471.us.us, 1
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
  %.256.lcssa.us.us = phi i32 [ %.05471.us.us, %bb.d ], [ %i.as, %._crit_edge.us.us.loopexit ] ; 2 uses
  %.2.lcssa.us.us = phi double [ %i.ab, %bb.d ], [ %i.ao, %._crit_edge.us.us.loopexit ] ; 2 uses
  %i.at = icmp sgt i32 %.256.lcssa.us.us, %i.f
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
  %i.bb = fadd double %.072.us.us, %i.ba
  %i.bc = fadd double %i.bb, %i.i                 ; 2 uses
  %i.bd = add nsw i32 %.05471.us.us, 1
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
  %.155.lcssa.us.us = phi i32 [ %.05471.us.us, %bb.f ], [ %i.bs, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %.1.lcssa.us.us = phi double [ %i.bc, %bb.f ], [ %i.bo, %._crit_edge68.us.us.loopexit ] ; 2 uses
  %i.bt = icmp sgt i32 %.155.lcssa.us.us, %i.f
  br i1 %i.bt, label %._crit_edge75.us.us, label %bb.g

bb.g:                                             ; preds = %._crit_edge68.us.us, %bb.e, %._crit_edge.us.us, %bb.c
  %.357.us.us = phi i32 [ %.05471.us.us, %bb.e ], [ %.155.lcssa.us.us, %._crit_edge68.us.us ], [ %.256.lcssa.us.us, %._crit_edge.us.us ], [ %.05471.us.us, %bb.c ]
  %.3.us.us = phi double [ %.072.us.us, %bb.e ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %i.z, %bb.c ] ; 2 uses
  %i.bu = add nsw i32 %.357.us.us, 1              ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.c
  br i1 %i.bv, label %bb.b, label %._crit_edge75.us.us, !llvm.loop !414

._crit_edge75.us.us:                              ; preds = %bb.g, %._crit_edge68.us.us, %._crit_edge.us.us
  %.4.us.us = phi double [ %.2.lcssa.us.us, %._crit_edge.us.us ], [ %.1.lcssa.us.us, %._crit_edge68.us.us ], [ %.3.us.us, %bb.g ]
  %i.bw = fadd double %.15382.us.us, %.4.us.us    ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph74.us.us, !llvm.loop !415

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph, %bb.a
  %.052.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph ], [ %i.bw, %.loopexit.us ]
  ret double %.052.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @searchAnchors(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 {
end_hunk_1
begin_hunk_2_@resetlocalhom:bb.a
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %indvars.iv
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.prol.preheader
  %.014.prol = phi ptr [ %i.h, %.prol.preheader ], [ %i.k, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.prol, i64 40
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !435
  %i.j = getelementptr inbounds nuw i8, ptr %.014.prol, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !440  ; 2 uses
  %.not.prol = icmp eq ptr %i.k, null
  br i1 %.not.prol, label %.prol.loopexit.unr-lcssa, label %bb.b, !llvm.loop !484

.prol.loopexit.unr-lcssa:                         ; preds = %bb.b
  %indvars.iv.next19.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv18.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next19.prol, %.prol.loopexit.unr-lcssa ]
  %i.l = icmp eq i64 %i.c, %indvars.iv21
  br i1 %i.l, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.f
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.1, %bb.f ], [ %indvars.iv18.unr, %.prol.loopexit ] ; 3 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %indvars.iv18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.new, %bb.c
  %.014 = phi ptr [ %i.m, %.lr.ph.new ], [ %i.p, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.014, i64 40
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !435
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !440  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !484

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %indvars.iv18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.014.1 = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.1, i64 40
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !435
  %i.t = getelementptr inbounds nuw i8, ptr %.014.1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !440  ; 2 uses
  %.not.1 = icmp eq ptr %i.u, null
  br i1 %.not.1, label %bb.f, label %bb.e, !llvm.loop !484

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next19.1 = add nuw nsw i64 %indvars.iv18, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next19.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !485

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gapireru(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #24 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.06 = phi ptr [ %0, %bb.a ], [ %.17, %bb.d ]   ; 3 uses
  %.05 = phi ptr [ %1, %bb.a ], [ %.1, %bb.d ]    ; 3 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %i.a, %bb.d ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.b = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.e
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 1
  %i.d = load i8, ptr %.05, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %storemerge = phi i8 [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  %.1 = phi ptr [ %i.c, %bb.c ], [ %.05, %bb.b ]
  %.17 = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %storemerge, ptr %.06, align 1, !tbaa !8
  br label %bb.b, !llvm.loop !486

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %.06, align 1, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @getkyokaigap(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not5 = icmp eq i32 %3, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sext i32 %2 to i64                       ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.08.prol = phi i32 [ %i.b, %.prol.preheader ], [ %3, %.lr.ph ]
  %.037.prol = phi ptr [ %i.g, %.prol.preheader ], [ %0, %.lr.ph ] ; 2 uses
  %.046.prol = phi ptr [ %i.c, %.prol.preheader ], [ %1, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.b = add nsw i32 %.08.prol, -1                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.046.prol, i64 8 ; 2 uses
  %i.d = load ptr, ptr %.046.prol, align 8, !tbaa !12
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %.037.prol, i64 1 ; 2 uses
  store i8 %i.f, ptr %.037.prol, align 1, !tbaa !8
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !487

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.08.unr = phi i32 [ %3, %.lr.ph ], [ %i.b, %.prol.preheader ]
  %.037.unr = phi ptr [ %0, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %.046.unr = phi ptr [ %1, %.lr.ph ], [ %i.c, %.prol.preheader ]
  %i.h = icmp ult i32 %3, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.08 = phi i32 [ %i.x, %.lr.ph.new ], [ %.08.unr, %.prol.loopexit ]
  %.037 = phi ptr [ %i.ac, %.lr.ph.new ], [ %.037.unr, %.prol.loopexit ] ; 5 uses
  %.046 = phi ptr [ %i.y, %.lr.ph.new ], [ %.046.unr, %.prol.loopexit ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %i.j = load ptr, ptr %.046, align 8, !tbaa !12
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 %i.a
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %.037, i64 1
  store i8 %i.l, ptr %.037, align 1, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.a
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.037, i64 2
  store i8 %i.q, ptr %i.m, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.046, i64 24
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.a
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.037, i64 3
  store i8 %i.v, ptr %i.r, align 1, !tbaa !8
  %i.x = add nsw i32 %.08, -4                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.046, i64 32
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.a
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.037, i64 4
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !8
  %.not.3 = icmp eq i32 %i.x, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !488

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @new_OpeningGapCount(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #9 {
bb.a:
  %.not29.a = icmp eq i32 %4, 0
  br i1 %.not29.a, label %._crit_edge39.split, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.a
  %i.a = zext i32 %4 to i64
  %i.b = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.b, i1 false), !tbaa !21
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph36.preheader, label %._crit_edge39.split

.lr.ph36.preheader:                               ; preds = %.preheader.thread
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.d = add nsw i32 %4, -1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = icmp eq i32 %4, 1
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph36.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !24
  %i.i = fptrunc double %i.h to float             ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = icmp eq i8 %i.m, 45                      ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph36
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.k, align 1, !tbaa !8
  %i.q = icmp eq i8 %i.p, 45                      ; 3 uses
  %not..prol = xor i1 %i.n, true
  %.not29.prol.not = and i1 %i.q, %not..prol
  br i1 %.not29.prol.not, label %bb.b, label %.prol.loopexit

bb.b:                                             ; preds = %.prol.preheader
  %i.r = load float, ptr %0, align 4, !tbaa !21
  %i.s = fadd float %i.r, %i.i
  store float %i.s, ptr %0, align 4, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b, %.lr.ph36
  %.in.unr = phi i32 [ %4, %.lr.ph36 ], [ %i.d, %bb.b ], [ %i.d, %.prol.preheader ]
  %.035.unr = phi ptr [ %i.k, %.lr.ph36 ], [ %i.o, %bb.b ], [ %i.o, %.prol.preheader ]
  %.134.unr = phi ptr [ %0, %.lr.ph36 ], [ %i.e, %bb.b ], [ %i.e, %.prol.preheader ]
  %.023.in33.unr = phi i1 [ %i.n, %.lr.ph36 ], [ %i.q, %bb.b ], [ %i.q, %.prol.preheader ]
  br i1 %i.f, label %._crit_edge, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.prol.loopexit, %bb.f
  %.in = phi i32 [ %i.z, %bb.f ], [ %.in.unr, %.prol.loopexit ]
  %.035 = phi ptr [ %i.aa, %bb.f ], [ %.035.unr, %.prol.loopexit ] ; 3 uses
  %.134 = phi ptr [ %i.ag, %bb.f ], [ %.134.unr, %.prol.loopexit ] ; 4 uses
  %.023.in33 = phi i1 [ %i.ac, %bb.f ], [ %.023.in33.unr, %.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.u = load i8, ptr %.035, align 1, !tbaa !8
  %i.v = icmp ne i8 %i.u, 45                      ; 2 uses
  %i.w = select i1 %i.v, i1 true, i1 %.023.in33
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph36.new
  %i.x = load float, ptr %.134, align 4, !tbaa !21
  %i.y = fadd float %i.x, %i.i
  store float %i.y, ptr %.134, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph36.new
  %i.z = add nsw i32 %.in, -2                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !8
  %i.ac = icmp eq i8 %i.ab, 45                    ; 2 uses
  %.not43 = and i1 %i.v, %i.ac
  br i1 %.not43, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.134, i64 4 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  %i.af = fadd float %i.ae, %i.i
  store float %i.af, ptr %i.ad, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.134, i64 8
  %.not27.1 = icmp eq i32 %i.z, 0
  br i1 %.not27.1, label %._crit_edge, label %.lr.ph36.new, !llvm.loop !489

._crit_edge:                                      ; preds = %bb.f, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge39.split, label %.lr.ph36, !llvm.loop !490

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a, %.preheader.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @new_OpeningGapCount_zure(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #9 {
bb.a:
  %i.a = add nsw i32 %4, 2                        ; 2 uses
  %.not38 = icmp eq i32 %i.a, 0
  br i1 %.not38, label %.preheader.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.c, i1 false), !tbaa !21
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph48, label %._crit_edge49

.preheader.thread:                                ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph45.preheader, label %._crit_edge49

.lr.ph48:                                         ; preds = %.preheader
  %.not3441 = icmp eq i32 %4, 0
  br i1 %.not3441, label %.lr.ph48.split.us.preheader, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %.preheader.thread, %.lr.ph48
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter69 = and i32 %4, 1
  %lcmp.mod70.not = icmp eq i32 %xtraiter69, 0
  %i.f = add nsw i32 %4, -1                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.h = icmp eq i32 %4, 1
  br label %.lr.ph45

.lr.ph48.split.us.preheader:                      ; preds = %.lr.ph48
  %wide.trip.count56 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count56, 1
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %.lr.ph48.split.us.epil.preheader, label %.lr.ph48.split.us.preheader.new

.lr.ph48.split.us.preheader.new:                  ; preds = %.lr.ph48.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count56, 2147483646
  br label %.lr.ph48.split.us

.lr.ph48.split.us:                                ; preds = %bb.d, %.lr.ph48.split.us.preheader.new
  %indvars.iv53 = phi i64 [ 0, %.lr.ph48.split.us.preheader.new ], [ %indvars.iv.next54.1, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph48.split.us.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv53
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 45
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv53
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = icmp ne i8 %i.n, 45
  %.not36.us = select i1 %i.o, i1 true, i1 %i.l
  br i1 %.not36.us, label %.lr.ph48.split.us.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph48.split.us
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv53
  %i.q = load double, ptr %i.p, align 8, !tbaa !24
  %i.r = fptrunc double %i.q to float
  %i.s = load float, ptr %0, align 4, !tbaa !21
  %i.t = fadd float %i.s, %i.r
  store float %i.t, ptr %0, align 4, !tbaa !21
  br label %.lr.ph48.split.us.1

.lr.ph48.split.us.1:                              ; preds = %bb.b, %.lr.ph48.split.us
  %indvars.iv.next54 = or disjoint i64 %indvars.iv53, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next54
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 45
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv.next54
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp ne i8 %i.y, 45
  %.not36.us.1 = select i1 %i.z, i1 true, i1 %i.w
  br i1 %.not36.us.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph48.split.us.1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next54
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24
  %i.ac = fptrunc double %i.ab to float
  %i.ad = load float, ptr %0, align 4, !tbaa !21
  %i.ae = fadd float %i.ad, %i.ac
  store float %i.ae, ptr %0, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph48.split.us.1
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge49.loopexit67.unr-lcssa, label %.lr.ph48.split.us, !llvm.loop !491

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24
  %i.ah = fptrunc double %i.ag to float           ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = icmp eq i8 %i.al, 45                    ; 2 uses
  br i1 %lcmp.mod70.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph45
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.ap = icmp eq i8 %i.ao, 45                    ; 5 uses
  %i.aq = xor i1 %i.am, true
  %mulbool.prol = and i1 %i.ap, %i.aq
  br i1 %mulbool.prol, label %bb.e, label %.prol.loopexit

bb.e:                                             ; preds = %.prol.preheader
  %i.ar = load float, ptr %0, align 4, !tbaa !21
  %i.as = fadd float %i.ar, %i.ah
  store float %i.as, ptr %0, align 4, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e, %.lr.ph45
  %.lcssa.unr = phi i1 [ poison, %.lr.ph45 ], [ %i.ap, %bb.e ], [ %i.ap, %.prol.preheader ]
  %.in.unr = phi i32 [ %4, %.lr.ph45 ], [ %i.f, %bb.e ], [ %i.f, %.prol.preheader ]
  %.044.unr = phi ptr [ %i.aj, %.lr.ph45 ], [ %i.an, %bb.e ], [ %i.an, %.prol.preheader ]
  %.143.unr = phi ptr [ %0, %.lr.ph45 ], [ %i.g, %bb.e ], [ %i.g, %.prol.preheader ]
  %.03042.unr = phi i1 [ %i.am, %.lr.ph45 ], [ %i.ap, %bb.e ], [ %i.ap, %.prol.preheader ]
  br i1 %i.h, label %._crit_edge, label %.lr.ph45.new

.lr.ph45.new:                                     ; preds = %.prol.loopexit, %bb.i
  %.in = phi i32 [ %i.ay, %bb.i ], [ %.in.unr, %.prol.loopexit ]
  %.044 = phi ptr [ %i.az, %bb.i ], [ %.044.unr, %.prol.loopexit ] ; 3 uses
  %.143 = phi ptr [ %i.bf, %bb.i ], [ %.143.unr, %.prol.loopexit ] ; 4 uses
  %.03042 = phi i1 [ %i.bb, %bb.i ], [ %.03042.unr, %.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %i.au = load i8, ptr %.044, align 1, !tbaa !8
  %i.av = icmp ne i8 %i.au, 45                    ; 2 uses
  %mulbool.not = or i1 %i.av, %.03042
  br i1 %mulbool.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph45.new
  %i.aw = load float, ptr %.143, align 4, !tbaa !21
  %i.ax = fadd float %i.aw, %i.ah
  store float %i.ax, ptr %.143, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph45.new
end_hunk_2
begin_hunk_3_@new_FinalGapCount:bb.a
  br label %.lr.ph45.split.us

.lr.ph45.split.us:                                ; preds = %.lr.ph45.split.us.preheader, %bb.c
  %indvars.iv50 = phi i64 [ 0, %.lr.ph45.split.us.preheader ], [ %indvars.iv.next51, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv50
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = icmp eq i8 %i.j, 45
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv50
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = icmp ne i8 %i.m, 45
  %mulbool.us = and i1 %i.k, %i.n
  br i1 %mulbool.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph45.split.us
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv50
  %i.p = load double, ptr %i.o, align 8, !tbaa !24
  %i.q = fptrunc double %i.p to float
  %i.r = load float, ptr %0, align 4, !tbaa !21
  %i.s = fadd float %i.r, %i.q
  store float %i.s, ptr %0, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph45.split.us
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge46, label %.lr.ph45.split.us, !llvm.loop !495

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph42.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !24
  %i.v = fptrunc double %i.u to float             ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12   ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp eq i8 %i.y, 45                      ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = icmp eq i8 %i.ab, 45                    ; 5 uses
  %i.ad = xor i1 %i.ac, true
  %mulbool34.prol = and i1 %i.z, %i.ad
  br i1 %mulbool34.prol, label %bb.d, label %.prol.loopexit

bb.d:                                             ; preds = %.prol.preheader
  %i.ae = load float, ptr %0, align 4, !tbaa !21
  %i.af = fadd float %i.ae, %i.v
  store float %i.af, ptr %0, align 4, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.d, %.lr.ph42
  %.lcssa.unr = phi i1 [ poison, %.lr.ph42 ], [ %i.ac, %bb.d ], [ %i.ac, %.prol.preheader ]
  %.in.unr = phi i32 [ %4, %.lr.ph42 ], [ %i.e, %bb.d ], [ %i.e, %.prol.preheader ]
  %.041.unr = phi ptr [ %i.x, %.lr.ph42 ], [ %i.aa, %bb.d ], [ %i.aa, %.prol.preheader ]
  %.140.unr = phi ptr [ %0, %.lr.ph42 ], [ %i.f, %bb.d ], [ %i.f, %.prol.preheader ]
  %.029.in39.unr = phi i1 [ %i.z, %.lr.ph42 ], [ %i.ac, %bb.d ], [ %i.ac, %.prol.preheader ]
  br i1 %i.g, label %._crit_edge, label %.lr.ph42.new

.lr.ph42.new:                                     ; preds = %.prol.loopexit, %bb.h
  %.in = phi i32 [ %i.al, %bb.h ], [ %.in.unr, %.prol.loopexit ]
  %.041 = phi ptr [ %i.am, %bb.h ], [ %.041.unr, %.prol.loopexit ] ; 2 uses
  %.140 = phi ptr [ %i.as, %bb.h ], [ %.140.unr, %.prol.loopexit ] ; 4 uses
  %.029.in39 = phi i1 [ %i.ao, %bb.h ], [ %.029.in39.unr, %.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.041, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp ne i8 %i.ah, 45                    ; 2 uses
  %mulbool34 = and i1 %.029.in39, %i.ai
  br i1 %mulbool34, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph42.new
  %i.aj = load float, ptr %.140, align 4, !tbaa !21
  %i.ak = fadd float %i.aj, %i.v
  store float %i.ak, ptr %.140, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph42.new
  %i.al = add nsw i32 %.in, -2                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.041, i64 2 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = icmp eq i8 %i.an, 45                    ; 3 uses
  %mulbool34.1.not = or i1 %i.ai, %i.ao
  br i1 %mulbool34.1.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.140, i64 4 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !21
  %i.ar = fadd float %i.aq, %i.v
  store float %i.ar, ptr %i.ap, align 4, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.140, i64 8 ; 2 uses
  %.not33.1 = icmp eq i32 %i.al, 0
  br i1 %.not33.1, label %._crit_edge, label %.lr.ph42.new, !llvm.loop !496

._crit_edge:                                      ; preds = %bb.h, %.prol.loopexit
  %.lcssa62 = phi ptr [ %i.f, %.prol.loopexit ], [ %i.as, %bb.h ] ; 2 uses
  %.lcssa = phi i1 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ao, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = icmp ne i8 %i.au, 45
  %mulbool = and i1 %.lcssa, %i.av
  br i1 %mulbool, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.aw = load float, ptr %.lcssa62, align 4, !tbaa !21
  %i.ax = fadd float %i.aw, %i.v
  store float %i.ax, ptr %.lcssa62, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge46, label %.lr.ph42, !llvm.loop !495

._crit_edge46:                                    ; preds = %bb.j, %bb.c, %.preheader.thread, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @st_OpeningGapCount(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %.not31 = icmp eq i32 %4, 0
  br i1 %.not31, label %._crit_edge41.split, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.a
  %i.a = zext i32 %4 to i64
  %i.b = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.b, i1 false), !tbaa !21
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph38.preheader, label %._crit_edge41.split

.lr.ph38.preheader:                               ; preds = %.preheader.thread
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter = and i32 %4, 1
  %i.d = icmp eq i32 %4, 1
  %unroll_iter = and i32 %4, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod45 = trunc i32 %4 to i1
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph38.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !24
  %i.g = fptrunc double %i.f to float             ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  br i1 %i.d, label %.epil.preheader, label %.lr.ph38.new

.lr.ph38.new:                                     ; preds = %.lr.ph38, %bb.e
  %.037 = phi ptr [ %i.o, %bb.e ], [ %i.i, %.lr.ph38 ] ; 3 uses
  %.136 = phi ptr [ %i.u, %bb.e ], [ %0, %.lr.ph38 ] ; 4 uses
  %.02335 = phi i1 [ %i.q, %bb.e ], [ false, %.lr.ph38 ]
  %niter = phi i32 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph38 ]
  %i.j = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.k = load i8, ptr %.037, align 1, !tbaa !8
  %i.l = icmp ne i8 %i.k, 45                      ; 2 uses
  %.not29 = or i1 %.02335, %i.l
  br i1 %.not29, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph38.new
  %i.m = load float, ptr %.136, align 4, !tbaa !21
  %i.n = fadd float %i.m, %i.g
  store float %i.n, ptr %.136, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph38.new
  %i.o = getelementptr inbounds nuw i8, ptr %.037, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.j, align 1, !tbaa !8
  %i.q = icmp eq i8 %i.p, 45                      ; 3 uses
  %.not29.1.not = and i1 %i.l, %i.q
  br i1 %.not29.1.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.136, i64 4 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !21
  %i.t = fadd float %i.s, %i.g
  store float %i.t, ptr %i.r, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.136, i64 8 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph38.new, !llvm.loop !497

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph38
  %.037.epil.init = phi ptr [ %i.i, %.lr.ph38 ], [ %i.o, %._crit_edge.unr-lcssa ]
  %.136.epil.init = phi ptr [ %0, %.lr.ph38 ], [ %i.u, %._crit_edge.unr-lcssa ] ; 2 uses
  %.02335.epil.init = phi i1 [ false, %.lr.ph38 ], [ %i.q, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.v = load i8, ptr %.037.epil.init, align 1, !tbaa !8
  %i.w = icmp ne i8 %i.v, 45
  %.not29.epil = or i1 %i.w, %.02335.epil.init
  br i1 %.not29.epil, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.x = load float, ptr %.136.epil.init, align 4, !tbaa !21
  %i.y = fadd float %i.x, %i.g
  store float %i.y, ptr %.136.epil.init, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge41.split, label %.lr.ph38, !llvm.loop !498

._crit_edge41.split:                              ; preds = %._crit_edge, %bb.a, %.preheader.thread
  %i.z = sext i32 %4 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.z
  store float 0.000000e+00, ptr %i.aa, align 4, !tbaa !21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @st_FinalGapCount_zure(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = add nsw i32 %4, 1                        ; 2 uses
  %.not32 = icmp eq i32 %i.a, 0
  br i1 %.not32, label %.preheader.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.c, i1 false), !tbaa !21
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph43, label %._crit_edge44

.preheader.thread:                                ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph43.thread, label %._crit_edge44

.lr.ph43.thread:                                  ; preds = %.preheader.thread
  %.13555 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph40.preheader

.lr.ph43:                                         ; preds = %.preheader
  %.135 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %.not3136 = icmp eq i32 %4, 0
  br i1 %.not3136, label %.lr.ph43.split.us.preheader, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.lr.ph43.thread, %.lr.ph43
  %.13557 = phi ptr [ %.13555, %.lr.ph43.thread ], [ %.135, %.lr.ph43 ] ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %xtraiter62 = and i32 %4, 1
  %lcmp.mod63.not = icmp eq i32 %xtraiter62, 0
  %i.f = add nsw i32 %4, -1                       ; 2 uses
  %.1.prol = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = icmp eq i32 %4, 1
  br label %.lr.ph40

.lr.ph43.split.us.preheader:                      ; preds = %.lr.ph43
  %wide.trip.count50 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count50, 1
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %.lr.ph43.split.us.epil.preheader, label %.lr.ph43.split.us.preheader.new

.lr.ph43.split.us.preheader.new:                  ; preds = %.lr.ph43.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count50, 2147483646
  br label %.lr.ph43.split.us

.lr.ph43.split.us:                                ; preds = %bb.d, %.lr.ph43.split.us.preheader.new
  %indvars.iv47 = phi i64 [ 0, %.lr.ph43.split.us.preheader.new ], [ %indvars.iv.next48.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph43.split.us.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv47
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %bb.b, label %.lr.ph43.split.us.1

bb.b:                                             ; preds = %.lr.ph43.split.us
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv47
  %i.n = load double, ptr %i.m, align 8, !tbaa !24
  %i.o = fptrunc double %i.n to float
  %i.p = load float, ptr %.135, align 4, !tbaa !21
  %i.q = fadd float %i.p, %i.o
  store float %i.q, ptr %.135, align 4, !tbaa !21
  br label %.lr.ph43.split.us.1

.lr.ph43.split.us.1:                              ; preds = %bb.b, %.lr.ph43.split.us
  %indvars.iv.next48 = or disjoint i64 %indvars.iv47, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = icmp eq i8 %i.t, 45
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph43.split.us.1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next48
  %i.w = load double, ptr %i.v, align 8, !tbaa !24
  %i.x = fptrunc double %i.w to float
  %i.y = load float, ptr %.135, align 4, !tbaa !21
  %i.z = fadd float %i.y, %i.x
  store float %i.z, ptr %.135, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph43.split.us.1
  %indvars.iv.next48.1 = add nuw nsw i64 %indvars.iv47, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge44.loopexit60.unr-lcssa, label %.lr.ph43.split.us, !llvm.loop !499

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph40.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !24
  %i.ac = fptrunc double %i.ab to float           ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp eq i8 %i.af, 45                    ; 2 uses
  br i1 %lcmp.mod63.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = icmp eq i8 %i.ai, 45                    ; 5 uses
  %i.ak = xor i1 %i.aj, true
  %mulbool.prol = and i1 %i.ag, %i.ak
  br i1 %mulbool.prol, label %bb.e, label %.prol.loopexit

bb.e:                                             ; preds = %.prol.preheader
  %i.al = load float, ptr %.13557, align 4, !tbaa !21
  %i.am = fadd float %i.al, %i.ac
  store float %i.am, ptr %.13557, align 4, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e, %.lr.ph40
  %.lcssa.unr = phi i1 [ poison, %.lr.ph40 ], [ %i.aj, %bb.e ], [ %i.aj, %.prol.preheader ]
  %.in.unr = phi i32 [ %4, %.lr.ph40 ], [ %i.f, %bb.e ], [ %i.f, %.prol.preheader ]
  %.139.unr = phi ptr [ %.13557, %.lr.ph40 ], [ %.1.prol, %bb.e ], [ %.1.prol, %.prol.preheader ]
  %.038.unr = phi ptr [ %i.ae, %.lr.ph40 ], [ %i.ah, %bb.e ], [ %i.ah, %.prol.preheader ]
  %.027.in37.unr = phi i1 [ %i.ag, %.lr.ph40 ], [ %i.aj, %bb.e ], [ %i.aj, %.prol.preheader ]
  br i1 %i.g, label %._crit_edge, label %.lr.ph40.new

.lr.ph40.new:                                     ; preds = %.prol.loopexit, %bb.i
  %.in = phi i32 [ %i.as, %bb.i ], [ %.in.unr, %.prol.loopexit ]
  %.139 = phi ptr [ %.1.1, %bb.i ], [ %.139.unr, %.prol.loopexit ] ; 4 uses
  %.038 = phi ptr [ %i.at, %bb.i ], [ %.038.unr, %.prol.loopexit ] ; 2 uses
  %.027.in37 = phi i1 [ %i.av, %bb.i ], [ %.027.in37.unr, %.prol.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.038, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = icmp ne i8 %i.ao, 45                    ; 2 uses
  %mulbool = and i1 %.027.in37, %i.ap
  br i1 %mulbool, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph40.new
  %i.aq = load float, ptr %.139, align 4, !tbaa !21
  %i.ar = fadd float %i.aq, %i.ac
  store float %i.ar, ptr %.139, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph40.new
  %i.as = add nsw i32 %.in, -2                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.038, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = icmp eq i8 %i.au, 45                    ; 3 uses
  %mulbool.1.not = or i1 %i.ap, %i.av
  br i1 %mulbool.1.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.1 = getelementptr inbounds nuw i8, ptr %.139, i64 4 ; 2 uses
  %i.aw = load float, ptr %.1, align 4, !tbaa !21
  %i.ax = fadd float %i.aw, %i.ac
  store float %i.ax, ptr %.1, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.1 = getelementptr inbounds nuw i8, ptr %.139, i64 8 ; 2 uses
  %.not31.1 = icmp eq i32 %i.as, 0
  br i1 %.not31.1, label %._crit_edge, label %.lr.ph40.new, !llvm.loop !500

._crit_edge:                                      ; preds = %bb.i, %.prol.loopexit
  %.1.lcssa = phi ptr [ %.1.prol, %.prol.loopexit ], [ %.1.1, %bb.i ] ; 2 uses
  %.lcssa = phi i1 [ %.lcssa.unr, %.prol.loopexit ], [ %i.av, %bb.i ]
  br i1 %.lcssa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ay = load float, ptr %.1.lcssa, align 4, !tbaa !21
  %i.az = fadd float %i.ay, %i.ac
  store float %i.az, ptr %.1.lcssa, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge44, label %.lr.ph40, !llvm.loop !499

._crit_edge44.loopexit60.unr-lcssa:               ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge44, label %.lr.ph43.split.us.epil.preheader

.lr.ph43.split.us.epil.preheader:                 ; preds = %._crit_edge44.loopexit60.unr-lcssa, %.lr.ph43.split.us.preheader
  %indvars.iv47.epil.init = phi i64 [ 0, %.lr.ph43.split.us.preheader ], [ %indvars.iv.next48.1, %._crit_edge44.loopexit60.unr-lcssa ] ; 2 uses
end_hunk_3
