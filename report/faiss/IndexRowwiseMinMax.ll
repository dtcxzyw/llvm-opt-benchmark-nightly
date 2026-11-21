Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexRowwiseMinMax?download=true
inline.NumInlined: 286
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5faiss12_GLOBAL__N_118train_inplace_implINS0_17StorageMinMaxFP16EEEvPNS_22IndexRowwiseMinMaxBaseElPf.omp_outlined.7:bb.a
  %i.u = and i32 %i.s, 260046848                  ; 2 uses
  %i.v = add nuw nsw i32 %i.t, 939524096
  %i.w = or i32 %i.s, 1879048192
  %i.x = add nuw nsw i32 %i.t, 947912704
  %i.y = bitcast i32 %i.x to float
  %i.z = fadd float %i.y, f0xB8800000
  %i.aa = bitcast float %i.z to i32
  %i.ab = icmp eq i32 %i.u, 0
  %i.ac = select i1 %i.ab, i32 %i.aa, i32 %i.v
  %.signext.i.i = sext i16 %.val to i32
  %i.ad = and i32 %.signext.i.i, -2147483648
  %i.ae = icmp eq i32 %i.u, 260046848
  %i.af = select i1 %i.ae, i32 %i.w, i32 %i.ac
  %i.ag = or i32 %i.af, %i.ad
  %i.ah = bitcast i32 %i.ag to float              ; 2 uses
  %i.ai = zext i16 %.val22 to i32
  %i.aj = shl nuw nsw i32 %i.ai, 13               ; 3 uses
  %i.ak = and i32 %i.aj, 268427264                ; 2 uses
  %i.al = and i32 %i.aj, 260046848                ; 2 uses
  %i.am = add nuw nsw i32 %i.ak, 939524096
  %i.an = or i32 %i.aj, 1879048192
  %i.ao = add nuw nsw i32 %i.ak, 947912704
  %i.ap = bitcast i32 %i.ao to float
  %i.aq = fadd float %i.ap, f0xB8800000
  %i.ar = bitcast float %i.aq to i32
  %i.as = icmp eq i32 %i.al, 0
  %i.at = select i1 %i.as, i32 %i.ar, i32 %i.am
  %.signext.i3.i = sext i16 %.val22 to i32
  %i.au = and i32 %.signext.i3.i, -2147483648
  %i.av = icmp eq i32 %i.al, 260046848
  %i.aw = select i1 %i.av, i32 %i.an, i32 %i.at
  %i.ax = or i32 %i.aw, %i.au
  %i.ay = bitcast i32 %i.ax to float              ; 2 uses
  %i.az = mul nsw i64 %.02127, %i.n
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.az ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %i.ay, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !39
  %wide.load37 = load <4 x float>, ptr %i.bc, align 4, !tbaa !39
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat36)
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load37, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat36)
  store <4 x float> %i.bd, ptr %i.bb, align 4, !tbaa !39
  store <4 x float> %i.be, ptr %i.bc, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.025.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bg = add i64 %.02127, 1
  %exitcond31.not = icmp eq i64 %.02127, %i.j
  br i1 %exitcond31.not, label %._crit_edge30.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.025 = phi i64 [ %i.bk, %scalar.ph ], [ %.025.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.025 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !39
  %i.bj = call float @llvm.fmuladd.f32(float %i.bi, float %i.ah, float %i.ay)
  store float %i.bj, ptr %i.bh, align 4, !tbaa !39
  %i.bk = add nuw nsw i64 %.025, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !112

._crit_edge30.split:                              ; preds = %._crit_edge, %.lr.ph29, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge30.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5faiss18IndexRowwiseMinMaxC2EPNS_5IndexE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(49) initializes((0, 12), (16, 26), (28, 36), (40, 49)) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.h, align 1, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.d, ptr %i.i, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN5faiss18IndexRowwiseMinMaxE, i64 16), ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss18IndexRowwiseMinMaxC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(49) initializes((0, 12), (16, 26), (28, 36), (40, 49)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.d, align 1, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.e, align 4, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.h, align 8, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN5faiss18IndexRowwiseMinMaxE, i64 16), ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_110train_implINS0_17StorageMinMaxFP32EEEvPNS_22IndexRowwiseMinMaxBaseElPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) #18 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !32
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !32
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not58 = icmp sgt i64 %i.k, %i.j
  br i1 %.not58, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !34     ; 2 uses
  %i.m = load i32, ptr %4, align 4, !tbaa !35     ; 7 uses
  %i.n = sext i32 %i.m to i64                     ; 8 uses
  %i.o = icmp sgt i32 %i.m, 0
  %i.p = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  br i1 %i.o, label %.lr.ph.us.us.preheader, label %._crit_edge62

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph61
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = ptrtoaddr ptr %i.l to i64
  %i.s = shl nuw nsw i64 %i.n, 2
  %i.t = icmp eq i32 %i.m, 1
  %unroll_iter = and i64 %i.n, 2147483646
  %i.u = and i32 %i.m, 1
  %lcmp.mod.not = icmp eq i32 %i.u, 0
  %lcmp.mod96 = trunc i32 %i.m to i1
  %min.iters.check = icmp ult i32 %i.m, 8
  %i.v = sub i64 %i.r, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.n, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  %xtraiter97 = and i64 %i.n, 3
  %i.w = and i32 %i.m, 3
  %lcmp.mod98.not = icmp eq i32 %i.w, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %..loopexit48_crit_edge.us.us
  %.03559.us.us = phi i64 [ %i.cg, %..loopexit48_crit_edge.us.us ], [ %i.k, %.lr.ph.us.us.preheader ] ; 3 uses
  %i.x = mul nsw i64 %.03559.us.us, %i.n          ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.x ; 9 uses
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.03451.us.us = phi i64 [ %i.ai, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.04650.us.us = phi float [ %.sroa.speculated.us.us.1, %.lr.ph.us.us.new ], [ f0xFF7FFFFF, %.lr.ph.us.us ] ; 2 uses
  %.04749.us.us = phi float [ %.sroa.speculated44.us.us.1, %.lr.ph.us.us.new ], [ f0x7F7FFFFF, %.lr.ph.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.03451.us.us
  %i.aa = load float, ptr %i.z, align 4, !tbaa !39 ; 4 uses
  %i.ab = fcmp olt float %i.aa, %.04749.us.us
  %.sroa.speculated44.us.us = select i1 %i.ab, float %i.aa, float %.04749.us.us ; 2 uses
  %i.ac = fcmp olt float %.04650.us.us, %i.aa
  %.sroa.speculated.us.us = select i1 %i.ac, float %i.aa, float %.04650.us.us ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.03451.us.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !39 ; 4 uses
  %i.ag = fcmp olt float %i.af, %.sroa.speculated44.us.us
  %.sroa.speculated44.us.us.1 = select i1 %i.ag, float %i.af, float %.sroa.speculated44.us.us ; 3 uses
  %i.ah = fcmp olt float %.sroa.speculated.us.us, %i.af
  %.sroa.speculated.us.us.1 = select i1 %i.ah, float %i.af, float %.sroa.speculated.us.us ; 3 uses
  %i.ai = add nuw nsw i64 %.03451.us.us, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !116

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %.03451.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.ai, %._crit_edge.us.us.unr-lcssa ]
  %.04650.us.us.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.us.us ], [ %.sroa.speculated.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.04749.us.us.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.us.us ], [ %.sroa.speculated44.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.03451.us.us.epil.init
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !39 ; 4 uses
  %i.al = fcmp olt float %i.ak, %.04749.us.us.epil.init
  %.sroa.speculated44.us.us.epil = select i1 %i.al, float %i.ak, float %.04749.us.us.epil.init
  %i.am = fcmp olt float %.04650.us.us.epil.init, %i.ak
  %.sroa.speculated.us.us.epil = select i1 %i.am, float %i.ak, float %.04650.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %.sroa.speculated44.us.us.lcssa = phi float [ %.sroa.speculated44.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated44.us.us.epil, %.epil.preheader ] ; 7 uses
  %.sroa.speculated.us.us.lcssa = phi float [ %.sroa.speculated.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.us.us.epil, %.epil.preheader ]
  %i.an = fsub float %.sroa.speculated.us.us.lcssa, %.sroa.speculated44.us.us.lcssa ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.p, i64 %i.x ; 7 uses
  %i.ap = fcmp oeq float %i.an, 0.000000e+00
  br i1 %i.ap, label %.lr.ph57.us.us.preheader, label %.lr.ph55.us.us

.lr.ph55.us.us:                                   ; preds = %._crit_edge.us.us
  %i.aq = fdiv float 1.000000e+00, %i.an          ; 6 uses
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph55.us.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %.sroa.speculated44.us.us.lcssa, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !39
  %wide.load93 = load <4 x float>, ptr %i.as, align 4, !tbaa !39
  %i.at = fsub <4 x float> %wide.load, %broadcast.splat92
  %i.au = fsub <4 x float> %wide.load93, %broadcast.splat92
  %i.av = fmul <4 x float> %broadcast.splat, %i.at
  %i.aw = fmul <4 x float> %broadcast.splat, %i.au
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !39
  store <4 x float> %i.aw, ptr %i.ay, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit48_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph55.us.us, %middle.block
  %.053.us.us.ph = phi i64 [ 0, %.lr.ph55.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod98.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.053.us.us.prol = phi i64 [ %i.bf, %scalar.ph.prol ], [ %.053.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.053.us.us.prol
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bc = fsub float %i.bb, %.sroa.speculated44.us.us.lcssa
  %i.bd = fmul float %i.aq, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.053.us.us.prol
  store float %i.bd, ptr %i.be, align 4, !tbaa !39
  %i.bf = add nuw nsw i64 %.053.us.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter97
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !118

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.053.us.us.unr = phi i64 [ %.053.us.us.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = sub nsw i64 %.053.us.us.ph, %i.n
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %..loopexit48_crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.053.us.us = phi i64 [ %i.cf, %scalar.ph ], [ %.053.us.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.053.us.us
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !39
  %i.bk = fsub float %i.bj, %.sroa.speculated44.us.us.lcssa
  %i.bl = fmul float %i.aq, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.053.us.us
  store float %i.bl, ptr %i.bm, align 4, !tbaa !39
  %i.bn = add nuw nsw i64 %.053.us.us, 1          ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !39
  %i.bq = fsub float %i.bp, %.sroa.speculated44.us.us.lcssa
  %i.br = fmul float %i.aq, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bn
  store float %i.br, ptr %i.bs, align 4, !tbaa !39
  %i.bt = add nuw nsw i64 %.053.us.us, 2          ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !39
  %i.bw = fsub float %i.bv, %.sroa.speculated44.us.us.lcssa
  %i.bx = fmul float %i.aq, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bt
  store float %i.bx, ptr %i.by, align 4, !tbaa !39
  %i.bz = add nuw nsw i64 %.053.us.us, 3          ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !39
  %i.cc = fsub float %i.cb, %.sroa.speculated44.us.us.lcssa
  %i.cd = fmul float %i.aq, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bz
  store float %i.cd, ptr %i.ce, align 4, !tbaa !39
  %i.cf = add nuw nsw i64 %.053.us.us, 4          ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.cf, %i.n
  br i1 %exitcond84.not.3, label %..loopexit48_crit_edge.us.us, label %scalar.ph, !llvm.loop !119

.lr.ph57.us.us.preheader:                         ; preds = %._crit_edge.us.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.s, i1 false), !tbaa !39
  br label %..loopexit48_crit_edge.us.us

..loopexit48_crit_edge.us.us:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph57.us.us.preheader
  %i.cg = add i64 %.03559.us.us, 1
  %exitcond85.not = icmp eq i64 %.03559.us.us, %i.j
  br i1 %exitcond85.not, label %._crit_edge62, label %.lr.ph.us.us

._crit_edge62:                                    ; preds = %..loopexit48_crit_edge.us.us, %.lr.ph61, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge62, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_118train_inplace_implINS0_17StorageMinMaxFP32EEEvPNS_22IndexRowwiseMinMaxBaseElPf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) #18 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !32
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 5 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !32
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 6 uses
  %.not61 = icmp sgt i64 %i.k, %i.j
  br i1 %.not61, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !34
  %i.m = load i32, ptr %4, align 4, !tbaa !35     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 6 uses
  %i.o = icmp sgt i32 %i.m, 0
  %.val38 = load ptr, ptr %5, align 8, !tbaa !54  ; 4 uses
  br i1 %i.o, label %.lr.ph.us.us.preheader, label %.loopexit51.preheader

.loopexit51.preheader:                            ; preds = %.lr.ph64
  %i.p = add i64 %i.j, 1
  %i.q = sub i64 %i.p, %i.k                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 4
  br i1 %min.iters.check, label %.loopexit51.preheader100, label %vector.ph

vector.ph:                                        ; preds = %.loopexit51.preheader
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.r = add i64 %i.k, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i64 %i.k, %index                     ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val38, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %.val38, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <4 x float> <float -inf, float f0x7F7FFFFF, float -inf, float f0x7F7FFFFF>, ptr %i.t, align 4, !tbaa !39
  store <4 x float> <float -inf, float f0x7F7FFFFF, float -inf, float f0x7F7FFFFF>, ptr %i.v, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge65, label %.loopexit51.preheader100

.loopexit51.preheader100:                         ; preds = %.loopexit51.preheader, %middle.block
  %.03662.ph = phi i64 [ %i.k, %.loopexit51.preheader ], [ %i.r, %middle.block ]
  br label %.loopexit51

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph64
  %i.x = shl nuw nsw i64 %i.n, 2
  %i.y = icmp eq i32 %i.m, 1
  %unroll_iter = and i64 %i.n, 2147483646
  %i.z = and i32 %i.m, 1
  %lcmp.mod.not = icmp eq i32 %i.z, 0
  %lcmp.mod104 = trunc i32 %i.m to i1
  %min.iters.check88 = icmp ult i32 %i.m, 8
  %n.vec90 = and i64 %i.n, 2147483640             ; 3 uses
  %cmp.n98 = icmp eq i64 %n.vec90, %i.n
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %..loopexit51_crit_edge.us.us
  %.03662.us.us = phi i64 [ %i.bh, %..loopexit51_crit_edge.us.us ], [ %i.k, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.aa = mul nsw i64 %.03662.us.us, %i.n
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa ; 6 uses
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.03554.us.us = phi i64 [ %i.al, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.04953.us.us = phi float [ %.sroa.speculated.us.us.1, %.lr.ph.us.us.new ], [ f0xFF7FFFFF, %.lr.ph.us.us ] ; 2 uses
  %.05052.us.us = phi float [ %.sroa.speculated47.us.us.1, %.lr.ph.us.us.new ], [ f0x7F7FFFFF, %.lr.ph.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.03554.us.us
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !39 ; 4 uses
  %i.ae = fcmp olt float %i.ad, %.05052.us.us
  %.sroa.speculated47.us.us = select i1 %i.ae, float %i.ad, float %.05052.us.us ; 2 uses
  %i.af = fcmp olt float %.04953.us.us, %i.ad
  %.sroa.speculated.us.us = select i1 %i.af, float %i.ad, float %.04953.us.us ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.03554.us.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !39 ; 4 uses
  %i.aj = fcmp olt float %i.ai, %.sroa.speculated47.us.us
  %.sroa.speculated47.us.us.1 = select i1 %i.aj, float %i.ai, float %.sroa.speculated47.us.us ; 3 uses
  %i.ak = fcmp olt float %.sroa.speculated.us.us, %i.ai
  %.sroa.speculated.us.us.1 = select i1 %i.ak, float %i.ai, float %.sroa.speculated.us.us ; 3 uses
  %i.al = add nuw nsw i64 %.03554.us.us, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !121

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %.03554.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.al, %._crit_edge.us.us.unr-lcssa ]
  %.04953.us.us.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.us.us ], [ %.sroa.speculated.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.05052.us.us.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.us.us ], [ %.sroa.speculated47.us.us.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.03554.us.us.epil.init
  %i.an = load float, ptr %i.am, align 4, !tbaa !39 ; 4 uses
  %i.ao = fcmp olt float %i.an, %.05052.us.us.epil.init
  %.sroa.speculated47.us.us.epil = select i1 %i.ao, float %i.an, float %.05052.us.us.epil.init
  %i.ap = fcmp olt float %.04953.us.us.epil.init, %i.an
  %.sroa.speculated.us.us.epil = select i1 %i.ap, float %i.an, float %.04953.us.us.epil.init
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %.sroa.speculated47.us.us.lcssa = phi float [ %.sroa.speculated47.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated47.us.us.epil, %.epil.preheader ] ; 4 uses
  %.sroa.speculated.us.us.lcssa = phi float [ %.sroa.speculated.us.us.1, %._crit_edge.us.us.unr-lcssa ], [ %.sroa.speculated.us.us.epil, %.epil.preheader ]
  %i.aq = fsub float %.sroa.speculated.us.us.lcssa, %.sroa.speculated47.us.us.lcssa ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val38, i64 %.03662.us.us ; 2 uses
  store float %i.aq, ptr %i.ar, align 4, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store float %.sroa.speculated47.us.us.lcssa, ptr %i.as, align 4, !tbaa !51
  %i.at = fcmp oeq float %i.aq, 0.000000e+00
  br i1 %i.at, label %.lr.ph60.us.us.preheader, label %.lr.ph58.us.us

.lr.ph58.us.us:                                   ; preds = %._crit_edge.us.us
  %i.au = fdiv float 1.000000e+00, %i.aq          ; 2 uses
  br i1 %min.iters.check88, label %scalar.ph87.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph58.us.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %.sroa.speculated47.us.us.lcssa, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph89
  %index94 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body93 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index94 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.av, align 4, !tbaa !39
  %wide.load95 = load <4 x float>, ptr %i.aw, align 4, !tbaa !39
  %i.ax = fsub <4 x float> %wide.load, %broadcast.splat92
  %i.ay = fsub <4 x float> %wide.load95, %broadcast.splat92
  %i.az = fmul <4 x float> %broadcast.splat, %i.ax
  %i.ba = fmul <4 x float> %broadcast.splat, %i.ay
  store <4 x float> %i.az, ptr %i.av, align 4, !tbaa !39
  store <4 x float> %i.ba, ptr %i.aw, align 4, !tbaa !39
  %index.next96 = add nuw i64 %index94, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next96, %n.vec90
  br i1 %i.bb, label %middle.block97, label %vector.body93, !llvm.loop !122

middle.block97:                                   ; preds = %vector.body93
  br i1 %cmp.n98, label %..loopexit51_crit_edge.us.us, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %.lr.ph58.us.us, %middle.block97
  %.056.us.us.ph = phi i64 [ 0, %.lr.ph58.us.us ], [ %n.vec90, %middle.block97 ]
  br label %scalar.ph87

scalar.ph87:                                      ; preds = %scalar.ph87.preheader, %scalar.ph87
  %.056.us.us = phi i64 [ %i.bg, %scalar.ph87 ], [ %.056.us.us.ph, %scalar.ph87.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.056.us.us ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !39
  %i.be = fsub float %i.bd, %.sroa.speculated47.us.us.lcssa
  %i.bf = fmul float %i.au, %i.be
  store float %i.bf, ptr %i.bc, align 4, !tbaa !39
  %i.bg = add nuw nsw i64 %.056.us.us, 1          ; 2 uses
  %exitcond78.not = icmp eq i64 %i.bg, %i.n
  br i1 %exitcond78.not, label %..loopexit51_crit_edge.us.us, label %scalar.ph87, !llvm.loop !123

.lr.ph60.us.us.preheader:                         ; preds = %._crit_edge.us.us
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.x, i1 false), !tbaa !39
  br label %..loopexit51_crit_edge.us.us

..loopexit51_crit_edge.us.us:                     ; preds = %scalar.ph87, %middle.block97, %.lr.ph60.us.us.preheader
  %i.bh = add i64 %.03662.us.us, 1
  %exitcond79.not = icmp eq i64 %.03662.us.us, %i.j
  br i1 %exitcond79.not, label %._crit_edge65, label %.lr.ph.us.us

.loopexit51:                                      ; preds = %.loopexit51.preheader100, %.loopexit51
  %.03662 = phi i64 [ %i.bj, %.loopexit51 ], [ %.03662.ph, %.loopexit51.preheader100 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val38, i64 %.03662
  store <2 x float> <float -inf, float f0x7F7FFFFF>, ptr %i.bi, align 4, !tbaa !39
  %i.bj = add i64 %.03662, 1
  %exitcond.not = icmp eq i64 %.03662, %i.j
  br i1 %exitcond.not, label %._crit_edge65, label %.loopexit51, !llvm.loop !124

._crit_edge65:                                    ; preds = %.loopexit51, %..loopexit51_crit_edge.us.us, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge65, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_118train_inplace_implINS0_17StorageMinMaxFP32EEEvPNS_22IndexRowwiseMinMaxBaseElPf.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #18 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !32
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !32
  %i.k = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not24 = icmp sgt i64 %i.k, %i.j
  br i1 %.not24, label %._crit_edge28.split, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.b
  %.val = load ptr, ptr %3, align 8, !tbaa !54
  %i.l = load ptr, ptr %4, align 8, !tbaa !34
  %i.m = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp sgt i32 %i.m, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge28.split

.lr.ph.preheader:                                 ; preds = %.lr.ph27
  %min.iters.check = icmp ult i32 %i.m, 8
  %n.vec = and i64 %i.n, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.02125 = phi i64 [ %i.aa, %._crit_edge ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.02125 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !50 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !51 ; 2 uses
  %i.t = mul nsw i64 %.02125, %i.n
  %i.u = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.t ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert33 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat34 = shufflevector <4 x float> %broadcast.splatinsert33, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !39
  %wide.load35 = load <4 x float>, ptr %i.w, align 4, !tbaa !39
  %i.x = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat34)
  %i.y = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load35, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat34)
  store <4 x float> %i.x, ptr %i.v, align 4, !tbaa !39
  store <4 x float> %i.y, ptr %i.w, align 4, !tbaa !39
end_hunk_0
