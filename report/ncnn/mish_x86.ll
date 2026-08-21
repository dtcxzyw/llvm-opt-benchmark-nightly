Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mish_x86?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZNK4ncnn8Mish_x8615forward_inplaceERNS_3MatERKNS_6OptionE:bb.a

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %i.m, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.r, ptr %i.b, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ab)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ad)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn8Mish_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn8Mish_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn4MishC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8Mish_x86E, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !43
  ret void
}

declare void @_ZN4ncnn4MishC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn8Mish_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
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
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8Mish_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %.not151 = icmp sgt i32 %i.k, %i.j
  br i1 %.not151, label %._crit_edge153, label %.noexc.lr.ph

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
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ep, %.lr.ph ] ; 4 uses
  %.027.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.em, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.en, %.lr.ph ] ; 4 uses
  %i.y = icmp slt i32 %.0.lcssa, %i.x
  br i1 %i.y, label %.lr.ph150.preheader, label %._crit_edge

.lr.ph150.preheader:                              ; preds = %.preheader
  %i.z = xor i32 %.0.lcssa, -1
  %i.aa = add i32 %i.x, %i.z                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 3
  br i1 %min.iters.check, label %.lr.ph150.preheader169, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph150.preheader
  %n.vec = and i64 %i.ac, 8589934588              ; 4 uses
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = add i32 %.0.lcssa, %i.ad
  %i.af = shl nuw nsw i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %.027.lcssa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.027.lcssa, i64 %i.ah ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !49 ; 2 uses
  %i.ai = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %wide.load)
  %i.aj = fadd fast <4 x float> %i.ai, splat (float 1.000000e+00)
  %i.ak = call fast <4 x float> @llvm.log.v4f32(<4 x float> %i.aj)
  %i.al = call fast <4 x float> @llvm.tanh.v4f32(<4 x float> %i.ak)
  %i.am = fmul fast <4 x float> %i.al, %wide.load
  store <4 x float> %i.am, ptr %next.gep, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph150.preheader169

.lr.ph150.preheader169:                           ; preds = %.lr.ph150.preheader, %middle.block
  %.1149.ph = phi i32 [ %.0.lcssa, %.lr.ph150.preheader ], [ %i.ae, %middle.block ]
  %.128148.ph = phi ptr [ %.027.lcssa, %.lr.ph150.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph150

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0145 = phi i32 [ %i.en, %.lr.ph ], [ 0, %.noexc ]
  %.027144 = phi ptr [ %i.em, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.ao = load <4 x float>, ptr %.027144, align 1, !tbaa !55 ; 2 uses
  %i.ap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ao, <4 x float> splat (float f0x42B0C0A5))
  %i.aq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ap, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ar = fmul fast <4 x float> %i.aq, splat (float f0x3FB8AA3B)
  %i.as = fadd fast <4 x float> %i.ar, splat (float 5.000000e-01) ; 2 uses
  %i.at = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.as)
  %i.au = sitofp fast <4 x i32> %i.at to <4 x float> ; 2 uses
  %i.av = fcmp fast olt <4 x float> %i.as, %i.au
  %i.aw = select <4 x i1> %i.av, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ax = fsub fast <4 x float> %i.au, %i.aw      ; 2 uses
  %i.ay = fmul fast <4 x float> %i.ax, splat (float f0x3F317218)
  %i.az = fsub fast <4 x float> %i.aq, %i.ay      ; 8 uses
  %i.ba = fmul fast <4 x float> %i.az, %i.az
  %i.bb = fmul fast <4 x float> %i.az, splat (float f0x39506967)
  %i.bc = fadd fast <4 x float> %i.bb, splat (float f0x3AB743CE)
  %i.bd = fmul fast <4 x float> %i.bc, %i.az
  %i.be = fadd fast <4 x float> %i.bd, splat (float f0x3C088908)
  %i.bf = fmul fast <4 x float> %i.be, %i.az
  %i.bg = fadd fast <4 x float> %i.bf, splat (float f0x3D2AA9C1)
  %i.bh = fmul fast <4 x float> %i.bg, %i.az
  %i.bi = fadd fast <4 x float> %i.bh, splat (float f0x3E2AAAAA)
  %i.bj = fmul fast <4 x float> %i.bi, %i.az
  %i.bk = fadd fast <4 x float> %i.bj, splat (float 5.000000e-01)
  %i.bl = fmul fast <4 x float> %i.ba, %i.bk
  %i.bm = fadd fast <4 x float> %i.az, %i.bl
  %i.bn = fadd fast <4 x float> %i.bm, splat (float 1.000000e+00)
  %i.bo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ax)
  %i.bp = shl <4 x i32> %i.bo, splat (i32 23)
  %i.bq = add <4 x i32> %i.bp, splat (i32 1065353216)
  %i.br = bitcast <4 x i32> %i.bq to <4 x float>
  %i.bs = fmul fast <4 x float> %i.bn, %i.br
  %i.bt = fadd fast <4 x float> %i.bs, splat (float 1.000000e+00) ; 2 uses
  %i.bu = fcmp fast ole <4 x float> %i.bt, zeroinitializer
  %i.bv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0x00800000))
  %i.bw = bitcast <4 x float> %i.bv to <4 x i32>  ; 2 uses
  %i.bx = lshr <4 x i32> %i.bw, splat (i32 23)
  %i.by = and <4 x i32> %i.bw, splat (i32 -2139095041)
  %i.bz = or disjoint <4 x i32> %i.by, splat (i32 1056964608)
  %i.ca = bitcast <4 x i32> %i.bz to <4 x float>  ; 3 uses
  %i.cb = add nsw <4 x i32> %i.bx, splat (i32 -127)
  %i.cc = sitofp fast <4 x i32> %i.cb to <4 x float> ; 2 uses
  %i.cd = fadd fast <4 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = fcmp fast olt <4 x float> %i.ca, splat (float f0x3F3504F3) ; 2 uses
  %i.cf = select <4 x i1> %i.ce, <4 x float> %i.ca, <4 x float> zeroinitializer
  %i.cg = fadd fast <4 x float> %i.ca, splat (float -1.000000e+00)
  %i.ch = select fast <4 x i1> %i.ce, <4 x float> %i.cc, <4 x float> %i.cd
  %i.ci = fadd fast <4 x float> %i.cg, %i.cf      ; 12 uses
  %i.cj = fmul fast <4 x float> %i.ci, %i.ci      ; 2 uses
  %i.ck = fmul fast <4 x float> %i.ci, splat (float f0x3D9021BB)
  %i.cl = fadd fast <4 x float> %i.ck, splat (float f0xBDEBD1B8)
  %i.cm = fmul fast <4 x float> %i.cl, %i.ci
  %i.cn = fadd fast <4 x float> %i.cm, splat (float f0x3DEF251A)
  %i.co = fmul fast <4 x float> %i.cn, %i.ci
  %i.cp = fadd fast <4 x float> %i.co, splat (float f0xBDFE5D4F)
  %i.cq = fmul fast <4 x float> %i.cp, %i.ci
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3E11E9BF)
  %i.cs = fmul fast <4 x float> %i.cr, %i.ci
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0xBE2AAE50)
  %i.cu = fmul fast <4 x float> %i.ct, %i.ci
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3E4CCEAC)
  %i.cw = fmul fast <4 x float> %i.cv, %i.ci
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0xBE7FFFFC)
  %i.cy = fmul fast <4 x float> %i.cx, %i.ci
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0x3EAAAAAA)
  %i.da = fmul fast <4 x float> %i.cj, %i.ci
  %reass.mul.a = fmul fast <4 x float> %i.da, %i.cz
  %.neg141 = fmul fast <4 x float> %i.cj, splat (float -5.000000e-01)
  %reass.mul143 = fmul fast <4 x float> %i.ch, splat (float f0x3F317218)
  %5 = fadd fast <4 x float> %i.ci, %.neg141
  %i.db = fadd fast <4 x float> %reass.mul.a, %5
  %i.dc = fadd fast <4 x float> %i.db, %reass.mul143
  %.neg = fmul fast <4 x float> %i.dc, splat (float -2.000000e+00)
  %i.dd = select fast <4 x i1> %i.bu, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> splat (float f0x42B0C0A5))
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.de, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dg = fmul fast <4 x float> %i.df, splat (float f0x3FB8AA3B)
  %i.dh = fadd fast <4 x float> %i.dg, splat (float 5.000000e-01) ; 2 uses
  %i.di = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dh)
  %i.dj = sitofp fast <4 x i32> %i.di to <4 x float> ; 2 uses
  %i.dk = fcmp fast olt <4 x float> %i.dh, %i.dj
  %i.dl = select <4 x i1> %i.dk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dm = fsub fast <4 x float> %i.dj, %i.dl      ; 2 uses
  %i.dn = fmul fast <4 x float> %i.dm, splat (float f0x3F317218)
  %i.do = fsub fast <4 x float> %i.df, %i.dn      ; 8 uses
  %i.dp = fmul fast <4 x float> %i.do, %i.do
  %i.dq = fmul fast <4 x float> %i.do, splat (float f0x39506967)
  %i.dr = fadd fast <4 x float> %i.dq, splat (float f0x3AB743CE)
  %i.ds = fmul fast <4 x float> %i.dr, %i.do
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3C088908)
  %i.du = fmul fast <4 x float> %i.dt, %i.do
  %i.dv = fadd fast <4 x float> %i.du, splat (float f0x3D2AA9C1)
  %i.dw = fmul fast <4 x float> %i.dv, %i.do
  %i.dx = fadd fast <4 x float> %i.dw, splat (float f0x3E2AAAAA)
  %i.dy = fmul fast <4 x float> %i.dx, %i.do
  %i.dz = fadd fast <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ea = fmul fast <4 x float> %i.dp, %i.dz
  %i.eb = fadd fast <4 x float> %i.do, %i.ea
  %i.ec = fadd fast <4 x float> %i.eb, splat (float 1.000000e+00)
  %i.ed = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dm)
  %i.ee = shl <4 x i32> %i.ed, splat (i32 23)
  %i.ef = add <4 x i32> %i.ee, splat (i32 1065353216)
  %i.eg = bitcast <4 x i32> %i.ef to <4 x float>
  %i.eh = fmul fast <4 x float> %i.ec, %i.eg
  %i.ei = fadd fast <4 x float> %i.eh, splat (float 1.000000e+00)
  %i.ej = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ei
  %i.ek = fadd fast <4 x float> %i.ej, splat (float -1.000000e+00)
  %i.el = fmul fast <4 x float> %i.ek, %i.ao
  store <4 x float> %i.el, ptr %.027144, align 1, !tbaa !55
  %i.em = getelementptr inbounds nuw i8, ptr %.027144, i64 16 ; 2 uses
  %i.en = add nuw nsw i32 %.0145, 4               ; 3 uses
  %i.eo = or disjoint i32 %i.en, 3
  %i.ep = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %.lr.ph, label %.preheader, !llvm.loop !56

.lr.ph150:                                        ; preds = %.lr.ph150.preheader169, %.lr.ph150
  %.1149 = phi i32 [ %i.ey, %.lr.ph150 ], [ %.1149.ph, %.lr.ph150.preheader169 ]
  %.128148 = phi ptr [ %i.ex, %.lr.ph150 ], [ %.128148.ph, %.lr.ph150.preheader169 ] ; 3 uses
  %i.er = load float, ptr %.128148, align 4, !tbaa !49 ; 2 uses
  %i.es = call fast float @llvm.exp.f32(float %i.er)
  %i.et = fadd fast float %i.es, 1.000000e+00
  %i.eu = call fast float @llvm.log.f32(float %i.et)
  %i.ev = call fast float @llvm.tanh.f32(float %i.eu)
  %i.ew = fmul fast float %i.ev, %i.er
  store float %i.ew, ptr %.128148, align 4, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %.128148, i64 4
  %i.ey = add nuw nsw i32 %.1149, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ey, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph150, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph150, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond158.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond158.not, label %._crit_edge153, label %.noexc

._crit_edge153:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge153, %bb.a
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !58 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %.not154 = icmp sgt i32 %i.k, %i.j
  br i1 %.not154, label %._crit_edge156, label %.noexc.lr.ph

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
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !60
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !60
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !60
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 3
  br i1 %i.w, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ff, %.lr.ph ] ; 4 uses
  %.028.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.fc, %.lr.ph ] ; 3 uses
  %.027.lcssa = phi i32 [ 0, %.noexc ], [ %i.fd, %.lr.ph ] ; 4 uses
  %i.y = icmp slt i32 %.027.lcssa, %i.x
  br i1 %i.y, label %.lr.ph153.preheader, label %._crit_edge

.lr.ph153.preheader:                              ; preds = %.preheader
  %i.z = xor i32 %.027.lcssa, -1
  %i.aa = add i32 %i.x, %i.z                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 7
  br i1 %min.iters.check, label %.lr.ph153.preheader172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph153.preheader
  %n.vec = and i64 %i.ac, 8589934584              ; 4 uses
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = add i32 %.027.lcssa, %i.ad
  %i.af = shl nuw nsw i64 %n.vec, 1
  %i.ag = getelementptr i8, ptr %.028.lcssa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.028.lcssa, i64 %i.ah ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !63
  %i.ai = zext <8 x i16> %wide.load to <8 x i32>
  %i.aj = shl nuw <8 x i32> %i.ai, splat (i32 16)
  %i.ak = bitcast <8 x i32> %i.aj to <8 x float>  ; 2 uses
  %i.al = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ak)
  %i.am = fadd fast <8 x float> %i.al, splat (float 1.000000e+00)
  %i.an = call fast <8 x float> @llvm.log.v8f32(<8 x float> %i.am)
  %i.ao = call fast <8 x float> @llvm.tanh.v8f32(<8 x float> %i.an)
  %i.ap = fmul fast <8 x float> %i.ao, %i.ak
  %i.aq = bitcast <8 x float> %i.ap to <8 x i32>
  %i.ar = lshr <8 x i32> %i.aq, splat (i32 16)
  %i.as = trunc nuw <8 x i32> %i.ar to <8 x i16>
  store <8 x i16> %i.as, ptr %next.gep, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph153.preheader172

.lr.ph153.preheader172:                           ; preds = %.lr.ph153.preheader, %middle.block
  %.1152.ph = phi i32 [ %.027.lcssa, %.lr.ph153.preheader ], [ %i.ae, %middle.block ]
  %.129151.ph = phi ptr [ %.028.lcssa, %.lr.ph153.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph153

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.027148 = phi i32 [ %i.fd, %.lr.ph ], [ 0, %.noexc ]
  %.028147 = phi ptr [ %i.fc, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.au = load i64, ptr %.028147, align 1, !tbaa !55
  %i.av = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.aw = bitcast <2 x i64> %i.av to <8 x i16>
  %i.ax = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ay = bitcast <8 x i16> %i.ax to <4 x float>  ; 2 uses
  %i.az = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ay, <4 x float> splat (float f0x42B0C0A5))
  %i.ba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.az, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bb = fmul fast <4 x float> %i.ba, splat (float f0x3FB8AA3B)
  %i.bc = fadd fast <4 x float> %i.bb, splat (float 5.000000e-01) ; 2 uses
  %i.bd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bc)
  %i.be = sitofp fast <4 x i32> %i.bd to <4 x float> ; 2 uses
  %i.bf = fcmp fast olt <4 x float> %i.bc, %i.be
  %i.bg = select <4 x i1> %i.bf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bh = fsub fast <4 x float> %i.be, %i.bg      ; 2 uses
  %i.bi = fmul fast <4 x float> %i.bh, splat (float f0x3F317218)
  %i.bj = fsub fast <4 x float> %i.ba, %i.bi      ; 8 uses
  %i.bk = fmul fast <4 x float> %i.bj, %i.bj
  %i.bl = fmul fast <4 x float> %i.bj, splat (float f0x39506967)
  %i.bm = fadd fast <4 x float> %i.bl, splat (float f0x3AB743CE)
  %i.bn = fmul fast <4 x float> %i.bm, %i.bj
  %i.bo = fadd fast <4 x float> %i.bn, splat (float f0x3C088908)
  %i.bp = fmul fast <4 x float> %i.bo, %i.bj
  %i.bq = fadd fast <4 x float> %i.bp, splat (float f0x3D2AA9C1)
  %i.br = fmul fast <4 x float> %i.bq, %i.bj
  %i.bs = fadd fast <4 x float> %i.br, splat (float f0x3E2AAAAA)
  %i.bt = fmul fast <4 x float> %i.bs, %i.bj
  %i.bu = fadd fast <4 x float> %i.bt, splat (float 5.000000e-01)
  %i.bv = fmul fast <4 x float> %i.bk, %i.bu
  %i.bw = fadd fast <4 x float> %i.bj, %i.bv
  %i.bx = fadd fast <4 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bh)
  %i.bz = shl <4 x i32> %i.by, splat (i32 23)
  %i.ca = add <4 x i32> %i.bz, splat (i32 1065353216)
  %i.cb = bitcast <4 x i32> %i.ca to <4 x float>
  %i.cc = fmul fast <4 x float> %i.bx, %i.cb
  %i.cd = fadd fast <4 x float> %i.cc, splat (float 1.000000e+00) ; 2 uses
  %i.ce = fcmp fast ole <4 x float> %i.cd, zeroinitializer
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x00800000))
  %i.cg = bitcast <4 x float> %i.cf to <4 x i32>  ; 2 uses
  %i.ch = lshr <4 x i32> %i.cg, splat (i32 23)
  %i.ci = and <4 x i32> %i.cg, splat (i32 -2139095041)
  %i.cj = or disjoint <4 x i32> %i.ci, splat (i32 1056964608)
  %i.ck = bitcast <4 x i32> %i.cj to <4 x float>  ; 3 uses
  %i.cl = add nsw <4 x i32> %i.ch, splat (i32 -127)
  %i.cm = sitofp fast <4 x i32> %i.cl to <4 x float> ; 2 uses
  %i.cn = fadd fast <4 x float> %i.cm, splat (float 1.000000e+00)
  %i.co = fcmp fast olt <4 x float> %i.ck, splat (float f0x3F3504F3) ; 2 uses
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.ck, <4 x float> zeroinitializer
  %i.cq = fadd fast <4 x float> %i.ck, splat (float -1.000000e+00)
  %i.cr = select fast <4 x i1> %i.co, <4 x float> %i.cm, <4 x float> %i.cn
  %i.cs = fadd fast <4 x float> %i.cq, %i.cp      ; 12 uses
  %i.ct = fmul fast <4 x float> %i.cs, %i.cs      ; 2 uses
  %i.cu = fmul fast <4 x float> %i.cs, splat (float f0x3D9021BB)
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0xBDEBD1B8)
  %i.cw = fmul fast <4 x float> %i.cv, %i.cs
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3DEF251A)
  %i.cy = fmul fast <4 x float> %i.cx, %i.cs
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0xBDFE5D4F)
  %i.da = fmul fast <4 x float> %i.cz, %i.cs
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3E11E9BF)
  %i.dc = fmul fast <4 x float> %i.db, %i.cs
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0xBE2AAE50)
  %i.de = fmul fast <4 x float> %i.dd, %i.cs
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3E4CCEAC)
  %i.dg = fmul fast <4 x float> %i.df, %i.cs
  %i.dh = fadd fast <4 x float> %i.dg, splat (float f0xBE7FFFFC)
  %i.di = fmul fast <4 x float> %i.dh, %i.cs
  %i.dj = fadd fast <4 x float> %i.di, splat (float f0x3EAAAAAA)
  %i.dk = fmul fast <4 x float> %i.ct, %i.cs
  %reass.mul.a = fmul fast <4 x float> %i.dk, %i.dj
  %.neg144 = fmul fast <4 x float> %i.ct, splat (float -5.000000e-01)
  %reass.mul146 = fmul fast <4 x float> %i.cr, splat (float f0x3F317218)
  %5 = fadd fast <4 x float> %i.cs, %.neg144
  %i.dl = fadd fast <4 x float> %reass.mul.a, %5
  %i.dm = fadd fast <4 x float> %i.dl, %reass.mul146
  %.neg = fmul fast <4 x float> %i.dm, splat (float -2.000000e+00)
  %i.dn = select fast <4 x i1> %i.ce, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> splat (float f0x42B0C0A5))
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.do, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dq = fmul fast <4 x float> %i.dp, splat (float f0x3FB8AA3B)
  %i.dr = fadd fast <4 x float> %i.dq, splat (float 5.000000e-01) ; 2 uses
  %i.ds = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr)
  %i.dt = sitofp fast <4 x i32> %i.ds to <4 x float> ; 2 uses
  %i.du = fcmp fast olt <4 x float> %i.dr, %i.dt
  %i.dv = select <4 x i1> %i.du, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dw = fsub fast <4 x float> %i.dt, %i.dv      ; 2 uses
  %i.dx = fmul fast <4 x float> %i.dw, splat (float f0x3F317218)
  %i.dy = fsub fast <4 x float> %i.dp, %i.dx      ; 8 uses
  %i.dz = fmul fast <4 x float> %i.dy, %i.dy
  %i.ea = fmul fast <4 x float> %i.dy, splat (float f0x39506967)
  %i.eb = fadd fast <4 x float> %i.ea, splat (float f0x3AB743CE)
  %i.ec = fmul fast <4 x float> %i.eb, %i.dy
  %i.ed = fadd fast <4 x float> %i.ec, splat (float f0x3C088908)
  %i.ee = fmul fast <4 x float> %i.ed, %i.dy
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3D2AA9C1)
  %i.eg = fmul fast <4 x float> %i.ef, %i.dy
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3E2AAAAA)
  %i.ei = fmul fast <4 x float> %i.eh, %i.dy
  %i.ej = fadd fast <4 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = fmul fast <4 x float> %i.dz, %i.ej
  %i.el = fadd fast <4 x float> %i.dy, %i.ek
  %i.em = fadd fast <4 x float> %i.el, splat (float 1.000000e+00)
  %i.en = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dw)
  %i.eo = shl <4 x i32> %i.en, splat (i32 23)
  %i.ep = add <4 x i32> %i.eo, splat (i32 1065353216)
  %i.eq = bitcast <4 x i32> %i.ep to <4 x float>
  %i.er = fmul fast <4 x float> %i.em, %i.eq
  %i.es = fadd fast <4 x float> %i.er, splat (float 1.000000e+00)
  %i.et = fdiv fast <4 x float> splat (float 2.000000e+00), %i.es
  %i.eu = fadd fast <4 x float> %i.et, splat (float -1.000000e+00)
  %i.ev = fmul fast <4 x float> %i.eu, %i.ay
  %i.ew = bitcast <4 x float> %i.ev to <8 x i16>
  %i.ex = shufflevector <8 x i16> %i.ew, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ey = bitcast <8 x i16> %i.ex to <4 x float>
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fa = bitcast <4 x float> %i.ez to <2 x i64>
  %i.fb = extractelement <2 x i64> %i.fa, i64 0
  store i64 %i.fb, ptr %.028147, align 1, !tbaa !55
  %i.fc = getelementptr inbounds nuw i8, ptr %.028147, i64 8 ; 2 uses
  %i.fd = add nuw nsw i32 %.027148, 4             ; 3 uses
  %i.fe = or disjoint i32 %i.fd, 3
  %i.ff = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph, label %.preheader, !llvm.loop !66

.lr.ph153:                                        ; preds = %.lr.ph153.preheader172, %.lr.ph153
  %.1152 = phi i32 [ %i.fu, %.lr.ph153 ], [ %.1152.ph, %.lr.ph153.preheader172 ]
  %.129151 = phi ptr [ %i.ft, %.lr.ph153 ], [ %.129151.ph, %.lr.ph153.preheader172 ] ; 3 uses
  %i.fh = load i16, ptr %.129151, align 2, !tbaa !63
  %i.fi = zext i16 %i.fh to i32
  %i.fj = shl nuw i32 %i.fi, 16
  %i.fk = bitcast i32 %i.fj to float              ; 2 uses
  %i.fl = call fast float @llvm.exp.f32(float %i.fk)
  %i.fm = fadd fast float %i.fl, 1.000000e+00
  %i.fn = call fast float @llvm.log.f32(float %i.fm)
  %i.fo = call fast float @llvm.tanh.f32(float %i.fn)
  %i.fp = fmul fast float %i.fo, %i.fk
  %i.fq = bitcast float %i.fp to i32
  %i.fr = lshr i32 %i.fq, 16
  %i.fs = trunc nuw i32 %i.fr to i16
  store i16 %i.fs, ptr %.129151, align 2, !tbaa !63
  %i.ft = getelementptr inbounds nuw i8, ptr %.129151, i64 2
  %i.fu = add nuw nsw i32 %.1152, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fu, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph153, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph153, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond161.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond161.not, label %._crit_edge156, label %.noexc

._crit_edge156:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge156, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log.v4f32(<4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.tanh.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #9

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { builtin nounwind }

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
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !7, i64 0}
!51 = distinct !{!51, !52, !53, !54}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!7, !7, i64 0}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52, !54, !53}
!58 = !{!59}
!59 = !{i64 2, i64 -1, i64 -1, i1 true}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!62 = distinct !{!62, !"_ZN4ncnn3Mat7channelEi"}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !7, i64 0}
!65 = distinct !{!65, !52, !53, !54}
!66 = distinct !{!66, !52}
!67 = distinct !{!67, !52, !54, !53}
end_hunk_0
