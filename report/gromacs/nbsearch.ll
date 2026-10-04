Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nbsearch?download=true
inline.NumInlined: 744
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii:bb.a
  %5 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  store <2 x float> %1, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.a = icmp eq i32 %4, 2
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp slt i32 %4, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 3 uses
  %i.d = sext i32 %4 to i64                       ; 2 uses
  %i.e = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.d, 1     ; 5 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.prol
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47
  %i.h = sitofp i32 %i.g to float
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next.prol
  %i.j = load float, ptr %i.i, align 4, !tbaa !81
  %i.k = fsub float %i.h, %i.j                    ; 4 uses
  %i.l = fcmp olt float %i.k, -1.000000e+00
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.prol.preheader
  %i.m = fcmp ugt float %i.k, 0.000000e+00
  br i1 %i.m, label %bb.d, label %.prol.loopexit

bb.c:                                             ; preds = %.prol.preheader
  %i.n = fadd float %i.k, 1.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.prol = phi float [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.o = fmul float %.0.prol, %.0.prol
  %i.p = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next.prol
  %i.q = load float, ptr %i.p, align 4, !tbaa !81 ; 2 uses
  %i.r = fmul float %i.o, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.q, float 0.000000e+00) ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %bb.b, %bb.d, %.lr.ph
  %.1.lcssa.unr = phi float [ poison, %.lr.ph ], [ %i.s, %bb.d ], [ 0.000000e+00, %bb.b ]
  %indvars.iv.unr = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next.prol, %bb.d ], [ %indvars.iv.next.prol, %bb.b ]
  %.01927.unr = phi float [ 0.000000e+00, %.lr.ph ], [ %i.s, %bb.d ], [ 0.000000e+00, %bb.b ]
  %i.t = icmp eq i32 %4, 1
  br i1 %i.t, label %._crit_edge, label %.lr.ph.new

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !42
  br label %bb.o

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.m, %.preheader
  %.019.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.1.lcssa.unr, %.prol.loopexit ], [ %.1.1, %bb.m ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load float, ptr %i.w, align 8, !tbaa !43 ; 2 uses
  %i.y = fcmp ult float %.019.lcssa, %i.x
  br i1 %i.y, label %bb.n, label %bb.o

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.m ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.01927 = phi float [ %.1.1, %bb.m ], [ %.01927.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !81
  %i.ae = fsub float %i.ab, %i.ad                 ; 4 uses
  %i.af = fcmp olt float %i.ae, -1.000000e+00
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.new
  %i.ag = fadd float %i.ae, 1.000000e+00
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.new
  %i.ah = fcmp ugt float %i.ae, 0.000000e+00
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi float [ %i.ag, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ai = fmul float %.0, %.0
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !81 ; 2 uses
  %i.al = fmul float %i.ai, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ak, float %.01927)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi float [ %i.am, %bb.h ], [ %.01927, %bb.g ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 4 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !47
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next.1
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !81
  %i.as = fsub float %i.ap, %i.ar                 ; 4 uses
  %i.at = fcmp olt float %i.as, -1.000000e+00
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = fcmp ugt float %i.as, 0.000000e+00
  br i1 %i.au, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.av = fadd float %i.as, 1.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.1 = phi float [ %i.av, %bb.k ], [ %i.as, %bb.j ] ; 2 uses
  %i.aw = fmul float %.0.1, %.0.1
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next.1
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !81 ; 2 uses
  %i.az = fmul float %i.aw, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ay, float %.1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.1.1 = phi float [ %i.ba, %bb.l ], [ %.1, %bb.j ] ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv, 0
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !1

bb.n:                                             ; preds = %._crit_edge
  %i.bb = fsub float %i.x, %.019.lcssa
  %i.bc = tail call noundef float @sqrtf(float noundef %i.bb) #35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge, %bb.e
  %.121 = phi float [ %i.v, %bb.e ], [ %i.bc, %bb.n ], [ 0.000000e+00, %._crit_edge ]
  ret float %.121
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef zeroext i1 @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl8nextCellEPKfPiS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #20 align 2 {
bb.a:
  %4 = alloca %"class.gmx::BasicVector", align 8  ; 9 uses
  %5 = alloca %"class.gmx::BasicVector", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 441
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %.sroa.2.0..sroa_idx.i44.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 442
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  br label %.preheader27

.preheader27:                                     ; preds = %bb.a, %._crit_edge
  %.02334 = phi i32 [ 0, %bb.a ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.q = sext i32 %.02334 to i64                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47   ; 2 uses
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !47
  %i.u = getelementptr inbounds [4 x i8], ptr %3, i64 %i.q
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %.not32 = icmp slt i32 %i.s, %i.v
  br i1 %.not32, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader27
  %i.w = sext i32 %.02334 to i64
  %i.x = load i8, ptr %i.d, align 1, !range !94
  %i.y = trunc nuw i8 %i.x to i1
  br label %.preheader

.loopexit:                                        ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit
  %i.z = and i64 %indvars.iv48, 4294967295        ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47 ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !47
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !47
  %.not = icmp slt i32 %i.ab, %i.ae
  br i1 %.not, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.133 = phi i64 [ %indvars.iv48, %.loopexit ], [ %i.w, %.preheader.preheader ] ; 4 uses
  %i.af = icmp sgt i64 %.133, 0
  br i1 %i.af, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = load <2 x float>, ptr %1, align 4, !tbaa !81 ; 5 uses
  %i.ah = load float, ptr %i.c, align 4, !tbaa !81 ; 3 uses
  %i.ai = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.aj = load float, ptr %i.f, align 4
  %i.ak = fsub float %i.ai, %i.aj
  %i.al = load float, ptr %i.f, align 4
  %i.am = extractelement <2 x float> %i.ag, i64 0
  %i.an = fadd float %i.am, %i.al
  %i.ao = load float, ptr %i.i, align 4
  %i.ap = load float, ptr %i.i, align 4
  %i.aq = load float, ptr %i.j, align 8
  %i.ar = extractelement <2 x float> %i.ag, i64 1
  %i.as = fsub float %i.ar, %i.aq
  %i.at = load float, ptr %i.j, align 8
  %i.au = extractelement <2 x float> %i.ag, i64 1
  %i.av = fadd float %i.au, %i.at
  %i.aw = load float, ptr %i.l, align 8           ; 2 uses
  %i.ax = load float, ptr %i.m, align 4
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.ay = trunc nsw i64 %indvars.iv48 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader27
  %.1.lcssa = phi i32 [ %.02334, %.preheader27 ], [ %i.ay, %._crit_edge.loopexit ] ; 2 uses
  %i.az = add nsw i32 %.1.lcssa, 1
  %i.ba = icmp slt i32 %.1.lcssa, 2
  br i1 %i.ba, label %.preheader27, label %.thread, !llvm.loop !184

bb.b:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit
  %i.bb = icmp sgt i64 %indvars.iv48, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bb, label %.lr.ph, label %.thread, !llvm.loop !183

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 3 uses
  %indvars.iv48 = phi i64 [ %.133, %.lr.ph.preheader ], [ %indvars.iv.next49, %bb.b ] ; 11 uses
  %reass.sub53 = sub i64 %indvar, %.133
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store <2 x float> %i.ag, ptr %5, align 8, !tbaa !81
  store float %i.ah, ptr %i.b, align 8, !tbaa !81
  br i1 %i.y, label %bb.c, label %._crit_edge38

bb.c:                                             ; preds = %.lr.ph
  %i.bc = trunc nsw i64 %indvars.iv.next49 to i32
  switch i32 %i.bc, label %._crit_edge38 [
    i32 0, label %bb.d
    i32 1, label %..thread_crit_edge.i
  ]

..thread_crit_edge.i:                             ; preds = %bb.c
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !47
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.bd = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !47 ; 5 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !47
  %.not.i = icmp slt i32 %i.bd, %i.bf
  br i1 %.not.i, label %bb.f, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi float [ %i.an, %bb.d ], [ %i.ak, %bb.e ] ; 2 uses
  store float %.sink.i, ptr %5, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.e
  %i.bg = phi float [ %i.ai, %bb.e ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  %i.bh = load i32, ptr %i.g, align 4, !tbaa !47  ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = fadd float %i.bg, %i.ap
  store float %i.bj, ptr %5, align 8, !tbaa !81
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  %i.bk = load i32, ptr %i.h, align 4, !tbaa !47
  %.not38.i = icmp slt i32 %i.bh, %i.bk
  br i1 %.not38.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = fsub float %i.bg, %i.ao
  store float %i.bl, ptr %5, align 8, !tbaa !81
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g, %..thread_crit_edge.i
  %i.bm = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.bd, %bb.h ], [ %i.bd, %bb.i ], [ %i.bd, %bb.g ] ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %.preheader.i.thread.sink.split.i, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !47
  %.not39.i = icmp slt i32 %i.bm, %i.bo
  br i1 %.not39.i, label %.preheader.i.thread.i, label %.preheader.i.thread.sink.split.i

.preheader.i.thread.sink.split.i:                 ; preds = %bb.j, %.thread.i
  %.sink51.i = phi float [ %i.av, %.thread.i ], [ %i.as, %bb.j ]
  store float %.sink51.i, ptr %i.a, align 4, !tbaa !81
  br label %.preheader.i.thread.i

.preheader.i.thread.i:                            ; preds = %.preheader.i.thread.sink.split.i, %bb.j
  %.sroa.06.0.copyload43.i = load <2 x float>, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.06.0.copyload43.i, ptr %4, align 8
  store float %i.ah, ptr %.sroa.2.0..sroa_idx.i44.i, align 8
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i, %.preheader.i.thread.i
  %6 = sub i64 %indvar, %.133
  %7 = and i64 %6, 1
  %lcmp.mod.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv48
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !47
  %i.br = sitofp i32 %i.bq to float
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv48
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !81
  %i.bu = fsub float %i.br, %i.bt                 ; 4 uses
  %i.bv = fcmp olt float %i.bu, -1.000000e+00
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.prol
  %8 = fcmp ugt float %i.bu, 0.000000e+00
  br i1 %8, label %bb.m, label %.lr.ph.i.i.prol.loopexit

bb.l:                                             ; preds = %.lr.ph.i.i.prol
  %9 = fadd float %i.bu, 1.000000e+00
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.prol = phi float [ %9, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.bw = fmul float %.0.i.i.prol, %.0.i.i.prol
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv48
  %i.by = load float, ptr %i.bx, align 4, !tbaa !81 ; 2 uses
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.by, float 0.000000e+00) ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.k, %bb.m, %.lr.ph.i.i.preheader
  %.1.i.i.lcssa.unr = phi float [ poison, %.lr.ph.i.i.preheader ], [ %i.ca, %bb.m ], [ 0.000000e+00, %bb.k ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.next49, %.lr.ph.i.i.preheader ], [ %indvars.iv48, %bb.m ], [ %indvars.iv48, %bb.k ]
  %.01927.i.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.ca, %bb.m ], [ 0.000000e+00, %bb.k ]
  %10 = icmp eq i64 %reass.sub53, -2
  br i1 %10, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge38:                                    ; preds = %.lr.ph, %bb.c
  %.sroa.06.0.copyload.i = load <2 x float>, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.06.0.copyload.i, ptr %4, align 8
  store float %i.ah, ptr %.sroa.2.0..sroa_idx.i44.i, align 8
  %i.cb = icmp eq i64 %indvars.iv.next49, 2
  br i1 %i.cb, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge38
  %11 = icmp samesign ult i64 %indvars.iv48, 3
  br i1 %11, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %15, %.preheader.i.i
  %.019.lcssa.i.i = phi float [ 0.000000e+00, %.preheader.i.i ], [ %.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.1.i.i.1, %15 ] ; 2 uses
  %12 = fcmp ult float %.019.lcssa.i.i, %i.aw
  br i1 %12, label %bb.t, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %15
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %15 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.01927.i.i = phi float [ %.1.i.i.1, %15 ], [ %.01927.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47
  %i.ce = sitofp i32 %i.cd to float
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !81
  %i.ch = fsub float %i.ce, %i.cg                 ; 4 uses
  %i.ci = fcmp olt float %i.ch, -1.000000e+00
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %13 = fadd float %i.ch, 1.000000e+00
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %14 = fcmp ugt float %i.ch, 0.000000e+00
  br i1 %14, label %bb.p, label %.lr.ph.i.i.1

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i = phi float [ %13, %bb.n ], [ %i.ch, %bb.o ] ; 2 uses
  %i.cj = fmul float %.0.i.i, %.0.i.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !81 ; 2 uses
  %i.cm = fmul float %i.cj, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cl, float %.01927.i.i)
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.p, %bb.o
  %.1.i.i = phi float [ %i.cn, %bb.p ], [ %.01927.i.i, %bb.o ] ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i.1
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !47
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i.i.1
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !81
  %i.ct = fsub float %i.cq, %i.cs                 ; 4 uses
  %i.cu = fcmp olt float %i.ct, -1.000000e+00
  br i1 %i.cu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.1
  %i.cv = fcmp ugt float %i.ct, 0.000000e+00
  br i1 %i.cv, label %bb.s, label %15

bb.r:                                             ; preds = %.lr.ph.i.i.1
  %i.cw = fadd float %i.ct, 1.000000e+00
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i.1 = phi float [ %i.cw, %bb.r ], [ %i.ct, %bb.q ] ; 2 uses
  %i.cx = fmul float %.0.i.i.1, %.0.i.i.1
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !81 ; 2 uses
  %i.da = fmul float %i.cx, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.cz, float %.1.i.i)
  br label %15

15:                                               ; preds = %bb.s, %bb.q
  %.1.i.i.1 = phi float [ %i.db, %bb.s ], [ %.1.i.i, %bb.q ] ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.dc = fsub float %i.aw, %.019.lcssa.i.i
  %i.dd = tail call noundef float @sqrtf(float noundef %i.dc) #35
  br label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i: ; preds = %._crit_edge38, %bb.t, %._crit_edge.i.i
  %.121.i.i = phi float [ 0.000000e+00, %._crit_edge.i.i ], [ %i.dd, %bb.t ], [ %i.ax, %._crit_edge38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.de = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next49
  %i.df = load float, ptr %i.de, align 4, !tbaa !81
  %i.dg = fmul float %.121.i.i, %i.df             ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next49
  %i.di = load float, ptr %i.dh, align 4, !tbaa !81 ; 2 uses
  %i.dj = fsub float %i.di, %i.dg                 ; 3 uses
  %i.dk = fadd float %i.di, %i.dg                 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.next49
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !46, !range !94, !noundef !91
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i
  %i.do = fcmp olt float %i.dj, 0.000000e+00
  %spec.store.select.i = select i1 %i.do, float 0.000000e+00, float %i.dj
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next49
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !47
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = sitofp i32 %i.dr to float               ; 2 uses
  %i.dt = fcmp ogt float %i.dk, %i.ds
  %spec.select.i = select i1 %i.dt, float %i.ds, float %i.dk
  br label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit: ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i, %bb.u
  %.032.i = phi float [ %i.dj, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i ], [ %spec.store.select.i, %bb.u ]
  %.1.i = phi float [ %i.dk, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i ], [ %spec.select.i, %bb.u ]
  %i.du = tail call noundef float @llvm.floor.f32(float %.032.i)
  %i.dv = fptosi float %i.du to i32
  %i.dw = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next49 ; 2 uses
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !47
  %i.dx = tail call noundef float @llvm.floor.f32(float %.1.i)
  %i.dy = fptosi float %i.dx to i32               ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next49
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.ea = load i32, ptr %i.dw, align 4, !tbaa !47
  %i.eb = icmp sgt i32 %i.ea, %i.dy
  br i1 %i.eb, label %.loopexit, label %bb.b, !llvm.loop !183

.thread:                                          ; preds = %._crit_edge, %.preheader, %bb.b
  %i.ec = phi i1 [ true, %.preheader ], [ true, %bb.b ], [ false, %._crit_edge ]
  ret i1 %i.ec
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl9shiftCellEPKiPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47   ; 4 uses
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 442
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !47   ; 5 uses
  %i.k = load i8, ptr %i.h, align 2, !tbaa !46, !range !94, !noundef !91
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.preheader20, label %.loopexit

.preheader20:                                     ; preds = %bb.a
  %i.m = icmp slt i32 %i.a, 0
  br i1 %i.m, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.b
  %i.o = extractelement <2 x float> %i.aa, i64 0
  %i.p = extractelement <2 x float> %i.aa, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader20
  %i.q = phi float [ 0.000000e+00, %.preheader20 ], [ %i.ac, %.preheader.loopexit ] ; 2 uses
  %i.r = phi float [ 0.000000e+00, %.preheader20 ], [ %i.p, %.preheader.loopexit ]
  %i.s = phi float [ 0.000000e+00, %.preheader20 ], [ %i.o, %.preheader.loopexit ]
  %.lcssa21 = phi i32 [ %i.a, %.preheader20 ], [ %i.y, %.preheader.loopexit ] ; 3 uses
  %i.t = phi <2 x float> [ zeroinitializer, %.preheader20 ], [ %i.aa, %.preheader.loopexit ]
  %.not23 = icmp slt i32 %.lcssa21, %i.j
  br i1 %.not23, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.v = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ac, %bb.b ]
  %i.w = phi i32 [ %i.a, %.lr.ph ], [ %i.y, %bb.b ]
  %i.x = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.aa, %bb.b ]
  %i.y = add nsw i32 %i.w, %i.j                   ; 3 uses
  %i.z = load <2 x float>, ptr %i.i, align 8, !tbaa !81
  %i.aa = fadd <2 x float> %i.x, %i.z             ; 5 uses
  %i.ab = load float, ptr %i.n, align 8, !tbaa !81
  %i.ac = fadd float %i.v, %i.ab                  ; 3 uses
  store <2 x float> %i.aa, ptr %2, align 4, !tbaa !81
  store float %i.ac, ptr %i.f, align 4, !tbaa !81
  %i.ad = icmp slt i32 %i.y, 0
  br i1 %i.ad, label %bb.b, label %.preheader.loopexit, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph24, %bb.c
  %i.ae = phi float [ %i.q, %.lr.ph24 ], [ %i.aj, %bb.c ]
  %i.af = phi i32 [ %.lcssa21, %.lr.ph24 ], [ %i.ah, %bb.c ]
  %i.ag = phi <2 x float> [ %i.t, %.lr.ph24 ], [ %i.al, %bb.c ]
  %i.ah = sub nsw i32 %i.af, %i.j                 ; 3 uses
  %i.ai = load float, ptr %i.u, align 8, !tbaa !81
  %i.aj = fsub float %i.ae, %i.ai                 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.i, align 8, !tbaa !81
  %i.al = fsub <2 x float> %i.ag, %i.ak           ; 4 uses
  store <2 x float> %i.al, ptr %2, align 4, !tbaa !81
  store float %i.aj, ptr %i.f, align 4, !tbaa !81
  %.not = icmp slt i32 %i.ah, %i.j
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !3

.loopexit.loopexit:                               ; preds = %bb.c
  %i.am = extractelement <2 x float> %i.al, i64 1
  %i.an = extractelement <2 x float> %i.al, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %i.ao = phi float [ %i.q, %.preheader ], [ 0.000000e+00, %bb.a ], [ %i.aj, %.loopexit.loopexit ] ; 3 uses
  %i.ap = phi float [ %i.r, %.preheader ], [ 0.000000e+00, %bb.a ], [ %i.am, %.loopexit.loopexit ] ; 3 uses
  %i.aq = phi float [ %i.s, %.preheader ], [ 0.000000e+00, %bb.a ], [ %i.an, %.loopexit.loopexit ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %.lcssa21, %.preheader ], [ %i.a, %bb.a ], [ %i.ah, %.loopexit.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 443
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46, !range !94, !noundef !91
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.preheader20.1, label %.loopexit.1

.preheader20.1:                                   ; preds = %.loopexit
  %i.aw = icmp slt i32 %i.c, 0
  br i1 %i.aw, label %.lr.ph.1, label %.preheader.1

.lr.ph.1:                                         ; preds = %.preheader20.1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.az = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ap, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.1
  %i.bb = phi float [ %i.ao, %.lr.ph.1 ], [ %i.bg, %bb.d ]
  %i.bc = phi i32 [ %i.c, %.lr.ph.1 ], [ %i.be, %bb.d ]
  %i.bd = phi <2 x float> [ %i.ba, %.lr.ph.1 ], [ %i.bi, %bb.d ]
  %i.be = add nsw i32 %i.bc, %i.as                ; 3 uses
  %i.bf = load float, ptr %i.ay, align 4, !tbaa !81
  %i.bg = fadd float %i.bb, %i.bf                 ; 3 uses
  %i.bh = load <2 x float>, ptr %i.ax, align 4, !tbaa !81
  %i.bi = fadd <2 x float> %i.bd, %i.bh           ; 4 uses
  store <2 x float> %i.bi, ptr %2, align 4, !tbaa !81
  store float %i.bg, ptr %i.f, align 4, !tbaa !81
  %i.bj = icmp slt i32 %i.be, 0
  br i1 %i.bj, label %bb.d, label %.preheader.1.loopexit, !llvm.loop !2

.preheader.1.loopexit:                            ; preds = %bb.d
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  %i.bl = extractelement <2 x float> %i.bi, i64 0
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.loopexit, %.preheader20.1
  %i.bm = phi float [ %i.ao, %.preheader20.1 ], [ %i.bg, %.preheader.1.loopexit ] ; 2 uses
  %i.bn = phi float [ %i.ap, %.preheader20.1 ], [ %i.bk, %.preheader.1.loopexit ] ; 2 uses
  %i.bo = phi float [ %i.aq, %.preheader20.1 ], [ %i.bl, %.preheader.1.loopexit ] ; 2 uses
  %.lcssa21.1 = phi i32 [ %i.c, %.preheader20.1 ], [ %i.be, %.preheader.1.loopexit ] ; 3 uses
  %.not23.1 = icmp slt i32 %.lcssa21.1, %i.as
  br i1 %.not23.1, label %.loopexit.1, label %.lr.ph24.1

.lr.ph24.1:                                       ; preds = %.preheader.1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.br = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bn, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph24.1
  %i.bt = phi float [ %i.bm, %.lr.ph24.1 ], [ %i.by, %bb.e ]
  %i.bu = phi i32 [ %.lcssa21.1, %.lr.ph24.1 ], [ %i.bw, %bb.e ]
  %i.bv = phi <2 x float> [ %i.bs, %.lr.ph24.1 ], [ %i.ca, %bb.e ]
  %i.bw = sub nsw i32 %i.bu, %i.as                ; 3 uses
  %i.bx = load float, ptr %i.bq, align 4, !tbaa !81
  %i.by = fsub float %i.bt, %i.bx                 ; 3 uses
  %i.bz = load <2 x float>, ptr %i.bp, align 4, !tbaa !81
  %i.ca = fsub <2 x float> %i.bv, %i.bz           ; 4 uses
  store <2 x float> %i.ca, ptr %2, align 4, !tbaa !81
  store float %i.by, ptr %i.f, align 4, !tbaa !81
  %.not.1 = icmp slt i32 %i.bw, %i.as
  br i1 %.not.1, label %.loopexit.1.loopexit, label %bb.e, !llvm.loop !3

.loopexit.1.loopexit:                             ; preds = %bb.e
  %i.cb = extractelement <2 x float> %i.ca, i64 1
  %i.cc = extractelement <2 x float> %i.ca, i64 0
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.loopexit, %.preheader.1, %.loopexit
end_hunk_0
