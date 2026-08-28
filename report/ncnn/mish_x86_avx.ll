Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mish_x86_avx?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn12Mish_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
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
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.ad)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn12Mish_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12Mish_x86_avxC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4ncnn4MishC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn12Mish_x86_avxE, i64 16), ptr %0, align 8, !tbaa !27
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
define hidden noundef i32 @_ZNK4ncnn12Mish_x86_avx21forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #3 align 2 {
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
define internal void @_ZNK4ncnn12Mish_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
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
  %.not310 = icmp sgt i32 %i.k, %i.j
  br i1 %.not310, label %._crit_edge312, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ed, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !45
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !45
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !45
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader297

.preheader297:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.eb, %.lr.ph ] ; 2 uses
  %.034.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.dz, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph303, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0299 = phi i32 [ %i.dz, %.lr.ph ], [ 0, %.noexc ]
  %.034298 = phi ptr [ %i.dy, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x float>, ptr %.034298, align 1, !tbaa !49 ; 2 uses
  %i.ab = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aa, <8 x float> splat (float f0x42B0C0A5))
  %i.ac = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ab, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ad = fmul fast <8 x float> %i.ac, splat (float f0x3FB8AA3B)
  %i.ae = fadd fast <8 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ae, i32 1) ; 2 uses
  %i.ag = fcmp fast ogt <8 x float> %i.af, %i.ae
  %i.ah = select <8 x i1> %i.ag, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ai = fsub fast <8 x float> %i.af, %i.ah      ; 2 uses
  %i.aj = fmul fast <8 x float> %i.ai, splat (float f0x3F317218)
  %i.ak = fsub fast <8 x float> %i.ac, %i.aj      ; 8 uses
  %i.al = fmul fast <8 x float> %i.ak, %i.ak
  %i.am = fmul fast <8 x float> %i.ak, splat (float f0x39506967)
  %i.an = fadd fast <8 x float> %i.am, splat (float f0x3AB743CE)
  %i.ao = fmul fast <8 x float> %i.an, %i.ak
  %i.ap = fadd fast <8 x float> %i.ao, splat (float f0x3C088908)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ak
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3D2AA9C1)
  %i.as = fmul fast <8 x float> %i.ar, %i.ak
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3E2AAAAA)
  %i.au = fmul fast <8 x float> %i.at, %i.ak
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fmul fast <8 x float> %i.al, %i.av
  %i.ax = fadd fast <8 x float> %i.ak, %i.aw
  %i.ay = fadd fast <8 x float> %i.ax, splat (float 1.000000e+00)
  %i.az = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ba = shl <8 x i32> %i.az, splat (i32 23)
  %i.bb = add <8 x i32> %i.ba, splat (i32 1065353216)
  %i.bc = bitcast <8 x i32> %i.bb to <8 x float>
  %i.bd = fmul fast <8 x float> %i.ay, %i.bc
  %i.be = fadd fast <8 x float> %i.bd, splat (float 1.000000e+00) ; 2 uses
  %i.bf = fcmp fast ole <8 x float> %i.be, zeroinitializer
  %i.bg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.be, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bh = bitcast <8 x float> %i.bg to <8 x i32>
  %i.bi = bitcast <8 x float> %i.bg to <8 x i32>
  %i.bj = and <8 x i32> %i.bi, splat (i32 -2139095041)
  %i.bk = or disjoint <8 x i32> %i.bj, splat (i32 1056964608)
  %i.bl = bitcast <8 x i32> %i.bk to <8 x float>  ; 3 uses
  %i.bm = lshr <8 x i32> %i.bh, splat (i32 23)
  %i.bn = add nsw <8 x i32> %i.bm, splat (i32 -127)
  %i.bo = sitofp fast <8 x i32> %i.bn to <8 x float> ; 2 uses
  %i.bp = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00)
  %i.bq = fcmp fast olt <8 x float> %i.bl, splat (float f0x3F3504F3) ; 2 uses
  %i.br = select <8 x i1> %i.bq, <8 x float> %i.bl, <8 x float> zeroinitializer
  %i.bs = fadd fast <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bt = select fast <8 x i1> %i.bq, <8 x float> %i.bo, <8 x float> %i.bp
  %i.bu = fadd fast <8 x float> %i.bs, %i.br      ; 12 uses
  %i.bv = fmul fast <8 x float> %i.bu, %i.bu      ; 2 uses
  %i.bw = fmul fast <8 x float> %i.bu, splat (float f0x3D9021BB)
  %i.bx = fadd fast <8 x float> %i.bw, splat (float f0xBDEBD1B8)
  %i.by = fmul fast <8 x float> %i.bx, %i.bu
  %i.bz = fadd fast <8 x float> %i.by, splat (float f0x3DEF251A)
  %i.ca = fmul fast <8 x float> %i.bz, %i.bu
  %i.cb = fadd fast <8 x float> %i.ca, splat (float f0xBDFE5D4F)
  %i.cc = fmul fast <8 x float> %i.cb, %i.bu
  %i.cd = fadd fast <8 x float> %i.cc, splat (float f0x3E11E9BF)
  %i.ce = fmul fast <8 x float> %i.cd, %i.bu
  %i.cf = fadd fast <8 x float> %i.ce, splat (float f0xBE2AAE50)
  %i.cg = fmul fast <8 x float> %i.cf, %i.bu
  %i.ch = fadd fast <8 x float> %i.cg, splat (float f0x3E4CCEAC)
  %i.ci = fmul fast <8 x float> %i.ch, %i.bu
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0xBE7FFFFC)
  %i.ck = fmul fast <8 x float> %i.cj, %i.bu
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0x3EAAAAAA)
  %i.cm = fmul fast <8 x float> %i.bv, %i.bu
  %i.cn = fmul fast <8 x float> %i.cm, %i.cl
  %.neg295 = fmul fast <8 x float> %i.bv, splat (float -5.000000e-01)
  %reass.mul296.a = fmul fast <8 x float> %i.bt, splat (float f0x3F317218)
  %5 = fadd fast <8 x float> %i.bu, %.neg295
  %i.co = fadd fast <8 x float> %i.cn, %5
  %i.cp = fadd fast <8 x float> %i.co, %reass.mul296.a
  %.neg293 = fmul fast <8 x float> %i.cp, splat (float -2.000000e+00)
  %i.cq = select fast <8 x i1> %i.bf, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg293
  %i.cr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = fmul fast <8 x float> %i.cs, splat (float f0x3FB8AA3B)
  %i.cu = fadd fast <8 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cu, i32 1) ; 2 uses
  %i.cw = fcmp fast ogt <8 x float> %i.cv, %i.cu
  %i.cx = select <8 x i1> %i.cw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cy = fsub fast <8 x float> %i.cv, %i.cx      ; 2 uses
  %i.cz = fmul fast <8 x float> %i.cy, splat (float f0x3F317218)
  %i.da = fsub fast <8 x float> %i.cs, %i.cz      ; 8 uses
  %i.db = fmul fast <8 x float> %i.da, %i.da
  %i.dc = fmul fast <8 x float> %i.da, splat (float f0x39506967)
  %i.dd = fadd fast <8 x float> %i.dc, splat (float f0x3AB743CE)
  %i.de = fmul fast <8 x float> %i.dd, %i.da
  %i.df = fadd fast <8 x float> %i.de, splat (float f0x3C088908)
  %i.dg = fmul fast <8 x float> %i.df, %i.da
  %i.dh = fadd fast <8 x float> %i.dg, splat (float f0x3D2AA9C1)
  %i.di = fmul fast <8 x float> %i.dh, %i.da
  %i.dj = fadd fast <8 x float> %i.di, splat (float f0x3E2AAAAA)
  %i.dk = fmul fast <8 x float> %i.dj, %i.da
  %i.dl = fadd fast <8 x float> %i.dk, splat (float 5.000000e-01)
  %i.dm = fmul fast <8 x float> %i.db, %i.dl
  %i.dn = fadd fast <8 x float> %i.da, %i.dm
  %i.do = fadd fast <8 x float> %i.dn, splat (float 1.000000e+00)
  %i.dp = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy)
  %i.dq = shl <8 x i32> %i.dp, splat (i32 23)
  %i.dr = add <8 x i32> %i.dq, splat (i32 1065353216)
  %i.ds = bitcast <8 x i32> %i.dr to <8 x float>
  %i.dt = fmul fast <8 x float> %i.do, %i.ds
  %i.du = fadd fast <8 x float> %i.dt, splat (float 1.000000e+00)
  %i.dv = fdiv fast <8 x float> splat (float 2.000000e+00), %i.du
  %i.dw = fadd fast <8 x float> %i.dv, splat (float -1.000000e+00)
  %i.dx = fmul fast <8 x float> %i.dw, %i.aa
  store <8 x float> %i.dx, ptr %.034298, align 1, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %.034298, i64 32 ; 2 uses
  %i.dz = add nuw nsw i32 %.0299, 8               ; 3 uses
  %i.ea = or disjoint i32 %i.dz, 7
  %i.eb = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.ec = icmp slt i32 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph, label %.preheader297, !llvm.loop !50

.preheader:                                       ; preds = %.lr.ph303, %.preheader297
  %i.ed = phi i32 [ %i.x, %.preheader297 ], [ %i.ir, %.lr.ph303 ] ; 5 uses
  %.135.lcssa = phi ptr [ %.034.lcssa, %.preheader297 ], [ %i.io, %.lr.ph303 ] ; 4 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader297 ], [ %i.ip, %.lr.ph303 ] ; 5 uses
  %i.ee = icmp slt i32 %.1.lcssa, %i.ed
  br i1 %i.ee, label %.lr.ph309.preheader, label %._crit_edge

.lr.ph309.preheader:                              ; preds = %.preheader
  %i.ef = sub i32 %i.ed, %.1.lcssa
  %.neg342 = add i32 %.1.lcssa, 1
  %xtraiter = and i32 %i.ef, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph309.prol.loopexit, label %.lr.ph309.prol

.lr.ph309.prol:                                   ; preds = %.lr.ph309.preheader
  %i.eg = load float, ptr %.135.lcssa, align 4, !tbaa !52 ; 2 uses
  %i.eh = call fast float @llvm.exp.f32(float %i.eg)
  %i.ei = fadd fast float %i.eh, 1.000000e+00
  %i.ej = call fast float @llvm.log.f32(float %i.ei)
  %i.ek = call fast float @llvm.tanh.f32(float %i.ej)
  %i.el = fmul fast float %i.ek, %i.eg
  store float %i.el, ptr %.135.lcssa, align 4, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 4
  %i.en = add nuw nsw i32 %.1.lcssa, 1
  br label %.lr.ph309.prol.loopexit

.lr.ph309.prol.loopexit:                          ; preds = %.lr.ph309.prol, %.lr.ph309.preheader
  %.2308.unr = phi i32 [ %.1.lcssa, %.lr.ph309.preheader ], [ %i.en, %.lr.ph309.prol ]
  %.236307.unr = phi ptr [ %.135.lcssa, %.lr.ph309.preheader ], [ %i.em, %.lr.ph309.prol ]
  %i.eo = icmp eq i32 %i.ed, %.neg342
  br i1 %i.eo, label %._crit_edge, label %.lr.ph309

.lr.ph303:                                        ; preds = %.preheader297, %.lr.ph303
  %.1302 = phi i32 [ %i.ip, %.lr.ph303 ], [ %.0.lcssa, %.preheader297 ]
  %.135301 = phi ptr [ %i.io, %.lr.ph303 ], [ %.034.lcssa, %.preheader297 ] ; 3 uses
  %i.ep = load <4 x float>, ptr %.135301, align 1, !tbaa !49 ; 2 uses
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> splat (float f0x42B0C0A5))
  %i.er = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.es = fmul fast <4 x float> %i.er, splat (float f0x3FB8AA3B)
  %i.et = fadd fast <4 x float> %i.es, splat (float 5.000000e-01) ; 2 uses
  %i.eu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.et)
  %i.ev = sitofp fast <4 x i32> %i.eu to <4 x float> ; 2 uses
  %i.ew = fcmp fast olt <4 x float> %i.et, %i.ev
  %i.ex = select <4 x i1> %i.ew, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ey = fsub fast <4 x float> %i.ev, %i.ex      ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ey, splat (float f0x3F317218)
  %i.fa = fsub fast <4 x float> %i.er, %i.ez      ; 8 uses
  %i.fb = fmul fast <4 x float> %i.fa, %i.fa
  %i.fc = fmul fast <4 x float> %i.fa, splat (float f0x39506967)
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0x3AB743CE)
  %i.fe = fmul fast <4 x float> %i.fd, %i.fa
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3C088908)
  %i.fg = fmul fast <4 x float> %i.ff, %i.fa
  %i.fh = fadd fast <4 x float> %i.fg, splat (float f0x3D2AA9C1)
  %i.fi = fmul fast <4 x float> %i.fh, %i.fa
  %i.fj = fadd fast <4 x float> %i.fi, splat (float f0x3E2AAAAA)
  %i.fk = fmul fast <4 x float> %i.fj, %i.fa
  %i.fl = fadd fast <4 x float> %i.fk, splat (float 5.000000e-01)
  %i.fm = fmul fast <4 x float> %i.fb, %i.fl
  %i.fn = fadd fast <4 x float> %i.fa, %i.fm
  %i.fo = fadd fast <4 x float> %i.fn, splat (float 1.000000e+00)
  %i.fp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ey)
  %i.fq = shl <4 x i32> %i.fp, splat (i32 23)
  %i.fr = add <4 x i32> %i.fq, splat (i32 1065353216)
  %i.fs = bitcast <4 x i32> %i.fr to <4 x float>
  %i.ft = fmul fast <4 x float> %i.fo, %i.fs
  %i.fu = fadd fast <4 x float> %i.ft, splat (float 1.000000e+00) ; 2 uses
  %i.fv = fcmp fast ole <4 x float> %i.fu, zeroinitializer
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> splat (float f0x00800000))
  %i.fx = bitcast <4 x float> %i.fw to <4 x i32>  ; 2 uses
  %i.fy = lshr <4 x i32> %i.fx, splat (i32 23)
  %i.fz = and <4 x i32> %i.fx, splat (i32 -2139095041)
  %i.ga = or disjoint <4 x i32> %i.fz, splat (i32 1056964608)
  %i.gb = bitcast <4 x i32> %i.ga to <4 x float>  ; 3 uses
  %i.gc = add nsw <4 x i32> %i.fy, splat (i32 -127)
  %i.gd = sitofp fast <4 x i32> %i.gc to <4 x float> ; 2 uses
  %i.ge = fadd fast <4 x float> %i.gd, splat (float 1.000000e+00)
  %i.gf = fcmp fast olt <4 x float> %i.gb, splat (float f0x3F3504F3) ; 2 uses
  %i.gg = select <4 x i1> %i.gf, <4 x float> %i.gb, <4 x float> zeroinitializer
  %i.gh = fadd fast <4 x float> %i.gb, splat (float -1.000000e+00)
  %i.gi = select fast <4 x i1> %i.gf, <4 x float> %i.gd, <4 x float> %i.ge
  %i.gj = fadd fast <4 x float> %i.gh, %i.gg      ; 12 uses
  %i.gk = fmul fast <4 x float> %i.gj, %i.gj      ; 2 uses
  %i.gl = fmul fast <4 x float> %i.gj, splat (float f0x3D9021BB)
  %i.gm = fadd fast <4 x float> %i.gl, splat (float f0xBDEBD1B8)
  %i.gn = fmul fast <4 x float> %i.gm, %i.gj
  %i.go = fadd fast <4 x float> %i.gn, splat (float f0x3DEF251A)
  %i.gp = fmul fast <4 x float> %i.go, %i.gj
  %i.gq = fadd fast <4 x float> %i.gp, splat (float f0xBDFE5D4F)
  %i.gr = fmul fast <4 x float> %i.gq, %i.gj
  %i.gs = fadd fast <4 x float> %i.gr, splat (float f0x3E11E9BF)
  %i.gt = fmul fast <4 x float> %i.gs, %i.gj
  %i.gu = fadd fast <4 x float> %i.gt, splat (float f0xBE2AAE50)
  %i.gv = fmul fast <4 x float> %i.gu, %i.gj
  %i.gw = fadd fast <4 x float> %i.gv, splat (float f0x3E4CCEAC)
  %i.gx = fmul fast <4 x float> %i.gw, %i.gj
  %i.gy = fadd fast <4 x float> %i.gx, splat (float f0xBE7FFFFC)
  %i.gz = fmul fast <4 x float> %i.gy, %i.gj
  %i.ha = fadd fast <4 x float> %i.gz, splat (float f0x3EAAAAAA)
  %i.hb = fmul fast <4 x float> %i.gk, %i.gj
  %i.hc = fmul fast <4 x float> %i.hb, %i.ha
  %.neg294 = fmul fast <4 x float> %i.gk, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.gi, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.gj, %.neg294
  %i.hd = fadd fast <4 x float> %i.hc, %6
  %i.he = fadd fast <4 x float> %i.hd, %reass.mul
  %.neg = fmul fast <4 x float> %i.he, splat (float -2.000000e+00)
  %i.hf = select fast <4 x i1> %i.fv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hf, <4 x float> splat (float f0x42B0C0A5))
  %i.hh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hi = fmul fast <4 x float> %i.hh, splat (float f0x3FB8AA3B)
  %i.hj = fadd fast <4 x float> %i.hi, splat (float 5.000000e-01) ; 2 uses
  %i.hk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hj)
  %i.hl = sitofp fast <4 x i32> %i.hk to <4 x float> ; 2 uses
  %i.hm = fcmp fast olt <4 x float> %i.hj, %i.hl
  %i.hn = select <4 x i1> %i.hm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ho = fsub fast <4 x float> %i.hl, %i.hn      ; 2 uses
  %i.hp = fmul fast <4 x float> %i.ho, splat (float f0x3F317218)
  %i.hq = fsub fast <4 x float> %i.hh, %i.hp      ; 8 uses
  %i.hr = fmul fast <4 x float> %i.hq, %i.hq
  %i.hs = fmul fast <4 x float> %i.hq, splat (float f0x39506967)
  %i.ht = fadd fast <4 x float> %i.hs, splat (float f0x3AB743CE)
  %i.hu = fmul fast <4 x float> %i.ht, %i.hq
  %i.hv = fadd fast <4 x float> %i.hu, splat (float f0x3C088908)
  %i.hw = fmul fast <4 x float> %i.hv, %i.hq
  %i.hx = fadd fast <4 x float> %i.hw, splat (float f0x3D2AA9C1)
  %i.hy = fmul fast <4 x float> %i.hx, %i.hq
  %i.hz = fadd fast <4 x float> %i.hy, splat (float f0x3E2AAAAA)
  %i.ia = fmul fast <4 x float> %i.hz, %i.hq
  %i.ib = fadd fast <4 x float> %i.ia, splat (float 5.000000e-01)
  %i.ic = fmul fast <4 x float> %i.hr, %i.ib
  %i.id = fadd fast <4 x float> %i.hq, %i.ic
  %i.ie = fadd fast <4 x float> %i.id, splat (float 1.000000e+00)
  %i.if = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ho)
  %i.ig = shl <4 x i32> %i.if, splat (i32 23)
  %i.ih = add <4 x i32> %i.ig, splat (i32 1065353216)
  %i.ii = bitcast <4 x i32> %i.ih to <4 x float>
  %i.ij = fmul fast <4 x float> %i.ie, %i.ii
  %i.ik = fadd fast <4 x float> %i.ij, splat (float 1.000000e+00)
  %i.il = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ik
  %i.im = fadd fast <4 x float> %i.il, splat (float -1.000000e+00)
  %i.in = fmul fast <4 x float> %i.im, %i.ep
  store <4 x float> %i.in, ptr %.135301, align 1, !tbaa !49
  %i.io = getelementptr inbounds nuw i8, ptr %.135301, i64 16 ; 2 uses
  %i.ip = add nuw nsw i32 %.1302, 4               ; 3 uses
  %i.iq = or disjoint i32 %i.ip, 3
  %i.ir = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.is = icmp slt i32 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph303, label %.preheader, !llvm.loop !54

.lr.ph309:                                        ; preds = %.lr.ph309.prol.loopexit, %.lr.ph309
  %.2308 = phi i32 [ %i.jh, %.lr.ph309 ], [ %.2308.unr, %.lr.ph309.prol.loopexit ]
  %.236307 = phi ptr [ %i.jg, %.lr.ph309 ], [ %.236307.unr, %.lr.ph309.prol.loopexit ] ; 4 uses
  %i.it = load float, ptr %.236307, align 4, !tbaa !52 ; 2 uses
  %i.iu = call fast float @llvm.exp.f32(float %i.it)
  %i.iv = fadd fast float %i.iu, 1.000000e+00
  %i.iw = call fast float @llvm.log.f32(float %i.iv)
  %i.ix = call fast float @llvm.tanh.f32(float %i.iw)
  %i.iy = fmul fast float %i.ix, %i.it
  store float %i.iy, ptr %.236307, align 4, !tbaa !52
  %i.iz = getelementptr inbounds nuw i8, ptr %.236307, i64 4 ; 2 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !52 ; 2 uses
  %i.jb = call fast float @llvm.exp.f32(float %i.ja)
  %i.jc = fadd fast float %i.jb, 1.000000e+00
  %i.jd = call fast float @llvm.log.f32(float %i.jc)
  %i.je = call fast float @llvm.tanh.f32(float %i.jd)
  %i.jf = fmul fast float %i.je, %i.ja
  store float %i.jf, ptr %i.iz, align 4, !tbaa !52
  %i.jg = getelementptr inbounds nuw i8, ptr %.236307, i64 8
  %i.jh = add nuw nsw i32 %.2308, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jh, %i.ed
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph309, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph309.prol.loopexit, %.lr.ph309, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond319.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond319.not, label %._crit_edge312, label %.noexc

._crit_edge312:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge312, %bb.a
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
declare !callback !56 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #10

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
  %.not314 = icmp sgt i32 %i.k, %i.j
  br i1 %.not314, label %._crit_edge316, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.en, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !44, !noalias !58
  %i.r = load i64, ptr %i.l, align 8, !tbaa !48, !noalias !58
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !58
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader301

.preheader301:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.el, %.lr.ph ] ; 2 uses
  %.033.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.ei, %.lr.ph ] ; 2 uses
  %.032.lcssa = phi i32 [ 0, %.noexc ], [ %i.ej, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.032.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph307, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.032303 = phi i32 [ %i.ej, %.lr.ph ], [ 0, %.noexc ]
  %.033302 = phi ptr [ %i.ei, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.033302, align 1, !tbaa !49 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ae, <8 x float> splat (float f0x42B0C0A5))
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ah = fmul fast <8 x float> %i.ag, splat (float f0x3FB8AA3B)
  %i.ai = fadd fast <8 x float> %i.ah, splat (float 5.000000e-01) ; 2 uses
  %i.aj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 2 uses
  %i.ak = fcmp fast ogt <8 x float> %i.aj, %i.ai
  %i.al = select <8 x i1> %i.ak, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.am = fsub fast <8 x float> %i.aj, %i.al      ; 2 uses
  %i.an = fmul fast <8 x float> %i.am, splat (float f0x3F317218)
  %i.ao = fsub fast <8 x float> %i.ag, %i.an      ; 8 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.ao
  %i.aq = fmul fast <8 x float> %i.ao, splat (float f0x39506967)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float f0x3AB743CE)
  %i.as = fmul fast <8 x float> %i.ar, %i.ao
  %i.at = fadd fast <8 x float> %i.as, splat (float f0x3C088908)
  %i.au = fmul fast <8 x float> %i.at, %i.ao
  %i.av = fadd fast <8 x float> %i.au, splat (float f0x3D2AA9C1)
  %i.aw = fmul fast <8 x float> %i.av, %i.ao
  %i.ax = fadd fast <8 x float> %i.aw, splat (float f0x3E2AAAAA)
  %i.ay = fmul fast <8 x float> %i.ax, %i.ao
  %i.az = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fmul fast <8 x float> %i.ap, %i.az
  %i.bb = fadd fast <8 x float> %i.ao, %i.ba
  %i.bc = fadd fast <8 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.am)
  %i.be = shl <8 x i32> %i.bd, splat (i32 23)
  %i.bf = add <8 x i32> %i.be, splat (i32 1065353216)
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = fmul fast <8 x float> %i.bc, %i.bg
  %i.bi = fadd fast <8 x float> %i.bh, splat (float 1.000000e+00) ; 2 uses
  %i.bj = fcmp fast ole <8 x float> %i.bi, zeroinitializer
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.bl = bitcast <8 x float> %i.bk to <8 x i32>
  %i.bm = bitcast <8 x float> %i.bk to <8 x i32>
  %i.bn = and <8 x i32> %i.bm, splat (i32 -2139095041)
  %i.bo = or disjoint <8 x i32> %i.bn, splat (i32 1056964608)
  %i.bp = bitcast <8 x i32> %i.bo to <8 x float>  ; 3 uses
  %i.bq = lshr <8 x i32> %i.bl, splat (i32 23)
  %i.br = add nsw <8 x i32> %i.bq, splat (i32 -127)
  %i.bs = sitofp fast <8 x i32> %i.br to <8 x float> ; 2 uses
  %i.bt = fadd fast <8 x float> %i.bs, splat (float 1.000000e+00)
  %i.bu = fcmp fast olt <8 x float> %i.bp, splat (float f0x3F3504F3) ; 2 uses
  %i.bv = select <8 x i1> %i.bu, <8 x float> %i.bp, <8 x float> zeroinitializer
  %i.bw = fadd fast <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.bx = select fast <8 x i1> %i.bu, <8 x float> %i.bs, <8 x float> %i.bt
  %i.by = fadd fast <8 x float> %i.bw, %i.bv      ; 12 uses
  %i.bz = fmul fast <8 x float> %i.by, %i.by      ; 2 uses
  %i.ca = fmul fast <8 x float> %i.by, splat (float f0x3D9021BB)
  %i.cb = fadd fast <8 x float> %i.ca, splat (float f0xBDEBD1B8)
  %i.cc = fmul fast <8 x float> %i.cb, %i.by
  %i.cd = fadd fast <8 x float> %i.cc, splat (float f0x3DEF251A)
  %i.ce = fmul fast <8 x float> %i.cd, %i.by
  %i.cf = fadd fast <8 x float> %i.ce, splat (float f0xBDFE5D4F)
  %i.cg = fmul fast <8 x float> %i.cf, %i.by
  %i.ch = fadd fast <8 x float> %i.cg, splat (float f0x3E11E9BF)
  %i.ci = fmul fast <8 x float> %i.ch, %i.by
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0xBE2AAE50)
  %i.ck = fmul fast <8 x float> %i.cj, %i.by
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0x3E4CCEAC)
  %i.cm = fmul fast <8 x float> %i.cl, %i.by
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0xBE7FFFFC)
  %i.co = fmul fast <8 x float> %i.cn, %i.by
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0x3EAAAAAA)
  %i.cq = fmul fast <8 x float> %i.bz, %i.by
  %i.cr = fmul fast <8 x float> %i.cq, %i.cp
  %.neg299 = fmul fast <8 x float> %i.bz, splat (float -5.000000e-01)
  %reass.mul300.a = fmul fast <8 x float> %i.bx, splat (float f0x3F317218)
  %5 = fadd fast <8 x float> %i.by, %.neg299
  %i.cs = fadd fast <8 x float> %i.cr, %5
  %i.ct = fadd fast <8 x float> %i.cs, %reass.mul300.a
  %.neg297 = fmul fast <8 x float> %i.ct, splat (float -2.000000e+00)
  %i.cu = select fast <8 x i1> %i.bj, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg297
  %i.cv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cu, <8 x float> splat (float f0x42B0C0A5))
  %i.cw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cx = fmul fast <8 x float> %i.cw, splat (float f0x3FB8AA3B)
  %i.cy = fadd fast <8 x float> %i.cx, splat (float 5.000000e-01) ; 2 uses
  %i.cz = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cy, i32 1) ; 2 uses
  %i.da = fcmp fast ogt <8 x float> %i.cz, %i.cy
  %i.db = select <8 x i1> %i.da, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dc = fsub fast <8 x float> %i.cz, %i.db      ; 2 uses
  %i.dd = fmul fast <8 x float> %i.dc, splat (float f0x3F317218)
  %i.de = fsub fast <8 x float> %i.cw, %i.dd      ; 8 uses
  %i.df = fmul fast <8 x float> %i.de, %i.de
  %i.dg = fmul fast <8 x float> %i.de, splat (float f0x39506967)
  %i.dh = fadd fast <8 x float> %i.dg, splat (float f0x3AB743CE)
  %i.di = fmul fast <8 x float> %i.dh, %i.de
  %i.dj = fadd fast <8 x float> %i.di, splat (float f0x3C088908)
  %i.dk = fmul fast <8 x float> %i.dj, %i.de
  %i.dl = fadd fast <8 x float> %i.dk, splat (float f0x3D2AA9C1)
  %i.dm = fmul fast <8 x float> %i.dl, %i.de
  %i.dn = fadd fast <8 x float> %i.dm, splat (float f0x3E2AAAAA)
  %i.do = fmul fast <8 x float> %i.dn, %i.de
  %i.dp = fadd fast <8 x float> %i.do, splat (float 5.000000e-01)
  %i.dq = fmul fast <8 x float> %i.df, %i.dp
  %i.dr = fadd fast <8 x float> %i.de, %i.dq
  %i.ds = fadd fast <8 x float> %i.dr, splat (float 1.000000e+00)
  %i.dt = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dc)
  %i.du = shl <8 x i32> %i.dt, splat (i32 23)
  %i.dv = add <8 x i32> %i.du, splat (i32 1065353216)
  %i.dw = bitcast <8 x i32> %i.dv to <8 x float>
  %i.dx = fmul fast <8 x float> %i.ds, %i.dw
  %i.dy = fadd fast <8 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = fdiv fast <8 x float> splat (float 2.000000e+00), %i.dy
  %i.ea = fadd fast <8 x float> %i.dz, splat (float -1.000000e+00)
  %i.eb = fmul fast <8 x float> %i.ea, %i.ae
  %i.ec = bitcast <8 x float> %i.eb to <8 x i32>  ; 2 uses
  %i.ed = shufflevector <8 x i32> %i.ec, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ee = shufflevector <8 x i32> %i.ec, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ef = lshr <4 x i32> %i.ed, splat (i32 16)
  %i.eg = lshr <4 x i32> %i.ee, splat (i32 16)
  %i.eh = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ef, <4 x i32> %i.eg)
  store <8 x i16> %i.eh, ptr %.033302, align 1, !tbaa !49
  %i.ei = getelementptr inbounds nuw i8, ptr %.033302, i64 16 ; 2 uses
  %i.ej = add nuw nsw i32 %.032303, 8             ; 3 uses
  %i.ek = or disjoint i32 %i.ej, 7
  %i.el = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %.lr.ph, label %.preheader301, !llvm.loop !61

.preheader:                                       ; preds = %.lr.ph307, %.preheader301
  %i.en = phi i32 [ %i.x, %.preheader301 ], [ %i.jv, %.lr.ph307 ] ; 4 uses
  %.134.lcssa = phi ptr [ %.033.lcssa, %.preheader301 ], [ %i.js, %.lr.ph307 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.032.lcssa, %.preheader301 ], [ %i.jt, %.lr.ph307 ] ; 4 uses
  %i.eo = icmp slt i32 %.1.lcssa, %i.en
  br i1 %i.eo, label %.lr.ph313.preheader, label %._crit_edge

.lr.ph313.preheader:                              ; preds = %.preheader
  %i.ep = xor i32 %.1.lcssa, -1
  %i.eq = add i32 %i.en, %i.ep                    ; 2 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.eq, 3
  br i1 %min.iters.check, label %.lr.ph313.preheader342, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph313.preheader
  %n.vec = and i64 %i.es, 8589934588              ; 4 uses
  %i.et = trunc i64 %n.vec to i32
  %i.eu = add i32 %.1.lcssa, %i.et
  %i.ev = shl nuw nsw i64 %n.vec, 1
  %i.ew = getelementptr i8, ptr %.134.lcssa, i64 %i.ev
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.134.lcssa, i64 %i.ex ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !62
  %i.ey = zext <4 x i16> %wide.load to <4 x i32>
  %i.ez = shl nuw <4 x i32> %i.ey, splat (i32 16)
  %i.fa = bitcast <4 x i32> %i.ez to <4 x float>  ; 2 uses
  %i.fb = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.fa)
  %i.fc = fadd fast <4 x float> %i.fb, splat (float 1.000000e+00)
  %i.fd = call fast <4 x float> @llvm.log.v4f32(<4 x float> %i.fc)
  %i.fe = call fast <4 x float> @llvm.tanh.v4f32(<4 x float> %i.fd)
  %i.ff = fmul fast <4 x float> %i.fe, %i.fa
  %i.fg = bitcast <4 x float> %i.ff to <4 x i32>
  %i.fh = lshr <4 x i32> %i.fg, splat (i32 16)
  %i.fi = trunc nuw <4 x i32> %i.fh to <4 x i16>
  store <4 x i16> %i.fi, ptr %next.gep, align 2, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph313.preheader342

.lr.ph313.preheader342:                           ; preds = %.lr.ph313.preheader, %middle.block
  %.2312.ph = phi i32 [ %.1.lcssa, %.lr.ph313.preheader ], [ %i.eu, %middle.block ]
  %.235311.ph = phi ptr [ %.134.lcssa, %.lr.ph313.preheader ], [ %i.ew, %middle.block ]
  br label %.lr.ph313

.lr.ph307:                                        ; preds = %.preheader301, %.lr.ph307
  %.1306 = phi i32 [ %i.jt, %.lr.ph307 ], [ %.032.lcssa, %.preheader301 ]
  %.134305 = phi ptr [ %i.js, %.lr.ph307 ], [ %.033.lcssa, %.preheader301 ] ; 3 uses
  %i.fk = load i64, ptr %.134305, align 1, !tbaa !49
  %i.fl = insertelement <2 x i64> poison, i64 %i.fk, i64 0
  %i.fm = bitcast <2 x i64> %i.fl to <8 x i16>
  %i.fn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fo = bitcast <8 x i16> %i.fn to <4 x float>  ; 2 uses
  %i.fp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> splat (float f0x42B0C0A5))
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fr = fmul fast <4 x float> %i.fq, splat (float f0x3FB8AA3B)
  %i.fs = fadd fast <4 x float> %i.fr, splat (float 5.000000e-01) ; 2 uses
  %i.ft = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fs)
  %i.fu = sitofp fast <4 x i32> %i.ft to <4 x float> ; 2 uses
  %i.fv = fcmp fast olt <4 x float> %i.fs, %i.fu
  %i.fw = select <4 x i1> %i.fv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fx = fsub fast <4 x float> %i.fu, %i.fw      ; 2 uses
  %i.fy = fmul fast <4 x float> %i.fx, splat (float f0x3F317218)
  %i.fz = fsub fast <4 x float> %i.fq, %i.fy      ; 8 uses
  %i.ga = fmul fast <4 x float> %i.fz, %i.fz
  %i.gb = fmul fast <4 x float> %i.fz, splat (float f0x39506967)
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3AB743CE)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fz
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0x3C088908)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fz
  %i.gg = fadd fast <4 x float> %i.gf, splat (float f0x3D2AA9C1)
  %i.gh = fmul fast <4 x float> %i.gg, %i.fz
  %i.gi = fadd fast <4 x float> %i.gh, splat (float f0x3E2AAAAA)
  %i.gj = fmul fast <4 x float> %i.gi, %i.fz
  %i.gk = fadd fast <4 x float> %i.gj, splat (float 5.000000e-01)
  %i.gl = fmul fast <4 x float> %i.ga, %i.gk
  %i.gm = fadd fast <4 x float> %i.fz, %i.gl
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 1.000000e+00)
  %i.go = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fx)
  %i.gp = shl <4 x i32> %i.go, splat (i32 23)
  %i.gq = add <4 x i32> %i.gp, splat (i32 1065353216)
  %i.gr = bitcast <4 x i32> %i.gq to <4 x float>
  %i.gs = fmul fast <4 x float> %i.gn, %i.gr
  %i.gt = fadd fast <4 x float> %i.gs, splat (float 1.000000e+00) ; 2 uses
  %i.gu = fcmp fast ole <4 x float> %i.gt, zeroinitializer
  %i.gv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gt, <4 x float> splat (float f0x00800000))
  %i.gw = bitcast <4 x float> %i.gv to <4 x i32>  ; 2 uses
  %i.gx = lshr <4 x i32> %i.gw, splat (i32 23)
  %i.gy = and <4 x i32> %i.gw, splat (i32 -2139095041)
  %i.gz = or disjoint <4 x i32> %i.gy, splat (i32 1056964608)
  %i.ha = bitcast <4 x i32> %i.gz to <4 x float>  ; 3 uses
  %i.hb = add nsw <4 x i32> %i.gx, splat (i32 -127)
  %i.hc = sitofp fast <4 x i32> %i.hb to <4 x float> ; 2 uses
  %i.hd = fadd fast <4 x float> %i.hc, splat (float 1.000000e+00)
  %i.he = fcmp fast olt <4 x float> %i.ha, splat (float f0x3F3504F3) ; 2 uses
  %i.hf = select <4 x i1> %i.he, <4 x float> %i.ha, <4 x float> zeroinitializer
  %i.hg = fadd fast <4 x float> %i.ha, splat (float -1.000000e+00)
  %i.hh = select fast <4 x i1> %i.he, <4 x float> %i.hc, <4 x float> %i.hd
  %i.hi = fadd fast <4 x float> %i.hg, %i.hf      ; 12 uses
  %i.hj = fmul fast <4 x float> %i.hi, %i.hi      ; 2 uses
  %i.hk = fmul fast <4 x float> %i.hi, splat (float f0x3D9021BB)
  %i.hl = fadd fast <4 x float> %i.hk, splat (float f0xBDEBD1B8)
  %i.hm = fmul fast <4 x float> %i.hl, %i.hi
  %i.hn = fadd fast <4 x float> %i.hm, splat (float f0x3DEF251A)
  %i.ho = fmul fast <4 x float> %i.hn, %i.hi
  %i.hp = fadd fast <4 x float> %i.ho, splat (float f0xBDFE5D4F)
  %i.hq = fmul fast <4 x float> %i.hp, %i.hi
  %i.hr = fadd fast <4 x float> %i.hq, splat (float f0x3E11E9BF)
  %i.hs = fmul fast <4 x float> %i.hr, %i.hi
  %i.ht = fadd fast <4 x float> %i.hs, splat (float f0xBE2AAE50)
  %i.hu = fmul fast <4 x float> %i.ht, %i.hi
  %i.hv = fadd fast <4 x float> %i.hu, splat (float f0x3E4CCEAC)
  %i.hw = fmul fast <4 x float> %i.hv, %i.hi
  %i.hx = fadd fast <4 x float> %i.hw, splat (float f0xBE7FFFFC)
  %i.hy = fmul fast <4 x float> %i.hx, %i.hi
  %i.hz = fadd fast <4 x float> %i.hy, splat (float f0x3EAAAAAA)
  %i.ia = fmul fast <4 x float> %i.hj, %i.hi
  %i.ib = fmul fast <4 x float> %i.ia, %i.hz
  %.neg298 = fmul fast <4 x float> %i.hj, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.hh, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.hi, %.neg298
  %i.ic = fadd fast <4 x float> %i.ib, %6
  %i.id = fadd fast <4 x float> %i.ic, %reass.mul
  %.neg = fmul fast <4 x float> %i.id, splat (float -2.000000e+00)
  %i.ie = select fast <4 x i1> %i.gu, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> splat (float f0x42B0C0A5))
  %i.ig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ih = fmul fast <4 x float> %i.ig, splat (float f0x3FB8AA3B)
  %i.ii = fadd fast <4 x float> %i.ih, splat (float 5.000000e-01) ; 2 uses
  %i.ij = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ii)
  %i.ik = sitofp fast <4 x i32> %i.ij to <4 x float> ; 2 uses
  %i.il = fcmp fast olt <4 x float> %i.ii, %i.ik
  %i.im = select <4 x i1> %i.il, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.in = fsub fast <4 x float> %i.ik, %i.im      ; 2 uses
  %i.io = fmul fast <4 x float> %i.in, splat (float f0x3F317218)
  %i.ip = fsub fast <4 x float> %i.ig, %i.io      ; 8 uses
  %i.iq = fmul fast <4 x float> %i.ip, %i.ip
  %i.ir = fmul fast <4 x float> %i.ip, splat (float f0x39506967)
  %i.is = fadd fast <4 x float> %i.ir, splat (float f0x3AB743CE)
  %i.it = fmul fast <4 x float> %i.is, %i.ip
  %i.iu = fadd fast <4 x float> %i.it, splat (float f0x3C088908)
  %i.iv = fmul fast <4 x float> %i.iu, %i.ip
  %i.iw = fadd fast <4 x float> %i.iv, splat (float f0x3D2AA9C1)
  %i.ix = fmul fast <4 x float> %i.iw, %i.ip
  %i.iy = fadd fast <4 x float> %i.ix, splat (float f0x3E2AAAAA)
  %i.iz = fmul fast <4 x float> %i.iy, %i.ip
  %i.ja = fadd fast <4 x float> %i.iz, splat (float 5.000000e-01)
  %i.jb = fmul fast <4 x float> %i.iq, %i.ja
  %i.jc = fadd fast <4 x float> %i.ip, %i.jb
  %i.jd = fadd fast <4 x float> %i.jc, splat (float 1.000000e+00)
  %i.je = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.in)
  %i.jf = shl <4 x i32> %i.je, splat (i32 23)
  %i.jg = add <4 x i32> %i.jf, splat (i32 1065353216)
  %i.jh = bitcast <4 x i32> %i.jg to <4 x float>
  %i.ji = fmul fast <4 x float> %i.jd, %i.jh
  %i.jj = fadd fast <4 x float> %i.ji, splat (float 1.000000e+00)
  %i.jk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jj
  %i.jl = fadd fast <4 x float> %i.jk, splat (float -1.000000e+00)
  %i.jm = fmul fast <4 x float> %i.jl, %i.fo
  %i.jn = bitcast <4 x float> %i.jm to <4 x i32>
  %i.jo = lshr <4 x i32> %i.jn, splat (i32 16)
  %i.jp = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jo, <4 x i32> poison)
  %i.jq = bitcast <8 x i16> %i.jp to <2 x i64>
  %i.jr = extractelement <2 x i64> %i.jq, i64 0
  store i64 %i.jr, ptr %.134305, align 1, !tbaa !49
  %i.js = getelementptr inbounds nuw i8, ptr %.134305, i64 8 ; 2 uses
  %i.jt = add nuw nsw i32 %.1306, 4               ; 3 uses
  %i.ju = or disjoint i32 %i.jt, 3
  %i.jv = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.jw = icmp slt i32 %i.ju, %i.jv
  br i1 %i.jw, label %.lr.ph307, label %.preheader, !llvm.loop !67

.lr.ph313:                                        ; preds = %.lr.ph313.preheader342, %.lr.ph313
  %.2312 = phi i32 [ %i.kk, %.lr.ph313 ], [ %.2312.ph, %.lr.ph313.preheader342 ]
  %.235311 = phi ptr [ %i.kj, %.lr.ph313 ], [ %.235311.ph, %.lr.ph313.preheader342 ] ; 3 uses
  %i.jx = load i16, ptr %.235311, align 2, !tbaa !62
  %i.jy = zext i16 %i.jx to i32
  %i.jz = shl nuw i32 %i.jy, 16
  %i.ka = bitcast i32 %i.jz to float              ; 2 uses
  %i.kb = call fast float @llvm.exp.f32(float %i.ka)
  %i.kc = fadd fast float %i.kb, 1.000000e+00
  %i.kd = call fast float @llvm.log.f32(float %i.kc)
  %i.ke = call fast float @llvm.tanh.f32(float %i.kd)
  %i.kf = fmul fast float %i.ke, %i.ka
  %i.kg = bitcast float %i.kf to i32
  %i.kh = lshr i32 %i.kg, 16
  %i.ki = trunc nuw i32 %i.kh to i16
  store i16 %i.ki, ptr %.235311, align 2, !tbaa !62
  %i.kj = getelementptr inbounds nuw i8, ptr %.235311, i64 2
  %i.kk = add nuw nsw i32 %.2312, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.kk, %i.en
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph313, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph313, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond323.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond323.not, label %._crit_edge316, label %.noexc

._crit_edge316:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge316, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #10

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

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!49 = !{!7, !7, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !7, i64 0}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !"_ZN4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !51}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !7, i64 0}
!64 = distinct !{!64, !51, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !51, !66, !65}
end_hunk_0
