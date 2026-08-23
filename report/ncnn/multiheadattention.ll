Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/multiheadattention?download=true
inline.NumInlined: 35
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4ncnn18MultiHeadAttention25resolve_bottom_blob_indexEiRiS1_S1_S1_S1_S1_:bb.a
  br i1 %.not66, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.t [
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 0, ptr %3, align 4, !tbaa !50
  store i32 0, ptr %4, align 4, !tbaa !50
  store i32 1, ptr %5, align 4, !tbaa !50
  store i32 2, ptr %6, align 4, !tbaa !50
  store i32 3, ptr %7, align 4, !tbaa !50
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 1, ptr %4, align 4, !tbaa !50
  store i32 2, ptr %5, align 4, !tbaa !50
  store i32 3, ptr %6, align 4, !tbaa !50
  store i32 4, ptr %7, align 4, !tbaa !50
  br label %bb.t

bb.f:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 2, ptr %4, align 4, !tbaa !50
  store i32 3, ptr %5, align 4, !tbaa !50
  store i32 4, ptr %6, align 4, !tbaa !50
  store i32 5, ptr %7, align 4, !tbaa !50
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  switch i32 %1, label %bb.t [
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 0, ptr %3, align 4, !tbaa !50
  store i32 0, ptr %4, align 4, !tbaa !50
  store i32 1, ptr %6, align 4, !tbaa !50
  store i32 2, ptr %7, align 4, !tbaa !50
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 1, ptr %4, align 4, !tbaa !50
  store i32 2, ptr %6, align 4, !tbaa !50
  store i32 3, ptr %7, align 4, !tbaa !50
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 2, ptr %4, align 4, !tbaa !50
  store i32 3, ptr %6, align 4, !tbaa !50
  store i32 4, ptr %7, align 4, !tbaa !50
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  br i1 %.not66, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %1, label %bb.t [
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 0, ptr %3, align 4, !tbaa !50
  store i32 0, ptr %4, align 4, !tbaa !50
  store i32 1, ptr %5, align 4, !tbaa !50
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 1, ptr %4, align 4, !tbaa !50
  store i32 2, ptr %5, align 4, !tbaa !50
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 2, ptr %4, align 4, !tbaa !50
  store i32 3, ptr %5, align 4, !tbaa !50
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  switch i32 %1, label %bb.t [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 0, ptr %3, align 4, !tbaa !50
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 1, ptr %4, align 4, !tbaa !50
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  store i32 0, ptr %2, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !50
  store i32 2, ptr %4, align 4, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.n, %bb.m, %bb.i, %bb.h, %bb.e, %bb.d, %bb.p, %bb.l, %bb.g, %bb.c, %bb.o, %bb.s, %bb.f, %bb.j
  ret void
}

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18MultiHeadAttention7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %.not42 = icmp sgt i32 %i.k, %i.j
  br i1 %.not42, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21   ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr i8, ptr %3, i64 232        ; 6 uses
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.w = load ptr, ptr %4, align 8, !tbaa !18
  %i.x = load i32, ptr %i.v, align 4, !tbaa !57
  %i.y = sext i32 %i.x to i64
  %i.z = load i64, ptr %i.u, align 8, !tbaa !48
  %factor.op.mul44 = mul i64 %i.z, %i.y
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !18  ; 7 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !50    ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = load ptr, ptr %6, align 8, !tbaa !18    ; 4 uses
  %i.ae = load i32, ptr %i.s, align 4, !tbaa !57
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !48  ; 3 uses
  %factor.op.mul = mul i64 %i.ag, %i.af           ; 10 uses
  br i1 %i.ac, label %.lr.ph40.us.preheader, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.lr.ph.split
  %i.ah = sext i32 %i.k to i64                    ; 2 uses
  %i.ai = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ak = mul i64 %i.ag, %i.af
  %i.al = sub i64 0, %i.ak
  %i.am = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep72 = getelementptr i8, ptr %i.aa, i64 %i.am
  %i.an = mul i64 %i.ag, %i.aj
  %i.ao = mul i64 %i.an, %i.af
  %7 = shl nsw i64 %i.ah, 2                       ; 2 uses
  %scevgep76 = getelementptr i8, ptr %3, i64 236
  %8 = getelementptr i8, ptr %i.ad, i64 %i.ao
  %9 = getelementptr i8, ptr %8, i64 %7
  %i.ap = getelementptr i8, ptr %i.ad, i64 %7
  %min.iters.check = icmp ult i32 %i.o, 28
  %i.aq = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.ar = select i1 %i.aq, i64 %i.al, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.as = sub i64 0, %mul.result
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.at = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph40

.lr.ph40.us.preheader:                            ; preds = %.lr.ph.split
  %i.au = add nsw i32 %i.ab, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count59 = zext nneg i32 %i.o to i64
  %i.az = zext nneg i32 %i.ab to i64              ; 2 uses
  %min.iters.check81 = icmp ult i32 %i.ab, 8
  %n.vec83 = and i64 %i.az, 2147483640            ; 4 uses
  %i.ba = trunc nuw nsw i64 %n.vec83 to i32
  %i.bb = shl nuw nsw i64 %n.vec83, 2             ; 2 uses
  %cmp.n94 = icmp eq i64 %n.vec83, %i.az
  br label %.lr.ph40.us

.lr.ph40.us:                                      ; preds = %.lr.ph40.us.preheader, %._crit_edge41.split.us.us
  %indvars.iv61 = phi i64 [ %i.ax, %.lr.ph40.us.preheader ], [ %indvars.iv.next62, %._crit_edge41.split.us.us ] ; 3 uses
  %.reass45.us = mul i64 %factor.op.mul44, %indvars.iv61
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass45.us ; 3 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv61
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph40.us
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %._crit_edge.us.us ], [ 0, %.lr.ph40.us ] ; 3 uses
  %.03037.us.us = phi ptr [ %scevgep, %._crit_edge.us.us ], [ %i.m, %.lr.ph40.us ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv56
  %i.bf = load float, ptr %i.be, align 4, !tbaa !52 ; 2 uses
  br i1 %min.iters.check81, label %scalar.ph80.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph.us.us
  %i.bg = getelementptr i8, ptr %.03037.us.us, i64 %i.bb
  %i.bh = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bf, i64 0
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph82
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next92, %vector.body84 ] ; 2 uses
  %vec.phi = phi <4 x float> [ %i.bh, %vector.ph82 ], [ %i.bn, %vector.body84 ]
  %vec.phi86 = phi <4 x float> [ zeroinitializer, %vector.ph82 ], [ %i.bo, %vector.body84 ]
  %i.bi = shl i64 %index85, 2                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bi ; 2 uses
  %next.gep87 = getelementptr i8, ptr %.03037.us.us, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load88 = load <4 x float>, ptr %next.gep, align 4, !tbaa !52
  %wide.load89 = load <4 x float>, ptr %i.bj, align 4, !tbaa !52
  %i.bk = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load90 = load <4 x float>, ptr %next.gep87, align 4, !tbaa !52
  %wide.load91 = load <4 x float>, ptr %i.bk, align 4, !tbaa !52
  %i.bl = fmul fast <4 x float> %wide.load90, %wide.load88
  %i.bm = fmul fast <4 x float> %wide.load91, %wide.load89
  %i.bn = fadd fast <4 x float> %i.bl, %vec.phi   ; 2 uses
  %i.bo = fadd fast <4 x float> %i.bm, %vec.phi86 ; 2 uses
  %index.next92 = add nuw i64 %index85, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next92, %n.vec83
  br i1 %i.bp, label %middle.block93, label %vector.body84, !llvm.loop !62

middle.block93:                                   ; preds = %vector.body84
  %bin.rdx = fadd fast <4 x float> %i.bo, %i.bn
  %i.bq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n94, label %._crit_edge.us.us, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %.lr.ph.us.us, %middle.block93
  %.035.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ba, %middle.block93 ]
  %.02734.us.us.ph = phi float [ %i.bf, %.lr.ph.us.us ], [ %i.bq, %middle.block93 ]
  %.02833.us.us.ph = phi ptr [ %i.bc, %.lr.ph.us.us ], [ %i.bd, %middle.block93 ]
  %.132.us.us.ph = phi ptr [ %.03037.us.us, %.lr.ph.us.us ], [ %i.bg, %middle.block93 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %.035.us.us = phi i32 [ %i.bx, %scalar.ph80 ], [ %.035.us.us.ph, %scalar.ph80.preheader ]
  %.02734.us.us = phi float [ %i.bw, %scalar.ph80 ], [ %.02734.us.us.ph, %scalar.ph80.preheader ]
  %.02833.us.us = phi ptr [ %i.br, %scalar.ph80 ], [ %.02833.us.us.ph, %scalar.ph80.preheader ] ; 2 uses
  %.132.us.us = phi ptr [ %i.bt, %scalar.ph80 ], [ %.132.us.us.ph, %scalar.ph80.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02833.us.us, i64 4
  %i.bs = load float, ptr %.02833.us.us, align 4, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %.132.us.us, i64 4
  %i.bu = load float, ptr %.132.us.us, align 4, !tbaa !52
  %i.bv = fmul fast float %i.bu, %i.bs
  %i.bw = fadd fast float %i.bv, %.02734.us.us    ; 2 uses
  %i.bx = add nuw nsw i32 %.035.us.us, 1          ; 2 uses
  %exitcond55.not = icmp eq i32 %i.bx, %i.ab
  br i1 %exitcond55.not, label %._crit_edge.us.us, label %scalar.ph80, !llvm.loop !66

._crit_edge.us.us:                                ; preds = %scalar.ph80, %middle.block93
  %.lcssa = phi float [ %i.bq, %middle.block93 ], [ %i.bw, %scalar.ph80 ]
  %i.by = getelementptr i8, ptr %.03037.us.us, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.by, i64 4
  %i.bz = load float, ptr %i.q, align 8, !tbaa !43
  %i.ca = fmul fast float %i.bz, %.lcssa
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv56
  %gep.us.us = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.us
  store float %i.ca, ptr %gep.us.us, align 4, !tbaa !52
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge41.split.us.us, label %.lr.ph.us.us, !llvm.loop !67

._crit_edge41.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1 ; 2 uses
  %lftr.wideiv64 = trunc i64 %indvars.iv.next62 to i32
  %exitcond65.not = icmp eq i32 %i.ay, %lftr.wideiv64
  br i1 %exitcond65.not, label %._crit_edge.split, label %.lr.ph40.us

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %._crit_edge41.split
  %indvar = phi i64 [ 0, %.lr.ph40.preheader ], [ %indvar.next, %._crit_edge41.split ] ; 2 uses
  %indvars.iv51 = phi i64 [ %i.ah, %.lr.ph40.preheader ], [ %indvars.iv.next52, %._crit_edge41.split ] ; 2 uses
  %i.cb = shl nuw nsw i64 %indvar, 2              ; 2 uses
  %scevgep73 = getelementptr i8, ptr %9, i64 %i.cb ; 4 uses
  %scevgep74 = getelementptr i8, ptr %i.ap, i64 %i.cb ; 4 uses
  %i.cc = icmp ult ptr %scevgep73, %scevgep74
  %umin = select i1 %i.cc, ptr %scevgep73, ptr %scevgep74 ; 2 uses
  %i.cd = icmp ugt ptr %scevgep73, %scevgep74
  %umax = select i1 %i.cd, ptr %scevgep73, ptr %scevgep74
  %scevgep75 = getelementptr i8, ptr %umax, i64 4 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv51 ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph40
  %i.ce = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.cf = getelementptr i8, ptr %invariant.gep, i64 %i.as
  %i.cg = icmp ult ptr %i.ce, %invariant.gep
  %i.ch = icmp ugt ptr %i.cf, %invariant.gep
  %i.ci = select i1 %i.aq, i1 %i.ch, i1 %i.cg
  %i.cj = or i1 %i.ci, %mul.overflow
  br i1 %i.cj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.aa, %scevgep75
  %bound1 = icmp ult ptr %umin, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  %bound077 = icmp ult ptr %i.q, %scevgep75
  %bound178 = icmp ult ptr %umin, %scevgep76
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx = or i1 %found.conflict, %found.conflict79
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ck = load float, ptr %i.q, align 8, !tbaa !43, !alias.scope !68, !noalias !71
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cl = or disjoint i64 %index, 1
  %i.cm = or disjoint i64 %index, 2
  %i.cn = or disjoint i64 %index, 3
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index
  %wide.load = load <4 x float>, ptr %i.co, align 4, !tbaa !52, !alias.scope !73, !noalias !71
  %i.cp = fmul fast <4 x float> %broadcast.splat, %wide.load ; 4 uses
  %i.cq = mul i64 %factor.op.mul, %index
  %i.cr = mul i64 %factor.op.mul, %i.cl
  %i.cs = mul i64 %factor.op.mul, %i.cm
  %i.ct = mul i64 %factor.op.mul, %i.cn
  %i.cu = getelementptr i8, ptr %invariant.gep, i64 %i.cq
  %i.cv = getelementptr i8, ptr %invariant.gep, i64 %i.cr
  %i.cw = getelementptr i8, ptr %invariant.gep, i64 %i.cs
  %i.cx = getelementptr i8, ptr %invariant.gep, i64 %i.ct
  %i.cy = extractelement <4 x float> %i.cp, i64 0
  store float %i.cy, ptr %i.cu, align 4, !tbaa !52, !alias.scope !71
  %i.cz = extractelement <4 x float> %i.cp, i64 1
  store float %i.cz, ptr %i.cv, align 4, !tbaa !52, !alias.scope !71
  %i.da = extractelement <4 x float> %i.cp, i64 2
  store float %i.da, ptr %i.cw, align 4, !tbaa !52, !alias.scope !71
  %i.db = extractelement <4 x float> %i.cp, i64 3
  store float %i.db, ptr %i.cx, align 4, !tbaa !52, !alias.scope !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge41.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph40, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph40 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.ph
  %i.de = load float, ptr %i.dd, align 4, !tbaa !52
  %i.df = load float, ptr %i.q, align 8, !tbaa !43
  %i.dg = fmul fast float %i.df, %i.de
  %.reass.prol = mul i64 %factor.op.mul, %indvars.iv.ph
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %.reass.prol
  store float %i.dg, ptr %gep.prol, align 4, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dh = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.dh, label %._crit_edge41.split, label %scalar.ph

._crit_edge41.split:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next52 to i32
  %exitcond54.not = icmp eq i32 %i.ai, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond54.not, label %._crit_edge.split, label %.lr.ph40

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.dj = load float, ptr %i.di, align 4, !tbaa !52
  %i.dk = load float, ptr %i.q, align 8, !tbaa !43
  %i.dl = fmul fast float %i.dk, %i.dj
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass
  store float %i.dl, ptr %gep, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !52
  %i.do = load float, ptr %i.q, align 8, !tbaa !43
  %i.dp = fmul fast float %i.do, %i.dn
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %.reass.1
  store float %i.dp, ptr %gep.1, align 4, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge41.split, label %scalar.ph, !llvm.loop !76

._crit_edge.split:                                ; preds = %._crit_edge41.split, %._crit_edge41.split.us.us, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare !callback !77 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18MultiHeadAttention7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.h, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.i = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !50
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !50
  %i.l = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not16 = icmp sgt i32 %i.l, %i.k
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !18
  %i.s = load i32, ptr %i.m, align 4, !tbaa !57
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = load i64, ptr %i.n, align 8, !tbaa !48
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = load ptr, ptr %4, align 8, !tbaa !18
  %i.z = load i32, ptr %i.o, align 4, !tbaa !57
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %indvars.iv, %i.aa
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !48
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %5, align 4, !tbaa !50
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.ae, i64 %i.ah, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !50
end_hunk_0
begin_hunk_1_@_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_RfRKNS_6OptionE:bb.a

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv19 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next20, %._crit_edge.us ] ; 2 uses
  %.025.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %.sroa.speculated.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv19
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.reass.us ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.025.us, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi36 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x float>, ptr %i.q, align 4, !tbaa !52
  %wide.load37 = load <4 x float>, ptr %i.r, align 4, !tbaa !52
  %i.s = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.t = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load37)
  %i.u = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.s) ; 2 uses
  %i.v = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi36, <4 x float> %i.t) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.u, <4 x float> %i.v)
  %i.x = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ]
  %.13.us.ph = phi float [ %.025.us, %.lr.ph.us ], [ %i.x, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.13.us = phi float [ %.sroa.speculated.us, %scalar.ph ], [ %.13.us.ph, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !52
  %i.aa = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.z)
  %.sroa.speculated.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.13.us, float %i.aa) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !149

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.sroa.speculated.us.lcssa = phi float [ %i.x, %middle.block ], [ %.sroa.speculated.us, %scalar.ph ] ; 3 uses
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge9, label %.lr.ph.us, !llvm.loop !150

._crit_edge9:                                     ; preds = %._crit_edge.us
  %i.ab = fcmp fast oeq float %.sroa.speculated.us.lcssa, 0.000000e+00
  %i.ac = fdiv fast float 1.270000e+02, %.sroa.speculated.us.lcssa
  %i.ad = select fast i1 %i.ab, float 1.000000e+00, float %i.ac
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph8, %._crit_edge9
  %storemerge = phi float [ %i.ad, %._crit_edge9 ], [ 1.000000e+00, %.lr.ph8 ]
  store float %storemerge, ptr %2, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !57 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph14.split, label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge, %.lr.ph14, %._crit_edge9.thread34
  ret void

.lr.ph14.split:                                   ; preds = %.lr.ph14, %._crit_edge
  %i.aj = phi i32 [ %i.az, %._crit_edge ], [ %i.f, %.lr.ph14 ]
  %i.ak = phi i32 [ %i.ba, %._crit_edge ], [ %i.ah, %.lr.ph14 ] ; 3 uses
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %._crit_edge ], [ 0, %.lr.ph14 ] ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !18
  %i.am = load i32, ptr %i.a, align 4, !tbaa !57
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %indvars.iv27, %i.an
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = load ptr, ptr %1, align 8, !tbaa !18
  %i.at = sext i32 %i.ak to i64
  %i.au = mul nsw i64 %indvars.iv27, %i.at
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !48
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  %i.ay = icmp sgt i32 %i.ak, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph14.split
  %i.az = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph14.split ] ; 2 uses
  %i.ba = phi i32 [ %i.bk, %._crit_edge.loopexit ], [ %i.ak, %.lr.ph14.split ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.bb = sext i32 %i.az to i64
  %i.bc = icmp slt i64 %indvars.iv.next28, %i.bb
  br i1 %i.bc, label %.lr.ph14.split, label %._crit_edge15, !llvm.loop !151

.lr.ph:                                           ; preds = %.lr.ph14.split, %.lr.ph
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph ], [ 0, %.lr.ph14.split ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !52
  %i.bf = load float, ptr %2, align 4, !tbaa !52
  %i.bg = fmul fast float %i.bf, %i.be
  %i.bh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bg)
  %i.bi = fptosi float %i.bh to i32
  %spec.select5.i = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 -127)
  %.06.i = tail call i32 @llvm.smin.i32(i32 %spec.select5.i, i32 127)
  %.0.i = trunc nsw i32 %.06.i to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv24
  store i8 %.0.i, ptr %i.bj, align 1, !tbaa !153
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.bk = load i32, ptr %i.af, align 4, !tbaa !57 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next25, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !154
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %.not45 = icmp sgt i32 %i.k, %i.j
  br i1 %.not45, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21   ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = getelementptr i8, ptr %3, i64 232        ; 6 uses
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.x = load ptr, ptr %4, align 8, !tbaa !18
  %i.y = load i32, ptr %i.w, align 4, !tbaa !57
  %i.z = sext i32 %i.y to i64
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !48
  %factor.op.mul47 = mul i64 %i.aa, %i.z
  %i.ab = load i32, ptr %5, align 4, !tbaa !50    ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !18  ; 7 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !18    ; 4 uses
  %i.ag = load i32, ptr %i.s, align 4, !tbaa !57
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !48  ; 3 uses
  %factor.op.mul = mul i64 %i.ai, %i.ah           ; 10 uses
  br i1 %i.ac, label %.lr.ph43.us.preheader, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %.lr.ph.split
  %i.aj = sext i32 %i.k to i64                    ; 2 uses
  %i.ak = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 7 uses
  %i.al = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.am = mul i64 %i.ai, %i.ah
  %i.an = sub i64 0, %i.am
  %i.ao = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep75 = getelementptr i8, ptr %i.ae, i64 %i.ao
  %i.ap = mul i64 %i.ai, %i.al
  %i.aq = mul i64 %i.ap, %i.ah
  %8 = shl nsw i64 %i.aj, 2                       ; 2 uses
  %scevgep79 = getelementptr i8, ptr %3, i64 236
  %9 = getelementptr i8, ptr %i.af, i64 %i.aq
  %10 = getelementptr i8, ptr %9, i64 %8
  %i.ar = getelementptr i8, ptr %i.af, i64 %8
  %min.iters.check = icmp ult i32 %i.o, 28
  %i.as = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.at = select i1 %i.as, i64 %i.an, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.at, i64 %i.al) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.au = sub i64 0, %mul.result
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph43

.lr.ph43.us.preheader:                            ; preds = %.lr.ph.split
  %i.aw = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count62 = zext nneg i32 %i.o to i64
  %min.iters.check84 = icmp ult i32 %i.ab, 8
  %n.vec86 = and i64 %i.aw, 2147483640            ; 5 uses
  %i.az = trunc nuw nsw i64 %n.vec86 to i32
  %cmp.n97 = icmp eq i64 %n.vec86, %i.aw
  br label %.lr.ph43.us

.lr.ph43.us:                                      ; preds = %.lr.ph43.us.preheader, %._crit_edge44.split.us.us
  %indvars.iv64 = phi i64 [ %i.ax, %.lr.ph43.us.preheader ], [ %indvars.iv.next65, %._crit_edge44.split.us.us ] ; 3 uses
  %.reass48.us = mul i64 %factor.op.mul47, %indvars.iv64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass48.us ; 3 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv64
  %i.bb = getelementptr i8, ptr %i.ba, i64 %n.vec86
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph43.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %._crit_edge.us.us ], [ 0, %.lr.ph43.us ] ; 4 uses
  %.03440.us.us = phi ptr [ %scevgep, %._crit_edge.us.us ], [ %i.m, %.lr.ph43.us ] ; 4 uses
  br i1 %min.iters.check84, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.us.us
  %i.bc = getelementptr i8, ptr %.03440.us.us, i64 %n.vec86
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body87 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph85 ], [ %i.bl, %vector.body87 ]
  %vec.phi89 = phi <4 x i32> [ zeroinitializer, %vector.ph85 ], [ %i.bm, %vector.body87 ]
  %next.gep = getelementptr i8, ptr %i.ba, i64 %index88 ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.03440.us.us, i64 %index88 ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 4
  %wide.load91 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !153
  %wide.load92 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !153
  %i.be = sext <4 x i8> %wide.load91 to <4 x i32>
  %i.bf = sext <4 x i8> %wide.load92 to <4 x i32>
  %i.bg = getelementptr i8, ptr %next.gep90, i64 4
  %wide.load93 = load <4 x i8>, ptr %next.gep90, align 1, !tbaa !153
  %wide.load94 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !153
  %i.bh = sext <4 x i8> %wide.load93 to <4 x i32>
  %i.bi = sext <4 x i8> %wide.load94 to <4 x i32>
  %i.bj = mul nsw <4 x i32> %i.bh, %i.be
  %i.bk = mul nsw <4 x i32> %i.bi, %i.bf
  %i.bl = add <4 x i32> %i.bj, %vec.phi           ; 2 uses
  %i.bm = add <4 x i32> %i.bk, %vec.phi89         ; 2 uses
  %index.next95 = add nuw i64 %index88, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bn, label %middle.block96, label %vector.body87, !llvm.loop !155

middle.block96:                                   ; preds = %vector.body87
  %bin.rdx = add <4 x i32> %i.bm, %i.bl
  %i.bo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n97, label %._crit_edge.us.us, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %.lr.ph.us.us, %middle.block96
  %.03038.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.az, %middle.block96 ]
  %.03137.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.bo, %middle.block96 ]
  %.03236.us.us.ph = phi ptr [ %i.ba, %.lr.ph.us.us ], [ %i.bb, %middle.block96 ]
  %.135.us.us.ph = phi ptr [ %.03440.us.us, %.lr.ph.us.us ], [ %i.bc, %middle.block96 ]
  br label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.preheader, %scalar.ph83
  %.03038.us.us = phi i32 [ %i.bx, %scalar.ph83 ], [ %.03038.us.us.ph, %scalar.ph83.preheader ]
  %.03137.us.us = phi i32 [ %i.bw, %scalar.ph83 ], [ %.03137.us.us.ph, %scalar.ph83.preheader ]
  %.03236.us.us = phi ptr [ %i.bp, %scalar.ph83 ], [ %.03236.us.us.ph, %scalar.ph83.preheader ] ; 2 uses
  %.135.us.us = phi ptr [ %i.bs, %scalar.ph83 ], [ %.135.us.us.ph, %scalar.ph83.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03236.us.us, i64 1
  %i.bq = load i8, ptr %.03236.us.us, align 1, !tbaa !153
  %i.br = sext i8 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 1
  %i.bt = load i8, ptr %.135.us.us, align 1, !tbaa !153
  %i.bu = sext i8 %i.bt to i32
  %i.bv = mul nsw i32 %i.bu, %i.br
  %i.bw = add nsw i32 %i.bv, %.03137.us.us        ; 2 uses
  %i.bx = add nuw nsw i32 %.03038.us.us, 1        ; 2 uses
  %exitcond58.not = icmp eq i32 %i.bx, %i.ab
  br i1 %exitcond58.not, label %._crit_edge.us.us, label %scalar.ph83, !llvm.loop !156

._crit_edge.us.us:                                ; preds = %scalar.ph83, %middle.block96
  %.lcssa = phi i32 [ %i.bo, %middle.block96 ], [ %i.bw, %scalar.ph83 ]
  %scevgep = getelementptr i8, ptr %.03440.us.us, i64 %i.aw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv59
  %i.bz = load float, ptr %i.by, align 4, !tbaa !52
  %i.ca = load float, ptr %6, align 4, !tbaa !52
  %i.cb = fmul fast float %i.ca, %i.bz
  %i.cc = sitofp fast i32 %.lcssa to float
  %i.cd = fdiv fast float %i.cc, %i.cb
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv59
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !52
  %i.cg = fadd fast float %i.cd, %i.cf
  %i.ch = load float, ptr %i.q, align 8, !tbaa !43
  %i.ci = fmul fast float %i.cg, %i.ch
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv59
  %gep.us.us = getelementptr i8, ptr %invariant.gep.us, i64 %.reass.us.us
  store float %i.ci, ptr %gep.us.us, align 4, !tbaa !52
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge44.split.us.us, label %.lr.ph.us.us, !llvm.loop !157

._crit_edge44.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 2 uses
  %lftr.wideiv67 = trunc i64 %indvars.iv.next65 to i32
  %exitcond68.not = icmp eq i32 %i.ay, %lftr.wideiv67
  br i1 %exitcond68.not, label %._crit_edge.split, label %.lr.ph43.us

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge44.split
  %indvar = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvar.next, %._crit_edge44.split ] ; 2 uses
  %indvars.iv54 = phi i64 [ %i.aj, %.lr.ph43.preheader ], [ %indvars.iv.next55, %._crit_edge44.split ] ; 2 uses
  %i.cj = shl nuw nsw i64 %indvar, 2              ; 2 uses
  %scevgep76 = getelementptr i8, ptr %10, i64 %i.cj ; 4 uses
  %scevgep77 = getelementptr i8, ptr %i.ar, i64 %i.cj ; 4 uses
  %i.ck = icmp ult ptr %scevgep76, %scevgep77
  %umin = select i1 %i.ck, ptr %scevgep76, ptr %scevgep77 ; 2 uses
  %i.cl = icmp ugt ptr %scevgep76, %scevgep77
  %umax = select i1 %i.cl, ptr %scevgep76, ptr %scevgep77
  %scevgep78 = getelementptr i8, ptr %umax, i64 4 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv54 ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph43
  %i.cm = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.cn = getelementptr i8, ptr %invariant.gep, i64 %i.au
  %i.co = icmp ult ptr %i.cm, %invariant.gep
  %i.cp = icmp ugt ptr %i.cn, %invariant.gep
  %i.cq = select i1 %i.as, i1 %i.cp, i1 %i.co
  %i.cr = or i1 %i.cq, %mul.overflow
  br i1 %i.cr, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.ae, %scevgep78
  %bound1 = icmp ult ptr %umin, %scevgep75
  %found.conflict = and i1 %bound0, %bound1
  %bound080 = icmp ult ptr %i.q, %scevgep78
  %bound181 = icmp ult ptr %umin, %scevgep79
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx = or i1 %found.conflict, %found.conflict82
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cs = load float, ptr %i.q, align 8, !tbaa !43, !alias.scope !158, !noalias !161
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ct = or disjoint i64 %index, 1
  %i.cu = or disjoint i64 %index, 2
  %i.cv = or disjoint i64 %index, 3
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index
  %wide.load = load <4 x float>, ptr %i.cw, align 4, !tbaa !52, !alias.scope !163, !noalias !161
  %i.cx = fmul fast <4 x float> %wide.load, %broadcast.splat ; 4 uses
  %i.cy = mul i64 %factor.op.mul, %index
  %i.cz = mul i64 %factor.op.mul, %i.ct
  %i.da = mul i64 %factor.op.mul, %i.cu
  %i.db = mul i64 %factor.op.mul, %i.cv
  %i.dc = getelementptr i8, ptr %invariant.gep, i64 %i.cy
  %i.dd = getelementptr i8, ptr %invariant.gep, i64 %i.cz
  %i.de = getelementptr i8, ptr %invariant.gep, i64 %i.da
  %i.df = getelementptr i8, ptr %invariant.gep, i64 %i.db
  %i.dg = extractelement <4 x float> %i.cx, i64 0
  store float %i.dg, ptr %i.dc, align 4, !tbaa !52, !alias.scope !161
  %i.dh = extractelement <4 x float> %i.cx, i64 1
  store float %i.dh, ptr %i.dd, align 4, !tbaa !52, !alias.scope !161
  %i.di = extractelement <4 x float> %i.cx, i64 2
  store float %i.di, ptr %i.de, align 4, !tbaa !52, !alias.scope !161
  %i.dj = extractelement <4 x float> %i.cx, i64 3
  store float %i.dj, ptr %i.df, align 4, !tbaa !52, !alias.scope !161
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge44.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph43, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph43 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.ph
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !52
  %i.dn = load float, ptr %i.q, align 8, !tbaa !43
  %i.do = fmul fast float %i.dm, %i.dn
  %.reass.prol = mul i64 %factor.op.mul, %indvars.iv.ph
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %.reass.prol
  store float %i.do, ptr %gep.prol, align 4, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dp = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.dp, label %._crit_edge44.split, label %scalar.ph

._crit_edge44.split:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next55 to i32
  %exitcond57.not = icmp eq i32 %i.ak, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond57.not, label %._crit_edge.split, label %.lr.ph43

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !52
  %i.ds = load float, ptr %i.q, align 8, !tbaa !43
  %i.dt = fmul fast float %i.dr, %i.ds
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass
  store float %i.dt, ptr %gep, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.dv = load float, ptr %i.du, align 4, !tbaa !52
  %i.dw = load float, ptr %i.q, align 8, !tbaa !43
  %i.dx = fmul fast float %i.dv, %i.dw
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %.reass.1
  store float %i.dx, ptr %gep.1, align 4, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge44.split, label %scalar.ph, !llvm.loop !166

._crit_edge.split:                                ; preds = %._crit_edge44.split, %._crit_edge44.split.us.us, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.h, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.i = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !50
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !50
  %i.l = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %.not16 = icmp sgt i32 %i.l, %i.k
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !18
  %i.s = load i32, ptr %i.m, align 4, !tbaa !57
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = load i64, ptr %i.n, align 8, !tbaa !48
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = load ptr, ptr %4, align 8, !tbaa !18
  %i.z = load i32, ptr %i.o, align 4, !tbaa !57
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %indvars.iv, %i.aa
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !48
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %5, align 4, !tbaa !50
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.ae, i64 %i.ah, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !50
  %i.aj = sext i32 %i.ai to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aj
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}
end_hunk_1
