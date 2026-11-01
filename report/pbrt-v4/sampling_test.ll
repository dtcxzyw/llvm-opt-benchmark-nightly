Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN23SummedArea_Randoms_Test8TestBodyEv:bb.a
  %i.cw = load i32, ptr %i.g, align 4, !tbaa !94
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %i.cx = sub nsw i32 %i.cw, %.sroa.2.0.extract.trunc.i.i.i
  %i.cy = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !93
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.cz = sub nsw i32 %i.cy, %.sroa.0.0.extract.trunc.i.i.i
  %i.da = mul nsw i32 %i.cx, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !95  ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull %i.cv, i64 noundef %i.dc, i64 noundef 4)
          to label %_ZN4pbrt7Array2DIfED2Ev.exit unwind label %bb.l, !inline_history !7

bb.l:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #31
  unreachable

_ZN4pbrt7Array2DIfED2Ev.exit:                     ; preds = %_ZN4pbrt15SummedAreaTableD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %.0.add = add nuw nsw i64 %.0.idx244, 8         ; 2 uses
  %.not = icmp eq i64 %.0.add, 48
  br i1 %.not, label %bb.b, label %bb.c

bb.m:                                             ; preds = %._crit_edge232
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4pbrt15SummedAreaTableD2Ev.exit86

.preheader131:                                    ; preds = %._crit_edge232, %bb.aw
  %.022242 = phi i32 [ %i.nx, %bb.aw ], [ 0, %._crit_edge232 ]
  %.sroa.0120.3241 = phi i64 [ %i.fa, %bb.aw ], [ %.sroa.0120.1.lcssa, %._crit_edge232 ]
  %i.dk = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !93
  %i.dl = load i32, ptr %1, align 8, !tbaa !93    ; 2 uses
  %i.dm = sub nsw i32 %i.dk, %i.dl                ; 5 uses
  %i.dn = sub i32 0, %i.dm
  %i.do = urem i32 %i.dn, %i.dm                   ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader131
  %i.dp = phi i64 [ %i.dr, %bb.n ], [ %.sroa.0120.3241, %.preheader131 ] ; 4 uses
  %i.dq = mul i64 %i.dp, 6364136223846793005
  %i.dr = add i64 %i.dq, -2720673578348880933     ; 2 uses
  %i.ds = lshr i64 %i.dp, 45
  %i.dt = lshr i64 %i.dp, 27
  %i.du = xor i64 %i.ds, %i.dt
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  %i.dw = lshr i64 %i.dp, 59
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = call noundef i32 @llvm.fshr.i32(i32 %i.dv, i32 %i.dv, i32 %i.dx) ; 2 uses
  %.not.i51 = icmp slt i32 %i.dy, %i.do
  br i1 %.not.i51, label %bb.n, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit52

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit52: ; preds = %bb.n
  %i.dz = load i32, ptr %i.g, align 4, !tbaa !94
  %i.ea = load i32, ptr %i.h, align 4, !tbaa !94  ; 2 uses
  %i.eb = sub nsw i32 %i.dz, %i.ea                ; 4 uses
  %i.ec = sub i32 0, %i.eb
  %i.ed = urem i32 %i.ec, %i.eb                   ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit52
  %i.ee = phi i64 [ %i.eg, %bb.o ], [ %i.dr, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit52 ] ; 4 uses
  %i.ef = mul i64 %i.ee, 6364136223846793005
  %i.eg = add i64 %i.ef, -2720673578348880933     ; 2 uses
  %i.eh = lshr i64 %i.ee, 45
  %i.ei = lshr i64 %i.ee, 27
  %i.ej = xor i64 %i.eh, %i.ei
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %i.el = lshr i64 %i.ee, 59
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = call noundef i32 @llvm.fshr.i32(i32 %i.ek, i32 %i.ek, i32 %i.em) ; 2 uses
  %.not.i54 = icmp slt i32 %i.en, %i.ed
  br i1 %.not.i54, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.o, %.preheader
  %i.eo = phi i64 [ %i.eq, %.preheader ], [ %i.eg, %bb.o ] ; 4 uses
  %i.ep = mul i64 %i.eo, 6364136223846793005
  %i.eq = add i64 %i.ep, -2720673578348880933     ; 2 uses
  %i.er = lshr i64 %i.eo, 45
  %i.es = lshr i64 %i.eo, 27
  %i.et = xor i64 %i.er, %i.es
  %i.eu = trunc i64 %i.et to i32                  ; 2 uses
  %i.ev = lshr i64 %i.eo, 59
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = call noundef i32 @llvm.fshr.i32(i32 %i.eu, i32 %i.eu, i32 %i.ew) ; 2 uses
  %.not.i57 = icmp slt i32 %i.ex, %i.do
  br i1 %.not.i57, label %.preheader, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit58

_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit58: ; preds = %.preheader, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit58
  %i.ey = phi i64 [ %i.fa, %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit58 ], [ %i.eq, %.preheader ] ; 4 uses
  %i.ez = mul i64 %i.ey, 6364136223846793005
  %i.fa = add i64 %i.ez, -2720673578348880933     ; 3 uses
  %i.fb = lshr i64 %i.ey, 45
  %i.fc = lshr i64 %i.ey, 27
  %i.fd = xor i64 %i.fb, %i.fc
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %i.ff = lshr i64 %i.ey, 59
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = call noundef i32 @llvm.fshr.i32(i32 %i.fe, i32 %i.fe, i32 %i.fg) ; 2 uses
  %.not.i60 = icmp slt i32 %i.fh, %i.ed
  br i1 %.not.i60, label %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit58, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt3RNG7UniformIiEENSt9enable_ifIXsr3stdE13is_integral_vIT_EES3_E4typeES3_.exit58
  %i.fi = insertelement <2 x i32> poison, i32 %i.dm, i64 0
  %i.fj = insertelement <2 x i32> %i.fi, i32 %i.eb, i64 1 ; 3 uses
  %i.fk = sitofp <2 x i32> %i.fj to <2 x float>   ; 2 uses
  %i.fl = insertelement <2 x i32> poison, i32 %i.dy, i64 0
  %i.fm = insertelement <2 x i32> %i.fl, i32 %i.en, i64 1
  %i.fn = srem <2 x i32> %i.fm, %i.fj             ; 3 uses
  %i.fo = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %i.fp = insertelement <2 x i32> %i.fo, i32 %i.fh, i64 1
  %i.fq = srem <2 x i32> %i.fp, %i.fj             ; 3 uses
  %i.fr = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.fq, <2 x i32> %i.fn) ; 4 uses
  %i.fs = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fn, <2 x i32> %i.fq) ; 3 uses
  %i.ft = sitofp <2 x i32> %i.fr to <2 x float>
  %i.fu = fdiv <2 x float> %i.ft, %i.fk           ; 5 uses
  %i.fv = sitofp <2 x i32> %i.fs to <2 x float>
  %i.fw = fdiv <2 x float> %i.fv, %i.fk           ; 5 uses
  %i.fx = extractelement <2 x float> %i.fu, i64 0
  %i.fy = extractelement <2 x float> %i.fw, i64 0
  %i.fz = fcmp olt <2 x float> %i.fw, %i.fu
  %i.ga = extractelement <2 x i1> %i.fz, i64 0
  %i.gb = select i1 %i.ga, float %i.fy, float %i.fx ; 2 uses
  %i.gc = extractelement <2 x float> %i.fu, i64 1 ; 2 uses
  %i.gd = extractelement <2 x float> %i.fw, i64 1 ; 2 uses
  %i.ge = fcmp olt float %i.gd, %i.gc
  %i.gf = select i1 %i.ge, float %i.gd, float %i.gc ; 2 uses
  %i.gg = fcmp olt <2 x float> %i.fu, %i.fw
  %i.gh = select <2 x i1> %i.gg, <2 x float> %i.fw, <2 x float> %i.fu ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.gi = extractelement <2 x i32> %i.fr, i64 0   ; 4 uses
  %i.gj = extractelement <2 x i32> %i.fs, i64 0   ; 2 uses
  %.not.i62 = icmp sge i32 %i.gi, %i.gj
  %i.gk = icmp eq <2 x i32> %i.fn, %i.fq
  %.not307308 = extractelement <2 x i1> %i.gk, i64 1
  %.not307 = or i1 %.not.i62, %.not307308
  br i1 %.not307, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit, label %_ZN4pbrt16Bounds2iIteratorppEv.exit.lr.ph

_ZN4pbrt16Bounds2iIteratorppEv.exit.lr.ph:        ; preds = %bb.p
  %i.gl = extractelement <2 x i32> %i.fr, i64 1
  %.sroa.09.0.insert.insert.i.i = bitcast <2 x i32> %i.fr to i64
  %i.gm = load ptr, ptr %i.f, align 8, !tbaa !92
  %.sroa.094.0.insert.ext100 = zext i32 %i.gi to i64
  %invariant.op = or disjoint i64 %.sroa.094.0.insert.ext100, 4294967296
  %i.gn = extractelement <2 x i32> %i.fs, i64 1
  br label %_ZN4pbrt16Bounds2iIteratorppEv.exit

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit, %bb.p
  %i.go = phi double [ 0.000000e+00, %bb.p ], [ %i.le, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.gp = mul nsw i32 %i.eb, %i.dm
  %i.gq = sitofp i32 %i.gp to double
  %i.gr = fdiv double %i.go, %i.gq
  store double %i.gr, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.gs = load i32, ptr %i.j, align 4, !tbaa !94  ; 4 uses
  %i.gt = load <2 x i32>, ptr %i.i, align 8, !tbaa !20
  %i.gu = load <2 x i32>, ptr %2, align 8, !tbaa !20 ; 9 uses
  %i.gv = sub nsw <2 x i32> %i.gt, %i.gu          ; 6 uses
  %i.gw = sitofp <2 x i32> %i.gv to <2 x float>
  %i.gx = fmul <2 x float> %i.gh, %i.gw           ; 3 uses
  %i.gy = fptosi <2 x float> %i.gx to <2 x i32>   ; 8 uses
  %i.gz = icmp eq <2 x i32> %i.gy, zeroinitializer ; 2 uses
  %i.ha = extractelement <2 x i1> %i.gz, i64 0    ; 2 uses
  %i.hb = extractelement <2 x i1> %i.gz, i64 1    ; 2 uses
  %or.cond.i.i = or i1 %i.ha, %i.hb
  br i1 %or.cond.i.i, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit
  %i.hc = extractelement <2 x i32> %i.gy, i64 0
  %i.hd = extractelement <2 x i32> %i.gv, i64 0   ; 2 uses
  %i.he = call i32 @llvm.smin.i32(i32 %i.hd, i32 %i.hc)
  %i.hf = extractelement <2 x i32> %i.gy, i64 1
  %i.hg = add nsw i32 %i.hf, -1
  %i.hh = extractelement <2 x i32> %i.gu, i64 1   ; 2 uses
  %i.hi = xor i32 %i.hh, -1
  %i.hj = add i32 %i.gs, %i.hi
  %.sroa.speculated.i.i93 = call i32 @llvm.smin.i32(i32 %i.hj, i32 %i.hg)
  %i.hk = extractelement <2 x i32> %i.gu, i64 0
  %i.hl = xor i32 %i.hk, -1
  %i.hm = add i32 %i.he, %i.hl
  %i.hn = sub nsw i32 %.sroa.speculated.i.i93, %i.hh
  %i.ho = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.hp = mul nsw i32 %i.hn, %i.hd
  %i.hq = add nsw i32 %i.hm, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !58
  %i.hu = fptrunc double %i.ht to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i:   ; preds = %bb.q, %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit
  %.0.i.i = phi float [ %i.hu, %bb.q ], [ 0.000000e+00, %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit ]
  %i.hv = add nsw <2 x i32> %i.gy, <i32 1, i32 0> ; 2 uses
  %i.hw = extractelement <2 x i32> %i.hv, i64 0   ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 0                    ; 2 uses
  %or.cond.i28.i = or i1 %i.hx, %i.hb
  br i1 %or.cond.i28.i, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i
  %i.hy = extractelement <2 x i32> %i.gv, i64 0   ; 2 uses
  %i.hz = call i32 @llvm.smin.i32(i32 %i.hy, i32 %i.hw)
  %i.ia = extractelement <2 x i32> %i.gy, i64 1
  %i.ib = add nsw i32 %i.ia, -1
  %i.ic = extractelement <2 x i32> %i.gu, i64 1   ; 2 uses
  %i.id = xor i32 %i.ic, -1
  %i.ie = add i32 %i.gs, %i.id
  %.sroa.speculated.i29.i = call i32 @llvm.smin.i32(i32 %i.ie, i32 %i.ib)
  %i.if = extractelement <2 x i32> %i.gu, i64 0
  %i.ig = xor i32 %i.if, -1
  %i.ih = add i32 %i.hz, %i.ig
  %i.ii = sub nsw i32 %.sroa.speculated.i29.i, %i.ic
  %i.ij = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.ik = mul nsw i32 %i.ii, %i.hy
  %i.il = add nsw i32 %i.ih, %i.ik
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.im
  %i.io = load double, ptr %i.in, align 8, !tbaa !58
  %i.ip = fptrunc double %i.io to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i: ; preds = %bb.r, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i
  %.0.i30.i = phi float [ %i.ip, %bb.r ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit.i ]
  %i.iq = extractelement <2 x i32> %i.gy, i64 1   ; 2 uses
  %i.ir = icmp eq i32 %i.iq, -1                   ; 2 uses
  %or.cond.i32.i = or i1 %i.ha, %i.ir
  br i1 %or.cond.i32.i, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i, label %bb.s

bb.s:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i
  %i.is = extractelement <2 x i32> %i.gy, i64 0
  %i.it = extractelement <2 x i32> %i.gv, i64 0   ; 2 uses
  %i.iu = call i32 @llvm.smin.i32(i32 %i.it, i32 %i.is)
  %i.iv = extractelement <2 x i32> %i.gu, i64 1   ; 2 uses
  %i.iw = xor i32 %i.iv, -1
  %i.ix = add i32 %i.gs, %i.iw
  %.sroa.speculated.i33.i = call i32 @llvm.smin.i32(i32 %i.ix, i32 %i.iq)
  %i.iy = extractelement <2 x i32> %i.gu, i64 0
  %i.iz = xor i32 %i.iy, -1
  %i.ja = add i32 %i.iu, %i.iz
  %i.jb = sub nsw i32 %.sroa.speculated.i33.i, %i.iv
  %i.jc = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.jd = mul nsw i32 %i.jb, %i.it
  %i.je = add nsw i32 %i.ja, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !58
  %i.ji = fptrunc double %i.jh to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i: ; preds = %bb.s, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i
  %.0.i34.i = phi float [ %i.ji, %bb.s ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31.i ]
  %or.cond.i36.i = or i1 %i.hx, %i.ir
  br i1 %or.cond.i36.i, label %.noexc, label %bb.t

bb.t:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i
  %i.jj = extractelement <2 x i32> %i.gu, i64 1
  %i.jk = xor i32 %i.jj, -1
  %i.jl = add i32 %i.gs, %i.jk
  %i.jm = insertelement <2 x i32> %i.gv, i32 %i.jl, i64 1
  %i.jn = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jm, <2 x i32> %i.hv) ; 2 uses
  %i.jo = xor <2 x i32> %i.gu, <i32 -1, i32 0>    ; 2 uses
  %i.jp = add <2 x i32> %i.jn, %i.jo
  %i.jq = sub nsw <2 x i32> %i.jn, %i.jo
  %i.jr = load ptr, ptr %i.k, align 8, !tbaa !119
  %shift = shufflevector <2 x i32> %i.jq, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.gv
  %foldExtExtBinop350 = add nsw <2 x i32> %i.jp, %foldExtExtBinop
  %i.js = extractelement <2 x i32> %foldExtExtBinop350, i64 0
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !58
  %i.jw = fptrunc double %i.jv to float
  br label %.noexc

.noexc:                                           ; preds = %bb.t, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i
  %.0.i38.i = phi float [ %i.jw, %bb.t ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35.i ]
  %i.jx = extractelement <2 x float> %i.gh, i64 1
  %i.jy = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.gb, float noundef %i.jx)
          to label %.noexc66 unwind label %bb.x

.noexc66:                                         ; preds = %.noexc
  %i.jz = sitofp <2 x i32> %i.gy to <2 x float>   ; 2 uses
  %foldExtExtBinop352 = fsub <2 x float> %i.gx, %i.jz
  %i.ka = extractelement <2 x float> %foldExtExtBinop352, i64 0 ; 3 uses
  %foldExtExtBinop354 = fsub <2 x float> %i.gx, %i.jz
  %i.kb = extractelement <2 x float> %foldExtExtBinop354, i64 1 ; 3 uses
  %i.kc = fsub float 1.000000e+00, %i.kb          ; 2 uses
  %i.kd = fmul float %i.ka, %i.kc
  %i.ke = fmul float %i.kd, %.0.i30.i
  %i.kf = fsub float 1.000000e+00, %i.ka          ; 2 uses
  %i.kg = fmul float %i.kf, %i.kc
  %i.kh = fmul float %i.kg, %.0.i.i
  %i.ki = fmul float %i.kf, %i.kb
  %i.kj = fmul float %i.ki, %.0.i34.i
  %i.kk = fadd float %i.kh, %i.kj
  %i.kl = fadd float %i.ke, %i.kk
  %i.km = fmul float %i.ka, %i.kb
  %i.kn = fmul float %i.km, %.0.i38.i
  %i.ko = fadd float %i.kl, %i.kn
  %i.kp = fpext float %i.ko to double
  %i.kq = fpext float %i.jy to double
  %i.kr = fsub double %i.kp, %i.kq
  %i.ks = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.gb, float noundef %i.gf)
          to label %.noexc67 unwind label %bb.x

.noexc67:                                         ; preds = %.noexc66
  %i.kt = extractelement <2 x float> %i.gh, i64 0
  %i.ku = invoke noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.kt, float noundef %i.gf)
          to label %bb.u unwind label %bb.x

_ZN4pbrt16Bounds2iIteratorppEv.exit:              ; preds = %_ZN4pbrt16Bounds2iIteratorppEv.exit.lr.ph, %_ZN4pbrt16Bounds2iIteratorppEv.exit
  %.sroa.094.4.extract.trunc240 = phi i32 [ %i.gl, %_ZN4pbrt16Bounds2iIteratorppEv.exit.lr.ph ], [ %.sroa.094.4.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %.sroa.094.0.extract.trunc239 = phi i32 [ %i.gi, %_ZN4pbrt16Bounds2iIteratorppEv.exit.lr.ph ], [ %.sroa.094.0.extract.trunc, %_ZN4pbrt16Bounds2iIteratorppEv.exit ] ; 2 uses
  %.sroa.094.0238 = phi i64 [ %.sroa.09.0.insert.insert.i.i, %_ZN4pbrt16Bounds2iIteratorppEv.exit.lr.ph ], [ %.sroa.094.1, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.kv = phi double [ 0.000000e+00, %_ZN4pbrt16Bounds2iIteratorppEv.exit.lr.ph ], [ %i.le, %_ZN4pbrt16Bounds2iIteratorppEv.exit ]
  %i.kw = sub i32 %.sroa.094.0.extract.trunc239, %i.dl
  %i.kx = sub nsw i32 %.sroa.094.4.extract.trunc240, %i.ea
  %i.ky = mul nsw i32 %i.kx, %i.dm
  %i.kz = add nsw i32 %i.kw, %i.ky
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !22
  %i.ld = fpext float %i.lc to double
  %i.le = fadd double %i.kv, %i.ld                ; 2 uses
  %i.lf = add nsw i32 %.sroa.094.0.extract.trunc239, 1 ; 2 uses
  %.sroa.094.0.insert.ext = zext i32 %i.lf to i64
  %.sroa.094.0.insert.mask = and i64 %.sroa.094.0238, -4294967296 ; 2 uses
  %.sroa.094.0.insert.insert = or disjoint i64 %.sroa.094.0.insert.mask, %.sroa.094.0.insert.ext
  %i.lg = icmp eq i32 %i.lf, %i.gj
  %.sroa.094.4.insert.insert.reass = add i64 %.sroa.094.0.insert.mask, %invariant.op
  %.sroa.094.1 = select i1 %i.lg, i64 %.sroa.094.4.insert.insert.reass, i64 %.sroa.094.0.insert.insert ; 3 uses
  %.sroa.094.0.extract.trunc = trunc i64 %.sroa.094.1 to i32 ; 2 uses
  %.not.i.i = icmp ne i32 %i.gi, %.sroa.094.0.extract.trunc
  %.sroa.094.4.extract.shift = lshr i64 %.sroa.094.1, 32
  %.sroa.094.4.extract.trunc = trunc nuw i64 %.sroa.094.4.extract.shift to i32 ; 2 uses
  %i.lh = icmp ne i32 %i.gn, %.sroa.094.4.extract.trunc
  %i.li = select i1 %.not.i.i, i1 true, i1 %i.lh
  br i1 %i.li, label %_ZN4pbrt16Bounds2iIteratorppEv.exit, label %_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit

bb.u:                                             ; preds = %.noexc67
  %i.lj = fpext float %i.ks to double
  %i.lk = fpext float %i.ku to double
  %i.ll = fsub double %i.lj, %i.lk
  %i.lm = fadd double %i.kr, %i.ll
  %i.ln = load <2 x i32>, ptr %i.i, align 8, !tbaa !20
  %i.lo = load <2 x i32>, ptr %2, align 8, !tbaa !20
  %i.lp = sub nsw <2 x i32> %i.ln, %i.lo          ; 2 uses
  %shift356 = shufflevector <2 x i32> %i.lp, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop357 = mul nsw <2 x i32> %shift356, %i.lp
  %i.lq = extractelement <2 x i32> %foldExtExtBinop357, i64 0
  %i.lr = sitofp i32 %i.lq to double
  %i.ls = fdiv double %i.lm, %i.lr                ; 2 uses
  %i.lt = fptrunc double %i.ls to float
  %i.lu = fcmp olt double %i.ls, f0xB690000000000000
  %i.lv = fpext float %i.lt to double
  %i.lw = select i1 %i.lu, double 0.000000e+00, double %i.lv ; 3 uses
  store double %i.lw, ptr %i.b, align 8, !tbaa !58
  %i.lx = load double, ptr %i.a, align 8, !tbaa !58 ; 3 uses
  %i.ly = fcmp une double %i.lx, %i.lw
  br i1 %i.ly, label %bb.v, label %bb.aw

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.lz = fsub double %i.lx, %i.lw
  %i.ma = fdiv double %i.lz, %i.lx
  %i.mb = call noundef double @llvm.fabs.f64(double %i.ma)
  store double %i.mb, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store float 1.000000e-03, ptr %i.d, align 4, !tbaa !22
  invoke void @_ZN7testing8internal11CmpHelperLTIdfEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.351, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.mc = load i8, ptr %3, align 8, !tbaa !28, !range !29, !noundef !30
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.aq, label %bb.z

bb.x:                                             ; preds = %.noexc67, %.noexc66, %.noexc
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.y:                                             ; preds = %bb.v
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.av

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.l, ptr %5, align 8, !tbaa !120, !alias.scope !324
  store i64 0, ptr %i.m, align 8, !tbaa !60, !alias.scope !324
  store i8 0, ptr %i.l, align 8, !tbaa !42, !alias.scope !324
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRdJS2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.352, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4pbrt12StringPrintfIJRdS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mh = load ptr, ptr %5, align 8, !tbaa !36, !alias.scope !324 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.l
  br i1 %i.mi, label %.body, label %.body.sink.split

_ZN4pbrt12StringPrintfIJRdS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.aa
  %i.mj = load ptr, ptr %4, align 8, !tbaa !39
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %5, align 8, !tbaa !36
  %i.mm = load i64, ptr %i.m, align 8, !tbaa !60
  %i.mn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mk, ptr noundef %i.ml, i64 noundef %i.mm)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ak ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN4pbrt12StringPrintfIJRdS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.mo = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i75, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ac, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.mq = phi ptr [ %i.mp, %bb.ac ], [ @.str.360, %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 1280, ptr noundef %i.mq)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
end_hunk_0
