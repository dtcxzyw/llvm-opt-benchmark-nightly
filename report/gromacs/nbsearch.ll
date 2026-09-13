Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nbsearch?download=true
inline.NumInlined: 744
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i:bb.a
  %.032 = phi float [ %i.dd, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit ], [ %spec.store.select, %bb.ab ]
  %.1 = phi float [ %i.de, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit ], [ %spec.select, %bb.ab ]
  %i.dq = tail call noundef float @llvm.floor.f32(float %.032)
  %i.dr = fptosi float %i.dq to i32
  %i.ds = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cx
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !47
  %i.dt = tail call noundef float @llvm.floor.f32(float %.1)
  %i.du = fptosi float %i.dt to i32
  %i.dv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cx
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define noundef float @_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %0, <2 x float> %1, float %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #21 align 2 {
bb.a:
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
  %.02334 = phi i32 [ 0, %bb.a ], [ %i.aw, %._crit_edge ] ; 3 uses
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
  %6 = sext i32 %.02334 to i64
  %i.w = load i8, ptr %i.d, align 1, !range !94
  %i.x = trunc nuw i8 %i.w to i1
  br label %.preheader

.loopexit:                                        ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit
  %7 = and i64 %indvars.iv48, 4294967295          ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %7 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !47   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !47
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47
  %.not = icmp slt i32 %i.z, %i.ac
  br i1 %.not, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.133 = phi i64 [ %indvars.iv48, %.loopexit ], [ %6, %.preheader.preheader ] ; 4 uses
  %i.ad = icmp sgt i64 %.133, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ae = load <2 x float>, ptr %1, align 4, !tbaa !81 ; 5 uses
  %i.af = load float, ptr %i.c, align 4, !tbaa !81 ; 3 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ah = load float, ptr %i.f, align 4
  %i.ai = fsub float %i.ag, %i.ah
  %i.aj = load float, ptr %i.f, align 4
  %i.ak = extractelement <2 x float> %i.ae, i64 0
  %i.al = fadd float %i.ak, %i.aj
  %i.am = load float, ptr %i.i, align 4
  %i.an = load float, ptr %i.i, align 4
  %i.ao = load float, ptr %i.j, align 8
  %i.ap = extractelement <2 x float> %i.ae, i64 1
  %i.aq = fsub float %i.ap, %i.ao
  %i.ar = load float, ptr %i.j, align 8
  %i.as = extractelement <2 x float> %i.ae, i64 1
  %i.at = fadd float %i.as, %i.ar
  %i.au = load float, ptr %i.l, align 8           ; 2 uses
  %i.av = load float, ptr %i.m, align 4
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit
  %8 = trunc nsw i64 %indvars.iv48 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader27
  %.1.lcssa = phi i32 [ %.02334, %.preheader27 ], [ %8, %._crit_edge.loopexit ] ; 2 uses
  %i.aw = add nsw i32 %.1.lcssa, 1
  %i.ax = icmp slt i32 %.1.lcssa, 2
  br i1 %i.ax, label %.preheader27, label %.thread, !llvm.loop !184

bb.b:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit
  %i.ay = icmp sgt i64 %indvars.iv48, 1
  %indvar.next = add i64 %indvar.a, 1
  br i1 %i.ay, label %.lr.ph, label %.thread, !llvm.loop !183

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvar.a = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 3 uses
  %indvars.iv48 = phi i64 [ %.133, %.lr.ph.preheader ], [ %indvars.iv.next49, %bb.b ] ; 11 uses
  %reass.sub53 = sub i64 %indvar.a, %.133
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store <2 x float> %i.ae, ptr %5, align 8, !tbaa !81
  store float %i.af, ptr %i.b, align 8, !tbaa !81
  br i1 %i.x, label %bb.c, label %._crit_edge38

bb.c:                                             ; preds = %.lr.ph
  %9 = trunc nsw i64 %indvars.iv.next49 to i32
  switch i32 %9, label %._crit_edge38 [
    i32 0, label %bb.d
    i32 1, label %..thread_crit_edge.i
  ]

..thread_crit_edge.i:                             ; preds = %bb.c
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !47
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.az = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !47 ; 5 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.e, align 8, !tbaa !47
  %.not.i = icmp slt i32 %i.az, %i.bb
  br i1 %.not.i, label %bb.f, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi float [ %i.al, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  store float %.sink.i, ptr %5, align 8, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.e
  %i.bc = phi float [ %i.ag, %bb.e ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  %i.bd = load i32, ptr %i.g, align 4, !tbaa !47  ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = fadd float %i.bc, %i.an
  store float %i.bf, ptr %5, align 8, !tbaa !81
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.h, align 4, !tbaa !47
  %.not38.i = icmp slt i32 %i.bd, %i.bg
  br i1 %.not38.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = fsub float %i.bc, %i.am
  store float %i.bh, ptr %5, align 8, !tbaa !81
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g, %..thread_crit_edge.i
  %i.bi = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.az, %bb.h ], [ %i.az, %bb.i ], [ %i.az, %bb.g ] ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.preheader.i.thread.sink.split.i, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.bk = load i32, ptr %i.e, align 8, !tbaa !47
  %.not39.i = icmp slt i32 %i.bi, %i.bk
  br i1 %.not39.i, label %.preheader.i.thread.i, label %.preheader.i.thread.sink.split.i

.preheader.i.thread.sink.split.i:                 ; preds = %bb.j, %.thread.i
  %.sink51.i = phi float [ %i.at, %.thread.i ], [ %i.aq, %bb.j ]
  store float %.sink51.i, ptr %i.a, align 4, !tbaa !81
  br label %.preheader.i.thread.i

.preheader.i.thread.i:                            ; preds = %.preheader.i.thread.sink.split.i, %bb.j
  %.sroa.06.0.copyload43.i = load <2 x float>, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.06.0.copyload43.i, ptr %4, align 8
  store float %i.af, ptr %.sroa.2.0..sroa_idx.i44.i, align 8
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i, %.preheader.i.thread.i
  %10 = sub i64 %indvar.a, %.133
  %11 = and i64 %10, 1
  %lcmp.mod.not.not = icmp eq i64 %11, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv48
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv48
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !81
  %i.bq = fsub float %i.bn, %i.bp                 ; 4 uses
  %i.br = fcmp olt float %i.bq, -1.000000e+00
  br i1 %i.br, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.prol
  %i.bs = fcmp ugt float %i.bq, 0.000000e+00
  br i1 %i.bs, label %bb.m, label %.lr.ph.i.i.prol.loopexit

bb.l:                                             ; preds = %.lr.ph.i.i.prol
  %i.bt = fadd float %i.bq, 1.000000e+00
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.prol = phi float [ %i.bt, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  %i.bu = fmul float %.0.i.i.prol, %.0.i.i.prol
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv48
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !81 ; 2 uses
  %i.bx = fmul float %i.bu, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bw, float 0.000000e+00) ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.k, %bb.m, %.lr.ph.i.i.preheader
  %.1.i.i.lcssa.unr = phi float [ poison, %.lr.ph.i.i.preheader ], [ %i.by, %bb.m ], [ 0.000000e+00, %bb.k ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.next49, %.lr.ph.i.i.preheader ], [ %indvars.iv48, %bb.m ], [ %indvars.iv48, %bb.k ]
  %.01927.i.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.by, %bb.m ], [ 0.000000e+00, %bb.k ]
  %i.bz = icmp eq i64 %reass.sub53, -2
  br i1 %i.bz, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge38:                                    ; preds = %.lr.ph, %bb.c
  %.sroa.06.0.copyload.i = load <2 x float>, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.06.0.copyload.i, ptr %4, align 8
  store float %i.af, ptr %.sroa.2.0..sroa_idx.i44.i, align 8
  %12 = icmp eq i64 %indvars.iv.next49, 2
  br i1 %12, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge38
  %13 = icmp samesign ult i64 %indvars.iv48, 3
  br i1 %13, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %bb.t, %.preheader.i.i
  %.019.lcssa.i.i = phi float [ 0.000000e+00, %.preheader.i.i ], [ %.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.1.i.i.1, %bb.t ] ; 2 uses
  %i.ca = fcmp ult float %.019.lcssa.i.i, %i.au
  br i1 %i.ca, label %bb.u, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.t
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %bb.t ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.01927.i.i = phi float [ %.1.i.i.1, %bb.t ], [ %.01927.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47
  %i.cd = sitofp i32 %i.cc to float
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !81
  %i.cg = fsub float %i.cd, %i.cf                 ; 4 uses
  %i.ch = fcmp olt float %i.cg, -1.000000e+00
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ci = fadd float %i.cg, 1.000000e+00
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cj = fcmp ugt float %i.cg, 0.000000e+00
  br i1 %i.cj, label %bb.p, label %.lr.ph.i.i.1

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i = phi float [ %i.ci, %bb.n ], [ %i.cg, %bb.o ] ; 2 uses
  %i.ck = fmul float %.0.i.i, %.0.i.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !81 ; 2 uses
  %i.cn = fmul float %i.ck, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cm, float %.01927.i.i)
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.p, %bb.o
  %.1.i.i = phi float [ %i.co, %bb.p ], [ %.01927.i.i, %bb.o ] ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i.1
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !47
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i.i.1
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !81
  %i.cu = fsub float %i.cr, %i.ct                 ; 4 uses
  %i.cv = fcmp olt float %i.cu, -1.000000e+00
  br i1 %i.cv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.1
  %i.cw = fcmp ugt float %i.cu, 0.000000e+00
  br i1 %i.cw, label %bb.s, label %bb.t

bb.r:                                             ; preds = %.lr.ph.i.i.1
  %i.cx = fadd float %i.cu, 1.000000e+00
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i.1 = phi float [ %i.cx, %bb.r ], [ %i.cu, %bb.q ] ; 2 uses
  %i.cy = fmul float %.0.i.i.1, %.0.i.i.1
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.da = load float, ptr %i.cz, align 4, !tbaa !81 ; 2 uses
  %i.db = fmul float %i.cy, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.da, float %.1.i.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.1.i.i.1 = phi float [ %i.dc, %bb.s ], [ %.1.i.i, %bb.q ] ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.dd = fsub float %i.au, %.019.lcssa.i.i
  %i.de = tail call noundef float @sqrtf(float noundef %i.dd) #35
  br label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i: ; preds = %._crit_edge38, %bb.u, %._crit_edge.i.i
  %.121.i.i = phi float [ 0.000000e+00, %._crit_edge.i.i ], [ %i.de, %bb.u ], [ %i.av, %._crit_edge38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.df = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next49
  %i.dg = load float, ptr %i.df, align 4, !tbaa !81
  %i.dh = fmul float %.121.i.i, %i.dg             ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next49
  %i.dj = load float, ptr %i.di, align 4, !tbaa !81 ; 2 uses
  %i.dk = fsub float %i.dj, %i.dh                 ; 3 uses
  %i.dl = fadd float %i.dj, %i.dh                 ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.next49
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !46, !range !94, !noundef !91
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i
  %i.dp = fcmp olt float %i.dk, 0.000000e+00
  %spec.store.select.i = select i1 %i.dp, float 0.000000e+00, float %i.dk
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next49
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !47
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = sitofp i32 %i.ds to float               ; 2 uses
  %i.du = fcmp ogt float %i.dl, %i.dt
  %spec.select.i = select i1 %i.du, float %i.dt, float %i.dl
  br label %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit

_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl13initCellRangeEPKfPiS4_i.exit: ; preds = %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i, %bb.v
  %.032.i = phi float [ %i.dk, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i ], [ %spec.store.select.i, %bb.v ]
  %.1.i = phi float [ %i.dl, %_ZNK3gmx8internal30AnalysisNeighborhoodSearchImpl19computeCutoffExtentENS_11BasicVectorIfEEPKii.exit.i ], [ %spec.select.i, %bb.v ]
  %i.dv = tail call noundef float @llvm.floor.f32(float %.032.i)
  %i.dw = fptosi float %i.dv to i32
  %i.dx = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next49 ; 2 uses
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !47
  %i.dy = tail call noundef float @llvm.floor.f32(float %.1.i)
  %i.dz = fptosi float %i.dy to i32               ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next49
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.eb = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.ec = icmp sgt i32 %i.eb, %i.dz
  br i1 %i.ec, label %.loopexit, label %bb.b, !llvm.loop !183

.thread:                                          ; preds = %._crit_edge, %.preheader, %bb.b
  %i.ed = phi i1 [ true, %.preheader ], [ true, %bb.b ], [ false, %._crit_edge ]
  ret i1 %i.ed
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
  %i.cd = phi float [ %i.bm, %.preheader.1 ], [ %i.ao, %.loopexit ], [ %i.by, %.loopexit.1.loopexit ] ; 2 uses
  %i.ce = phi float [ %i.bn, %.preheader.1 ], [ %i.ap, %.loopexit ], [ %i.cb, %.loopexit.1.loopexit ] ; 2 uses
  %i.cf = phi float [ %i.bo, %.preheader.1 ], [ %i.aq, %.loopexit ], [ %i.cc, %.loopexit.1.loopexit ] ; 2 uses
  %.sroa.7.0 = phi i32 [ %.lcssa21.1, %.preheader.1 ], [ %i.c, %.loopexit ], [ %i.bw, %.loopexit.1.loopexit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !47 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !46, !range !94, !noundef !91
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.preheader20.2, label %.loopexit.2

.preheader20.2:                                   ; preds = %.loopexit.1
  %i.cl = icmp slt i32 %i.e, 0
  br i1 %i.cl, label %.lr.ph.2, label %.preheader.2

.lr.ph.2:                                         ; preds = %.preheader20.2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.co = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.ce, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.2
  %i.cq = phi float [ %i.cd, %.lr.ph.2 ], [ %i.cv, %bb.f ]
  %i.cr = phi i32 [ %i.e, %.lr.ph.2 ], [ %i.ct, %bb.f ]
  %i.cs = phi <2 x float> [ %i.cp, %.lr.ph.2 ], [ %i.cx, %bb.f ]
  %i.ct = add nsw i32 %i.cr, %i.ch                ; 3 uses
  %i.cu = load float, ptr %i.cn, align 8, !tbaa !81
  %i.cv = fadd float %i.cq, %i.cu                 ; 3 uses
  %i.cw = load <2 x float>, ptr %i.cm, align 8, !tbaa !81
  %i.cx = fadd <2 x float> %i.cs, %i.cw           ; 4 uses
  store <2 x float> %i.cx, ptr %2, align 4, !tbaa !81
  store float %i.cv, ptr %i.f, align 4, !tbaa !81
  %i.cy = icmp slt i32 %i.ct, 0
end_hunk_0
