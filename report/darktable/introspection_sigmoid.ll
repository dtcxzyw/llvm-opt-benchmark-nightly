Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_sigmoid?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@process_loglogistic_per_channel:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bo, align 32, !tbaa !21
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bp, align 32, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.br, i8 0, i64 16, i1 false), !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !tbaa !21
  br label %_calculate_adjusted_primaries.exit

_calculate_adjusted_primaries.exit:               ; preds = %bb.e, %.split.us.3.i
  %.0.i88 = phi ptr [ %i.ah, %bb.e ], [ %.0.i89, %.split.us.3.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 44 ; 2 uses
  %i.bu = load float, ptr %i.bs, align 4, !tbaa !21
  %i.bv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bu
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !21
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.bv, float noundef %i.bw, i64 noundef 0, ptr noundef nonnull %i.b) #21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !21
  %i.bz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.bz, float noundef %i.cb, i64 noundef 1, ptr noundef nonnull %i.cc) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !21
  %i.cf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.cf, float noundef %i.ch, i64 noundef 2, ptr noundef nonnull %i.ci) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i88, i64 1048 ; 2 uses
  call void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.c) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i88, i64 960 ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %.0.i88, i64 976 ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %.0.i88, i64 992 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.cn = load <4 x float>, ptr %i.ck, align 4, !tbaa !21 ; 3 uses
  %i.co = load <4 x float>, ptr %gep.1.i, align 4, !tbaa !21 ; 3 uses
  %i.cp = load <4 x float>, ptr %gep.2.i, align 4, !tbaa !21 ; 3 uses
  %i.cq = load <5 x float>, ptr %i.c, align 64, !tbaa !21 ; 4 uses
  %i.cr = load <2 x float>, ptr %i.cl, align 4, !tbaa !21
  %i.cs = shufflevector <5 x float> %i.cq, <5 x float> poison, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.ct = fmul reassoc nsz arcp contract afn <4 x float> %i.cs, %i.cn
  %i.cu = shufflevector <2 x float> %i.cr, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cv = shufflevector <5 x float> %i.cq, <5 x float> %i.cu, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn <4 x float> %i.cv, %i.co
  %i.cx = fadd reassoc nsz arcp contract afn <4 x float> %i.cw, %i.ct
  %i.cy = shufflevector <5 x float> %i.cq, <5 x float> %i.cu, <4 x i32> <i32 2, i32 6, i32 2, i32 6> ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn <4 x float> %i.cy, %i.cp
  %i.da = shufflevector <5 x float> %i.cq, <5 x float> poison, <4 x i32> <i32 4, i32 0, i32 4, i32 0>
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %i.cn, %i.da
  %i.dc = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dd = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn <4 x float> %i.dd, %i.db
  %i.df = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dg = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, %i.df
  %i.dh = fadd reassoc nsz arcp contract afn <4 x float> %i.de, %i.dg
  %i.di = fadd reassoc nsz arcp contract afn <4 x float> %i.cx, %i.cz
  %i.dj = load <3 x float>, ptr %i.cm, align 32, !tbaa !21 ; 3 uses
  %i.dk = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dl = fmul reassoc nsz arcp contract afn <4 x float> %i.dk, %i.cn
  %i.dm = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dm, %i.co
  %i.do = fadd reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dl
  %i.dp = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %i.dp, %i.cp
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !48
  %i.du = load float, ptr %i.bs, align 4, !tbaa !21
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.dt
  %i.dw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dv
  %i.dx = load float, ptr %i.bt, align 4, !tbaa !21
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.dw, float noundef %i.dx, i64 noundef 0, ptr noundef nonnull %i.b) #21
  %i.dy = load float, ptr %i.ds, align 4, !tbaa !48
  %i.dz = load float, ptr %i.bx, align 4, !tbaa !21
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.dy
  %i.eb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ea
  %i.ec = load float, ptr %i.ca, align 4, !tbaa !21
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.eb, float noundef %i.ec, i64 noundef 1, ptr noundef nonnull %i.cc) #21
  %i.ed = load float, ptr %i.ds, align 4, !tbaa !48
  %i.ee = load float, ptr %i.cd, align 4, !tbaa !21
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.ed
  %i.eg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ef
  %i.eh = load float, ptr %i.cg, align 4, !tbaa !21
  call void @dt_rotate_and_scale_primary(ptr noundef %.0.i88, float noundef %i.eg, float noundef %i.eh, i64 noundef 2, ptr noundef nonnull %i.ci) #21
  call void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.ei = load <4 x float>, ptr %i.ck, align 4, !tbaa !21 ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ek = load <4 x float>, ptr %gep.1.i, align 4, !tbaa !21 ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.em = load <4 x float>, ptr %gep.2.i, align 4, !tbaa !21 ; 2 uses
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eo = load <5 x float>, ptr %i.c, align 64, !tbaa !21 ; 3 uses
  %i.ep = load <2 x float>, ptr %i.cl, align 4, !tbaa !21
  %i.eq = shufflevector <5 x float> %i.eo, <5 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.eq, %i.ej
  %i.es = shufflevector <2 x float> %i.ep, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.et = shufflevector <5 x float> %i.eo, <5 x float> %i.es, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.el
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %i.eu, %i.er
  %i.ew = shufflevector <5 x float> %i.eo, <5 x float> %i.es, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.ex = fmul reassoc nsz arcp contract afn <8 x float> %i.ew, %i.en
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %i.ev, %i.ex
  store <8 x float> %i.ey, ptr %i.d, align 64, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fa = load <3 x float>, ptr %i.cm, align 32, !tbaa !21 ; 3 uses
  %i.fb = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fc = fmul reassoc nsz arcp contract afn <4 x float> %i.fb, %i.ei
  %i.fd = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fe = fmul reassoc nsz arcp contract afn <4 x float> %i.fd, %i.ek
  %i.ff = fadd reassoc nsz arcp contract afn <4 x float> %i.fe, %i.fc
  %i.fg = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fh = fmul reassoc nsz arcp contract afn <4 x float> %i.fg, %i.em
  %i.fi = fadd reassoc nsz arcp contract afn <4 x float> %i.ff, %i.fh
  store <4 x float> %i.fi, ptr %i.ez, align 32, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.fj = call i32 @mat3SSEinv(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #21 ; 0 uses
  %gep.1.i54.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %gep.2.i55.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fm = load <4 x float>, ptr %i.a, align 64, !tbaa !21 ; 3 uses
  %i.fn = load <4 x float>, ptr %gep.1.i54.i, align 16, !tbaa !21 ; 3 uses
  %i.fo = load <4 x float>, ptr %gep.2.i55.i, align 32, !tbaa !21 ; 3 uses
  %i.fp = load <5 x float>, ptr %i.e, align 64, !tbaa !21 ; 4 uses
  %i.fq = load <2 x float>, ptr %i.fk, align 4, !tbaa !21
  %i.fr = shufflevector <5 x float> %i.fp, <5 x float> poison, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fr, %i.fm
  %i.ft = shufflevector <2 x float> %i.fq, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.fu = shufflevector <5 x float> %i.fp, <5 x float> %i.ft, <4 x i32> <i32 1, i32 5, i32 1, i32 5> ; 2 uses
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fn
  %i.fw = fadd reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fs
  %i.fx = shufflevector <5 x float> %i.fp, <5 x float> %i.ft, <4 x i32> <i32 2, i32 6, i32 2, i32 6> ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn <4 x float> %i.fx, %i.fo
  %i.fz = shufflevector <5 x float> %i.fp, <5 x float> poison, <4 x i32> <i32 4, i32 0, i32 4, i32 0>
  %i.ga = fmul reassoc nsz arcp contract afn <4 x float> %i.fm, %i.fz
  %i.gb = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.gc = fmul reassoc nsz arcp contract afn <4 x float> %i.fn, %i.gb
  %i.gd = fadd reassoc nsz arcp contract afn <4 x float> %i.gc, %i.ga
  %i.ge = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.gf = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.ge
  %i.gg = fadd reassoc nsz arcp contract afn <4 x float> %i.gd, %i.gf
  %i.gh = fadd reassoc nsz arcp contract afn <4 x float> %i.fw, %i.fy
  %i.gi = load <3 x float>, ptr %i.fl, align 32, !tbaa !21 ; 3 uses
  %i.gj = shufflevector <3 x float> %i.gi, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul reassoc nsz arcp contract afn <4 x float> %i.gj, %i.fm
  %i.gl = shufflevector <3 x float> %i.gi, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gm = fmul reassoc nsz arcp contract afn <4 x float> %i.gl, %i.fn
  %i.gn = fadd reassoc nsz arcp contract afn <4 x float> %i.gm, %i.gk
  %i.go = shufflevector <3 x float> %i.gi, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %i.go, %i.fo
  %i.gq = fadd reassoc nsz arcp contract afn <4 x float> %i.gn, %i.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gr = shl nsw i64 %i.n, 2
  %i.gs = mul i64 %i.gr, %i.q                     ; 2 uses
  %.not = icmp eq i64 %i.gs, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_calculate_adjusted_primaries.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.gv = load <2 x float>, ptr %i.f, align 64, !tbaa !21
  %i.gw = load <2 x float>, ptr %i.gt, align 16, !tbaa !21
  %i.gx = load <2 x float>, ptr %i.gu, align 32, !tbaa !21
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !21
  %i.he = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hg = insertelement <4 x float> poison, float %i.v, i64 0
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hi = insertelement <4 x float> poison, float %i.x, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = insertelement <4 x float> poison, float %i.t, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hm = insertelement <4 x float> poison, float %i.z, i64 0
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ho = insertelement <4 x float> poison, float %i.r, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_preserve_hue_and_energy.exit, %_calculate_adjusted_primaries.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  ret void

bb.f:                                             ; preds = %.lr.ph, %_preserve_hue_and_energy.exit
  %.03897 = phi i64 [ 0, %.lr.ph ], [ %i.my, %_preserve_hue_and_energy.exit ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03897 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %6 = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %7 = load float, ptr %i.hr, align 4, !tbaa !21  ; 2 uses
  %8 = load float, ptr %i.hq, align 4, !tbaa !21  ; 2 uses
  %i.hs = load float, ptr %6, align 4, !tbaa !21  ; 2 uses
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %i.ht = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul reassoc nsz arcp contract afn <2 x float> %i.gv, %i.ht
  %10 = insertelement <2 x float> poison, float %i.hs, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = fmul reassoc nsz arcp contract afn <2 x float> %i.gw, %11
  %i.hw = fadd reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hu
  %12 = insertelement <2 x float> poison, float %7, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul reassoc nsz arcp contract afn <2 x float> %i.gx, %13
  %15 = fadd reassoc nsz arcp contract afn <2 x float> %i.hw, %14 ; 3 uses
  %i.hx = fmul reassoc nsz arcp contract afn float %i.gz, %8
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hb, %i.hs
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, %i.hx
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hd, %7
  %i.ib = fadd reassoc nsz arcp contract afn float %i.hz, %i.ia ; 3 uses
  %i.ic = extractelement <2 x float> %15, i64 0   ; 2 uses
  %i.id = extractelement <2 x float> %15, i64 1   ; 2 uses
  %i.ie = fadd reassoc nsz arcp contract afn float %i.id, %i.ic
  %i.if = fadd reassoc nsz arcp contract afn float %i.ie, %i.ib
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, f0x3EAAAAAB
  %i.ih = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ig, float 0.000000e+00) ; 5 uses
  %i.ii = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ic, float %i.id)
  %i.ij = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ii, float %i.ib) ; 2 uses
  %i.ik = fcmp reassoc nsz arcp contract afn olt float %i.ij, 0.000000e+00
  %i.il = fneg reassoc nsz arcp contract afn float %i.ih
  %i.im = fsub reassoc nnan nsz arcp contract afn float %i.ij, %i.ih
  %i.in = fdiv reassoc nsz arcp contract afn float %i.il, %i.im
  %i.io = select reassoc nsz arcp contract afn i1 %i.ik, float %i.in, float 1.000000e+00 ; 2 uses
  %i.ip = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ir = fsub reassoc nsz arcp contract afn <2 x float> %15, %i.iq
  %i.is = insertelement <2 x float> poison, float %i.io, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = fmul reassoc nsz arcp contract afn <2 x float> %i.it, %i.ir
  %i.iv = fadd reassoc nsz arcp contract afn <2 x float> %i.iu, %i.iq ; 2 uses
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ix = fsub reassoc nsz arcp contract afn float %i.ib, %i.ih
  %i.iy = fmul reassoc nsz arcp contract afn float %i.io, %i.ix
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iy, %i.ih
  %i.ja = shufflevector <2 x float> %i.iv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.jb = fmul reassoc nsz arcp contract afn <4 x float> %i.ja, %i.dh
  %i.jc = fmul reassoc nsz arcp contract afn <4 x float> %i.iw, %i.di
  %i.jd = fadd reassoc nsz arcp contract afn <4 x float> %i.jc, %i.jb
  %i.je = insertelement <4 x float> poison, float %i.iz, i64 0
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jg = fmul reassoc nsz arcp contract afn <4 x float> %i.jf, %i.dr
  %i.jh = fadd reassoc nsz arcp contract afn <4 x float> %i.jd, %i.jg ; 6 uses
  store <4 x float> %i.jh, ptr %i.h, align 16, !tbaa !21
  %i.ji = extractelement <4 x float> %i.jh, i64 0 ; 3 uses
  %i.jj = extractelement <4 x float> %i.jh, i64 1 ; 4 uses
  %i.jk = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.jh, <4 x float> zeroinitializer)
  %i.jl = fadd reassoc nsz arcp contract afn <4 x float> %i.jk, %i.hh
  %i.jm = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.jl, <4 x float> %i.hj) ; 2 uses
  %i.jn = fadd reassoc nsz arcp contract afn <4 x float> %i.jm, %i.hl
  %i.jo = fdiv reassoc nsz arcp contract afn <4 x float> %i.jm, %i.jn
  %i.jp = call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.jo, <4 x float> %i.hn)
  %i.jq = fmul reassoc nsz arcp contract afn <4 x float> %i.jp, %i.hp ; 2 uses
  %i.jr = fcmp ord <4 x float> %i.jq, zeroinitializer
  %i.js = select <4 x i1> %i.jr, <4 x float> %i.jq, <4 x float> %i.hp ; 2 uses
  store <4 x float> %i.js, ptr %i.g, align 16, !tbaa !21
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03897 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.ju = fcmp reassoc nsz arcp contract afn ult float %i.ji, %i.jj
  br i1 %i.ju, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.jv = extractelement <4 x float> %i.jh, i64 2 ; 3 uses
  %i.jw = fcmp reassoc nsz arcp contract afn ogt float %i.jj, %i.jv
  br i1 %i.jw, label %_pixel_channel_order.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jx = fcmp reassoc nsz arcp contract afn ogt float %i.jv, %i.ji
  br i1 %i.jx, label %_pixel_channel_order.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.jy = fcmp reassoc nsz arcp contract afn ogt float %i.jv, %i.jj ; 2 uses
  %spec.select = select i1 %i.jy, i64 2, i64 1
  %spec.select90 = select i1 %i.jy, i64 1, i64 2
  br label %_pixel_channel_order.exit

bb.j:                                             ; preds = %bb.f
  %i.jz = extractelement <4 x float> %i.jh, i64 2 ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn ult float %i.ji, %i.jz
  br i1 %i.ka, label %bb.k, label %_pixel_channel_order.exit

bb.k:                                             ; preds = %bb.j
  %i.kb = fcmp reassoc nsz arcp contract afn ogt float %i.jz, %i.jj ; 2 uses
  %spec.select91 = select i1 %i.kb, i64 2, i64 1
  %spec.select92 = select i1 %i.kb, i64 1, i64 2
  br label %_pixel_channel_order.exit

_pixel_channel_order.exit:                        ; preds = %bb.k, %bb.i, %bb.j, %bb.h, %bb.g
  %.sroa.11.0 = phi i64 [ 1, %bb.j ], [ 2, %bb.h ], [ 0, %bb.i ], [ %spec.select91, %bb.k ], [ 0, %bb.g ] ; 3 uses
  %.sroa.4.0 = phi i64 [ 0, %bb.j ], [ 0, %bb.h ], [ %spec.select, %bb.i ], [ %spec.select92, %bb.k ], [ 1, %bb.g ] ; 3 uses
  %.sink.i = phi i64 [ 2, %bb.j ], [ 1, %bb.h ], [ %spec.select90, %bb.i ], [ 0, %bb.k ], [ 2, %bb.g ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.11.0
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !21
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sink.i
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !21 ; 4 uses
  %i.kg = fsub reassoc nsz arcp contract afn float %i.kd, %i.kf ; 2 uses
  %i.kh = fcmp reassoc nsz arcp contract afn une float %i.kg, 0.000000e+00
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.4.0
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !21 ; 2 uses
  %i.kk = fsub reassoc nsz arcp contract afn float %i.kj, %i.kf
  %i.kl = fdiv reassoc nsz arcp contract afn float %i.kk, %i.kg
  %i.km = select reassoc nsz arcp contract afn i1 %i.kh, float %i.kl, float 0.000000e+00 ; 5 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sink.i
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !21 ; 7 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.11.0
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !21 ; 5 uses
  %i.kr = fsub reassoc nsz arcp contract afn float %i.kq, %i.ko
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kr, %i.km
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, %i.ko
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.4.0
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !21 ; 2 uses
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, %i.he ; 3 uses
  %i.kx = fmul reassoc nsz arcp contract afn float %i.kt, %i.ab
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kx, %i.kw ; 2 uses
  %i.kz = shufflevector <4 x float> %i.js, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.la = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v3f32(float 0.000000e+00, <3 x float> %i.kz)
  %i.lb = fadd reassoc nsz arcp contract afn float %i.kq, %i.ko
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.ky ; 2 uses
  %i.ld = fadd reassoc nsz arcp contract afn float %i.kj, %i.kf ; 2 uses
  %i.le = fcmp reassoc nsz arcp contract afn une float %i.ld, 0.000000e+00
  %i.lf = fmul reassoc nsz arcp contract afn float %i.kf, 2.000000e+00
  %i.lg = fdiv reassoc nsz arcp contract afn float %i.lf, %i.ld
  %i.lh = select reassoc nsz arcp contract afn i1 %i.le, float %i.lg, float 0.000000e+00
  %i.li = fsub reassoc nsz arcp contract afn float %i.la, %i.lc
  %i.lj = fmul reassoc nsz arcp contract afn float %i.li, %i.lh
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, %i.lc ; 3 uses
  %i.ll = fcmp reassoc nsz arcp contract afn ugt float %i.ky, %i.kv
  br i1 %i.ll, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_pixel_channel_order.exit
  %i.lm = fmul reassoc nsz arcp contract afn float %i.km, %i.kq
  %i.ln = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.km ; 2 uses
  %i.lo = fsub reassoc nsz arcp contract afn float %i.lk, %i.kq ; 2 uses
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, %i.ln
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.lm
  %i.lr = fmul reassoc nsz arcp contract afn float %i.lq, %i.ab
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, %i.kw
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ln, %i.ab
  %i.lu = fadd reassoc nsz arcp contract afn float %i.lt, 1.000000e+00
  %i.lv = fdiv reassoc nsz arcp contract afn float %i.ls, %i.lu ; 2 uses
  %i.lw = fsub reassoc nsz arcp contract afn float %i.lo, %i.lv
  br label %_preserve_hue_and_energy.exit

bb.m:                                             ; preds = %_pixel_channel_order.exit
  %factor.i = fmul reassoc nsz arcp contract afn float %i.ko, 2.000000e+00
  %i.lx = fsub reassoc nsz arcp contract afn float %i.lk, %factor.i
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lx, %i.km
  %i.lz = fadd reassoc nsz arcp contract afn float %i.ly, %i.ko
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, %i.ab
  %i.mb = fadd reassoc nsz arcp contract afn float %i.ma, %i.kw
  %i.mc = fmul reassoc nsz arcp contract afn float %i.km, %i.ab
  %i.md = fadd reassoc nsz arcp contract afn float %i.mc, 1.000000e+00
  %i.me = fdiv reassoc nsz arcp contract afn float %i.mb, %i.md ; 2 uses
  %i.mf = fadd reassoc nsz arcp contract afn float %i.ko, %i.me
  %i.mg = fsub reassoc nsz arcp contract afn float %i.lk, %i.mf
  br label %_preserve_hue_and_energy.exit

_preserve_hue_and_energy.exit:                    ; preds = %bb.l, %bb.m
  %.sink98 = phi float [ %i.ko, %bb.m ], [ %i.lw, %bb.l ]
  %.sink = phi float [ %i.me, %bb.m ], [ %i.lv, %bb.l ]
  %.sink.i39 = phi float [ %i.mg, %bb.m ], [ %i.kq, %bb.l ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sink.i
  store float %.sink98, ptr %i.mh, align 4, !tbaa !21
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.4.0
  store float %.sink, ptr %i.mi, align 4, !tbaa !21
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.11.0
  store float %.sink.i39, ptr %i.mj, align 4, !tbaa !21
  %i.mk = load float, ptr %i.hf, align 8, !tbaa !21
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %i.mm = load <2 x float>, ptr %i.i, align 16, !tbaa !21 ; 2 uses
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mo = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %i.mo, %i.gg
  %i.mq = fmul reassoc nsz arcp contract afn <4 x float> %i.mn, %i.gh
  %i.mr = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mp
  %i.ms = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = fmul reassoc nsz arcp contract afn <4 x float> %i.mt, %i.gq
  %i.mv = fadd reassoc nsz arcp contract afn <4 x float> %i.mr, %i.mu
  store <4 x float> %i.mv, ptr %i.jt, align 4, !tbaa !21
  %i.mw = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !21
  store float %i.mx, ptr %i.ml, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  %i.my = add nuw i64 %.03897, 4                  ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.gs
  br i1 %i.mz, label %bb.f, label %._crit_edge
}

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86
  tail call void @process_loglogistic_per_channel(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr poison)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @process_loglogistic_rgb_ratio(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr poison)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !63
  store i32 -999, ptr %i.a, align 4, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !89
  ret void
end_hunk_0
