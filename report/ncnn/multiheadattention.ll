Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/multiheadattention?download=true
inline.NumInlined: 35
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4ncnn18MultiHeadAttention7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge40.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph39, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph39 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.prol
  %i.dj = load float, ptr %i.di, align 4, !tbaa !52
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.prol
  store float %i.dj, ptr %i.dk, align 4, !tbaa !52
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !149

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge40.split, label %scalar.ph

._crit_edge40.split:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next50 to i32
  %exitcond52.not = icmp eq i32 %i.af, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond52.not, label %._crit_edge.split, label %.lr.ph39

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.do = load float, ptr %i.dn, align 4, !tbaa !52
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store float %i.do, ptr %i.dp, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !52
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next
  store float %i.dr, ptr %i.ds, align 4, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.1
  %i.du = load float, ptr %i.dt, align 4, !tbaa !52
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.1
  store float %i.du, ptr %i.dv, align 4, !tbaa !52
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !52
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.2
  store float %i.dx, ptr %i.dy, align 4, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge40.split, label %scalar.ph, !llvm.loop !150

._crit_edge.split:                                ; preds = %._crit_edge40.split, %._crit_edge40.split.us.us, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_RfRKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr %.16.val) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.b, i32 noundef %i.d, i64 noundef 1, i32 noundef 1, ptr noundef %.16.val)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph8, label %._crit_edge9.thread42

._crit_edge9.thread42:                            ; preds = %bb.a
  store float 1.000000e+00, ptr %2, align 4, !tbaa !52
  br label %._crit_edge15

.lr.ph8:                                          ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = load i32, ptr %i.a, align 4, !tbaa !57
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.l, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.us.preheader, label %.lr.ph14

.lr.ph.us.preheader:                              ; preds = %.lr.ph8
  %wide.trip.count22 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph.us

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
  %vec.phi44 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x float>, ptr %i.q, align 4, !tbaa !52
  %wide.load45 = load <4 x float>, ptr %i.r, align 4, !tbaa !52
  %i.s = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.t = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load45)
  %i.u = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.s) ; 2 uses
  %i.v = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi44, <4 x float> %i.t) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !151

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
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !152

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.sroa.speculated.us.lcssa = phi float [ %i.x, %middle.block ], [ %.sroa.speculated.us, %scalar.ph ] ; 3 uses
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge9, label %.lr.ph.us, !llvm.loop !153

._crit_edge9:                                     ; preds = %._crit_edge.us
  %i.ab = fcmp fast oeq float %.sroa.speculated.us.lcssa, 0.000000e+00
  %i.ac = fdiv fast float 1.270000e+02, %.sroa.speculated.us.lcssa
  %i.ad = select fast i1 %i.ab, float 1.000000e+00, float %i.ac
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph8, %._crit_edge9
  %storemerge = phi float [ %i.ad, %._crit_edge9 ], [ 1.000000e+00, %.lr.ph8 ]
  store float %storemerge, ptr %2, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !57 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph14.split.preheader, label %._crit_edge15

.lr.ph14.split.preheader:                         ; preds = %.lr.ph14
  %.pre30 = load i32, ptr %i.a, align 4, !tbaa !57
  %.pre32 = load i64, ptr %i.ae, align 8, !tbaa !48
  %.pre34 = load ptr, ptr %1, align 8, !tbaa !20
  %.pre36 = load i64, ptr %i.ag, align 8, !tbaa !48
  br label %.lr.ph14.split

._crit_edge15:                                    ; preds = %._crit_edge, %.lr.ph14, %._crit_edge9.thread42
  ret void

.lr.ph14.split:                                   ; preds = %.lr.ph14.split.preheader, %._crit_edge
  %i.aj = phi i32 [ %i.f, %.lr.ph14.split.preheader ], [ %i.ay, %._crit_edge ]
  %i.ak = phi i64 [ %.pre36, %.lr.ph14.split.preheader ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.al = phi i32 [ %i.ah, %.lr.ph14.split.preheader ], [ %i.ba, %._crit_edge ] ; 3 uses
  %i.am = phi ptr [ %.pre34, %.lr.ph14.split.preheader ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.an = phi i64 [ %.pre32, %.lr.ph14.split.preheader ], [ %i.bc, %._crit_edge ] ; 2 uses
  %i.ao = phi i32 [ %.pre30, %.lr.ph14.split.preheader ], [ %i.bd, %._crit_edge ] ; 2 uses
  %indvars.iv27 = phi i64 [ 0, %.lr.ph14.split.preheader ], [ %indvars.iv.next28, %._crit_edge ] ; 3 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !20
  %i.aq = sext i32 %i.ao to i64
  %i.ar = mul nsw i64 %indvars.iv27, %i.aq
  %i.as = mul i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as
  %3 = sext i32 %i.al to i64
  %i.au = mul nsw i64 %indvars.iv27, %3
  %i.av = mul i64 %i.au, %i.ak
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.av
  %i.ax = icmp sgt i32 %i.al, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !57
  %.pre31 = load i64, ptr %i.ae, align 8, !tbaa !48
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !20
  %.pre35 = load i64, ptr %i.ag, align 8, !tbaa !48
  %.pre37 = load i32, ptr %i.e, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph14.split
  %i.ay = phi i32 [ %.pre37, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph14.split ] ; 2 uses
  %i.az = phi i64 [ %.pre35, %._crit_edge.loopexit ], [ %i.ak, %.lr.ph14.split ]
  %i.ba = phi i32 [ %i.bn, %._crit_edge.loopexit ], [ %i.al, %.lr.ph14.split ]
  %i.bb = phi ptr [ %.pre33, %._crit_edge.loopexit ], [ %i.am, %.lr.ph14.split ]
  %i.bc = phi i64 [ %.pre31, %._crit_edge.loopexit ], [ %i.an, %.lr.ph14.split ]
  %i.bd = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ao, %.lr.ph14.split ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %i.be = sext i32 %i.ay to i64
  %i.bf = icmp slt i64 %indvars.iv.next28, %i.be
  br i1 %i.bf, label %.lr.ph14.split, label %._crit_edge15, !llvm.loop !154

.lr.ph:                                           ; preds = %.lr.ph14.split, %.lr.ph
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph ], [ 0, %.lr.ph14.split ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv24
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !52
  %i.bi = load float, ptr %2, align 4, !tbaa !52
  %i.bj = fmul fast float %i.bi, %i.bh
  %i.bk = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bj)
  %i.bl = fptosi float %i.bk to i32
  %spec.select5.i = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 -127)
  %.06.i = tail call i32 @llvm.smin.i32(i32 %spec.select5.i, i32 127)
  %.0.i = trunc nsw i32 %.06.i to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv24
  store i8 %.0.i, ptr %i.bm, align 1, !tbaa !70
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.bn = load i32, ptr %i.af, align 4, !tbaa !57 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next25, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !155
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !38   ; 4 uses
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
  %i.x = load ptr, ptr %4, align 8, !tbaa !20
  %i.y = load i32, ptr %i.w, align 4, !tbaa !57
  %i.z = sext i32 %i.y to i64
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !48
  %factor.op.mul47 = mul i64 %i.aa, %i.z
  %i.ab = load i32, ptr %5, align 4, !tbaa !50    ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !20  ; 7 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !20    ; 3 uses
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
  %scevgep83 = getelementptr i8, ptr %3, i64 236
  %i.ao = mul i64 %i.ai, %i.al
  %i.ap = mul i64 %i.ao, %i.ah
  %i.aq = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep84 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %min.iters.check = icmp ult i32 %i.o, 28
  %i.ar = icmp slt i64 %factor.op.mul, 0          ; 2 uses
  %i.as = select i1 %i.ar, i64 %i.an, i64 %factor.op.mul
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.as, i64 %i.al) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.at = sub i64 0, %mul.result
  %invariant.gep113 = getelementptr i8, ptr %i.af, i64 %i.ap
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.au = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph43

.lr.ph43.us.preheader:                            ; preds = %.lr.ph.split
  %i.av = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.aw = sext i32 %i.k to i64
  %i.ax = add nsw i32 %i.j, 1
  %wide.trip.count62 = zext nneg i32 %i.o to i64
  %min.iters.check89 = icmp ult i32 %i.ab, 8
  %n.vec91 = and i64 %i.av, 2147483640            ; 5 uses
  %i.ay = trunc nuw nsw i64 %n.vec91 to i32
  %cmp.n102 = icmp eq i64 %n.vec91, %i.av
  br label %.lr.ph43.us

.lr.ph43.us:                                      ; preds = %.lr.ph43.us.preheader, %._crit_edge44.split.us.us
  %indvars.iv64 = phi i64 [ %i.aw, %.lr.ph43.us.preheader ], [ %indvars.iv.next65, %._crit_edge44.split.us.us ] ; 3 uses
  %.reass48.us = mul i64 %factor.op.mul47, %indvars.iv64
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass48.us ; 3 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv64
  %i.ba = getelementptr i8, ptr %i.az, i64 %n.vec91
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph43.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %._crit_edge.us.us ], [ 0, %.lr.ph43.us ] ; 4 uses
  %.03440.us.us = phi ptr [ %scevgep, %._crit_edge.us.us ], [ %i.m, %.lr.ph43.us ] ; 4 uses
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.us.us
  %i.bb = getelementptr i8, ptr %.03440.us.us, i64 %n.vec91
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body92 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph90 ], [ %i.bk, %vector.body92 ]
  %vec.phi94 = phi <4 x i32> [ zeroinitializer, %vector.ph90 ], [ %i.bl, %vector.body92 ]
  %next.gep = getelementptr i8, ptr %i.az, i64 %index93 ; 2 uses
  %next.gep95 = getelementptr i8, ptr %.03440.us.us, i64 %index93 ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 4
  %wide.load96 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !70
  %wide.load97 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !70
  %i.bd = sext <4 x i8> %wide.load96 to <4 x i32>
  %i.be = sext <4 x i8> %wide.load97 to <4 x i32>
  %i.bf = getelementptr i8, ptr %next.gep95, i64 4
  %wide.load98 = load <4 x i8>, ptr %next.gep95, align 1, !tbaa !70
  %wide.load99 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !70
  %i.bg = sext <4 x i8> %wide.load98 to <4 x i32>
  %i.bh = sext <4 x i8> %wide.load99 to <4 x i32>
  %i.bi = mul nsw <4 x i32> %i.bg, %i.bd
  %i.bj = mul nsw <4 x i32> %i.bh, %i.be
  %i.bk = add <4 x i32> %i.bi, %vec.phi           ; 2 uses
  %i.bl = add <4 x i32> %i.bj, %vec.phi94         ; 2 uses
  %index.next100 = add nuw i64 %index93, 8        ; 2 uses
  %i.bm = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.bm, label %middle.block101, label %vector.body92, !llvm.loop !156

middle.block101:                                  ; preds = %vector.body92
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n102, label %._crit_edge.us.us, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %.lr.ph.us.us, %middle.block101
  %.03038.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ay, %middle.block101 ]
  %.03137.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.bn, %middle.block101 ]
  %.03236.us.us.ph = phi ptr [ %i.az, %.lr.ph.us.us ], [ %i.ba, %middle.block101 ]
  %.135.us.us.ph = phi ptr [ %.03440.us.us, %.lr.ph.us.us ], [ %i.bb, %middle.block101 ]
  br label %scalar.ph88

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %.03038.us.us = phi i32 [ %i.bw, %scalar.ph88 ], [ %.03038.us.us.ph, %scalar.ph88.preheader ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL25dynamic_quantize_2d_per_wERKNS_3MatERS0_S3_RKNS_6OptionE:bb.a

_ZN4ncnn3Mat4fillEf.exit.preheader..preheader51_crit_edge: ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !57
  br label %.preheader51

.lr.ph58:                                         ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader
  %i.v = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !57
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48   ; 3 uses
  %factor.op.mul = mul i64 %i.z, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !57 ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph56.preheader, label %._crit_edge67

.lr.ph56.preheader:                               ; preds = %.lr.ph58
  %wide.trip.count73 = zext nneg i32 %i.t to i64  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 6 uses
  %i.ad = mul i64 %i.z, %i.x
  %i.ae = add nsw i64 %wide.trip.count73, -1
  %i.af = mul i64 %i.z, %i.ae
  %i.ag = mul i64 %i.af, %i.x
  %i.ah = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ah
  %scevgep100 = getelementptr i8, ptr %i.o, i64 %i.ah
  %min.iters.check = icmp ult i32 %i.ab, 8
  %bound0 = icmp ult ptr %i.o, %scevgep
  %bound1 = icmp ult ptr %i.v, %scevgep100
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.ad, 0
  %i.aj = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ak = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph56

.preheader51:                                     ; preds = %._crit_edge, %_ZN4ncnn3Mat4fillEf.exit.preheader..preheader51_crit_edge
  %i.al = phi i32 [ %.pre, %_ZN4ncnn3Mat4fillEf.exit.preheader..preheader51_crit_edge ], [ %i.ab, %._crit_edge ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.an = icmp sgt i32 %i.al, 0                   ; 2 uses
  br i1 %i.an, label %.lr.ph60.preheader, label %.preheader

.lr.ph60.preheader:                               ; preds = %.preheader51
  %wide.trip.count78 = zext nneg i32 %i.al to i64 ; 3 uses
  %min.iters.check105 = icmp ult i32 %i.al, 4
  br i1 %min.iters.check105, label %.lr.ph60.preheader115, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph60.preheader
  %n.vec107 = and i64 %wide.trip.count78, 2147483644 ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next111, %vector.body108 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index109 ; 2 uses
  %wide.load110 = load <4 x float>, ptr %i.ao, align 4, !tbaa !52 ; 2 uses
  %i.ap = fcmp fast oeq <4 x float> %wide.load110, zeroinitializer
  %i.aq = fdiv fast <4 x float> splat (float 1.270000e+02), %wide.load110
  %i.ar = select fast <4 x i1> %i.ap, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aq
  store <4 x float> %i.ar, ptr %i.ao, align 4, !tbaa !52
  %index.next111 = add nuw i64 %index109, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next111, %n.vec107
  br i1 %i.as, label %middle.block112, label %vector.body108, !llvm.loop !189

middle.block112:                                  ; preds = %vector.body108
  %cmp.n113 = icmp eq i64 %n.vec107, %wide.trip.count78
  br i1 %cmp.n113, label %.preheader, label %.lr.ph60.preheader115

.lr.ph60.preheader115:                            ; preds = %.lr.ph60.preheader, %middle.block112
  %indvars.iv75.ph = phi i64 [ 0, %.lr.ph60.preheader ], [ %n.vec107, %middle.block112 ]
  br label %.lr.ph60

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %._crit_edge
  %indvars.iv70 = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next71, %._crit_edge ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv70
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 %.reass ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aj
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph56, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph56 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x float>, ptr %i.av, align 4, !tbaa !52, !alias.scope !199
  %wide.load101 = load <4 x float>, ptr %i.aw, align 4, !tbaa !52, !alias.scope !199
  %i.ax = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load) ; 2 uses
  %i.ay = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load101) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load102 = load <4 x float>, ptr %i.au, align 4, !tbaa !52, !alias.scope !200, !noalias !199 ; 2 uses
  %wide.load103 = load <4 x float>, ptr %i.az, align 4, !tbaa !52, !alias.scope !200, !noalias !199 ; 2 uses
  %i.ba = fcmp fast olt <4 x float> %wide.load102, %i.ax
  %i.bb = fcmp fast olt <4 x float> %wide.load103, %i.ay
  %i.bc = select <4 x i1> %i.ba, <4 x float> %i.ax, <4 x float> %wide.load102
  %i.bd = select <4 x i1> %i.bb, <4 x float> %i.ay, <4 x float> %wide.load103
  store <4 x float> %i.bc, ptr %i.au, align 4, !tbaa !52, !alias.scope !200, !noalias !199
  store <4 x float> %i.bd, ptr %i.az, align 4, !tbaa !52, !alias.scope !200, !noalias !199
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph56, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph56 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.ph ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.ph
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !52
  %i.bi = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.bh) ; 2 uses
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !52 ; 2 uses
  %i.bk = fcmp fast olt float %i.bj, %i.bi
  %.sroa.speculated.prol = select i1 %i.bk, float %i.bi, float %i.bj
  store float %.sroa.speculated.prol, ptr %i.bf, align 4, !tbaa !52
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bl = icmp eq i64 %indvars.iv.ph, %i.ak
  br i1 %i.bl, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %.preheader51, label %.lr.ph56, !llvm.loop !194

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !52
  %i.bp = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.bo) ; 2 uses
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !52 ; 2 uses
  %i.br = fcmp fast olt float %i.bq, %i.bp
  %.sroa.speculated = select i1 %i.br, float %i.bp, float %i.bq
  store float %.sroa.speculated, ptr %i.bm, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !52
  %i.bv = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.bu) ; 2 uses
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !52 ; 2 uses
  %i.bx = fcmp fast olt float %i.bw, %i.bv
  %.sroa.speculated.1 = select i1 %i.bx, float %i.bv, float %i.bw
  store float %.sroa.speculated.1, ptr %i.bs, align 4, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !195

.preheader:                                       ; preds = %.lr.ph60, %middle.block112, %.preheader51
  br i1 %i.u, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.an, label %.lr.ph66.split.preheader, label %._crit_edge67

.lr.ph66.split.preheader:                         ; preds = %.lr.ph66
  %.pre87 = load i64, ptr %i.by, align 8, !tbaa !48
  %.pre89 = load ptr, ptr %1, align 8, !tbaa !20
  %.pre91 = load i64, ptr %i.bz, align 8, !tbaa !48
  br label %.lr.ph66.split

.lr.ph60:                                         ; preds = %.lr.ph60.preheader115, %.lr.ph60
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.lr.ph60 ], [ %indvars.iv75.ph, %.lr.ph60.preheader115 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv75 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !52 ; 2 uses
  %i.cc = fcmp fast oeq float %i.cb, 0.000000e+00
  %i.cd = fdiv fast float 1.270000e+02, %i.cb
  %i.ce = select fast i1 %i.cc, float 1.000000e+00, float %i.cd
  store float %i.ce, ptr %i.ca, align 4, !tbaa !52
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.preheader, label %.lr.ph60, !llvm.loop !196

._crit_edge67:                                    ; preds = %._crit_edge64, %.lr.ph58, %.lr.ph66, %.preheader
  ret void

.lr.ph66.split:                                   ; preds = %.lr.ph66.split.preheader, %._crit_edge64
  %i.cf = phi i32 [ %i.t, %.lr.ph66.split.preheader ], [ %i.cu, %._crit_edge64 ]
  %i.cg = phi i64 [ %.pre91, %.lr.ph66.split.preheader ], [ %i.cv, %._crit_edge64 ] ; 2 uses
  %i.ch = phi i32 [ %i.al, %.lr.ph66.split.preheader ], [ %i.cw, %._crit_edge64 ] ; 3 uses
  %i.ci = phi ptr [ %.pre89, %.lr.ph66.split.preheader ], [ %i.cx, %._crit_edge64 ] ; 2 uses
  %i.cj = phi i64 [ %.pre87, %.lr.ph66.split.preheader ], [ %i.cy, %._crit_edge64 ] ; 2 uses
  %indvars.iv83 = phi i64 [ 0, %.lr.ph66.split.preheader ], [ %indvars.iv.next84, %._crit_edge64 ] ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !20
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !57
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %indvars.iv83, %i.cm
  %i.co = mul i64 %i.cn, %i.cj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co
  %4 = sext i32 %i.ch to i64
  %i.cq = mul nsw i64 %indvars.iv83, %4
  %i.cr = mul i64 %i.cq, %i.cg
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cr
  %i.ct = icmp sgt i32 %i.ch, 0
  br i1 %i.ct, label %.lr.ph63, label %._crit_edge64

._crit_edge64.loopexit:                           ; preds = %.lr.ph63
  %.pre86 = load i64, ptr %i.by, align 8, !tbaa !48
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !20
  %.pre90 = load i64, ptr %i.bz, align 8, !tbaa !48
  %.pre92 = load i32, ptr %i.s, align 8, !tbaa !56
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.lr.ph66.split
  %i.cu = phi i32 [ %.pre92, %._crit_edge64.loopexit ], [ %i.cf, %.lr.ph66.split ] ; 2 uses
  %i.cv = phi i64 [ %.pre90, %._crit_edge64.loopexit ], [ %i.cg, %.lr.ph66.split ]
  %i.cw = phi i32 [ %i.dk, %._crit_edge64.loopexit ], [ %i.ch, %.lr.ph66.split ]
  %i.cx = phi ptr [ %.pre88, %._crit_edge64.loopexit ], [ %i.ci, %.lr.ph66.split ]
  %i.cy = phi i64 [ %.pre86, %._crit_edge64.loopexit ], [ %i.cj, %.lr.ph66.split ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.cz = sext i32 %i.cu to i64
  %i.da = icmp slt i64 %indvars.iv.next84, %i.cz
  br i1 %i.da, label %.lr.ph66.split, label %._crit_edge67, !llvm.loop !197

.lr.ph63:                                         ; preds = %.lr.ph66.split, %.lr.ph63
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph63 ], [ 0, %.lr.ph66.split ] ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv80
  %i.dc = load float, ptr %i.db, align 4, !tbaa !52
  %i.dd = load ptr, ptr %2, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv80
  %i.df = load float, ptr %i.de, align 4, !tbaa !52
  %i.dg = fmul fast float %i.df, %i.dc
  %i.dh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.dg)
  %i.di = fptosi float %i.dh to i32
  %spec.select5.i = tail call i32 @llvm.smax.i32(i32 %i.di, i32 -127)
  %.06.i = tail call i32 @llvm.smin.i32(i32 %spec.select5.i, i32 127)
  %.0.i50 = trunc nsw i32 %.06.i to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv80
  store i8 %.0.i50, ptr %i.dj, align 1, !tbaa !70
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.dk = load i32, ptr %i.am, align 4, !tbaa !57 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next81, %i.dl
  br i1 %i.dm, label %.lr.ph63, label %._crit_edge64.loopexit, !llvm.loop !198
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.15(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.l

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
  %.not63 = icmp sgt i32 %i.l, %i.k
  br i1 %.not63, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph66, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv74 = phi i64 [ %i.v, %.lr.ph66 ], [ %indvars.iv.next75, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.w = load i32, ptr %i.m, align 8, !tbaa !68
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.d

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %bb.c
  %i.y = load i32, ptr %i.q, align 4, !tbaa !57, !noalias !212
  %i.z = load ptr, ptr %3, align 8, !tbaa !20, !noalias !212
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !212
  %i.ab = mul i64 %i.aa, %indvars.iv74
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !48, !noalias !212 ; 2 uses
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !212
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !18  ; 3 uses
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !48  ; 2 uses
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !57  ; 2 uses
  %.not.i40 = icmp eq ptr %i.ah, null
  br i1 %.not.i40, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = atomicrmw add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e, %bb.d, %_ZNK4ncnn3Mat7channelEi.exit
  %.sroa.2957.0 = phi i32 [ %i.y, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ak, %bb.d ], [ %i.ak, %bb.e ]
  %.sroa.2256.0 = phi ptr [ %i.af, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.aj, %bb.d ], [ %i.aj, %bb.e ] ; 3 uses
  %.sroa.13.0 = phi i64 [ %i.ac, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat7channelEi.exit ], [ null, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %.sroa.048.0 = phi ptr [ %i.ae, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ag, %bb.d ], [ %i.ag, %bb.e ] ; 6 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !20, !noalias !213 ; 2 uses
  %i.an = load i64, ptr %i.t, align 8, !tbaa !21, !noalias !213 ; 2 uses
  %i.ao = mul i64 %i.an, %indvars.iv74
  %i.ap = load i64, ptr %i.u, align 8, !tbaa !48, !noalias !213 ; 4 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq  ; 2 uses
  %i.as = load i32, ptr %5, align 4, !tbaa !50    ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph62, label %_ZN4ncnn3MatD2Ev.exit32

.lr.ph62:                                         ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.au = load i32, ptr %i.s, align 4, !tbaa !57, !noalias !213
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = sext i32 %.sroa.2957.0 to i64           ; 3 uses
  %i.ax = mul i64 %.sroa.13.0, %i.aw
  %i.ay = mul i64 %i.ap, %i.av
  %i.az = load i32, ptr %6, align 4, !tbaa !50    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit32

.lr.ph.preheader:                                 ; preds = %.lr.ph62
  %wide.trip.count72 = zext nneg i32 %i.as to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 6 uses
  %i.bb = mul i64 %.sroa.13.0, %i.aw
  %i.bc = mul i64 %i.ap, %i.av
  %i.bd = add nsw i64 %wide.trip.count72, -1      ; 2 uses
  %i.be = mul i64 %.sroa.13.0, %i.bd
  %i.bf = mul i64 %i.be, %i.aw
  %i.bg = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.bh = getelementptr i8, ptr %.sroa.048.0, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.bg
  %i.bi = mul i64 %i.an, %indvars.iv74
  %i.bj = mul nsw i64 %i.bd, %i.av
  %i.bk = add i64 %i.bi, %i.bj
  %i.bl = mul i64 %i.ap, %i.bk
  %i.bm = getelementptr i8, ptr %i.am, i64 %i.bl
  %scevgep83 = getelementptr i8, ptr %i.bm, i64 %i.bg
  %min.iters.check = icmp ult i32 %i.az, 8
  %bound0 = icmp ult ptr %i.ar, %scevgep
  %bound1 = icmp ult ptr %.sroa.048.0, %scevgep83
  %found.conflict = and i1 %bound0, %bound1
  %i.bn = or i64 %i.bb, %i.bc
  %i.bo = icmp slt i64 %i.bn, 0
  %i.bp = or i1 %found.conflict, %i.bo
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit32:                          ; preds = %._crit_edge, %.lr.ph62, %_ZN4ncnn3Mat6addrefEv.exit
  %.not.i33 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i33, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit32
  %i.bq = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %.not3.i34 = icmp eq ptr %.sroa.2256.0, null
  br i1 %.not3.i34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %.sroa.2256.0, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2256.0, ptr noundef %.sroa.048.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i37 = icmp eq ptr %.sroa.048.0, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18MultiHeadAttention12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.17:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aw = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph126, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv148 = phi i64 [ %i.aw, %.lr.ph126 ], [ %indvars.iv.next149, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ax = load i32, ptr %i.n, align 4, !tbaa !57, !noalias !244 ; 2 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !56, !noalias !244 ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !20, !noalias !244
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !21, !noalias !244
  %i.bb = mul i64 %i.ba, %indvars.iv148
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !48, !noalias !244 ; 2 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = sext i32 %i.ax to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.bg = load i32, ptr %5, align 4, !tbaa !50    ; 2 uses
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = mul nsw i64 %indvars.iv148, %i.bh       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !57, !noalias !245 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !20, !noalias !245
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = mul nsw i64 %i.bi, %i.bl
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !48, !noalias !245 ; 2 uses
  %i.bo = mul i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i32, ptr %i.t, align 8, !tbaa !49, !noalias !245
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !19, !noalias !245
  store ptr %i.bp, ptr %10, align 8, !tbaa !20
  store ptr null, ptr %i.v, align 8, !tbaa !18
  store i64 %i.bn, ptr %i.w, align 8, !tbaa !48
  store i32 %i.bq, ptr %i.x, align 8, !tbaa !49
  store ptr %i.br, ptr %i.y, align 8, !tbaa !19
  store i32 2, ptr %i.z, align 8, !tbaa !68
  store i32 %i.bj, ptr %i.aa, align 4, !tbaa !57
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !56
  store i32 1, ptr %i.ac, align 4, !tbaa !71
  store i32 1, ptr %i.ad, align 8, !tbaa !51
  %i.bs = mul nsw i64 %i.bl, %i.bh
  store i64 %i.bs, ptr %i.ae, align 8, !tbaa !21, !alias.scope !245
  %i.bt = load i32, ptr %i.af, align 4, !tbaa !57, !noalias !246
  %i.bu = load ptr, ptr %6, align 8, !tbaa !20, !noalias !246
  %i.bv = sext i32 %i.bt to i64
  %i.bw = load i64, ptr %i.ag, align 8, !tbaa !48, !noalias !246
  %i.bx = mul i64 %i.bw, %i.bv                    ; 7 uses
  %i.by = mul i64 %i.bx, %i.bi
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.by ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store i64 0, ptr %i.am, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aj, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store i64 0, ptr %i.ap, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  %i.ca = load ptr, ptr %i.aq, align 8, !tbaa !59
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %i.ay, i64 noundef 1, i32 noundef 1, ptr noundef %i.ca)
          to label %.noexc84 unwind label %bb.x

.noexc84:                                         ; preds = %bb.c
  %i.cb = load ptr, ptr %i.aq, align 8, !tbaa !59
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.ay, i64 noundef 4, i32 noundef 1, ptr noundef %i.cb)
          to label %.noexc85 unwind label %bb.x

.noexc85:                                         ; preds = %.noexc84
  %i.cc = load i32, ptr %i.al, align 8, !tbaa !56 ; 4 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph44.i, label %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_RKNS_6OptionE.exit

.lr.ph44.i:                                       ; preds = %.noexc85
  %factor.op.mul.i = mul i64 %i.bc, %i.bf         ; 2 uses
  %i.ce = load i32, ptr %i.ak, align 4, !tbaa !57 ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = load ptr, ptr %12, align 8, !tbaa !20   ; 4 uses
  %wide.trip.count60.i = zext nneg i32 %i.cc to i64 ; 4 uses
  br i1 %i.cf, label %.lr.ph.us.preheader.i, label %.lr.ph44.split.i.preheader

.lr.ph44.split.i.preheader:                       ; preds = %.lr.ph44.i
  %min.iters.check196 = icmp ult i32 %i.cc, 8
  br i1 %min.iters.check196, label %.lr.ph44.split.i.preheader206, label %vector.ph197

vector.ph197:                                     ; preds = %.lr.ph44.split.i.preheader
  %n.vec198 = and i64 %wide.trip.count60.i, 2147483640 ; 3 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph197
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next201, %vector.body199 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index200 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.ch, align 4, !tbaa !52
  store <4 x float> splat (float 1.000000e+00), ptr %i.ci, align 4, !tbaa !52
  %index.next201 = add nuw i64 %index200, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next201, %n.vec198
  br i1 %i.cj, label %middle.block202, label %vector.body199, !llvm.loop !232

middle.block202:                                  ; preds = %vector.body199
  %cmp.n203 = icmp eq i64 %n.vec198, %wide.trip.count60.i
  br i1 %cmp.n203, label %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_RKNS_6OptionE.exit, label %.lr.ph44.split.i.preheader206

.lr.ph44.split.i.preheader206:                    ; preds = %.lr.ph44.split.i.preheader, %middle.block202
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph44.split.i.preheader ], [ %n.vec198, %middle.block202 ]
  br label %.lr.ph44.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph44.i
  %wide.trip.count55.i = zext nneg i32 %i.ce to i64 ; 3 uses
  %min.iters.check181 = icmp ult i32 %i.ce, 8
  %n.vec183 = and i64 %wide.trip.count55.i, 2147483640 ; 3 uses
  %cmp.n192 = icmp eq i64 %n.vec183, %wide.trip.count55.i
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next58.i, %._crit_edge.us.i ] ; 3 uses
  %.reass.us.i = mul i64 %factor.op.mul.i, %indvars.iv57.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 %.reass.us.i ; 2 uses
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.body184

vector.body184:                                   ; preds = %.lr.ph.us.i, %vector.body184
  %index185 = phi i64 [ %index.next190, %vector.body184 ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %vec.phi186 = phi <4 x float> [ %i.cp, %vector.body184 ], [ zeroinitializer, %.lr.ph.us.i ]
  %vec.phi187 = phi <4 x float> [ %i.cq, %vector.body184 ], [ zeroinitializer, %.lr.ph.us.i ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index185 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load188 = load <4 x float>, ptr %i.cl, align 4, !tbaa !52
  %wide.load189 = load <4 x float>, ptr %i.cm, align 4, !tbaa !52
  %i.cn = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load188)
  %i.co = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load189)
  %i.cp = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi186, <4 x float> %i.cn) ; 2 uses
  %i.cq = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi187, <4 x float> %i.co) ; 2 uses
  %index.next190 = add nuw i64 %index185, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.cr, label %middle.block191, label %vector.body184, !llvm.loop !233

middle.block191:                                  ; preds = %vector.body184
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cp, <4 x float> %i.cq)
  %i.cs = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n192, label %._crit_edge.us.i, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %.lr.ph.us.i, %middle.block191
  %indvars.iv52.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec183, %middle.block191 ]
  %.03940.us.i.ph = phi float [ 0.000000e+00, %.lr.ph.us.i ], [ %i.cs, %middle.block191 ]
  br label %scalar.ph180

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %scalar.ph180 ], [ %indvars.iv52.i.ph, %scalar.ph180.preheader ] ; 2 uses
  %.03940.us.i = phi float [ %.sroa.speculated.us.i, %scalar.ph180 ], [ %.03940.us.i.ph, %scalar.ph180.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv52.i
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !52
  %i.cv = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.cu)
  %.sroa.speculated.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.03940.us.i, float %i.cv) ; 2 uses
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %._crit_edge.us.i, label %scalar.ph180, !llvm.loop !234

._crit_edge.us.i:                                 ; preds = %scalar.ph180, %middle.block191
  %.sroa.speculated.us.i.lcssa = phi float [ %i.cs, %middle.block191 ], [ %.sroa.speculated.us.i, %scalar.ph180 ] ; 2 uses
  %i.cw = fcmp fast oeq float %.sroa.speculated.us.i.lcssa, 0.000000e+00
  %i.cx = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i.lcssa
  %i.cy = select fast i1 %i.cw, float 1.000000e+00, float %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv57.i
  store float %i.cy, ptr %i.cz, align 4, !tbaa !52
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %.lr.ph47.split.preheader.i, label %.lr.ph.us.i, !llvm.loop !235

.lr.ph47.split.preheader.i:                       ; preds = %._crit_edge.us.i
  %.pre70.i = load ptr, ptr %11, align 8, !tbaa !20
  %.pre72.i = load i64, ptr %i.ai, align 8, !tbaa !48
  br label %.lr.ph47.split.i

.lr.ph44.split.i:                                 ; preds = %.lr.ph44.split.i.preheader206, %.lr.ph44.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph44.split.i ], [ %indvars.iv.i.ph, %.lr.ph44.split.i.preheader206 ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.da, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count60.i
  br i1 %exitcond.not.i, label %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_RKNS_6OptionE.exit, label %.lr.ph44.split.i, !llvm.loop !236

.lr.ph47.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph47.split.preheader.i
  %i.db = phi i32 [ %i.cc, %.lr.ph47.split.preheader.i ], [ %i.do, %._crit_edge.i ]
  %i.dc = phi i32 [ %i.ce, %.lr.ph47.split.preheader.i ], [ %i.dp, %._crit_edge.i ] ; 3 uses
  %i.dd = phi ptr [ %i.cg, %.lr.ph47.split.preheader.i ], [ %i.dq, %._crit_edge.i ] ; 2 uses
  %i.de = phi i64 [ %.pre72.i, %.lr.ph47.split.preheader.i ], [ %i.dr, %._crit_edge.i ] ; 2 uses
  %i.df = phi ptr [ %.pre70.i, %.lr.ph47.split.preheader.i ], [ %i.ds, %._crit_edge.i ] ; 2 uses
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph47.split.preheader.i ], [ %indvars.iv.next66.i, %._crit_edge.i ] ; 4 uses
  %i.dg = mul i64 %factor.op.mul.i, %indvars.iv65.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dg
  %14 = sext i32 %i.dc to i64
  %i.di = mul i64 %i.de, %14
  %i.dj = mul i64 %i.di, %indvars.iv65.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv65.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !52
  %i.dn = icmp sgt i32 %i.dc, 0
  br i1 %i.dn, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre69.i = load ptr, ptr %11, align 8, !tbaa !20
  %.pre71.i = load i64, ptr %i.ai, align 8, !tbaa !48
  %.pre73.i = load ptr, ptr %12, align 8, !tbaa !20
  %.pre75.i = load i32, ptr %i.al, align 8, !tbaa !56
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph47.split.i
  %i.do = phi i32 [ %.pre75.i, %._crit_edge.loopexit.i ], [ %i.db, %.lr.ph47.split.i ] ; 2 uses
  %i.dp = phi i32 [ %i.eb, %._crit_edge.loopexit.i ], [ %i.dc, %.lr.ph47.split.i ]
  %i.dq = phi ptr [ %.pre73.i, %._crit_edge.loopexit.i ], [ %i.dd, %.lr.ph47.split.i ]
  %i.dr = phi i64 [ %.pre71.i, %._crit_edge.loopexit.i ], [ %i.de, %.lr.ph47.split.i ]
  %i.ds = phi ptr [ %.pre69.i, %._crit_edge.loopexit.i ], [ %i.df, %.lr.ph47.split.i ]
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %i.dt = sext i32 %i.do to i64
  %i.du = icmp slt i64 %indvars.iv.next66.i, %i.dt
  br i1 %i.du, label %.lr.ph47.split.i, label %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_RKNS_6OptionE.exit, !llvm.loop !237

.lr.ph.i:                                         ; preds = %.lr.ph47.split.i, %.lr.ph.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.lr.ph.i ], [ 0, %.lr.ph47.split.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv62.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !52
  %i.dx = fmul fast float %i.dw, %i.dm
  %i.dy = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.dx)
  %i.dz = fptosi float %i.dy to i32
  %spec.select5.i.i = call i32 @llvm.smax.i32(i32 %i.dz, i32 -127)
  %.06.i.i = call i32 @llvm.smin.i32(i32 %spec.select5.i.i, i32 127)
  %.0.i.i = trunc nsw i32 %.06.i.i to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv62.i
  store i8 %.0.i.i, ptr %i.ea, align 1, !tbaa !70
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.eb = load i32, ptr %i.ak, align 4, !tbaa !57 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next63.i, %i.ec
  br i1 %i.ed, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !238

_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_RKNS_6OptionE.exit: ; preds = %.lr.ph44.split.i, %._crit_edge.i, %middle.block202, %.noexc85
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store i64 0, ptr %i.av, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %.val = load ptr, ptr %i.aq, align 8, !tbaa !59
  invoke fastcc void @_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_RfRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr %.val)
          to label %.preheader unwind label %bb.x

.preheader:                                       ; preds = %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_RKNS_6OptionE.exit
  %i.ee = load i32, ptr %8, align 4, !tbaa !50    ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader
  %i.eg = load ptr, ptr %12, align 8, !tbaa !20
  %i.eh = load float, ptr %i.e, align 4, !tbaa !52
  %i.ei = load i32, ptr %5, align 4, !tbaa !50    ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  %i.ek = load ptr, ptr %11, align 8
  %i.el = load i32, ptr %i.ak, align 4
  %i.em = sext i32 %i.el to i64
  %i.en = load i64, ptr %i.ai, align 8
  %factor.op.mul119 = mul i64 %i.en, %i.em
  %i.eo = load ptr, ptr %13, align 8
  %i.ep = load i32, ptr %i.au, align 4
  %i.eq = sext i32 %i.ep to i64
  %i.er = load i64, ptr %i.as, align 8
  %factor.op.mul = mul i64 %i.er, %i.eq
  br i1 %i.ej, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.es = load i32, ptr %9, align 4, !tbaa !50    ; 4 uses
  %i.et = icmp sgt i32 %i.es, 0
  %wide.trip.count146 = zext nneg i32 %i.ee to i64 ; 2 uses
  %wide.trip.count141 = zext nneg i32 %i.ei to i64 ; 3 uses
  br i1 %i.et, label %.lr.ph116.us.preheader, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %.lr.ph.split
  %xtraiter = and i64 %wide.trip.count141, 3      ; 3 uses
  %i.eu = icmp ult i32 %i.ei, 4
  %unroll_iter = and i64 %wide.trip.count141, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod214 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph116

.lr.ph116.us.preheader:                           ; preds = %.lr.ph.split
  %i.ev = zext nneg i32 %i.es to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.es, 8
  %n.vec = and i64 %i.ev, 2147483640              ; 5 uses
  %i.ew = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ev
  br label %.lr.ph116.us

.lr.ph116.us:                                     ; preds = %.lr.ph116.us.preheader, %._crit_edge117.split.us.us
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %._crit_edge117.split.us.us ], [ 0, %.lr.ph116.us.preheader ] ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv143
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !52
  %i.ez = fmul fast float %i.eh, %i.ey
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv143
  %.reass.us120 = mul i64 %factor.op.mul119, %indvars.iv143
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.reass.us120 ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 %n.vec
  %i.fc = fdiv fast float 1.000000e+00, %i.ez
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph116.us
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge.us.us ], [ 0, %.lr.ph116.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv138
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.reass.us.us ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us
  %i.fe = getelementptr i8, ptr %i.fd, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fn, %vector.body ]
  %vec.phi173 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fo, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.fd, i64 %index ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.fa, i64 %index ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep174, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep174, align 1, !tbaa !70
  %wide.load175 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !70
  %i.fg = sext <4 x i8> %wide.load to <4 x i32>
  %i.fh = sext <4 x i8> %wide.load175 to <4 x i32>
  %i.fi = getelementptr i8, ptr %next.gep, i64 4
  %wide.load176 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !70
  %wide.load177 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !70
  %i.fj = sext <4 x i8> %wide.load176 to <4 x i32>
  %i.fk = sext <4 x i8> %wide.load177 to <4 x i32>
  %i.fl = mul nsw <4 x i32> %i.fj, %i.fg
  %i.fm = mul nsw <4 x i32> %i.fk, %i.fh
  %i.fn = add <4 x i32> %i.fl, %vec.phi           ; 2 uses
  %i.fo = add <4 x i32> %i.fm, %vec.phi173        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fo, %i.fn
  %i.fq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %.039113.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ew, %middle.block ]
  %.040112.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.fq, %middle.block ]
  %.041111.us.us.ph = phi ptr [ %i.fd, %.lr.ph.us.us ], [ %i.fe, %middle.block ]
  %.042110.us.us.ph = phi ptr [ %i.fa, %.lr.ph.us.us ], [ %i.fb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.039113.us.us = phi i32 [ %i.fz, %scalar.ph ], [ %.039113.us.us.ph, %scalar.ph.preheader ]
  %.040112.us.us = phi i32 [ %i.fy, %scalar.ph ], [ %.040112.us.us.ph, %scalar.ph.preheader ]
  %.041111.us.us = phi ptr [ %i.fu, %scalar.ph ], [ %.041111.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.042110.us.us = phi ptr [ %i.fr, %scalar.ph ], [ %.042110.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.042110.us.us, i64 1
  %i.fs = load i8, ptr %.042110.us.us, align 1, !tbaa !70
  %i.ft = sext i8 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %.041111.us.us, i64 1
  %i.fv = load i8, ptr %.041111.us.us, align 1, !tbaa !70
  %i.fw = sext i8 %i.fv to i32
  %i.fx = mul nsw i32 %i.fw, %i.ft
  %i.fy = add nsw i32 %i.fx, %.040112.us.us       ; 2 uses
  %i.fz = add nuw nsw i32 %.039113.us.us, 1       ; 2 uses
  %exitcond137.not = icmp eq i32 %i.fz, %i.es
  br i1 %exitcond137.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !240

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %.lcssa172 = phi i32 [ %i.fq, %middle.block ], [ %i.fy, %scalar.ph ]
  %i.ga = sitofp fast i32 %.lcssa172 to float
  %i.gb = fmul fast float %i.ga, %i.fc
  %i.gc = mul i64 %i.bx, %indvars.iv138
  %gep.us.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.gc
  store float %i.gb, ptr %gep.us.us, align 4, !tbaa !52
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge117.split.us.us, label %.lr.ph.us.us, !llvm.loop !241

._crit_edge117.split.us.us:                       ; preds = %._crit_edge.us.us
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %._crit_edge.split, label %.lr.ph116.us, !llvm.loop !242

._crit_edge.split:                                ; preds = %._crit_edge117.split, %._crit_edge117.split.us.us, %.lr.ph, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.gd = load ptr, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.gd, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit49, label %bb.d

bb.d:                                             ; preds = %._crit_edge.split
  %i.ge = atomicrmw add ptr %i.gd, i32 -1 acq_rel, align 4
  %i.gf = icmp eq i32 %i.ge, 1
  br i1 %i.gf, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit49
end_hunk_2
