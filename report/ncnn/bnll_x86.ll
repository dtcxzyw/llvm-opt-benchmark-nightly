inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZNK4ncnn8BNLL_x8615forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.p = mul nsw i32 %i.i, %i.g
  %i.q = mul nsw i32 %i.p, %i.k
  %i.r = mul nsw i32 %i.q, %i.o                   ; 2 uses
  store i32 %i.r, ptr %i.d, align 4, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !20, !range !23, !noundef !24
  %i.u = trunc nuw i8 %i.t to i1
  %.not.i = icmp ne i32 %i.o, 0
  %or.cond.not = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %_ZNK4ncnn3Mat8elembitsEv.exit, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %.tr.i = trunc i64 %i.w to i32
  %i.x = shl i32 %.tr.i, 3
  %i.y = sdiv i32 %i.x, %i.o
  %i.z = icmp eq i32 %i.y, 16
  br i1 %i.z, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %i.m, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.r, ptr %i.b, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ab)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ad)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn8BNLL_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn8BNLL_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn4BNLLC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8BNLL_x86E, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !43
  ret void
}

declare void @_ZN4ncnn4BNLLC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn8BNLL_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17
  store i32 %i.k, ptr %i.a, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.n = mul nsw i32 %i.g, %i.e
  %i.o = mul nsw i32 %i.n, %i.i
  %i.p = mul nsw i32 %i.o, %i.m
  store i32 %i.p, ptr %i.b, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.r)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8BNLL_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not134 = icmp sgt i32 %i.k, %i.j
  br i1 %.not134, label %._crit_edge136, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.x, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !45
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !45
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !45
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 3
  br i1 %i.w, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.cw, %.lr.ph ] ; 3 uses
  %.040.lcssa = phi i32 [ 0, %.noexc ], [ %i.cu, %.lr.ph ] ; 2 uses
  %.039.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ct, %.lr.ph ]
  %i.y = icmp slt i32 %.040.lcssa, %i.x
  br i1 %i.y, label %.lr.ph133, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.039128 = phi ptr [ %i.ct, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %.040127 = phi i32 [ %i.cu, %.lr.ph ], [ 0, %.noexc ]
  %i.z = load <4 x float>, ptr %.039128, align 16, !tbaa !49 ; 2 uses
  %i.aa = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.z)
  %i.ab = fneg fast <4 x float> %i.aa
  %i.ac = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ab, <4 x float> splat (float f0x42B0C0A5))
  %i.ad = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ac, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ae = fmul fast <4 x float> %i.ad, splat (float f0x3FB8AA3B)
  %i.af = fadd fast <4 x float> %i.ae, splat (float 5.000000e-01) ; 2 uses
  %i.ag = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.af)
  %i.ah = sitofp fast <4 x i32> %i.ag to <4 x float> ; 2 uses
  %i.ai = fcmp fast olt <4 x float> %i.af, %i.ah
  %i.aj = select <4 x i1> %i.ai, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ak = fsub fast <4 x float> %i.ah, %i.aj      ; 2 uses
  %i.al = fmul fast <4 x float> %i.ak, splat (float f0x3F317218)
  %i.am = fsub fast <4 x float> %i.ad, %i.al      ; 8 uses
  %i.an = fmul fast <4 x float> %i.am, %i.am
  %i.ao = fmul fast <4 x float> %i.am, splat (float f0x39506967)
  %i.ap = fadd fast <4 x float> %i.ao, splat (float f0x3AB743CE)
  %i.aq = fmul fast <4 x float> %i.ap, %i.am
  %i.ar = fadd fast <4 x float> %i.aq, splat (float f0x3C088908)
  %i.as = fmul fast <4 x float> %i.ar, %i.am
  %i.at = fadd fast <4 x float> %i.as, splat (float f0x3D2AA9C1)
  %i.au = fmul fast <4 x float> %i.at, %i.am
  %i.av = fadd fast <4 x float> %i.au, splat (float f0x3E2AAAAA)
  %i.aw = fmul fast <4 x float> %i.av, %i.am
  %i.ax = fadd fast <4 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fmul fast <4 x float> %i.an, %i.ax
  %i.az = fadd fast <4 x float> %i.am, splat (float 1.000000e+00)
  %i.ba = fadd fast <4 x float> %i.az, %i.ay
  %i.bb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ak)
  %i.bc = shl <4 x i32> %i.bb, splat (i32 23)
  %i.bd = add <4 x i32> %i.bc, splat (i32 1065353216)
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = fmul fast <4 x float> %i.ba, %i.be
  %i.bg = fadd fast <4 x float> %i.bf, splat (float 1.000000e+00) ; 2 uses
  %i.bh = fcmp fast ole <4 x float> %i.bg, zeroinitializer
  %i.bi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bg, <4 x float> splat (float f0x00800000))
  %i.bj = bitcast <4 x float> %i.bi to <4 x i32>  ; 2 uses
  %i.bk = lshr <4 x i32> %i.bj, splat (i32 23)
  %i.bl = and <4 x i32> %i.bj, splat (i32 -2139095041)
  %i.bm = or disjoint <4 x i32> %i.bl, splat (i32 1056964608)
  %i.bn = bitcast <4 x i32> %i.bm to <4 x float>  ; 3 uses
  %i.bo = add nsw <4 x i32> %i.bk, splat (i32 -127)
  %i.bp = sitofp fast <4 x i32> %i.bo to <4 x float> ; 2 uses
  %i.bq = fadd fast <4 x float> %i.bp, splat (float 1.000000e+00)
  %i.br = fcmp fast olt <4 x float> %i.bn, splat (float f0x3F3504F3) ; 2 uses
  %i.bs = select <4 x i1> %i.br, <4 x float> %i.bn, <4 x float> zeroinitializer
  %i.bt = fadd fast <4 x float> %i.bn, splat (float -1.000000e+00)
  %i.bu = select fast <4 x i1> %i.br, <4 x float> %i.bp, <4 x float> %i.bq
  %i.bv = fadd fast <4 x float> %i.bt, %i.bs      ; 12 uses
  %i.bw = fmul fast <4 x float> %i.bv, %i.bv
  %i.bx = fmul fast <4 x float> %i.bv, splat (float f0x3D9021BB)
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0xBDEBD1B8)
  %i.bz = fmul fast <4 x float> %i.by, %i.bv
  %i.ca = fadd fast <4 x float> %i.bz, splat (float f0x3DEF251A)
  %i.cb = fmul fast <4 x float> %i.ca, %i.bv
  %i.cc = fadd fast <4 x float> %i.cb, splat (float f0xBDFE5D4F)
  %i.cd = fmul fast <4 x float> %i.cc, %i.bv
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0x3E11E9BF)
  %i.cf = fmul fast <4 x float> %i.ce, %i.bv
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0xBE2AAE50)
  %i.ch = fmul fast <4 x float> %i.cg, %i.bv
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3E4CCEAC)
  %i.cj = fmul fast <4 x float> %i.ci, %i.bv
  %i.ck = fadd fast <4 x float> %i.cj, splat (float f0xBE7FFFFC)
  %i.cl = fmul fast <4 x float> %i.ck, %i.bv
  %i.cm = fadd fast <4 x float> %i.cl, splat (float f0x3EAAAAAA)
  %i.cn = fmul fast <4 x float> %i.cm, %i.bv
  %reass.mul.a = fmul fast <4 x float> %i.bu, splat (float f0x3F317218)
  %reass.add125 = fadd fast <4 x float> %i.cn, splat (float -5.000000e-01)
  %reass.mul126 = fmul fast <4 x float> %i.bw, %reass.add125
  %i.co = fadd fast <4 x float> %reass.mul.a, %i.bv
  %i.cp = fadd fast <4 x float> %i.co, %reass.mul126
  %i.cq = select <4 x i1> %i.bh, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cp
  %i.cr = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.z, <4 x float> zeroinitializer)
  %i.cs = fadd fast <4 x float> %i.cq, %i.cr
  store <4 x float> %i.cs, ptr %.039128, align 16, !tbaa !49
  %i.ct = getelementptr inbounds nuw i8, ptr %.039128, i64 16 ; 2 uses
  %i.cu = add nuw nsw i32 %.040127, 4             ; 3 uses
  %i.cv = or disjoint i32 %i.cu, 3
  %i.cw = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %.preheader, !llvm.loop !50

.lr.ph133:                                        ; preds = %.preheader, %bb.e
  %.1132 = phi ptr [ %i.di, %bb.e ], [ %.039.lcssa, %.preheader ] ; 3 uses
  %.141131 = phi i32 [ %i.dj, %bb.e ], [ %.040.lcssa, %.preheader ]
  %i.cy = load float, ptr %.1132, align 4, !tbaa !52 ; 4 uses
  %i.cz = fcmp fast ogt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph133
  %i.da = fneg fast float %i.cy
  %i.db = call fast float @llvm.exp.f32(float %i.da)
  %i.dc = fadd fast float %i.db, 1.000000e+00
  %i.dd = call fast float @llvm.log.f32(float %i.dc)
  %i.de = fadd fast float %i.dd, %i.cy
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph133
  %i.df = call fast float @llvm.exp.f32(float %i.cy)
  %i.dg = fadd fast float %i.df, 1.000000e+00
  %i.dh = call fast float @llvm.log.f32(float %i.dg)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.dh, %bb.d ], [ %i.de, %bb.c ]
  store float %storemerge, ptr %.1132, align 4, !tbaa !52
  %i.di = getelementptr inbounds nuw i8, ptr %.1132, i64 4
  %i.dj = add nuw nsw i32 %.141131, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dj, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph133, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond141.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond141.not, label %._crit_edge136, label %.noexc

._crit_edge136:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge136, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !55 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not137 = icmp sgt i32 %i.k, %i.j
  br i1 %.not137, label %._crit_edge139, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.x, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !57
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !57
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !57
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 3
  br i1 %i.w, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.di, %.lr.ph ] ; 3 uses
  %.038.lcssa = phi i32 [ 0, %.noexc ], [ %i.dg, %.lr.ph ] ; 2 uses
  %.037.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.df, %.lr.ph ]
  %i.y = icmp slt i32 %.038.lcssa, %i.x
  br i1 %i.y, label %.lr.ph136, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.037131 = phi ptr [ %i.df, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %.038130 = phi i32 [ %i.dg, %.lr.ph ], [ 0, %.noexc ]
  %i.z = load i64, ptr %.037131, align 1, !tbaa !49
  %i.aa = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ab = bitcast <2 x i64> %i.aa to <8 x i16>
  %i.ac = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ad = bitcast <8 x i16> %i.ac to <4 x float>
  %i.ae = bitcast <8 x i16> %i.ac to <4 x i32>
  %i.af = and <4 x i32> %i.ae, splat (i32 2147418112)
  %i.ag = bitcast <4 x i32> %i.af to <4 x float>
  %i.ah = fneg fast <4 x float> %i.ag
  %i.ai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ah, <4 x float> splat (float f0x42B0C0A5))
  %i.aj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ai, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ak = fmul fast <4 x float> %i.aj, splat (float f0x3FB8AA3B)
  %i.al = fadd fast <4 x float> %i.ak, splat (float 5.000000e-01) ; 2 uses
  %i.am = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.al)
  %i.an = sitofp fast <4 x i32> %i.am to <4 x float> ; 2 uses
  %i.ao = fcmp fast olt <4 x float> %i.al, %i.an
  %i.ap = select <4 x i1> %i.ao, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aq = fsub fast <4 x float> %i.an, %i.ap      ; 2 uses
  %i.ar = fmul fast <4 x float> %i.aq, splat (float f0x3F317218)
  %i.as = fsub fast <4 x float> %i.aj, %i.ar      ; 8 uses
  %i.at = fmul fast <4 x float> %i.as, %i.as
  %i.au = fmul fast <4 x float> %i.as, splat (float f0x39506967)
  %i.av = fadd fast <4 x float> %i.au, splat (float f0x3AB743CE)
  %i.aw = fmul fast <4 x float> %i.av, %i.as
  %i.ax = fadd fast <4 x float> %i.aw, splat (float f0x3C088908)
  %i.ay = fmul fast <4 x float> %i.ax, %i.as
  %i.az = fadd fast <4 x float> %i.ay, splat (float f0x3D2AA9C1)
  %i.ba = fmul fast <4 x float> %i.az, %i.as
  %i.bb = fadd fast <4 x float> %i.ba, splat (float f0x3E2AAAAA)
  %i.bc = fmul fast <4 x float> %i.bb, %i.as
  %i.bd = fadd fast <4 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fmul fast <4 x float> %i.at, %i.bd
  %i.bf = fadd fast <4 x float> %i.as, splat (float 1.000000e+00)
  %i.bg = fadd fast <4 x float> %i.bf, %i.be
  %i.bh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aq)
  %i.bi = shl <4 x i32> %i.bh, splat (i32 23)
  %i.bj = add <4 x i32> %i.bi, splat (i32 1065353216)
  %i.bk = bitcast <4 x i32> %i.bj to <4 x float>
  %i.bl = fmul fast <4 x float> %i.bg, %i.bk
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00) ; 2 uses
  %i.bn = fcmp fast ole <4 x float> %i.bm, zeroinitializer
  %i.bo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bm, <4 x float> splat (float f0x00800000))
  %i.bp = bitcast <4 x float> %i.bo to <4 x i32>  ; 2 uses
  %i.bq = lshr <4 x i32> %i.bp, splat (i32 23)
  %i.br = and <4 x i32> %i.bp, splat (i32 -2139095041)
  %i.bs = or disjoint <4 x i32> %i.br, splat (i32 1056964608)
  %i.bt = bitcast <4 x i32> %i.bs to <4 x float>  ; 3 uses
  %i.bu = add nsw <4 x i32> %i.bq, splat (i32 -127)
  %i.bv = sitofp fast <4 x i32> %i.bu to <4 x float> ; 2 uses
  %i.bw = fadd fast <4 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = fcmp fast olt <4 x float> %i.bt, splat (float f0x3F3504F3) ; 2 uses
  %i.by = select <4 x i1> %i.bx, <4 x float> %i.bt, <4 x float> zeroinitializer
  %i.bz = fadd fast <4 x float> %i.bt, splat (float -1.000000e+00)
  %i.ca = select fast <4 x i1> %i.bx, <4 x float> %i.bv, <4 x float> %i.bw
  %i.cb = fadd fast <4 x float> %i.bz, %i.by      ; 12 uses
  %i.cc = fmul fast <4 x float> %i.cb, %i.cb
  %i.cd = fmul fast <4 x float> %i.cb, splat (float f0x3D9021BB)
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0xBDEBD1B8)
  %i.cf = fmul fast <4 x float> %i.ce, %i.cb
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0x3DEF251A)
  %i.ch = fmul fast <4 x float> %i.cg, %i.cb
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0xBDFE5D4F)
  %i.cj = fmul fast <4 x float> %i.ci, %i.cb
  %i.ck = fadd fast <4 x float> %i.cj, splat (float f0x3E11E9BF)
  %i.cl = fmul fast <4 x float> %i.ck, %i.cb
  %i.cm = fadd fast <4 x float> %i.cl, splat (float f0xBE2AAE50)
  %i.cn = fmul fast <4 x float> %i.cm, %i.cb
  %i.co = fadd fast <4 x float> %i.cn, splat (float f0x3E4CCEAC)
  %i.cp = fmul fast <4 x float> %i.co, %i.cb
  %i.cq = fadd fast <4 x float> %i.cp, splat (float f0xBE7FFFFC)
  %i.cr = fmul fast <4 x float> %i.cq, %i.cb
  %i.cs = fadd fast <4 x float> %i.cr, splat (float f0x3EAAAAAA)
  %i.ct = fmul fast <4 x float> %i.cs, %i.cb
  %reass.mul.a = fmul fast <4 x float> %i.ca, splat (float f0x3F317218)
  %reass.add128 = fadd fast <4 x float> %i.ct, splat (float -5.000000e-01)
  %reass.mul129 = fmul fast <4 x float> %i.cc, %reass.add128
  %i.cu = fadd fast <4 x float> %reass.mul.a, %i.cb
  %i.cv = fadd fast <4 x float> %i.cu, %reass.mul129
  %i.cw = select <4 x i1> %i.bn, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.cv
  %i.cx = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ad, <4 x float> zeroinitializer)
  %i.cy = fadd fast <4 x float> %i.cw, %i.cx
  %i.cz = bitcast <4 x float> %i.cy to <8 x i16>
  %i.da = shufflevector <8 x i16> %i.cz, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.db = bitcast <8 x i16> %i.da to <4 x float>
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dd = bitcast <4 x float> %i.dc to <2 x i64>
  %i.de = extractelement <2 x i64> %i.dd, i64 0
  store i64 %i.de, ptr %.037131, align 1, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %.037131, i64 8 ; 2 uses
  %i.dg = add nuw nsw i32 %.038130, 4             ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 3
  %i.di = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph, label %.preheader, !llvm.loop !60

.lr.ph136:                                        ; preds = %.preheader, %bb.e
  %.1135 = phi ptr [ %i.ea, %bb.e ], [ %.037.lcssa, %.preheader ] ; 3 uses
  %.139134 = phi i32 [ %i.eb, %bb.e ], [ %.038.lcssa, %.preheader ]
  %i.dk = load i16, ptr %.1135, align 2, !tbaa !61
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw i32 %i.dl, 16
  %i.dn = bitcast i32 %i.dm to float              ; 4 uses
  %i.do = fcmp fast ogt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph136
  %i.dp = fneg fast float %i.dn
  %i.dq = call fast float @llvm.exp.f32(float %i.dp)
  %i.dr = fadd fast float %i.dq, 1.000000e+00
  %i.ds = call fast float @llvm.log.f32(float %i.dr)
  %i.dt = fadd fast float %i.ds, %i.dn
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph136
  %i.du = call fast float @llvm.exp.f32(float %i.dn)
  %i.dv = fadd fast float %i.du, 1.000000e+00
  %i.dw = call fast float @llvm.log.f32(float %i.dv)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi nsz float [ %i.dt, %bb.c ], [ %i.dw, %bb.d ]
  %i.dx = bitcast float %.0 to i32
  %i.dy = lshr i32 %i.dx, 16
  %i.dz = trunc nuw i32 %i.dy to i16
  store i16 %i.dz, ptr %.1135, align 2, !tbaa !61
  %i.ea = getelementptr inbounds nuw i8, ptr %.1135, i64 2
  %i.eb = add nuw nsw i32 %.139134, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph136, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond144.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond144.not, label %._crit_edge139, label %.noexc

._crit_edge139:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge139, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !6, i64 44}
!10 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!10, !6, i64 48}
!16 = !{!10, !6, i64 52}
!17 = !{!10, !6, i64 56}
!18 = !{!6, !6, i64 0}
!19 = !{!10, !6, i64 24}
!20 = !{!21, !22, i64 32}
!21 = !{!"_ZTSN4ncnn6OptionE", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !22, i64 28, !22, i64 29, !22, i64 30, !22, i64 31, !22, i64 32, !22, i64 33, !22, i64 34, !22, i64 35, !22, i64 36, !22, i64 37, !22, i64 38, !22, i64 39, !6, i64 40, !22, i64 44, !22, i64 45, !22, i64 46, !22, i64 47, !7, i64 48, !22, i64 49, !22, i64 50, !22, i64 51, !22, i64 52, !22, i64 53, !22, i64 54, !22, i64 55, !22, i64 56, !22, i64 57, !22, i64 58, !22, i64 59, !22, i64 60, !22, i64 61, !22, i64 62, !22, i64 63}
!22 = !{!"bool", !7, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!10, !13, i64 16}
!26 = !{!21, !6, i64 4}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !22, i64 11}
!30 = !{!"_ZTSN4ncnn5LayerE", !22, i64 8, !22, i64 9, !22, i64 10, !22, i64 11, !22, i64 12, !22, i64 13, !22, i64 14, !22, i64 15, !22, i64 16, !22, i64 17, !22, i64 18, !22, i64 19, !22, i64 20, !22, i64 21, !22, i64 22, !22, i64 23, !22, i64 24, !22, i64 25, !22, i64 26, !22, i64 27, !6, i64 28, !11, i64 32, !6, i64 40, !31, i64 48, !31, i64 80, !34, i64 112, !34, i64 136, !38, i64 160, !38, i64 184}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !13, i64 8, !7, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !11, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!38 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSN4ncnn3MatE", !11, i64 0}
!43 = !{!30, !22, i64 12}
!44 = !{!10, !11, i64 0}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!47 = distinct !{!47, !"_ZN4ncnn3Mat7channelEi"}
!48 = !{!10, !13, i64 64}
!49 = !{!7, !7, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !7, i64 0}
!54 = distinct !{!54, !51}
!55 = !{!56}
!56 = !{i64 2, i64 -1, i64 -1, i1 true}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!59 = distinct !{!59, !"_ZN4ncnn3Mat7channelEi"}
!60 = distinct !{!60, !51}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !7, i64 0}
!63 = distinct !{!63, !51}
end_hunk_0
