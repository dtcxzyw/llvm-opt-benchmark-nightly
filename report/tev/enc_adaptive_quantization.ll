Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_adaptive_quantization?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1466
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_:bb.a
_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit
  %.not.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i4, label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.at) #30
  br label %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIN3jxl5PlaneIfEERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i, %bb.d
  ret ptr %i.aa
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.26) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.27, ptr noundef %0) #33
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #15 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.28) #33
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress norecurse nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @"_ZZN3jxl6N_AVX212_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !563, !nonnull !78, !align !236
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80   ; 4 uses
  %i.c = add i64 %i.b, 7
  %i.d = lshr i64 %i.c, 3                         ; 4 uses
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %i.f = urem i64 %i.e, %i.d                      ; 3 uses
  %i.g = udiv i64 %i.e, %i.d                      ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 7 uses
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !564, !nonnull !78, !align !236
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80   ; 3 uses
  %.sroa.speculated43 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.i) ; 4 uses
  %i.m = shl nuw nsw i64 %i.f, 3                  ; 8 uses
  %i.n = add nuw nsw i64 %i.m, 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.n) ; 5 uses
  %i.o = sub nsw i64 %.sroa.speculated, %i.m      ; 9 uses
  %i.p = sub nsw i64 %.sroa.speculated43, %i.h    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !565, !nonnull !78, !align !236 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !566, !nonnull !78, !align !237
  %i.u = load float, ptr %i.t, align 4, !tbaa !28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !567, !nonnull !78, !align !237
  %i.x = load float, ptr %i.w, align 4, !tbaa !28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !568, !nonnull !78, !align !236 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !569, !nonnull !78, !align !236 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !570, !nonnull !78, !align !236
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !202 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !571, !nonnull !78, !align !236
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !202 ; 2 uses
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !21 ; 4 uses
  %i.aj = and i64 %i.ai, 7
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %_ZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_.exit

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.an = and i64 %i.am, 7
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.c, label %_ZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_.exit

bb.c:                                             ; preds = %bb.b
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = zext i32 %i.as to i64                   ; 4 uses
  %i.au = shl nuw nsw i64 %i.g, 6                 ; 2 uses
  %i.av = add i64 %i.am, %i.au                    ; 5 uses
  %i.aw = shl nsw i64 %i.p, 3
  %i.ax = add i64 %i.av, %i.aw                    ; 5 uses
  %i.ay = shl nuw nsw i64 %i.f, 6                 ; 2 uses
  %i.az = add i64 %i.ai, %i.ay                    ; 5 uses
  %i.ba = shl nsw i64 %i.o, 3
  %i.bb = add i64 %i.az, %i.ba                    ; 5 uses
  %.not.i = icmp eq i64 %i.ai, 0
  %i.bc = icmp eq i64 %i.f, 0
  %i.bd = add i64 %i.az, -2
  %spec.select.i = select i1 %i.bc, i64 %i.bd, i64 %i.az
  %.0186.i = select i1 %.not.i, i64 %i.ay, i64 %spec.select.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %i.bg = add i64 %i.bf, %i.ai
  %i.bh = icmp ult i64 %i.bg, %i.aq
  %i.bi = shl nuw nsw i64 %.sroa.speculated, 3
  %i.bj = icmp eq i64 %i.bi, %i.bf
  %i.bk = or disjoint i64 %i.bb, 2
  %i.bl = select i1 %i.bh, i1 %i.bj, i1 false
  %.0188.i = select i1 %i.bl, i64 %i.bk, i64 %i.bb ; 2 uses
  %.not205.i = icmp eq i64 %i.am, 0
  %i.bm = icmp samesign ugt i64 %i.d, %i.e
  %i.bn = add i64 %i.av, -2
  %spec.select214.i = select i1 %i.bm, i64 %i.bn, i64 %i.av
  %.0184.i = select i1 %.not205.i, i64 %i.au, i64 %spec.select214.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !19 ; 2 uses
  %i.bq = add i64 %i.bp, %i.am
  %i.br = icmp ult i64 %i.bq, %i.at
  %i.bs = shl nuw nsw i64 %.sroa.speculated43, 3
  %i.bt = icmp eq i64 %i.bs, %i.bp
  %i.bu = or disjoint i64 %i.ax, 2
  %i.bv = select i1 %i.br, i1 %i.bt, i1 false
  %.0185.i = select i1 %i.bv, i64 %i.bu, i64 %i.ax ; 2 uses
  %i.bw = icmp ult i64 %.0184.i, %.0185.i
  br i1 %i.bw, label %.lr.ph291.i, label %._crit_edge.i

.lr.ph291.i:                                      ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !17 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.cf = icmp ult i64 %.0186.i, %.0188.i
  br i1 %i.cf, label %.lr.ph.us.i, label %._crit_edge.i

.lr.ph.us.i:                                      ; preds = %.lr.ph291.i, %..loopexit288_crit_edge.us.i
  %.0189290.us.i = phi i64 [ %i.cg, %..loopexit288_crit_edge.us.i ], [ %.0184.i, %.lr.ph291.i ] ; 5 uses
  %i.cg = add nuw i64 %.0189290.us.i, 1           ; 4 uses
  %i.ch = icmp ult i64 %i.cg, %i.at
  %i.ci = select i1 %i.ch, i64 %i.cg, i64 %.0189290.us.i
  %i.cj = tail call i64 @llvm.usub.sat.i64(i64 %.0189290.us.i, i64 1)
  %i.ck = mul i64 %.0189290.us.i, %i.by
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ck ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cl, i64 64) ]
  %i.cm = mul i64 %i.cj, %i.by
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cn, i64 64) ]
  %i.co = mul i64 %i.ci, %i.by
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.co ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cp, i64 64) ]
  %i.cq = mul i64 %.0189290.us.i, %i.ce
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cr, i64 64) ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us.i
  %.0190289.us.i = phi i64 [ %.0186.i, %.lr.ph.us.i ], [ %i.cs, %bb.d ] ; 7 uses
  %i.cs = add nuw i64 %.0190289.us.i, 1           ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %i.aq
  %i.cu = select i1 %i.ct, i64 %i.cs, i64 %.0190289.us.i
  %i.cv = tail call i64 @llvm.usub.sat.i64(i64 %.0190289.us.i, i64 1)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.0190289.us.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !28
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0190289.us.i
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !28
  %i.da = fadd float %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !28
  %i.dd = fadd float %i.da, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cu
  %i.df = load float, ptr %i.de, align 4, !tbaa !28
  %i.dg = fadd float %i.dd, %i.df
  %i.dh = fmul float %i.dg, 2.500000e-01
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0190289.us.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !28 ; 2 uses
  %i.dk = fadd float %i.dj, 1.900000e-02
  %i.dl = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.dk, i64 0 ; 2 uses
  %i.dm = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.dl, <4 x float> zeroinitializer, <4 x float> %i.dl) ; 4 uses
  %i.dn = extractelement <4 x float> %i.dm, i64 0
  %foldExtExtBinop = fmul <4 x float> %i.dm, %i.dm
  %i.do = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.dm, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.dp = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.do, <4 x float> <float f0x42EFD02B, float poison, float poison, float poison>, <4 x float> <float f0x3C23D70A, float poison, float poison, float poison>)
  %i.dq = fmul float %i.dn, f0x431D2FBD
  %i.dr = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.ds = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dr, <4 x float> %i.do, <4 x float> <float f0x40ACF18E, float poison, float poison, float poison>)
  %foldExtExtBinop111 = fdiv <4 x float> %i.ds, %i.dp
  %i.dt = extractelement <4 x float> %foldExtExtBinop111, i64 0
  %i.du = fsub float %i.dj, %i.dh
  %i.dv = fmul float %i.du, %i.dt
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = tail call noundef float @log1pf(float noundef %i.dw) #27
  %i.dy = fadd float %i.dx, f0x3C23D70A
  %i.dz = fdiv float 1.000000e+00, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.0190289.us.i
  store float %i.dz, ptr %i.ea, align 4, !tbaa !28
  %exitcond.not.i = icmp eq i64 %i.cs, %.0188.i
  br i1 %exitcond.not.i, label %..loopexit288_crit_edge.us.i, label %bb.d, !llvm.loop !541

..loopexit288_crit_edge.us.i:                     ; preds = %bb.d
  %exitcond318.not.i = icmp eq i64 %i.cg, %.0185.i
  br i1 %exitcond318.not.i, label %._crit_edge.i, label %.lr.ph.us.i, !llvm.loop !542

._crit_edge.i:                                    ; preds = %..loopexit288_crit_edge.us.i, %.lr.ph291.i, %bb.c
  %.not206.i = icmp eq i64 %i.az, 0               ; 2 uses
  %i.eb = add i64 %i.az, -4                       ; 2 uses
  %spec.select285.i = select i1 %.not206.i, i64 0, i64 %i.eb ; 5 uses
  %.not207.i = icmp eq i64 %i.bb, %i.aq
  %i.ec = or disjoint i64 %i.bb, 4
  %spec.select216.i = select i1 %.not207.i, i64 %i.bb, i64 %i.ec ; 6 uses
  %.not208.i = icmp eq i64 %i.av, 0
  %i.ed = add i64 %i.av, -4
  %.0191.i = select i1 %.not208.i, i64 0, i64 %i.ed ; 5 uses
  %.not209.i = icmp eq i64 %i.ax, %i.at
  %i.ee = or disjoint i64 %i.ax, 4
  %.0192.i = select i1 %.not209.i, i64 %i.ax, i64 %i.ee ; 3 uses
  %sext = shl i64 %2, 32
  %i.ef = ashr exact i64 %sext, 32                ; 5 uses
  %i.eg = load ptr, ptr %i.r, align 8, !tbaa !218 ; 2 uses
  %i.eh = getelementptr inbounds nuw [56 x i8], ptr %i.eg, i64 %i.ef ; 4 uses
  %i.ei = sub i64 %spec.select216.i, %spec.select285.i ; 2 uses
  %i.ej = lshr exact i64 %i.ei, 2                 ; 6 uses
  %i.ek = sub i64 %.0192.i, %.0191.i
  %i.el = lshr exact i64 %i.ek, 2                 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !238
  %i.eo = zext i32 %i.en to i64
  %.not.i.i = icmp samesign ugt i64 %i.ej, %i.eo
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = zext i32 %i.eq to i64
  %.not6.i.i = icmp samesign ugt i64 %i.el, %i.er
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not6.i.i
  br i1 %or.cond.i.i, label %_ZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.es = trunc nuw i64 %i.ej to i32
  store i32 %i.es, ptr %i.eh, align 8, !tbaa !25
  %i.et = trunc nuw i64 %i.el to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !26
  %i.ev = icmp ult i64 %.0191.i, %.0192.i
  br i1 %i.ev, label %.lr.ph304.i, label %.preheader165.i

.lr.ph304.i:                                      ; preds = %bb.e
  %i.ew = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.fa = icmp ugt i32 %i.ap, 1
  %i.fb = zext i1 %i.fa to i64
  %i.fc = sub i64 0, %spec.select285.i
  %.not313.i = icmp eq i64 %spec.select216.i, %spec.select285.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 1) ; 5 uses
  %i.fd = shl nuw i64 %umax.i, 2
  %i.fe = shl i64 %umax.i, 4
  %min.iters.check = icmp ult i64 %i.ei, 32
  %n.vec = and i64 %umax.i, 4611686018427387896   ; 3 uses
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  %xtraiter = and i64 %umax.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %invariant.op = sub nuw i64 %umax.i, 1
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph304.i
  %storemerge302.i = phi i64 [ %.0191.i, %.lr.ph304.i ], [ %i.ff, %.loopexit.i ] ; 7 uses
  %i.ff = add nuw i64 %storemerge302.i, 1         ; 4 uses
  %i.fg = icmp ult i64 %i.ff, %i.at
  %i.fh = select i1 %i.fg, i64 %i.ff, i64 %storemerge302.i
  %i.fi = tail call i64 @llvm.usub.sat.i64(i64 %storemerge302.i, i64 1)
  %i.fj = load i64, ptr %i.ew, align 8, !tbaa !17 ; 3 uses
  %i.fk = mul i64 %i.fj, %storemerge302.i
  %i.fl = load ptr, ptr %i.ex, align 8, !tbaa !22 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fn = mul i64 %i.fj, %i.fi
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fo, i64 64) ]
  %i.fp = mul i64 %i.fh, %i.fj
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fl, i64 64) ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fq, i64 64) ]
  %i.fr = load ptr, ptr %i.ey, align 8, !tbaa !22 ; 2 uses
  %i.fs = load i64, ptr %i.ez, align 8, !tbaa !17
  %i.ft = mul i64 %i.fs, %i.ef                    ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fr, i64 %i.ft  ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fu, i64 64) ]
  br i1 %.not206.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fv = load float, ptr %i.fq, align 64, !tbaa !28
  %i.fw = load float, ptr %i.fo, align 64, !tbaa !28
  %i.fx = fadd float %i.fv, %i.fw
  %i.fy = load float, ptr %i.fm, align 64, !tbaa !28 ; 3 uses
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fb
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !28
  %i.gc = fadd float %i.fz, %i.gb
  %i.gd = fmul float %i.gc, 2.500000e-01
  %i.ge = fadd float %i.fy, 1.900000e-02
  %i.gf = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ge, i64 0 ; 2 uses
  %i.gg = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.gf, <4 x float> zeroinitializer, <4 x float> %i.gf) ; 4 uses
  %i.gh = extractelement <4 x float> %i.gg, i64 0
  %foldExtExtBinop113 = fmul <4 x float> %i.gg, %i.gg
  %i.gi = shufflevector <4 x float> %foldExtExtBinop113, <4 x float> %i.gg, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.gj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.gi, <4 x float> <float f0x42EFD02B, float poison, float poison, float poison>, <4 x float> <float f0x3C23D70A, float poison, float poison, float poison>)
  %i.gk = fmul float %i.gh, f0x431D2FBD
  %i.gl = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.gm = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.gl, <4 x float> %i.gi, <4 x float> <float f0x40ACF18E, float poison, float poison, float poison>)
  %foldExtExtBinop115 = fdiv <4 x float> %i.gm, %i.gj
  %i.gn = extractelement <4 x float> %foldExtExtBinop115, i64 0
  %i.go = fsub float %i.fy, %i.gd
  %i.gp = fmul float %i.go, %i.gn                 ; 2 uses
  %i.gq = fmul float %i.gp, %i.gp                 ; 2 uses
  %i.gr = fcmp oge float %i.gq, 2.000000e-01
  %spec.store.select.i.i = select i1 %i.gr, float 2.000000e-01, float %i.gq
  %.scalar.i.i.i = tail call float @llvm.fma.f32(float %spec.store.select.i.i, float f0x480E13D6, float f0x41DC0BF4)
  %i.gs = tail call float @llvm.sqrt.f32(float %.scalar.i.i.i)
  %i.gt = fmul float %i.gs, 2.500000e-01          ; 2 uses
  %i.gu = and i64 %storemerge302.i, 3
  %.not.i217.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i217.i, label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gv = load float, ptr %i.fu, align 64, !tbaa !28
  %i.gw = fadd float %i.gt, %i.gv
  br label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i

_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i: ; preds = %bb.h, %bb.g
  %.sink.i.i = phi float [ %i.gw, %bb.h ], [ %i.gt, %bb.g ]
  store float %.sink.i.i, ptr %i.fu, align 64, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i, %bb.f
  %.0194.i = phi i64 [ 1, %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i ], [ %i.eb, %bb.f ] ; 3 uses
  %i.gx = add i64 %.0194.i, 9
  %i.gy = icmp ult i64 %i.gx, %spec.select216.i
  %i.gz = and i64 %storemerge302.i, 3             ; 3 uses
  br i1 %i.gy, label %.lr.ph.i, label %.preheader287.i

.lr.ph.i:                                         ; preds = %bb.i
  %.not211.i = icmp eq i64 %i.gz, 0
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.fu, i64 %i.fc ; 2 uses
  br label %bb.j

.preheader287.i:                                  ; preds = %bb.l, %bb.i
  %.1.lcssa.i = phi i64 [ %.0194.i, %bb.i ], [ %i.if, %bb.l ] ; 2 uses
  %i.ha = icmp ult i64 %.1.lcssa.i, %spec.select216.i
  br i1 %i.ha, label %.lr.ph297.i, label %._crit_edge298.i

.lr.ph297.i:                                      ; preds = %.preheader287.i
  %.not.i219.i = icmp eq i64 %i.gz, 0
  br label %bb.m

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %.1292.i = phi i64 [ %.0194.i, %.lr.ph.i ], [ %i.if, %bb.l ] ; 7 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.1292.i ; 3 uses
  %i.hc = load <8 x float>, ptr %i.hb, align 4, !tbaa !24 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.he = load <8 x float>, ptr %i.hd, align 4, !tbaa !24
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 -4
  %i.hg = load <8 x float>, ptr %i.hf, align 4, !tbaa !24
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.1292.i
  %i.hi = load <8 x float>, ptr %i.hh, align 4, !tbaa !24
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.1292.i
  %i.hk = load <8 x float>, ptr %i.hj, align 4, !tbaa !24
  %i.hl = fadd <8 x float> %i.he, %i.hg
  %i.hm = fadd <8 x float> %i.hi, %i.hk
  %i.hn = fadd <8 x float> %i.hl, %i.hm
  %i.ho = fmul <8 x float> %i.hn, splat (float 2.500000e-01)
  %i.hp = fadd <8 x float> %i.hc, splat (float 1.900000e-02) ; 2 uses
  %i.hq = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.hp, <8 x float> zeroinitializer, <8 x float> %i.hp) ; 3 uses
  %i.hr = fmul <8 x float> %i.hq, %i.hq           ; 2 uses
  %i.hs = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hr, <8 x float> splat (float f0x42EFD02B), <8 x float> splat (float f0x3C23D70A))
  %i.ht = fmul <8 x float> %i.hq, splat (float f0x431D2FBD)
  %i.hu = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ht, <8 x float> %i.hr, <8 x float> splat (float f0x40ACF18E))
  %i.hv = fdiv <8 x float> %i.hu, %i.hs
  %i.hw = fsub <8 x float> %i.hc, %i.ho
  %i.hx = fmul <8 x float> %i.hv, %i.hw           ; 2 uses
  %i.hy = fmul <8 x float> %i.hx, %i.hx
  %i.hz = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.hy, <8 x float> splat (float 2.000000e-01))
  %i.ia = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hz, <8 x float> splat (float f0x480E13D6), <8 x float> splat (float f0x41DC0BF4))
  %i.ib = tail call noundef <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ia)
  %i.ic = fmul <8 x float> %i.ib, splat (float 2.500000e-01) ; 2 uses
  br i1 %.not211.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.1292.i
  %i.id = load <8 x float>, ptr %gep.i, align 4, !tbaa !24
  %i.ie = fadd <8 x float> %i.ic, %i.id
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.036.0.i = phi <8 x float> [ %i.ie, %bb.k ], [ %i.ic, %bb.j ]
  %gep295.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.1292.i
  store <8 x float> %.sroa.036.0.i, ptr %gep295.i, align 4, !tbaa !24
  %i.if = add i64 %.1292.i, 8                     ; 2 uses
  %i.ig = add i64 %.1292.i, 17
  %i.ih = icmp ult i64 %i.ig, %spec.select216.i
  br i1 %i.ih, label %bb.j, label %.preheader287.i, !llvm.loop !543

bb.m:                                             ; preds = %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit221.i, %.lr.ph297.i
  %.2296.i = phi i64 [ %.1.lcssa.i, %.lr.ph297.i ], [ %i.ii, %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit221.i ] ; 7 uses
  %i.ii = add nuw i64 %.2296.i, 1                 ; 4 uses
  %i.ij = icmp ult i64 %i.ii, %i.aq
  %i.ik = select i1 %i.ij, i64 %i.ii, i64 %.2296.i
  %i.il = tail call i64 @llvm.usub.sat.i64(i64 %.2296.i, i64 1)
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.2296.i
  %i.in = load float, ptr %i.im, align 4, !tbaa !28
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.2296.i
  %i.ip = load float, ptr %i.io, align 4, !tbaa !28
  %i.iq = fadd float %i.in, %i.ip
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.il
  %i.is = load float, ptr %i.ir, align 4, !tbaa !28
  %i.it = fadd float %i.iq, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.ik
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !28
  %i.iw = fadd float %i.it, %i.iv
  %i.ix = fmul float %i.iw, 2.500000e-01
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.2296.i
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !28 ; 2 uses
  %i.ja = fadd float %i.iz, 1.900000e-02
  %i.jb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ja, i64 0 ; 2 uses
  %i.jc = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.jb, <4 x float> zeroinitializer, <4 x float> %i.jb) ; 4 uses
  %i.jd = extractelement <4 x float> %i.jc, i64 0
  %foldExtExtBinop117 = fmul <4 x float> %i.jc, %i.jc
  %i.je = shufflevector <4 x float> %foldExtExtBinop117, <4 x float> %i.jc, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.jf = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.je, <4 x float> <float f0x42EFD02B, float poison, float poison, float poison>, <4 x float> <float f0x3C23D70A, float poison, float poison, float poison>)
  %i.jg = fmul float %i.jd, f0x431D2FBD
  %i.jh = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.ji = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.jh, <4 x float> %i.je, <4 x float> <float f0x40ACF18E, float poison, float poison, float poison>)
  %foldExtExtBinop119 = fdiv <4 x float> %i.ji, %i.jf
  %i.jj = extractelement <4 x float> %foldExtExtBinop119, i64 0
  %i.jk = fsub float %i.iz, %i.ix
  %i.jl = fmul float %i.jk, %i.jj                 ; 2 uses
  %i.jm = fmul float %i.jl, %i.jl                 ; 2 uses
  %i.jn = fcmp oge float %i.jm, 2.000000e-01
  %spec.store.select.i218.i = select i1 %i.jn, float 2.000000e-01, float %i.jm
  %.scalar.i.i219.i = tail call float @llvm.fma.f32(float %spec.store.select.i218.i, float f0x480E13D6, float f0x41DC0BF4)
  %i.jo = tail call float @llvm.sqrt.f32(float %.scalar.i.i219.i)
  %i.jp = fmul float %i.jo, 2.500000e-01          ; 2 uses
  %i.jq = sub i64 %.2296.i, %spec.select285.i
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.jq ; 2 uses
  br i1 %.not.i219.i, label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit221.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.js = load float, ptr %i.jr, align 4, !tbaa !28
  %i.jt = fadd float %i.jp, %i.js
  br label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit221.i

_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit221.i: ; preds = %bb.n, %bb.m
  %.sink.i220.i = phi float [ %i.jt, %bb.n ], [ %i.jp, %bb.m ]
  store float %.sink.i220.i, ptr %i.jr, align 4, !tbaa !28
  %exitcond319.not.i = icmp eq i64 %i.ii, %spec.select216.i
  br i1 %exitcond319.not.i, label %._crit_edge298.i, label %bb.m, !llvm.loop !544

._crit_edge298.i:                                 ; preds = %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit221.i, %.preheader287.i
  %i.ju = icmp eq i64 %i.gz, 3
  br i1 %i.ju, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge298.i
  %i.jv = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.jw = getelementptr inbounds nuw [56 x i8], ptr %i.jv, i64 %i.ef ; 2 uses
  %i.jx = sub nuw i64 %storemerge302.i, %.0191.i
  %i.jy = lshr i64 %i.jx, 2                       ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !22 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !17 ; 2 uses
  %i.kd = mul i64 %i.kc, %i.jy
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kd ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ke, i64 64) ]
  br i1 %.not313.i, label %.loopexit.i, label %.lr.ph301.i.preheader

.lr.ph301.i.preheader:                            ; preds = %bb.o
  br i1 %min.iters.check, label %.lr.ph301.i.preheader125, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph301.i.preheader
  %i.kf = mul i64 %i.kc, %i.jy                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ka, i64 %i.kf
  %scevgep75 = getelementptr i8, ptr %i.ka, i64 %i.fd
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.kf
  %scevgep77 = getelementptr i8, ptr %i.fr, i64 %i.fe
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.ft
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %i.fu, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph301.i.preheader125, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kg = shl nuw i64 %index, 4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.kg
  %wide.vec = load <32 x float>, ptr %i.kh, align 64, !tbaa !28, !alias.scope !572 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec79 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec80 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec81 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ki = fadd <8 x float> %strided.vec, %strided.vec79
  %i.kj = fadd <8 x float> %i.ki, %strided.vec80
  %i.kk = fadd <8 x float> %i.kj, %strided.vec81
  %i.kl = fmul <8 x float> %i.kk, splat (float 2.500000e-01)
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %index
  store <8 x float> %i.kl, ptr %i.km, align 32, !tbaa !28, !alias.scope !573, !noalias !572
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph301.i.preheader125

.lr.ph301.i.preheader125:                         ; preds = %vector.memcheck, %.lr.ph301.i.preheader, %middle.block
  %.0187299.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph301.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph301.i.prol.loopexit, label %.lr.ph301.i.prol

.lr.ph301.i.prol:                                 ; preds = %.lr.ph301.i.preheader125
  %.idx.i.prol = shl nuw i64 %.0187299.i.ph, 4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.i.prol ; 4 uses
  %i.kp = load float, ptr %i.ko, align 64, !tbaa !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !28
  %i.ks = fadd float %i.kp, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !28
  %i.kv = fadd float %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !28
  %i.ky = fadd float %i.kv, %i.kx
  %i.kz = fmul float %i.ky, 2.500000e-01
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.0187299.i.ph
  store float %i.kz, ptr %i.la, align 32, !tbaa !28
  %i.lb = or disjoint i64 %.0187299.i.ph, 1
  br label %.lr.ph301.i.prol.loopexit

.lr.ph301.i.prol.loopexit:                        ; preds = %.lr.ph301.i.prol, %.lr.ph301.i.preheader125
  %.0187299.i.unr = phi i64 [ %.0187299.i.ph, %.lr.ph301.i.preheader125 ], [ %i.lb, %.lr.ph301.i.prol ]
  %i.lc = icmp eq i64 %.0187299.i.ph, %invariant.op
  br i1 %i.lc, label %.loopexit.i, label %.lr.ph301.i

.lr.ph301.i:                                      ; preds = %.lr.ph301.i.prol.loopexit, %.lr.ph301.i
  %.0187299.i = phi i64 [ %i.me, %.lr.ph301.i ], [ %.0187299.i.unr, %.lr.ph301.i.prol.loopexit ] ; 4 uses
  %.idx.i = shl nuw i64 %.0187299.i, 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.i ; 4 uses
  %i.le = load float, ptr %i.ld, align 16, !tbaa !28
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !28
  %i.lh = fadd float %i.le, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lj = load float, ptr %i.li, align 8, !tbaa !28
  %i.lk = fadd float %i.lh, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !28
  %i.ln = fadd float %i.lk, %i.lm
  %i.lo = fmul float %i.ln, 2.500000e-01
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.0187299.i
  store float %i.lo, ptr %i.lp, align 4, !tbaa !28
  %i.lq = add nuw nsw i64 %.0187299.i, 1          ; 2 uses
  %.idx.i.1 = shl nuw i64 %i.lq, 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.i.1 ; 4 uses
  %i.ls = load float, ptr %i.lr, align 16, !tbaa !28
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !28
  %i.lv = fadd float %i.ls, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lx = load float, ptr %i.lw, align 8, !tbaa !28
  %i.ly = fadd float %i.lv, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 12
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !28
  %i.mb = fadd float %i.ly, %i.ma
  %i.mc = fmul float %i.mb, 2.500000e-01
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.lq
  store float %i.mc, ptr %i.md, align 4, !tbaa !28
  %i.me = add nuw nsw i64 %.0187299.i, 2          ; 2 uses
  %exitcond320.not.i.1 = icmp eq i64 %i.ej, %i.me
  br i1 %exitcond320.not.i.1, label %.loopexit.i, label %.lr.ph301.i, !llvm.loop !549

.loopexit.i:                                      ; preds = %.lr.ph301.i.prol.loopexit, %.lr.ph301.i, %middle.block, %bb.o, %._crit_edge298.i
  %exitcond321.not.i = icmp eq i64 %i.ff, %.0192.i
  br i1 %exitcond321.not.i, label %._crit_edge305.loopexit.i, label %bb.f, !llvm.loop !550

._crit_edge305.loopexit.i:                        ; preds = %.loopexit.i
  %.pre326.i = load ptr, ptr %i.r, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [56 x i8], ptr %.pre326.i, i64 %i.ef ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre56 = load i32, ptr %.phi.trans.insert55, align 4, !tbaa !26
  %i.mf = zext i32 %.pre to i64
  %i.mg = zext i32 %.pre56 to i64
  br label %.preheader165.i

.preheader165.i:                                  ; preds = %._crit_edge305.loopexit.i, %bb.e
  %i.mh = phi i64 [ %i.mg, %._crit_edge305.loopexit.i ], [ %i.el, %bb.e ]
  %i.mi = phi i64 [ %i.mf, %._crit_edge305.loopexit.i ], [ %i.ej, %bb.e ]
  %i.mj = phi ptr [ %.pre326.i, %._crit_edge305.loopexit.i ], [ %i.eg, %bb.e ]
  %i.mk = lshr exact i64 %spec.select285.i, 2
  %.lobit.i = and i64 %i.mk, 1
  %i.ml = lshr exact i64 %.0191.i, 2
  %i.mm = and i64 %i.ml, 1
  %i.mn = shl nsw i64 %i.o, 1
  %i.mo = shl nsw i64 %i.p, 1
  %i.mp = fcmp olt float %i.u, 2.000000e+00
  %i.mq = fsub nnan float 2.000000e+00, %i.u
  %i.mr = fmul nnan float %i.mq, 5.000000e-01
  %.083.i = select i1 %i.mp, float %i.mr, float 0.000000e+00 ; 4 uses
  %i.ms = tail call float @llvm.fmuladd.f32(float %.083.i, float 0.000000e+00, float 1.250000e-01) ; 2 uses
  %i.mt = tail call float @llvm.fmuladd.f32(float %.083.i, float -1.000000e-01, float 1.000000e-01) ; 2 uses
  %i.mu = fadd float %i.ms, %i.mt
  %i.mv = tail call float @llvm.fmuladd.f32(float %.083.i, float -9.000000e-02, float 9.000000e-02) ; 2 uses
  %i.mw = fadd float %i.mv, %i.mu
  %i.mx = tail call float @llvm.fmuladd.f32(float %.083.i, float -6.000000e-02, float 6.000000e-02) ; 2 uses
  %i.my = fadd float %i.mx, %i.mw
  %i.mz = fdiv float f0x3E9964C9, %i.my           ; 4 uses
  %i.na = fmul float %i.ms, %i.mz
  %i.nb = fmul float %i.mt, %i.mz
  %i.nc = fmul float %i.mv, %i.mz
  %i.nd = fmul float %i.mx, %i.mz
  %cond = icmp eq i64 %i.l, %i.h
  br i1 %cond, label %._crit_edge312.i, label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.preheader165.i
  %i.ne = getelementptr inbounds nuw [56 x i8], ptr %i.mj, i64 %i.ef ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !22 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !17 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !22 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !17 ; 5 uses
  %.not173.i = icmp eq i64 %i.b, %i.m
  br i1 %.not173.i, label %._crit_edge312.i, label %.lr.ph.us.i21

.lr.ph.us.i21:                                    ; preds = %.lr.ph171.i, %._crit_edge.us.i
  %.079170.us.i = phi i64 [ %i.ql, %._crit_edge.us.i ], [ 0, %.lr.ph171.i ] ; 4 uses
  %i.nn = add i64 %.079170.us.i, %i.mm            ; 4 uses
  %i.no = tail call i64 @llvm.usub.sat.i64(i64 %i.nn, i64 1)
  %i.np = add i64 %i.nn, 1                        ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.mh
  %i.nr = select i1 %i.nq, i64 %i.np, i64 %i.nn
  %i.ns = mul i64 %i.no, %i.ni
end_hunk_0
begin_hunk_1_@"_ZZN3jxl6N_AVX212_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm":bb.a
  %i.anq = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.anp, <8 x float> splat (float f0x3C2B9B7F))
  %i.anr = select <8 x i1> %i.ano, <8 x float> %i.anq, <8 x float> zeroinitializer
  %i.ans = fadd <8 x float> %i.amt, %i.anr
  %i.ant = add i64 %i.aed, 2                      ; 3 uses
  %i.anu = mul i64 %.val69.i.us, %i.ant
  %i.anv = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.anu ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anv, i64 64) ]
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %.val67.i.us
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.ua
  %i.any = mul i64 %i.ant, %.val65.i.us
  %i.anz = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.any ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anz, i64 64) ]
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %.val67.i.us
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.ua
  %i.aoc = mul i64 %.val73.i.us, %i.ant
  %i.aod = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.aoc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aod, i64 64) ]
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %.val67.i.us
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.aoe, i64 %i.ua
  %i.aog = load <8 x i32>, ptr %i.anx, align 32, !tbaa !24
  %i.aoh = load <8 x float>, ptr %i.aof, align 32, !tbaa !24 ; 2 uses
  %i.aoi = load <8 x float>, ptr %i.aob, align 32, !tbaa !24
  %i.aoj = fadd <8 x float> %i.aoi, splat (float f0x3B51AE51)
  %i.aok = and <8 x i32> %i.aog, splat (i32 2147483647)
  %i.aol = bitcast <8 x i32> %i.aok to <8 x float>
  %i.aom = fadd <8 x float> %i.aoj, %i.aol        ; 2 uses
  %i.aon = fcmp ogt <8 x float> %i.aoh, %i.aom
  %i.aoo = fsub <8 x float> %i.aoh, %i.aom
  %i.aop = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.aoo, <8 x float> splat (float f0x3C2B9B7F))
  %i.aoq = select <8 x i1> %i.aon, <8 x float> %i.aop, <8 x float> zeroinitializer
  %i.aor = fadd <8 x float> %i.ans, %i.aoq
  %i.aos = add i64 %i.aed, 3                      ; 3 uses
  %i.aot = mul i64 %.val69.i.us, %i.aos
  %i.aou = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.aot ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aou, i64 64) ]
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %.val67.i.us
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %i.ua
  %i.aox = mul i64 %i.aos, %.val65.i.us
  %i.aoy = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aox ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aoy, i64 64) ]
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %.val67.i.us
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %i.ua
  %i.apb = mul i64 %.val73.i.us, %i.aos
  %i.apc = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.apb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.apc, i64 64) ]
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %.val67.i.us
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %i.ua
  %i.apf = load <8 x i32>, ptr %i.aow, align 32, !tbaa !24
  %i.apg = load <8 x float>, ptr %i.ape, align 32, !tbaa !24 ; 2 uses
  %i.aph = load <8 x float>, ptr %i.apa, align 32, !tbaa !24
  %i.api = fadd <8 x float> %i.aph, splat (float f0x3B51AE51)
  %i.apj = and <8 x i32> %i.apf, splat (i32 2147483647)
  %i.apk = bitcast <8 x i32> %i.apj to <8 x float>
  %i.apl = fadd <8 x float> %i.api, %i.apk        ; 2 uses
  %i.apm = fcmp ogt <8 x float> %i.apg, %i.apl
  %i.apn = fsub <8 x float> %i.apg, %i.apl
  %i.apo = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.apn, <8 x float> splat (float f0x3C2B9B7F))
  %i.app = select <8 x i1> %i.apm, <8 x float> %i.apo, <8 x float> zeroinitializer
  %i.apq = fadd <8 x float> %i.aor, %i.app
  %i.apr = add i64 %i.aed, 4                      ; 3 uses
  %i.aps = mul i64 %.val69.i.us, %i.apr
  %i.apt = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.aps ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.apt, i64 64) ]
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %.val67.i.us
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %i.apu, i64 %i.ua
  %i.apw = mul i64 %i.apr, %.val65.i.us
  %i.apx = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.apw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.apx, i64 64) ]
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %i.apx, i64 %.val67.i.us
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %i.ua
  %i.aqa = mul i64 %.val73.i.us, %i.apr
  %i.aqb = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.aqa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aqb, i64 64) ]
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.aqb, i64 %.val67.i.us
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.aqc, i64 %i.ua
  %i.aqe = load <8 x i32>, ptr %i.apv, align 32, !tbaa !24
  %i.aqf = load <8 x float>, ptr %i.aqd, align 32, !tbaa !24 ; 2 uses
  %i.aqg = load <8 x float>, ptr %i.apz, align 32, !tbaa !24
  %i.aqh = fadd <8 x float> %i.aqg, splat (float f0x3B51AE51)
  %i.aqi = and <8 x i32> %i.aqe, splat (i32 2147483647)
  %i.aqj = bitcast <8 x i32> %i.aqi to <8 x float>
  %i.aqk = fadd <8 x float> %i.aqh, %i.aqj        ; 2 uses
  %i.aql = fcmp ogt <8 x float> %i.aqf, %i.aqk
  %i.aqm = fsub <8 x float> %i.aqf, %i.aqk
  %i.aqn = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.aqm, <8 x float> splat (float f0x3C2B9B7F))
  %i.aqo = select <8 x i1> %i.aql, <8 x float> %i.aqn, <8 x float> zeroinitializer
  %i.aqp = fadd <8 x float> %i.apq, %i.aqo
  %i.aqq = add i64 %i.aed, 5                      ; 3 uses
  %i.aqr = mul i64 %.val69.i.us, %i.aqq
  %i.aqs = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.aqr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aqs, i64 64) ]
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %.val67.i.us
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.ua
  %i.aqv = mul i64 %i.aqq, %.val65.i.us
  %i.aqw = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aqv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aqw, i64 64) ]
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqw, i64 %.val67.i.us
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.aqx, i64 %i.ua
  %i.aqz = mul i64 %.val73.i.us, %i.aqq
  %i.ara = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.aqz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ara, i64 64) ]
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %.val67.i.us
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.arb, i64 %i.ua
  %i.ard = load <8 x i32>, ptr %i.aqu, align 32, !tbaa !24
  %i.are = load <8 x float>, ptr %i.arc, align 32, !tbaa !24 ; 2 uses
  %i.arf = load <8 x float>, ptr %i.aqy, align 32, !tbaa !24
  %i.arg = fadd <8 x float> %i.arf, splat (float f0x3B51AE51)
  %i.arh = and <8 x i32> %i.ard, splat (i32 2147483647)
  %i.ari = bitcast <8 x i32> %i.arh to <8 x float>
  %i.arj = fadd <8 x float> %i.arg, %i.ari        ; 2 uses
  %i.ark = fcmp ogt <8 x float> %i.are, %i.arj
  %i.arl = fsub <8 x float> %i.are, %i.arj
  %i.arm = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.arl, <8 x float> splat (float f0x3C2B9B7F))
  %i.arn = select <8 x i1> %i.ark, <8 x float> %i.arm, <8 x float> zeroinitializer
  %i.aro = fadd <8 x float> %i.aqp, %i.arn
  %i.arp = add i64 %i.aed, 6                      ; 3 uses
  %i.arq = mul i64 %.val69.i.us, %i.arp
  %i.arr = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.arq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.arr, i64 64) ]
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %.val67.i.us
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %i.ua
  %i.aru = mul i64 %i.arp, %.val65.i.us
  %i.arv = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.aru ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.arv, i64 64) ]
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arv, i64 %.val67.i.us
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.ua
  %i.ary = mul i64 %.val73.i.us, %i.arp
  %i.arz = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.ary ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.arz, i64 64) ]
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.arz, i64 %.val67.i.us
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.ua
  %i.asc = load <8 x i32>, ptr %i.art, align 32, !tbaa !24
  %i.asd = load <8 x float>, ptr %i.asb, align 32, !tbaa !24 ; 2 uses
  %i.ase = load <8 x float>, ptr %i.arx, align 32, !tbaa !24
  %i.asf = fadd <8 x float> %i.ase, splat (float f0x3B51AE51)
  %i.asg = and <8 x i32> %i.asc, splat (i32 2147483647)
  %i.ash = bitcast <8 x i32> %i.asg to <8 x float>
  %i.asi = fadd <8 x float> %i.asf, %i.ash        ; 2 uses
  %i.asj = fcmp ogt <8 x float> %i.asd, %i.asi
  %i.ask = fsub <8 x float> %i.asd, %i.asi
  %i.asl = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ask, <8 x float> splat (float f0x3C2B9B7F))
  %i.asm = select <8 x i1> %i.asj, <8 x float> %i.asl, <8 x float> zeroinitializer
  %i.asn = fadd <8 x float> %i.aro, %i.asm
  %i.aso = add i64 %i.aed, 7                      ; 3 uses
  %i.asp = mul i64 %.val69.i.us, %i.aso
  %i.asq = getelementptr inbounds nuw i8, ptr %.val70.i.us, i64 %i.asp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.asq, i64 64) ]
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %.val67.i.us
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.ua
  %i.ast = mul i64 %i.aso, %.val65.i.us
  %i.asu = getelementptr inbounds nuw i8, ptr %.val66.i.us, i64 %i.ast ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.asu, i64 64) ]
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %.val67.i.us
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.asv, i64 %i.ua
  %i.asx = mul i64 %.val73.i.us, %i.aso
  %i.asy = getelementptr inbounds nuw i8, ptr %.val74.i.us, i64 %i.asx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.asy, i64 64) ]
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.asy, i64 %.val67.i.us
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.asz, i64 %i.ua
  %i.atb = load <8 x i32>, ptr %i.ass, align 32, !tbaa !24
  %i.atc = load <8 x float>, ptr %i.ata, align 32, !tbaa !24 ; 2 uses
  %i.atd = load <8 x float>, ptr %i.asw, align 32, !tbaa !24
  %i.ate = fadd <8 x float> %i.atd, splat (float f0x3B51AE51)
  %i.atf = and <8 x i32> %i.atb, splat (i32 2147483647)
  %i.atg = bitcast <8 x i32> %i.atf to <8 x float>
  %i.ath = fadd <8 x float> %i.ate, %i.atg        ; 2 uses
  %i.ati = fcmp ogt <8 x float> %i.atc, %i.ath
  %i.atj = fsub <8 x float> %i.atc, %i.ath
  %i.atk = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.atj, <8 x float> splat (float f0x3C2B9B7F))
  %i.atl = select <8 x i1> %i.ati, <8 x float> %i.atk, <8 x float> zeroinitializer
  %i.atm = fadd <8 x float> %i.asn, %i.atl        ; 2 uses
  %i.atn = shufflevector <8 x float> %i.atm, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.ato = fadd <8 x float> %i.atm, %i.atn        ; 2 uses
  %i.atp = shufflevector <8 x float> %i.ato, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.atq = fadd <8 x float> %i.ato, %i.atp        ; 2 uses
  %i.atr = shufflevector <8 x float> %i.atq, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ats = fadd <8 x float> %i.atq, %i.atr
  %i.att = extractelement <8 x float> %i.ats, i64 0 ; 3 uses
  %i.atu = fcmp ult float %i.att, f0x3EAB9B7F
  %i.atv = fsub float f0x3F2B9B7F, %i.att
  %spec.select.i.i.us = select i1 %i.atu, float %i.att, float %i.atv ; 2 uses
  %i.atw = fcmp oge float %spec.select.i.i.us, f0x3E25DA23
  %spec.store.select.i.i19.us = select i1 %i.atw, float f0x3E25DA23, float %spec.select.i.i.us
  %i.atx = fmul float %spec.store.select.i.i19.us, f0x3F67E997
  %i.aty = insertelement <8 x float> poison, float %i.atx, i64 0
  %i.atz = shufflevector <8 x float> %i.aty, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aua = fadd <8 x float> %i.aeb, %i.atz
  %i.aub = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ama, <8 x float> %i.aua)
  %i.auc = extractelement <8 x float> %i.aub, i64 0
  %i.aud = fmul float %i.auc, f0x3FB8AA3B
  %i.aue = insertelement <4 x float> poison, float %i.aud, i64 0
  %i.auf = shufflevector <4 x float> %i.aue, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aug = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.auf) ; 3 uses
  %i.auh = fcmp oge <4 x float> %i.aug, splat (float f0x4F000000)
  %i.aui = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.aug)
  %i.auj = shl <4 x i32> %i.aui, splat (i32 23)
  %i.auk = add <4 x i32> %i.auj, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.aul = bitcast <4 x i32> %i.auk to <4 x float>
  %i.aum = select <4 x i1> %i.auh, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.aul
  %i.aun = fsub <4 x float> %i.auf, %i.aug        ; 6 uses
  %i.auo = fadd <4 x float> %i.aun, <float f0x4122CC6B, float poison, float poison, float poison>
  %i.aup = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.auo, <4 x float> %i.aun, <4 x float> <float f0x424379A1, float poison, float poison, float poison>)
  %i.auq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aup, <4 x float> %i.aun, <4 x float> <float f0x42C519F0, float poison, float poison, float poison>)
  %foldExtExtBinop121 = fmul <4 x float> %i.aum, %i.auq
  %i.aur = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aun, <4 x float> <float f0x3E5749EE, float poison, float poison, float poison>, <4 x float> <float f0xBCB621BE, float poison, float poison, float poison>)
  %i.aus = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aur, <4 x float> %i.aun, <4 x float> <float -1.944150e+01, float poison, float poison, float poison>)
  %i.aut = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aus, <4 x float> %i.aun, <4 x float> <float f0x42C519F1, float poison, float poison, float poison>)
  %foldExtExtBinop123 = fdiv <4 x float> %foldExtExtBinop121, %i.aut
  %i.auu = extractelement <4 x float> %foldExtExtBinop123, i64 0
  %i.auv = tail call float @llvm.fmuladd.f32(float %i.auu, float %i.tb, float %i.td)
  store float %i.auv, ptr %i.ub, align 4, !tbaa !28
  %i.auw = add nuw i64 %.05877.i.us, 1            ; 2 uses
  %i.aux = icmp ult i64 %i.auw, %.sroa.speculated
  br i1 %i.aux, label %bb.aj, label %._crit_edge.i17.loopexit.us, !llvm.loop !560

._crit_edge.i17.loopexit.us:                      ; preds = %bb.aj
  %i.auy = add nuw nsw i64 %.05778.i.us, 1        ; 2 uses
  %i.auz = icmp samesign ult i64 %i.auy, %.sroa.speculated43
  br i1 %i.auz, label %.lr.ph.i18.us, label %_ZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_.exit, !llvm.loop !561

_ZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_.exit: ; preds = %._crit_edge.i17.loopexit.us, %.lr.ph80.i, %bb.ai, %._crit_edge.i, %bb.a, %bb.b
  %.sroa.046.0 = phi i32 [ 1, %._crit_edge.i ], [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %bb.ai ], [ 0, %.lr.ph80.i ], [ 0, %._crit_edge.i17.loopexit.us ]
  ret i32 %.sroa.046.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse41.blendvps(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log1pf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #20

declare i32 @_ZN3jxl10Symmetric5ERKNS_5PlaneIfEERKNS_5RectTImEERKNS_17WeightsSymmetric5EPNS_10ThreadPoolEPS1_S7_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @"_ZN3jxl9RunOnPoolIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESF_E3$_0ZNS2_23AdaptiveQuantizationMapEfS6_SA_fSC_SF_SF_E3$_1EENS_6StatusESC_jjRKT_RKT0_PKc"(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"class.jxl::ThreadPool::RunCallState.179", align 8 ; 6 uses
  %5 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr null, ptr %5, align 8, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !224
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %2, align 8, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4.i.i = load ptr, ptr %i.d, align 8, !tbaa !241
  %.val4.val.i.i = load ptr, ptr %.val4.i.i, align 8, !tbaa !203
  %i.e = call fastcc i32 @"_ZZN3jxl6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_0clEm"(ptr %.val.i.i, ptr %.val4.val.i.i, i64 noundef 1) #29
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i", label %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit"

"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i": ; preds = %bb.c, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i"
  %.sroa.5.0 = phi i32 [ %.sroa.5.1, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i" ], [ 0, %bb.c ]
  %.09.i = phi i32 [ %i.h, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i" ], [ 0, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.5.0, 0
  br i1 %.not.i.i, label %bb.d, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i"

bb.d:                                             ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i"
  %i.g = call fastcc i32 @"_ZZN3jxl6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm"(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %.09.i, i64 noundef 0) #29
  br label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i"

"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i": ; preds = %bb.d, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i"
  %.sroa.5.1 = phi i32 [ %i.g, %bb.d ], [ 1, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i" ] ; 2 uses
  %i.h = add nuw i32 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.h, %1
  br i1 %exitcond.not.i, label %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit", label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i", !llvm.loop !577

"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i", %bb.c, %bb.b
  %.sroa.03.1.i = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ %.sroa.5.1, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit26"

bb.e:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val11 = load ptr, ptr %i.i, align 8
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit26", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %2, ptr %4, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %3, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 0, ptr %i.l, align 8, !tbaa !229
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.val.i.i17 = load ptr, ptr %2, align 8, !tbaa !240
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4.i.i18 = load ptr, ptr %i.m, align 8, !tbaa !241
  %.val4.val.i.i19 = load ptr, ptr %.val4.i.i18, align 8, !tbaa !203
  %i.n = tail call fastcc i32 @"_ZZN3jxl6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_0clEm"(ptr %.val.i.i17, ptr %.val4.val.i.i19, i64 noundef 1) #29
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i20", label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i32 1, ptr %i.l seq_cst, align 8
  br label %bb.n

bb.i:                                             ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i23"
  %i.p = load atomic i32, ptr %i.l seq_cst, align 8
  %.not8.i25 = icmp ne i32 %i.p, 0
  br label %bb.n

"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i20": ; preds = %bb.g, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i23"
  %.09.i21 = phi i32 [ %i.u, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i23" ], [ 0, %bb.g ] ; 2 uses
  %i.q = load atomic i32, ptr %i.l seq_cst, align 8
  %.not.i.i22 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i22, label %bb.j, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i23"

bb.j:                                             ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i20"
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !243, !nonnull !78, !align !236
  %i.s = tail call fastcc i32 @"_ZZN3jxl6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm"(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef %.09.i21, i64 noundef 0) #29
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i23", label %bb.k

bb.k:                                             ; preds = %bb.j
  store atomic i32 1, ptr %i.l seq_cst, align 8
  br label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i23"

"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm.exit.i23": ; preds = %bb.k, %bb.j, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i20"
  %i.u = add nuw i32 %.09.i21, 1                  ; 2 uses
  %exitcond.not.i24 = icmp eq i32 %i.u, %1
  br i1 %exitcond.not.i24, label %bb.i, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm.exit.preheader.i20", !llvm.loop !577

bb.l:                                             ; preds = %bb.f
  %i.v = call noundef i32 %.val(ptr noundef %.val11, ptr noundef nonnull %4, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %1) #27, !inline_history !578
  %.not25.i = icmp eq i32 %i.v, 0
  br i1 %.not25.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load atomic i32, ptr %i.l seq_cst, align 8
  %.not7.i = icmp ne i32 %i.w, 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h
  %.sroa.03.0.shrunk.i14 = phi i1 [ %.not7.i, %bb.m ], [ true, %bb.l ], [ true, %bb.h ], [ %.not8.i25, %bb.i ]
  %.sroa.03.0.i15 = zext i1 %.sroa.03.0.shrunk.i14 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit26"

"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit26": ; preds = %bb.n, %bb.e, %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit"
  %.sroa.0.0 = phi i32 [ %.sroa.03.1.i, %"_ZN3jxl10ThreadPool3RunIZNS_6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1EENS_6StatusEjjRKT_RKT0_PKc.exit" ], [ %.sroa.03.0.i15, %bb.n ], [ 0, %bb.e ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN3jxl6N_SSE412_GLOBAL__N_114Blur1x1MaskingEP22JxlMemoryManagerStructPNS_10ThreadPoolEPNS_5PlaneIfEERKNS_5RectTImEE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #9 {
bb.a:
  %4 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %5 = alloca %"struct.jxl::WeightsSymmetric5", align 16 ; 9 uses
  %6 = alloca %"class.jxl::StatusOr", align 8     ; 10 uses
  %7 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %8 = alloca %"class.jxl::RectT", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store <4 x float> splat (float f0x3E21C4E8), ptr %5, align 16, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x float> splat (float f0x3D6C2025), ptr %i.a, align 16, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <4 x float> splat (float f0x3CDA9169), ptr %i.b, align 16, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x float> splat (float f0x3C016A53), ptr %i.c, align 16, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64
  store <4 x float> splat (float f0x3D465EBE), ptr %i.d, align 16, !tbaa !28
end_hunk_1
begin_hunk_2_@_ZNSt3__15arrayIN3jxl14ReferenceFrameELm4EED2Ev:bb.a

_ZN3jxl14ReferenceFrameD2Ev.exit:                 ; preds = %bb.a, %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !315  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !315
  %.not.i.i.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.1, label %_ZN3jxl14ReferenceFrameD2Ev.exit.1, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.1

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.1: ; preds = %_ZN3jxl14ReferenceFrameD2Ev.exit
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.d) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 504) #30
  br label %_ZN3jxl14ReferenceFrameD2Ev.exit.1

_ZN3jxl14ReferenceFrameD2Ev.exit.1:               ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.1, %_ZN3jxl14ReferenceFrameD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !315  ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !315
  %.not.i.i.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.2, label %_ZN3jxl14ReferenceFrameD2Ev.exit.2, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.2

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.2: ; preds = %_ZN3jxl14ReferenceFrameD2Ev.exit.1
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.f) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 504) #30
  br label %_ZN3jxl14ReferenceFrameD2Ev.exit.2

_ZN3jxl14ReferenceFrameD2Ev.exit.2:               ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.2, %_ZN3jxl14ReferenceFrameD2Ev.exit.1
  %i.g = load ptr, ptr %0, align 8, !tbaa !315    ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !315
  %.not.i.i.i.3 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.3, label %_ZN3jxl14ReferenceFrameD2Ev.exit.3, label %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.3

_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.3: ; preds = %_ZN3jxl14ReferenceFrameD2Ev.exit.2
  tail call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.g) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 504) #30
  br label %_ZN3jxl14ReferenceFrameD2Ev.exit.3

_ZN3jxl14ReferenceFrameD2Ev.exit.3:               ; preds = %_ZNKSt3__114default_deleteIN3jxl11ImageBundleEEclB8nn180100EPS2_.exit.i.i.i.3, %_ZN3jxl14ReferenceFrameD2Ev.exit.2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl15PatchDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1041 ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1042
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1043
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #30
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1041 ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1042
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1043
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #30
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2

_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2: ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !322  ; 4 uses
  %.not.i.i3 = icmp eq ptr %i.r, null
  br i1 %.not.i.i3, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.r, ptr %i.s, align 8, !tbaa !323
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !208
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.x) #30
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEED2B8nn180100Ev.exit2, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1044 ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4, label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !1045
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1046
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.af) #30
  br label %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1047 ; 4 uses
  %.not.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i5, label %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1048
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1049
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.an) #30
  br label %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEED2B8nn180100Ev.exit, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1050 ; 4 uses
  %.not.i.i6 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i6, label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1051
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1052
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.av) #30
  br label %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1053 ; 4 uses
  %.not.i.i7 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i7, label %_ZNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !1054
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1055
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bd) #30
  br label %_ZNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.h
  ret void
}

declare void @_ZN3jxl24JxlButteraugliComparatorC1ERKNS_17ButteraugliParamsERK15JxlCmsInterface(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

declare i32 @_ZN3jxl24JxlButteraugliComparator23SetLinearReferenceImageERKNS_6Image3IfEE(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #5

declare noundef float @_ZNK3jxl24JxlButteraugliComparator16GoodQualityScoreEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #5

declare noundef float @_ZNK3jxl24JxlButteraugliComparator15BadQualityScoreEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #5

declare i32 @_ZN3jxl24JxlButteraugliComparator11CompareWithERKNS_11ImageBundleEPNS_5PlaneIfEEPf(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(504), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @lroundf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #5 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #9 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #10 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #14 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { inlinehint mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #28 = { nounwind }
attributes #29 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #30 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #31 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #32 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #33 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !29}
!1 = distinct !{null, null, null}
!2 = distinct !{!2, !29}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !13, i64 0}
!15 = !{!"_ZTSN3jxl13AlignedMemoryE", !13, i64 0, !14, i64 8, !13, i64 16}
!16 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16, !15, i64 24, !12, i64 48}
!17 = !{!16, !12, i64 16}
!18 = !{!"_ZTSN3jxl5RectTImEE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!19 = !{!18, !12, i64 24}
!20 = !{!18, !12, i64 8}
!21 = !{!18, !12, i64 0}
!22 = !{!15, !13, i64 16}
!23 = !{!18, !12, i64 16}
!24 = !{!8, !8, i64 0}
!25 = !{!16, !9, i64 0}
!26 = !{!16, !9, i64 4}
!27 = !{!"float", !8, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!13, !13, i64 0}
!33 = !{!"p1 float", !13, i64 0}
!34 = !{!"_ZTSNSt3__122__compressed_pair_elemIPfLi0ELb0EEE", !33, i64 0}
!35 = !{!"_ZTSNSt3__117__compressed_pairIPfNS_9allocatorIfEEEE", !34, i64 0}
!36 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !33, i64 0, !33, i64 8, !35, i64 16}
!37 = !{!"bool", !8, i64 0}
!38 = !{!"_ZTSN3jxl9SpeedTierE", !8, i64 0}
!39 = !{!"_ZTSN3jxl14ColorTransformE", !8, i64 0}
!40 = !{!"_ZTSN3jxl8OverrideE", !8, i64 0}
!41 = !{!"_ZTS15JxlCmsInterface", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!42 = !{!"p1 int", !13, i64 0}
!43 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !42, i64 0}
!44 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !43, i64 0}
!45 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !42, i64 0, !42, i64 8, !44, i64 16}
!46 = !{!"_ZTSN3jxl9PredictorE", !8, i64 0}
!47 = !{!"_ZTSN3jxl14ModularOptions8TreeModeE", !8, i64 0}
!48 = !{!"_ZTSN3jxl14ModularOptions8TreeKindE", !8, i64 0}
!49 = !{!"_ZTSN3jxl15HistogramParams14ClusteringTypeE", !8, i64 0}
!50 = !{!"_ZTSN3jxl15HistogramParams16HybridUintMethodE", !8, i64 0}
!51 = !{!"_ZTSN3jxl15HistogramParams10LZ77MethodE", !8, i64 0}
!52 = !{!"_ZTSN3jxl15HistogramParams20ANSHistogramStrategyE", !8, i64 0}
!53 = !{!"p1 long", !13, i64 0}
!54 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !53, i64 0}
!55 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !54, i64 0}
!56 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !53, i64 0, !53, i64 8, !55, i64 16}
!57 = !{!"_ZTSN3jxl15HistogramParamsE", !49, i64 0, !50, i64 4, !51, i64 8, !52, i64 12, !56, i64 16, !12, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52}
!58 = !{!"_ZTSN3jxl14ModularOptionsE", !12, i64 0, !12, i64 8, !27, i64 16, !9, i64 20, !45, i64 24, !27, i64 48, !12, i64 56, !46, i64 64, !9, i64 68, !27, i64 72, !47, i64 76, !37, i64 80, !48, i64 84, !57, i64 88, !37, i64 144}
!59 = !{!"p1 _ZTSN3jxl20PropertyDecisionNodeE", !13, i64 0}
!60 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl20PropertyDecisionNodeELi0ELb0EEE", !59, i64 0}
!61 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEE", !60, i64 0}
!62 = !{!"_ZTSNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEE", !59, i64 0, !59, i64 8, !61, i64 16}
!63 = !{!"p1 _ZTSN3jxl15QuantizedSplineE", !13, i64 0}
!64 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15QuantizedSplineELi0ELb0EEE", !63, i64 0}
!65 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !64, i64 0}
!66 = !{!"_ZTSNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !63, i64 0, !63, i64 8, !65, i64 16}
!67 = !{!"p1 _ZTSN3jxl6Spline5PointE", !13, i64 0}
!68 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6Spline5PointELi0ELb0EEE", !67, i64 0}
!69 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !68, i64 0}
!70 = !{!"_ZTSNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !67, i64 0, !67, i64 8, !69, i64 16}
!71 = !{!"p1 _ZTSN3jxl13SplineSegmentE", !13, i64 0}
!72 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13SplineSegmentELi0ELb0EEE", !71, i64 0}
!73 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !72, i64 0}
!74 = !{!"_ZTSNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !71, i64 0, !71, i64 8, !73, i64 16}
!75 = !{!"_ZTSN3jxl7SplinesE", !9, i64 0, !66, i64 8, !70, i64 32, !74, i64 56, !56, i64 80, !56, i64 104}
!76 = !{!"p1 _ZTSN3jxl15ProgressiveModeE", !13, i64 0}
!77 = !{!"_ZTSN3jxl14CompressParamsE", !27, i64 0, !36, i64 8, !37, i64 32, !8, i64 36, !37, i64 48, !38, i64 52, !9, i64 56, !12, i64 64, !39, i64 72, !37, i64 76, !9, i64 80, !40, i64 84, !40, i64 85, !40, i64 86, !40, i64 87, !40, i64 88, !9, i64 92, !40, i64 96, !40, i64 97, !37, i64 98, !12, i64 104, !12, i64 112, !9, i64 120, !40, i64 124, !41, i64 128, !37, i64 192, !37, i64 193, !37, i64 194, !37, i64 195, !37, i64 196, !37, i64 197, !27, i64 200, !58, i64 208, !9, i64 360, !9, i64 364, !9, i64 368, !27, i64 372, !27, i64 376, !9, i64 380, !37, i64 384, !9, i64 388, !9, i64 392, !37, i64 396, !27, i64 400, !27, i64 404, !9, i64 408, !9, i64 412, !37, i64 416, !36, i64 424, !36, i64 448, !62, i64 472, !75, i64 496, !76, i64 624, !13, i64 632, !13, i64 640}
!78 = !{}
!79 = !{!9, !9, i64 0}
!80 = !{!12, !12, i64 0}
!81 = !{!"_ZTSN3jxl10StatusCodeE", !8, i64 0}
!82 = !{!"_ZTSN3jxl8StatusOrINS_11ImageBundleEEE", !8, i64 0, !81, i64 504}
!83 = !{!82, !81, i64 504}
!84 = !{!"p1 _ZTSN3jxl13CodecMetadataE", !13, i64 0}
!85 = !{!"_ZTSN3jxl15FrameDimensionsE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136}
!86 = !{!"_ZTSN3jxl5PlaneIhEE", !16, i64 0}
!87 = !{!"p1 omnipotent char", !13, i64 0}
!88 = !{!"_ZTSN3jxl15AcStrategyImageE", !86, i64 0, !87, i64 56, !12, i64 64}
!89 = !{!"p1 _ZTSN3jxl13QuantEncodingE", !13, i64 0}
!90 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13QuantEncodingELi0ELb0EEE", !89, i64 0}
!91 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !89, i64 0, !89, i64 8, !91, i64 16}
!93 = !{!"_ZTSN3jxl15DequantMatricesE", !9, i64 0, !15, i64 8, !33, i64 32, !33, i64 40, !8, i64 48, !8, i64 60, !8, i64 72, !92, i64 720}
!94 = !{!"p1 _ZTSN3jxl15DequantMatricesE", !13, i64 0}
!95 = !{!"_ZTSN3jxl9QuantizerE", !8, i64 0, !8, i64 16, !9, i64 32, !9, i64 36, !27, i64 40, !27, i64 44, !27, i64 48, !8, i64 52, !94, i64 64}
!96 = !{!"_ZTSN3jxl5PlaneIiEE", !16, i64 0}
!97 = !{!"_ZTSN3jxl5PlaneIaEE", !16, i64 0}
!98 = !{!"_ZTSN3jxl16ColorCorrelationE", !8, i64 0, !9, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !9, i64 32, !9, i64 36}
!99 = !{!"_ZTSN3jxl19ColorCorrelationMapE", !97, i64 0, !97, i64 56, !98, i64 112}
!100 = !{!"_ZTSNSt3__15arrayIfLm8EEE", !8, i64 0}
!101 = !{!"_ZTSN3jxl11NoiseParamsE", !100, i64 0}
!102 = !{!"p1 _ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !13, i64 0}
!103 = !{!"p1 _ZTSN3jxl13PatchPositionE", !13, i64 0}
!104 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchPositionELi0ELb0EEE", !103, i64 0}
!105 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !104, i64 0}
!106 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !103, i64 0, !103, i64 8, !105, i64 16}
!107 = !{!"p1 _ZTSN3jxl22PatchReferencePositionE", !13, i64 0}
!108 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl22PatchReferencePositionELi0ELb0EEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !108, i64 0}
!110 = !{!"_ZTSNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !107, i64 0, !107, i64 8, !109, i64 16}
!111 = !{!"p1 _ZTSN3jxl13PatchBlendingE", !13, i64 0}
!112 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchBlendingELi0ELb0EEE", !111, i64 0}
!113 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !112, i64 0}
!114 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !111, i64 0, !111, i64 8, !113, i64 16}
!115 = !{!"p1 _ZTSN3jxl15PatchDictionary13PatchTreeNodeE", !13, i64 0}
!116 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15PatchDictionary13PatchTreeNodeELi0ELb0EEE", !115, i64 0}
!117 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !116, i64 0}
!118 = !{!"_ZTSNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !115, i64 0, !115, i64 8, !117, i64 16}
!119 = !{!"p1 _ZTSNSt3__14pairImmEE", !13, i64 0}
!120 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairImmEELi0ELb0EEE", !119, i64 0}
!121 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairImmEENS_9allocatorIS2_EEEE", !120, i64 0}
!122 = !{!"_ZTSNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEEE", !119, i64 0, !119, i64 8, !121, i64 16}
!123 = !{!"_ZTSN3jxl15PatchDictionaryE", !14, i64 0, !102, i64 8, !106, i64 16, !110, i64 40, !114, i64 64, !12, i64 88, !118, i64 96, !56, i64 120, !122, i64 144, !122, i64 168}
!124 = !{!"_ZTSN3jxl13ImageFeaturesE", !101, i64 0, !123, i64 32, !75, i64 224}
!125 = !{!"_ZTSN3jxl6Image3IfEE", !8, i64 0}
!126 = !{!"p1 _ZTSN3jxl6Image3IfEE", !13, i64 0}
!127 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !87, i64 0}
!128 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !127, i64 0}
!129 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !87, i64 0, !87, i64 8, !128, i64 16}
!130 = !{!"_ZTSN3jxl11BlockCtxMapE", !8, i64 0, !45, i64 72, !129, i64 96, !12, i64 120, !12, i64 128}
!131 = !{!"_ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !8, i64 0}
!132 = !{!"_ZTSN3jxl17PassesSharedStateE", !14, i64 0, !84, i64 8, !85, i64 16, !88, i64 160, !93, i64 232, !95, i64 976, !96, i64 1048, !86, i64 1104, !99, i64 1160, !124, i64 1312, !12, i64 1664, !45, i64 1672, !86, i64 1696, !125, i64 1752, !126, i64 1920, !130, i64 1928, !8, i64 2064, !131, i64 2736, !12, i64 2800}
!133 = !{!"p1 _ZTSNSt3__110unique_ptrIN3jxl7ACImageENS_14default_deleteIS2_EEEE", !13, i64 0}
!134 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEELi0ELb0EEE", !133, i64 0}
!135 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEEE", !134, i64 0}
!136 = !{!"_ZTSNSt3__16vectorINS_10unique_ptrIN3jxl7ACImageENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEEE", !133, i64 0, !133, i64 8, !135, i64 16}
!137 = !{!"p1 _ZTSNSt3__110unique_ptrIN3jxl9BitWriterENS_14default_deleteIS2_EEEE", !13, i64 0}
!138 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10unique_ptrIN3jxl9BitWriterENS_14default_deleteIS3_EEEELi0ELb0EEE", !137, i64 0}
!139 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10unique_ptrIN3jxl9BitWriterENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEEE", !138, i64 0}
!140 = !{!"_ZTSNSt3__16vectorINS_10unique_ptrIN3jxl9BitWriterENS_14default_deleteIS3_EEEENS_9allocatorIS6_EEEE", !137, i64 0, !137, i64 8, !139, i64 16}
!141 = !{!"_ZTSN3jxl15ProgressiveModeE", !12, i64 0, !8, i64 8}
!142 = !{!"_ZTSN3jxl19ProgressiveSplitterE", !141, i64 0}
!143 = !{!"p1 _ZTSN3jxl18PassesEncoderState8PassDataE", !13, i64 0}
end_hunk_2
