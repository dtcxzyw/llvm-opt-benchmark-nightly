inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn11ELU_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
  %i.n = shl i32 %.tr.i, 3
  %i.o = sdiv i32 %i.n, %i.k
  %i.p = icmp eq i32 %i.o, 16
  br i1 %i.p, label %bb.c, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load float, ptr %i.q, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.r, ptr %i.a, align 4, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41
  store i32 %i.z, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.aa = mul i32 %i.t, %i.k
  %i.ab = mul i32 %i.aa, %i.v
  %i.ac = mul i32 %i.ab, %i.x
  store i32 %i.ac, ptr %i.c, align 4, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ae)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL9elu_bf16sERNS_3MatEfRKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %bb.b, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.af = phi i32 [ %i.k, %_ZNK4ncnn3Mat8elembitsEv.exit ], [ 0, %bb.b ], [ %i.k, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !41
  store i32 %i.an, ptr %i.d, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ao = mul nsw i32 %i.aj, %i.ah
  %i.ap = mul nsw i32 %i.ao, %i.al
  %i.aq = mul nsw i32 %i.ap, %i.af
  store i32 %i.aq, ptr %i.e, align 4, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.as)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn11ELU_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn11ELU_x86_avxC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn3ELUC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn11ELU_x86_avxE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !47
  ret void
}

declare void @_ZN4ncnn3ELUC2Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn11ELU_x86_avx21forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load float, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store float %i.e, ptr %i.a, align 4, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41
  store i32 %i.n, ptr %i.b, align 4, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.q = mul nsw i32 %i.j, %i.h
  %i.r = mul nsw i32 %i.q, %i.l
  %i.s = mul nsw i32 %i.r, %i.p
  store i32 %i.s, ptr %i.c, align 4, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.u)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL9elu_bf16sERNS_3MatEfRKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11ELU_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.h = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !42
  %i.k = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge134, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 5 uses
  %i.o = sext i32 %i.k to i64
  %i.p = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !42
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge131
  %i.q = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bv, %._crit_edge131 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.o, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge131 ] ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !48, !noalias !49
  %i.s = load i64, ptr %i.l, align 8, !tbaa !52, !noalias !49
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !49
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  %i.x = load float, ptr %i.n, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <8 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <8 x float> %i.y, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aa = icmp sgt i32 %i.q, 7
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.035119 = phi ptr [ %i.bk, %.lr.ph ], [ %i.w, %.noexc ] ; 3 uses
  %.036118 = phi i32 [ %i.bl, %.lr.ph ], [ 0, %.noexc ]
  %i.ab = load <8 x float>, ptr %.035119, align 1, !tbaa !53 ; 2 uses
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ab)
  %i.ad = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ab)
  %i.ae = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ad, <8 x float> splat (float f0x42B0C0A5))
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ag = fmul fast <8 x float> %i.af, splat (float f0x3FB8AA3B)
  %i.ah = fadd fast <8 x float> %i.ag, splat (float 5.000000e-01) ; 2 uses
  %i.ai = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 2 uses
  %i.aj = fcmp fast ogt <8 x float> %i.ai, %i.ah
  %i.ak = select <8 x i1> %i.aj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.al = fsub fast <8 x float> %i.ai, %i.ak      ; 2 uses
  %i.am = fmul fast <8 x float> %i.al, splat (float f0x3F317218)
  %i.an = fsub fast <8 x float> %i.af, %i.am      ; 8 uses
  %i.ao = fmul fast <8 x float> %i.an, %i.an
  %i.ap = fmul fast <8 x float> %i.an, splat (float f0x39506967)
  %i.aq = fadd fast <8 x float> %i.ap, splat (float f0x3AB743CE)
  %i.ar = fmul fast <8 x float> %i.aq, %i.an
  %i.as = fadd fast <8 x float> %i.ar, splat (float f0x3C088908)
  %i.at = fmul fast <8 x float> %i.as, %i.an
  %i.au = fadd fast <8 x float> %i.at, splat (float f0x3D2AA9C1)
  %i.av = fmul fast <8 x float> %i.au, %i.an
  %i.aw = fadd fast <8 x float> %i.av, splat (float f0x3E2AAAAA)
  %i.ax = fmul fast <8 x float> %i.aw, %i.an
  %i.ay = fadd fast <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fmul fast <8 x float> %i.ao, %i.ay
  %i.ba = fadd fast <8 x float> %i.an, splat (float 1.000000e+00)
  %i.bb = fadd fast <8 x float> %i.ba, %i.az
  %i.bc = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.al)
  %i.bd = shl <8 x i32> %i.bc, splat (i32 23)
  %i.be = add <8 x i32> %i.bd, splat (i32 1065353216)
  %i.bf = bitcast <8 x i32> %i.be to <8 x float>
  %i.bg = fmul fast <8 x float> %i.bb, %i.bf
  %i.bh = fadd fast <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bi = fmul fast <8 x float> %i.bh, %i.z
  %i.bj = fadd fast <8 x float> %i.bi, %i.ac
  store <8 x float> %i.bj, ptr %.035119, align 1, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %.035119, i64 32 ; 2 uses
  %i.bl = add nuw nsw i32 %.036118, 8             ; 3 uses
  %i.bm = or disjoint i32 %i.bl, 7
  %i.bn = load i32, ptr %5, align 4, !tbaa !42    ; 2 uses
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre142 = load float, ptr %i.n, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.bp = phi i32 [ %i.q, %.noexc ], [ %i.bn, %._crit_edge.loopexit ] ; 2 uses
  %i.bq = phi float [ %i.x, %.noexc ], [ %.pre142, %._crit_edge.loopexit ]
  %.036.lcssa = phi i32 [ 0, %.noexc ], [ %i.bl, %._crit_edge.loopexit ] ; 3 uses
  %.035.lcssa = phi ptr [ %i.w, %.noexc ], [ %i.bk, %._crit_edge.loopexit ] ; 2 uses
  %i.br = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = or disjoint i32 %.036.lcssa, 3
  %i.bu = icmp slt i32 %i.bt, %i.bp
  br i1 %i.bu, label %.lr.ph124, label %.preheader

.preheader:                                       ; preds = %.lr.ph124, %._crit_edge
  %i.bv = phi i32 [ %i.bp, %._crit_edge ], [ %i.du, %.lr.ph124 ] ; 5 uses
  %.137.lcssa = phi i32 [ %.036.lcssa, %._crit_edge ], [ %i.ds, %.lr.ph124 ] ; 5 uses
  %.1.lcssa = phi ptr [ %.035.lcssa, %._crit_edge ], [ %i.dr, %.lr.ph124 ] ; 4 uses
  %i.bw = icmp slt i32 %.137.lcssa, %i.bv
  br i1 %i.bw, label %.lr.ph130.preheader, label %._crit_edge131

.lr.ph130.preheader:                              ; preds = %.preheader
  %i.bx = sub i32 %i.bv, %.137.lcssa
  %.neg = add i32 %.137.lcssa, 1
  %xtraiter = and i32 %i.bx, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol

.lr.ph130.prol:                                   ; preds = %.lr.ph130.preheader
  %i.by = load float, ptr %.1.lcssa, align 4, !tbaa !37 ; 2 uses
  %i.bz = fcmp fast olt float %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.c, label %.lr.ph130.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph130.prol
  %i.ca = load float, ptr %i.n, align 8, !tbaa !21
  %i.cb = call fast float @llvm.exp.f32(float %i.by)
  %i.cc = fadd fast float %i.cb, -1.000000e+00
  %i.cd = fmul fast float %i.ca, %i.cc
  store float %i.cd, ptr %.1.lcssa, align 4, !tbaa !37
  br label %.lr.ph130.prol.loopexit.unr-lcssa

.lr.ph130.prol.loopexit.unr-lcssa:                ; preds = %bb.c, %.lr.ph130.prol
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %i.cf = add nuw nsw i32 %.137.lcssa, 1
  br label %.lr.ph130.prol.loopexit

.lr.ph130.prol.loopexit:                          ; preds = %.lr.ph130.prol.loopexit.unr-lcssa, %.lr.ph130.preheader
  %.2129.unr = phi ptr [ %.1.lcssa, %.lr.ph130.preheader ], [ %i.ce, %.lr.ph130.prol.loopexit.unr-lcssa ]
  %.238128.unr = phi i32 [ %.137.lcssa, %.lr.ph130.preheader ], [ %i.cf, %.lr.ph130.prol.loopexit.unr-lcssa ]
  %i.cg = icmp eq i32 %i.bv, %.neg
  br i1 %i.cg, label %._crit_edge131, label %.lr.ph130

.lr.ph124:                                        ; preds = %._crit_edge, %.lr.ph124
  %.1122 = phi ptr [ %i.dr, %.lr.ph124 ], [ %.035.lcssa, %._crit_edge ] ; 3 uses
  %.137121 = phi i32 [ %i.ds, %.lr.ph124 ], [ %.036.lcssa, %._crit_edge ]
  %i.ch = load <4 x float>, ptr %.1122, align 16, !tbaa !53 ; 2 uses
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ch)
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ch)
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> splat (float f0x42B0C0A5))
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ck, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cm = fmul fast <4 x float> %i.cl, splat (float f0x3FB8AA3B)
  %i.cn = fadd fast <4 x float> %i.cm, splat (float 5.000000e-01) ; 2 uses
  %i.co = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cn)
  %i.cp = sitofp fast <4 x i32> %i.co to <4 x float> ; 2 uses
  %i.cq = fcmp fast olt <4 x float> %i.cn, %i.cp
  %i.cr = select <4 x i1> %i.cq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cs = fsub fast <4 x float> %i.cp, %i.cr      ; 2 uses
  %i.ct = fmul fast <4 x float> %i.cs, splat (float f0x3F317218)
  %i.cu = fsub fast <4 x float> %i.cl, %i.ct      ; 8 uses
  %i.cv = fmul fast <4 x float> %i.cu, %i.cu
  %i.cw = fmul fast <4 x float> %i.cu, splat (float f0x39506967)
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3AB743CE)
  %i.cy = fmul fast <4 x float> %i.cx, %i.cu
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0x3C088908)
  %i.da = fmul fast <4 x float> %i.cz, %i.cu
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3D2AA9C1)
  %i.dc = fmul fast <4 x float> %i.db, %i.cu
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0x3E2AAAAA)
  %i.de = fmul fast <4 x float> %i.dd, %i.cu
  %i.df = fadd fast <4 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = fmul fast <4 x float> %i.cv, %i.df
  %i.dh = fadd fast <4 x float> %i.cu, splat (float 1.000000e+00)
  %i.di = fadd fast <4 x float> %i.dh, %i.dg
  %i.dj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cs)
  %i.dk = shl <4 x i32> %i.dj, splat (i32 23)
  %i.dl = add <4 x i32> %i.dk, splat (i32 1065353216)
  %i.dm = bitcast <4 x i32> %i.dl to <4 x float>
  %i.dn = fmul fast <4 x float> %i.di, %i.dm
  %i.do = fadd fast <4 x float> %i.dn, splat (float -1.000000e+00)
  %i.dp = fmul fast <4 x float> %i.do, %i.bs
  %i.dq = fadd fast <4 x float> %i.dp, %i.ci
  store <4 x float> %i.dq, ptr %.1122, align 16, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %.1122, i64 16 ; 2 uses
  %i.ds = add nuw nsw i32 %.137121, 4             ; 3 uses
  %i.dt = or disjoint i32 %i.ds, 3
  %i.du = load i32, ptr %5, align 4, !tbaa !42    ; 2 uses
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph124, label %.preheader, !llvm.loop !56

.lr.ph130:                                        ; preds = %.lr.ph130.prol.loopexit, %bb.f
  %.2129 = phi ptr [ %i.ej, %bb.f ], [ %.2129.unr, %.lr.ph130.prol.loopexit ] ; 4 uses
  %.238128 = phi i32 [ %i.ek, %bb.f ], [ %.238128.unr, %.lr.ph130.prol.loopexit ]
  %i.dw = load float, ptr %.2129, align 4, !tbaa !37 ; 2 uses
  %i.dx = fcmp fast olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.d, label %.lr.ph130.1

bb.d:                                             ; preds = %.lr.ph130
  %i.dy = load float, ptr %i.n, align 8, !tbaa !21
  %i.dz = call fast float @llvm.exp.f32(float %i.dw)
  %i.ea = fadd fast float %i.dz, -1.000000e+00
  %i.eb = fmul fast float %i.dy, %i.ea
  store float %i.eb, ptr %.2129, align 4, !tbaa !37
  br label %.lr.ph130.1

.lr.ph130.1:                                      ; preds = %bb.d, %.lr.ph130
  %i.ec = getelementptr inbounds nuw i8, ptr %.2129, i64 4 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !37 ; 2 uses
  %i.ee = fcmp fast olt float %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph130.1
  %i.ef = load float, ptr %i.n, align 8, !tbaa !21
  %i.eg = call fast float @llvm.exp.f32(float %i.ed)
  %i.eh = fadd fast float %i.eg, -1.000000e+00
  %i.ei = fmul fast float %i.ef, %i.eh
  store float %i.ei, ptr %i.ec, align 4, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph130.1
  %i.ej = getelementptr inbounds nuw i8, ptr %.2129, i64 8
  %i.ek = add nuw nsw i32 %.238128, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ek, %i.bv
  br i1 %exitcond.not.1, label %._crit_edge131, label %.lr.ph130, !llvm.loop !57

._crit_edge131:                                   ; preds = %.lr.ph130.prol.loopexit, %bb.f, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond141.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond141.not, label %._crit_edge134, label %.noexc

._crit_edge134:                                   ; preds = %._crit_edge131, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge134, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !58 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9elu_bf16sERNS_3MatEfRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !42     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.h = load i32, ptr %0, align 4, !tbaa !42     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !42
  %i.k = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %.not141 = icmp sgt i32 %i.k, %i.j
  br i1 %.not141, label %._crit_edge143, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %5, align 4, !tbaa !42
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge140
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ce, %._crit_edge140 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge140 ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !48, !noalias !60
  %i.r = load i64, ptr %i.l, align 8, !tbaa !52, !noalias !60
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !60
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = load float, ptr %4, align 4, !tbaa !37   ; 2 uses
  %i.x = insertelement <8 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <8 x float> %i.x, <8 x float> poison, <8 x i32> zeroinitializer
  %i.z = icmp sgt i32 %i.p, 7
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.037128 = phi ptr [ %i.bt, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %.038127 = phi i32 [ %i.bu, %.lr.ph ], [ 0, %.noexc ]
  %i.aa = load <8 x i16>, ptr %.037128, align 1, !tbaa !53 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ae)
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ae)
  %i.ah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x42B0C0A5))
  %i.ai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aj = fmul fast <8 x float> %i.ai, splat (float f0x3FB8AA3B)
  %i.ak = fadd fast <8 x float> %i.aj, splat (float 5.000000e-01) ; 2 uses
  %i.al = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ak, i32 1) ; 2 uses
  %i.am = fcmp fast ogt <8 x float> %i.al, %i.ak
  %i.an = select <8 x i1> %i.am, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ao = fsub fast <8 x float> %i.al, %i.an      ; 2 uses
  %i.ap = fmul fast <8 x float> %i.ao, splat (float f0x3F317218)
  %i.aq = fsub fast <8 x float> %i.ai, %i.ap      ; 8 uses
  %i.ar = fmul fast <8 x float> %i.aq, %i.aq
  %i.as = fmul fast <8 x float> %i.aq, splat (float f0x39506967)
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3AB743CE)
  %i.au = fmul fast <8 x float> %i.at, %i.aq
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3C088908)
  %i.aw = fmul fast <8 x float> %i.av, %i.aq
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3D2AA9C1)
  %i.ay = fmul fast <8 x float> %i.ax, %i.aq
  %i.az = fadd fast <8 x float> %i.ay, splat (float f0x3E2AAAAA)
  %i.ba = fmul fast <8 x float> %i.az, %i.aq
  %i.bb = fadd fast <8 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fmul fast <8 x float> %i.ar, %i.bb
  %i.bd = fadd fast <8 x float> %i.aq, splat (float 1.000000e+00)
  %i.be = fadd fast <8 x float> %i.bd, %i.bc
  %i.bf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ao)
  %i.bg = shl <8 x i32> %i.bf, splat (i32 23)
  %i.bh = add <8 x i32> %i.bg, splat (i32 1065353216)
  %i.bi = bitcast <8 x i32> %i.bh to <8 x float>
  %i.bj = fmul fast <8 x float> %i.be, %i.bi
  %i.bk = fadd fast <8 x float> %i.bj, splat (float -1.000000e+00)
  %i.bl = fmul fast <8 x float> %i.bk, %i.y
  %i.bm = fadd fast <8 x float> %i.bl, %i.af
  %i.bn = bitcast <8 x float> %i.bm to <8 x i32>  ; 2 uses
  %i.bo = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bp = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bq = lshr <4 x i32> %i.bo, splat (i32 16)
  %i.br = lshr <4 x i32> %i.bp, splat (i32 16)
  %i.bs = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bq, <4 x i32> %i.br)
  store <8 x i16> %i.bs, ptr %.037128, align 1, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %.037128, i64 16 ; 2 uses
  %i.bu = add nuw nsw i32 %.038127, 8             ; 3 uses
  %i.bv = or disjoint i32 %i.bu, 7
  %i.bw = load i32, ptr %5, align 4, !tbaa !42    ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !63

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre151 = load float, ptr %4, align 4, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.by = phi i32 [ %i.p, %.noexc ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %i.bz = phi float [ %i.w, %.noexc ], [ %.pre151, %._crit_edge.loopexit ]
  %.038.lcssa = phi i32 [ 0, %.noexc ], [ %i.bu, %._crit_edge.loopexit ] ; 3 uses
  %.037.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.bt, %._crit_edge.loopexit ] ; 2 uses
  %i.ca = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cc = or disjoint i32 %.038.lcssa, 3
  %i.cd = icmp slt i32 %i.cc, %i.by
  br i1 %i.cd, label %.lr.ph133, label %.preheader

.preheader:                                       ; preds = %.lr.ph133, %._crit_edge
  %i.ce = phi i32 [ %i.by, %._crit_edge ], [ %i.ec, %.lr.ph133 ] ; 3 uses
  %.139.lcssa = phi i32 [ %.038.lcssa, %._crit_edge ], [ %i.ea, %.lr.ph133 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.037.lcssa, %._crit_edge ], [ %i.dz, %.lr.ph133 ]
  %i.cf = icmp slt i32 %.139.lcssa, %i.ce
  br i1 %i.cf, label %.lr.ph139, label %._crit_edge140

.lr.ph133:                                        ; preds = %._crit_edge, %.lr.ph133
  %.1131 = phi ptr [ %i.dz, %.lr.ph133 ], [ %.037.lcssa, %._crit_edge ] ; 3 uses
  %.139130 = phi i32 [ %i.ea, %.lr.ph133 ], [ %.038.lcssa, %._crit_edge ]
  %i.cg = load i64, ptr %.1131, align 1, !tbaa !53
  %i.ch = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.ci = bitcast <2 x i64> %i.ch to <8 x i16>
  %i.cj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ck = bitcast <8 x i16> %i.cj to <4 x float>  ; 2 uses
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ck)
  %i.cm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ck)
  %i.cn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> splat (float f0x42B0C0A5))
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cp = fmul fast <4 x float> %i.co, splat (float f0x3FB8AA3B)
  %i.cq = fadd fast <4 x float> %i.cp, splat (float 5.000000e-01) ; 2 uses
  %i.cr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cq)
  %i.cs = sitofp fast <4 x i32> %i.cr to <4 x float> ; 2 uses
  %i.ct = fcmp fast olt <4 x float> %i.cq, %i.cs
  %i.cu = select <4 x i1> %i.ct, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cv = fsub fast <4 x float> %i.cs, %i.cu      ; 2 uses
  %i.cw = fmul fast <4 x float> %i.cv, splat (float f0x3F317218)
  %i.cx = fsub fast <4 x float> %i.co, %i.cw      ; 8 uses
  %i.cy = fmul fast <4 x float> %i.cx, %i.cx
  %i.cz = fmul fast <4 x float> %i.cx, splat (float f0x39506967)
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3AB743CE)
  %i.db = fmul fast <4 x float> %i.da, %i.cx
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0x3C088908)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cx
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3D2AA9C1)
  %i.df = fmul fast <4 x float> %i.de, %i.cx
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3E2AAAAA)
  %i.dh = fmul fast <4 x float> %i.dg, %i.cx
  %i.di = fadd fast <4 x float> %i.dh, splat (float 5.000000e-01)
  %i.dj = fmul fast <4 x float> %i.cy, %i.di
  %i.dk = fadd fast <4 x float> %i.cx, splat (float 1.000000e+00)
  %i.dl = fadd fast <4 x float> %i.dk, %i.dj
  %i.dm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cv)
  %i.dn = shl <4 x i32> %i.dm, splat (i32 23)
  %i.do = add <4 x i32> %i.dn, splat (i32 1065353216)
  %i.dp = bitcast <4 x i32> %i.do to <4 x float>
  %i.dq = fmul fast <4 x float> %i.dl, %i.dp
  %i.dr = fadd fast <4 x float> %i.dq, splat (float -1.000000e+00)
  %i.ds = fmul fast <4 x float> %i.dr, %i.cb
  %i.dt = fadd fast <4 x float> %i.ds, %i.cl
  %i.du = bitcast <4 x float> %i.dt to <4 x i32>
  %i.dv = lshr <4 x i32> %i.du, splat (i32 16)
  %i.dw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dv, <4 x i32> poison)
  %i.dx = bitcast <8 x i16> %i.dw to <2 x i64>
  %i.dy = extractelement <2 x i64> %i.dx, i64 0
  store i64 %i.dy, ptr %.1131, align 1, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %.1131, i64 8 ; 2 uses
  %i.ea = add nuw nsw i32 %.139130, 4             ; 3 uses
  %i.eb = or disjoint i32 %i.ea, 3
  %i.ec = load i32, ptr %5, align 4, !tbaa !42    ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph133, label %.preheader, !llvm.loop !64

.lr.ph139:                                        ; preds = %.preheader, %bb.d
  %.2138 = phi ptr [ %i.eq, %bb.d ], [ %.1.lcssa, %.preheader ] ; 3 uses
  %.240137 = phi i32 [ %i.er, %bb.d ], [ %.139.lcssa, %.preheader ]
  %i.ee = load i16, ptr %.2138, align 2, !tbaa !65 ; 2 uses
  %i.ef = zext i16 %i.ee to i32
  %i.eg = shl nuw i32 %i.ef, 16
  %i.eh = bitcast i32 %i.eg to float              ; 2 uses
  %i.ei = fcmp fast olt float %i.eh, 0.000000e+00
  br i1 %i.ei, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph139
  %i.ej = load float, ptr %4, align 4, !tbaa !37
  %i.ek = call fast float @llvm.exp.f32(float %i.eh)
  %i.el = fadd fast float %i.ek, -1.000000e+00
  %i.em = fmul fast float %i.ej, %i.el
  %i.en = bitcast float %i.em to i32
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw i32 %i.eo to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph139
  %.0 = phi i16 [ %i.ep, %bb.c ], [ %i.ee, %.lr.ph139 ]
  store i16 %.0, ptr %.2138, align 2, !tbaa !65
  %i.eq = getelementptr inbounds nuw i8, ptr %.2138, i64 2
  %i.er = add nuw nsw i32 %.240137, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.er, %i.ce
  br i1 %exitcond.not, label %._crit_edge140, label %.lr.ph139, !llvm.loop !67

._crit_edge140:                                   ; preds = %bb.d, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond150.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond150.not, label %._crit_edge143, label %.noexc

._crit_edge143:                                   ; preds = %._crit_edge140, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge143, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 32}
!10 = !{!"_ZTSN4ncnn6OptionE", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 3, !6, i64 4, !12, i64 8, !12, i64 16, !6, i64 24, !11, i64 28, !11, i64 29, !11, i64 30, !11, i64 31, !11, i64 32, !11, i64 33, !11, i64 34, !11, i64 35, !11, i64 36, !11, i64 37, !11, i64 38, !11, i64 39, !6, i64 40, !11, i64 44, !11, i64 45, !11, i64 46, !11, i64 47, !7, i64 48, !11, i64 49, !11, i64 50, !11, i64 51, !11, i64 52, !11, i64 53, !11, i64 54, !11, i64 55, !11, i64 56, !11, i64 57, !11, i64 58, !11, i64 59, !11, i64 60, !11, i64 61, !11, i64 62, !11, i64 63}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!17, !6, i64 24}
!17 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !18, i64 8, !19, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !19, i64 64}
!18 = !{!"p1 int", !13, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!17, !19, i64 16}
!21 = !{!22, !36, i64 208}
!22 = !{!"_ZTSN4ncnn3ELUE", !23, i64 0, !36, i64 208}
!23 = !{!"_ZTSN4ncnn5LayerE", !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !11, i64 13, !11, i64 14, !11, i64 15, !11, i64 16, !11, i64 17, !11, i64 18, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 22, !11, i64 23, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !24, i64 48, !24, i64 80, !27, i64 112, !27, i64 136, !31, i64 160, !31, i64 184}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !19, i64 8, !7, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!26 = !{!"p1 omnipotent char", !13, i64 0}
!27 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!31 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!36 = !{!"float", !7, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!17, !6, i64 44}
!39 = !{!17, !6, i64 48}
!40 = !{!17, !6, i64 52}
!41 = !{!17, !6, i64 56}
!42 = !{!6, !6, i64 0}
!43 = !{!10, !6, i64 4}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !8, i64 0}
!46 = !{!23, !11, i64 11}
!47 = !{!23, !11, i64 12}
!48 = !{!17, !13, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!51 = distinct !{!51, !"_ZN4ncnn3Mat7channelEi"}
!52 = !{!17, !19, i64 64}
!53 = !{!7, !7, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = !{!59}
!59 = !{i64 2, i64 -1, i64 -1, i1 true}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!62 = distinct !{!62, !"_ZN4ncnn3Mat7channelEi"}
!63 = distinct !{!63, !55}
!64 = distinct !{!64, !55}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !7, i64 0}
!67 = distinct !{!67, !55}
end_hunk_0
