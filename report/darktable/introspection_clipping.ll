Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@distort_mask:bb.a
  %i.du = extractelement <2 x float> %i.dn, i64 1
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dc, %i.du
  %.sroa.13.0 = fadd reassoc nsz arcp contract afn float %i.dv, %reass.mul144
  %i.dw = fdiv reassoc nsz arcp contract afn float %.sroa.0128.0, %i.dh ; 2 uses
  %i.dx = load float, ptr %i.cb, align 4, !tbaa !69
  %i.dy = load float, ptr %i.cc, align 4, !tbaa !70
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dw, %i.dx
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, 1.000000e+00
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dh
  %i.ec = load float, ptr %i.ae, align 4, !tbaa !85
  %i.ed = fdiv reassoc nsz arcp contract afn float %.sroa.13.0, %i.eb ; 2 uses
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dy
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, 1.000000e+00
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.dw, %i.ef
  %i.eh = load <4 x float>, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ek
  %i.em = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ep = fmul reassoc nsz arcp contract afn <2 x float> %i.en, %i.eo
  %i.eq = load <2 x float>, ptr %i.by, align 4, !tbaa !13
  %i.er = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.ep
  %i.es = fadd reassoc nsz arcp contract afn <2 x float> %i.er, %i.el
  %i.et = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul reassoc nsz arcp contract afn <2 x float> %i.es, %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.bb, align 4, !tbaa !66
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ey = fsub reassoc nsz arcp contract afn <2 x float> %i.ev, %i.au ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.ez ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.fb ; 2 uses
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fa ; 2 uses
  %i.fe = extractelement <2 x float> %i.fd, i64 1
  %i.ff = fmul reassoc nsz arcp contract afn float %i.ci, %i.fe
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fc
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.ch
  %i.fi = fadd reassoc nsz arcp contract afn float %i.cl, %i.fh
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %i.ff
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fdiv reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fl ; 2 uses
  %i.fn = fadd reassoc nsz arcp contract afn <2 x float> %i.ay, %i.fm
  %i.fo = fsub reassoc nsz arcp contract afn <2 x float> %i.ay, %i.fm
  %i.fp = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fq = phi <2 x float> [ %i.fp, %bb.k ], [ %i.ev, %bb.j ]
  %i.fr = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fs = sitofp <2 x i32> %i.fr to <2 x float>   ; 2 uses
  %i.ft = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, splat (float -5.000000e-01) ; 2 uses
  %foldExtExtBinop168 = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fs
  %i.fu = extractelement <2 x float> %foldExtExtBinop168, i64 0 ; 3 uses
  %foldExtExtBinop170 = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fs
  %i.fv = extractelement <2 x float> %foldExtExtBinop170, i64 1 ; 3 uses
  %i.fw = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.fx = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.fy = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.fw, i32 noundef %i.fx, i32 noundef 1, i32 noundef %i.fw) #25
  %i.fz = fcmp reassoc nsz arcp contract afn ult float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.gb = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.gc = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.ga, i32 noundef %i.gb, i32 noundef 1, i32 noundef %i.ga) #25
  %i.gd = fcmp reassoc nsz arcp contract afn ugt float %i.gc, 1.000000e+00
  br i1 %i.gd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ge = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.gf = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.gg = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef 1, i32 noundef %i.ge) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.gh = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %i.gg, %bb.n ], [ 0.000000e+00, %bb.l ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv
  store float %i.gh, ptr %i.gi, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gj = load i32, ptr %i.br, align 4, !tbaa !78 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next, %i.gk
  br i1 %i.gl, label %bb.j, label %._crit_edge.loopexit

bb.p:                                             ; preds = %._crit_edge157, %bb.f
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 37 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !83 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %i.d = fneg reassoc nsz arcp contract afn float %sin
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00 ; 3 uses
  %.sroa.9344.0 = select i1 %i.e, float 1.000000e+00, float %cos ; 9 uses
  %.sroa.7.0 = select i1 %i.e, float 0.000000e+00, float %i.d ; 5 uses
  %.sroa.5343.0 = select i1 %i.e, float 0.000000e+00, float %sin ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store float %.sroa.9344.0, ptr %i.f, align 4, !tbaa !13
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.sroa.5343.0, ptr %.sroa.5343.0..sroa_idx, align 4, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !13
  %.sroa.9344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.sroa.9344.0, ptr %.sroa.9344.0..sroa_idx, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  store float %i.j, ptr %i.f, align 4, !tbaa !13
  %i.k = fneg reassoc nsz arcp contract afn float %.sroa.7.0 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.k, ptr %i.l, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi float [ %i.k, %bb.b ], [ %.sroa.7.0, %bb.a ] ; 2 uses
  %i.n = phi float [ %i.j, %bb.b ], [ %.sroa.9344.0, %bb.a ] ; 2 uses
  %i.o = and i32 %i.h, 2
  %.not271 = icmp eq i32 %i.o, 0
  br i1 %.not271, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fneg reassoc nsz arcp contract afn float %.sroa.5343.0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.p, ptr %i.q, align 4, !tbaa !13
  %i.r = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi float [ %i.p, %bb.d ], [ %.sroa.5343.0, %bb.c ] ; 2 uses
  %i.u = phi float [ %i.r, %bb.d ], [ %.sroa.9344.0, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.u, %i.n
  %i.x = fmul reassoc nsz arcp contract afn float %i.m, %i.t
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.x
  %i.z = fneg reassoc nsz arcp contract afn float %i.t
  %i.aa = fneg reassoc nsz arcp contract afn float %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ac = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.n, i64 3
  %i.ag = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.af, %i.ah
  store <4 x float> %i.ai, ptr %i.v, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.ap = fmul reassoc nsz arcp contract afn float %.sroa.9344.0, %.sroa.9344.0
  %i.aq = fmul reassoc nsz arcp contract afn float %.sroa.5343.0, %.sroa.7.0
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.az = load <2 x i32>, ptr %i.as, align 8, !tbaa !14 ; 5 uses
  %5 = extractelement <2 x i32> %i.az, i64 0
  %6 = extractelement <2 x i32> %i.az, i64 1
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 %6)
  %8 = sitofp i32 %7 to float
  %i.ba = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %8 ; 2 uses
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.au ; 2 uses
  store float %i.bb, ptr %i.av, align 4, !tbaa !69
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ax, %i.ba ; 2 uses
  store float %i.bc, ptr %i.ay, align 4, !tbaa !70
  %9 = sitofp <2 x i32> %i.az to <2 x float>      ; 5 uses
  %i.bd = fmul reassoc nnan nsz arcp contract afn <2 x float> %9, splat (float 5.000000e-01) ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ar ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.bj, %i.bc
  %i.bk = shufflevector <2 x float> %i.bd, <2 x float> %9, <2 x i32> <i32 0, i32 2>
  %i.bl = fmul reassoc nnan arcp contract afn <2 x float> %i.bk, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %.sroa.9344.0, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bn
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bq = insertelement <2 x float> poison, float %.sroa.7.0, i64 0
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul reassoc nsz arcp contract afn <4 x float> %i.br, %i.bs
  %i.bu = shufflevector <2 x float> %i.bd, <2 x float> %9, <2 x i32> <i32 1, i32 3>
  %i.bv = fmul reassoc nnan arcp contract afn <2 x float> %i.bu, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.bw = insertelement <2 x float> poison, float %.sroa.5343.0, i64 0
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.bx, %i.by
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.bv, %i.bn
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = fsub reassoc nsz arcp contract afn <4 x float> %i.bp, %i.bz
  %i.cd = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fdiv reassoc nsz arcp contract afn <4 x float> %i.cc, %i.ce ; 2 uses
  %i.cg = fsub reassoc nsz arcp contract afn <4 x float> %i.cb, %i.bt
  %i.ch = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, %i.ci
  %i.ck = fadd reassoc nsz arcp contract afn <4 x float> %i.cj, splat (float 1.000000e+00)
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, %i.cg ; 2 uses
  %i.cm = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %i.cl, %i.cn
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 1.000000e+00)
  %i.cq = shufflevector <4 x float> %i.cl, <4 x float> %i.cf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cr = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.cs = shufflevector <8 x float> %i.cr, <8 x float> poison, <8 x i32> <i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison>
  %i.ct = shufflevector <4 x float> %i.cp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cu = shufflevector <8 x float> %i.ct, <8 x float> %i.cs, <8 x i32> <i32 8, i32 0, i32 10, i32 1, i32 12, i32 2, i32 14, i32 3>
  %i.cv = fmul reassoc nsz arcp contract afn <8 x float> %i.cq, %i.cu ; 10 uses
  %i.cw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cv, zeroinitializer ; 8 uses
  %i.cx = extractelement <8 x i1> %i.cw, i64 7    ; 2 uses
  %i.cy = extractelement <8 x i1> %i.cw, i64 6    ; 2 uses
  %i.cz = extractelement <8 x i1> %i.cw, i64 5    ; 2 uses
  %i.da = extractelement <8 x i1> %i.cw, i64 4    ; 2 uses
  %i.db = extractelement <8 x i1> %i.cw, i64 3    ; 2 uses
  %i.dc = extractelement <8 x i1> %i.cw, i64 2    ; 2 uses
  %i.dd = extractelement <8 x i1> %i.cw, i64 1    ; 2 uses
  %i.de = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cv)
  %i.df = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.de, splat (float 1.000000e-03) ; 8 uses
  %i.dg = extractelement <8 x i1> %i.cw, i64 0    ; 2 uses
  %i.dh = shufflevector <2 x i32> %i.az, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.di = extractelement <8 x float> %i.cv, i64 0 ; 2 uses
  %i.dj = extractelement <8 x float> %i.cv, i64 1 ; 2 uses
  %i.dk = extractelement <8 x float> %i.cv, i64 2 ; 2 uses
  %i.dl = extractelement <8 x float> %i.cv, i64 3 ; 2 uses
  %i.dm = extractelement <8 x float> %i.cv, i64 4 ; 2 uses
  %i.dn = extractelement <8 x float> %i.cv, i64 5 ; 2 uses
  %i.do = extractelement <8 x float> %i.cv, i64 6 ; 2 uses
  %i.dp = extractelement <8 x float> %i.cv, i64 7 ; 2 uses
  %i.dq = extractelement <8 x i1> %i.df, i64 0    ; 2 uses
  %i.dr = extractelement <8 x i1> %i.df, i64 1    ; 2 uses
  %i.ds = extractelement <8 x i1> %i.df, i64 2    ; 2 uses
  %i.dt = extractelement <8 x i1> %i.df, i64 3    ; 2 uses
  %i.du = extractelement <8 x i1> %i.df, i64 4    ; 2 uses
  %i.dv = extractelement <8 x i1> %i.df, i64 5    ; 2 uses
  %i.dw = extractelement <8 x i1> %i.df, i64 6    ; 2 uses
  %i.dx = extractelement <8 x i1> %i.df, i64 7    ; 2 uses
  %i.dy = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dz = sitofp <4 x i32> %i.dy to <4 x float>
  %i.ea = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.dz, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.dx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.ea, i64 2
  %.sroa.0.0.vec.extract470 = extractelement <4 x float> %i.ea, i64 0
  %.sroa.speculated455 = select i1 %i.cx, float %.sroa.0.8.vec.extract, float %.sroa.0.0.vec.extract470
  %i.eb = fdiv reassoc nsz arcp contract afn float %.sroa.speculated455, %i.dp
  %i.ec = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.eb, float 1.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi nsz float [ %i.ec, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  br i1 %i.dw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.ea, i64 3
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.ea, i64 1
  %.sroa.speculated431 = select i1 %i.cy, float %.sroa.0.12.vec.extract, float %.sroa.0.4.vec.extract
  %i.ed = fdiv reassoc nsz arcp contract afn float %.sroa.speculated431, %i.do
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2, float %i.ed)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi nsz float [ %i.ee, %bb.j ], [ %.2, %bb.i ] ; 2 uses
  br i1 %i.dv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract490 = extractelement <4 x float> %i.ea, i64 2
  %.sroa.0.0.vec.extract466 = extractelement <4 x float> %i.ea, i64 0
  %.sroa.speculated449 = select i1 %i.cz, float %.sroa.0.8.vec.extract490, float %.sroa.0.0.vec.extract466
  %i.ef = fdiv reassoc nsz arcp contract afn float %.sroa.speculated449, %i.dn
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1, float %i.ef)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.1309 = phi nsz float [ %i.eg, %bb.l ], [ %.2.1, %bb.k ] ; 2 uses
  br i1 %i.du, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.12.vec.extract504 = extractelement <4 x float> %i.ea, i64 3
  %.sroa.0.4.vec.extract476 = extractelement <4 x float> %i.ea, i64 1
  %.sroa.speculated425 = select i1 %i.da, float %.sroa.0.12.vec.extract504, float %.sroa.0.4.vec.extract476
  %i.eh = fdiv reassoc nsz arcp contract afn float %.sroa.speculated425, %i.dm
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309, float %i.eh)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.1.1 = phi nsz float [ %i.ei, %bb.n ], [ %.2.1309, %bb.m ] ; 2 uses
  br i1 %i.dt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.8.vec.extract494 = extractelement <4 x float> %i.ea, i64 2
  %.sroa.0.0.vec.extract462 = extractelement <4 x float> %i.ea, i64 0
  %.sroa.speculated443 = select i1 %i.db, float %.sroa.0.8.vec.extract494, float %.sroa.0.0.vec.extract462
  %i.ej = fdiv reassoc nsz arcp contract afn float %.sroa.speculated443, %i.dl
  %i.ek = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1, float %i.ej)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.2 = phi nsz float [ %i.ek, %bb.p ], [ %.2.1.1, %bb.o ] ; 2 uses
  br i1 %i.ds, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.12.vec.extract508 = extractelement <4 x float> %i.ea, i64 3
  %.sroa.0.4.vec.extract480 = extractelement <4 x float> %i.ea, i64 1
  %.sroa.speculated419 = select i1 %i.dc, float %.sroa.0.12.vec.extract508, float %.sroa.0.4.vec.extract480
  %i.el = fdiv reassoc nsz arcp contract afn float %.sroa.speculated419, %i.dk
  %i.em = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2, float %i.el)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.1.2 = phi nsz float [ %i.em, %bb.r ], [ %.2.2, %bb.q ] ; 2 uses
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.0.8.vec.extract498 = extractelement <4 x float> %i.ea, i64 2
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.ea, i64 0
  %.sroa.speculated437 = select i1 %i.dd, float %.sroa.0.8.vec.extract498, float %.sroa.0.0.vec.extract
  %i.en = fdiv reassoc nsz arcp contract afn float %.sroa.speculated437, %i.dj
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2, float %i.en)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.3 = phi nsz float [ %i.eo, %bb.t ], [ %.2.1.2, %bb.s ] ; 2 uses
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.12.vec.extract512 = extractelement <4 x float> %i.ea, i64 3
  %.sroa.0.4.vec.extract484 = extractelement <4 x float> %i.ea, i64 1
  %.sroa.speculated = select i1 %i.dg, float %.sroa.0.12.vec.extract512, float %.sroa.0.4.vec.extract484
  %i.ep = fdiv reassoc nsz arcp contract afn float %.sroa.speculated, %i.di
  %i.eq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3, float %i.ep)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.1.3 = phi nsz float [ %i.eq, %bb.v ], [ %.2.3, %bb.u ] ; 3 uses
  %i.er = fcmp reassoc nsz arcp contract afn ult float %.2.1.3, -1.000000e+00
  br i1 %i.er, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.bd, ptr %i.be, align 4, !tbaa !13
  store i32 0, ptr %i.bf, align 4, !tbaa !71
  %i.es = insertelement <2 x float> poison, float %.2.1.3, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul reassoc nsz arcp contract afn <2 x float> %i.et, %9 ; 2 uses
  %i.ev = load <2 x float>, ptr %i.bg, align 4, !tbaa !13
  %i.ew = load <2 x float>, ptr %i.bh, align 4, !tbaa !13 ; 2 uses
  %i.ex = fsub reassoc nsz arcp contract afn <2 x float> %i.ev, %i.ew
  %i.ey = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.ew
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ey
  %i.fa = fsub reassoc nsz arcp contract afn <2 x float> %i.bd, %i.ez
  %i.fb = fptosi <2 x float> %i.fa to <2 x i32>
  store <2 x i32> %i.fb, ptr %2, align 4, !tbaa !14
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ex
  %i.fd = fptosi <2 x float> %i.fc to <2 x i32>
  store <2 x i32> %i.fd, ptr %i.bi, align 4, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1259 = phi nsz float [ -1.000000e+00, %bb.w ], [ %.2.1.3, %bb.x ]
  %i.fe = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ff = sitofp <4 x i32> %i.fe to <4 x float>
  %i.fg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ff, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.8.vec.extract488 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract472 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated458 = select i1 %i.cx, float %.sroa.0.8.vec.extract488, float %.sroa.0.0.vec.extract472
  %i.fh = fdiv reassoc nsz arcp contract afn float %.sroa.speculated458, %i.dp
  %i.fi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fh, float 1.000000e+00)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.1390 = phi nsz float [ %i.fi, %bb.z ], [ 1.000000e+00, %bb.y ] ; 2 uses
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.12.vec.extract502 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract474 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated434 = select i1 %i.cy, float %.sroa.0.12.vec.extract502, float %.sroa.0.4.vec.extract474
  %i.fj = fdiv reassoc nsz arcp contract afn float %.sroa.speculated434, %i.do
  %i.fk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1390, float %i.fj)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.1.1391 = phi nsz float [ %i.fk, %bb.ab ], [ %.2.1390, %bb.aa ] ; 2 uses
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.8.vec.extract492 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract468 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated452 = select i1 %i.cz, float %.sroa.0.8.vec.extract492, float %.sroa.0.0.vec.extract468
  %i.fl = fdiv reassoc nsz arcp contract afn float %.sroa.speculated452, %i.dn
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1391, float %i.fl)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.1309.1 = phi nsz float [ %i.fm, %bb.ad ], [ %.2.1.1391, %bb.ac ] ; 2 uses
  br i1 %i.du, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.12.vec.extract506 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract478 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated428 = select i1 %i.da, float %.sroa.0.12.vec.extract506, float %.sroa.0.4.vec.extract478
  %i.fn = fdiv reassoc nsz arcp contract afn float %.sroa.speculated428, %i.dm
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309.1, float %i.fn)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1.1.1 = phi nsz float [ %i.fo, %bb.af ], [ %.2.1309.1, %bb.ae ] ; 2 uses
  br i1 %i.dt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.8.vec.extract496 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract464 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated446 = select i1 %i.db, float %.sroa.0.8.vec.extract496, float %.sroa.0.0.vec.extract464
  %i.fp = fdiv reassoc nsz arcp contract afn float %.sroa.speculated446, %i.dl
  %i.fq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1.1, float %i.fp)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.2.1 = phi nsz float [ %i.fq, %bb.ah ], [ %.2.1.1.1, %bb.ag ] ; 2 uses
  br i1 %i.ds, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.12.vec.extract510 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract482 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated422 = select i1 %i.dc, float %.sroa.0.12.vec.extract510, float %.sroa.0.4.vec.extract482
  %i.fr = fdiv reassoc nsz arcp contract afn float %.sroa.speculated422, %i.dk
  %i.fs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2.1, float %i.fr)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.1.2.1 = phi nsz float [ %i.fs, %bb.aj ], [ %.2.2.1, %bb.ai ] ; 2 uses
  br i1 %i.dr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.8.vec.extract500 = extractelement <4 x float> %i.fg, i64 2
  %.sroa.0.0.vec.extract460 = extractelement <4 x float> %i.fg, i64 0
  %.sroa.speculated440 = select i1 %i.dd, float %.sroa.0.8.vec.extract500, float %.sroa.0.0.vec.extract460
  %i.ft = fdiv reassoc nsz arcp contract afn float %.sroa.speculated440, %i.dj
  %i.fu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2.1, float %i.ft)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.3.1 = phi nsz float [ %i.fu, %bb.al ], [ %.2.1.2.1, %bb.ak ] ; 2 uses
  br i1 %i.dq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.12.vec.extract514 = extractelement <4 x float> %i.fg, i64 3
  %.sroa.0.4.vec.extract486 = extractelement <4 x float> %i.fg, i64 1
  %.sroa.speculated416 = select i1 %i.dg, float %.sroa.0.12.vec.extract514, float %.sroa.0.4.vec.extract486
  %i.fv = fdiv reassoc nsz arcp contract afn float %.sroa.speculated416, %i.di
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3.1, float %i.fv)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.1.3.1 = phi nsz float [ %i.fw, %bb.an ], [ %.2.3.1, %bb.am ] ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ult float %.2.1.3.1, %.1259
  br i1 %i.fx, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.ao
  store <2 x float> %i.bd, ptr %i.be, align 4, !tbaa !13
  store i32 1, ptr %i.bf, align 4, !tbaa !71
  %i.fy = load <2 x float>, ptr %i.bg, align 4, !tbaa !13
  %i.fz = load <2 x float>, ptr %i.bh, align 4, !tbaa !13 ; 2 uses
  %i.ga = fsub reassoc nsz arcp contract afn <2 x float> %i.fy, %i.fz
  %i.gb = insertelement <2 x float> poison, float %.2.1.3.1, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, %9 ; 2 uses
  %i.ge = shufflevector <2 x float> %i.bd, <2 x float> %i.gd, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gf = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.gg = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gh = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.fz
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gg, %i.gi
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.gl = fsub reassoc nsz arcp contract afn <4 x float> %i.ge, %i.gk
  %i.gm = fmul reassoc nsz arcp contract afn <4 x float> %i.ge, %i.gk
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>
  store <4 x i32> %i.go, ptr %2, align 4, !tbaa !14
  br label %.loopexit

bb.ap:                                            ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.gq, align 4, !tbaa !71
  %i.gr = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.gs = icmp eq i32 %i.gr, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !69 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !70 ; 6 uses
  %i.gx = load <2 x i32>, ptr %i.gp, align 8, !tbaa !14 ; 2 uses
  %i.gy = shufflevector <2 x i32> %i.gx, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gz = sitofp <4 x i32> %i.gy to <4 x float>   ; 11 uses
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ha, splat (float 5.000000e-01) ; 5 uses
  %i.hc = load <2 x float>, ptr %i.v, align 4, !tbaa !13 ; 6 uses
  %i.hd = load <2 x float>, ptr %i.ab, align 4, !tbaa !13 ; 2 uses
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br i1 %i.gs, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ap
  %i.hf = fneg reassoc nsz arcp contract afn <2 x float> %i.hb
  %i.hg = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hh = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> %i.hg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hj = fmul reassoc nsz arcp contract afn <4 x float> %i.hi, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.hk = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 0, i32 7>
  %i.hl = shufflevector <4 x float> %i.hh, <4 x float> %i.hk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hm = fmul reassoc nsz arcp contract afn <4 x float> %i.hl, <float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.hn = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ho = insertelement <4 x float> %i.hn, float -0.000000e+00, i64 3
  %i.hp = fmul reassoc arcp contract afn <4 x float> %i.ho, %i.hm ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.hr = insertelement <4 x float> %i.hq, float 1.000000e+00, i64 3
  %i.hs = shufflevector <4 x float> %i.hh, <4 x float> %i.hj, <4 x i32> <i32 1, i32 1, i32 7, i32 poison>
  %i.ht = insertelement <4 x float> %i.hs, float 1.000000e+00, i64 3
  %i.hu = fmul reassoc nsz arcp contract afn <4 x float> %i.hr, %i.ht ; 2 uses
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %i.hu, %i.hp ; 3 uses
  %shift = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %shift, %i.hp
  %i.hw = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %i.he, %i.hj ; 2 uses
  %i.hy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.gu, i64 0
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ia = fmul reassoc arcp contract afn <4 x float> %i.hz, %i.hv
  %i.ib = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, splat (float 1.000000e+00)
  %i.ic = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.id = fadd reassoc nsz arcp contract afn <4 x float> %i.hx, %i.ic
  %i.ie = fmul reassoc nsz arcp contract afn <4 x float> %i.id, %i.ib ; 3 uses
  %i.if = extractelement <4 x float> %i.ie, i64 0
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, %i.gw
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, 1.000000e+00
  %i.ii = extractelement <4 x float> %i.hv, i64 0
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ih, %i.ii
  %i.ik = shufflevector <4 x float> %i.ie, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.il = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, %i.im
  %i.io = fadd reassoc nsz arcp contract afn <2 x float> %i.in, splat (float 1.000000e+00)
  %i.ip = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iq = fmul reassoc nsz arcp contract afn <2 x float> %i.io, %i.ip ; 2 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 0
  %i.is = extractelement <2 x float> %i.iq, i64 1
  br label %.split297.us

.split.us:                                        ; preds = %bb.ap
  %i.it = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iu = shufflevector <4 x float> %i.gz, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.jb = load float, ptr %i.iy, align 4, !tbaa !91
  %i.jc = load float, ptr %i.ix, align 4, !tbaa !92
  %i.jd = load float, ptr %i.iw, align 4, !tbaa !80
  %i.je = load float, ptr %i.iv, align 4, !tbaa !81
  %i.jf = shufflevector <4 x float> %i.gz, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <2 x i32> <i32 4, i32 1>
  %i.jg = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jh = fdiv reassoc nsz arcp contract afn <2 x float> %i.jf, %i.jg
  %i.ji = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fsub reassoc nsz arcp contract afn <2 x float> %i.jh, %i.jj ; 2 uses
  %i.jl = load <4 x float>, ptr %i.iz, align 4, !tbaa !13 ; 4 uses
  %i.jm = load <2 x float>, ptr %i.ja, align 4, !tbaa !13
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.jo = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jp = insertelement <2 x float> %i.jo, float 0.000000e+00, i64 0
  %i.jq = fdiv reassoc nsz arcp contract afn <2 x float> %i.jp, %i.jo
  %i.jr = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fsub reassoc nsz arcp contract afn <2 x float> %i.jq, %i.js ; 3 uses
  %i.ju = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jv = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.jw = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jx = fmul reassoc nsz arcp contract afn <4 x float> %i.jv, %i.jw
  %i.jy = fadd reassoc nsz arcp contract afn <4 x float> %i.jx, splat (float 1.000000e+00)
  %i.jz = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ka = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kb = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.ka, %i.kb ; 2 uses
  %i.kd = shufflevector <4 x float> %i.jl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 2, i32 7>
  %i.ke = shufflevector <4 x float> %i.jz, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.kf = fmul reassoc arcp contract afn <4 x float> %i.kd, %i.ke
  %i.kg = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.kh = shufflevector <2 x float> %i.jk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ki = shufflevector <2 x float> %i.kg, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kj = fmul reassoc nsz arcp contract afn <4 x float> %i.kh, %i.ki
  %i.kk = shufflevector <2 x float> %i.jk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.kl = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.km = fmul reassoc nsz arcp contract afn <4 x float> %i.kk, %i.kl ; 2 uses
  %i.kn = shufflevector <4 x float> %i.jl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 1, i32 3, i32 7>
  %i.ko = shufflevector <4 x float> %i.kk, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 2, i32 7>
  %i.kp = fmul reassoc arcp contract afn <4 x float> %i.kn, %i.ko
  %i.kq = fadd reassoc nsz arcp contract afn <4 x float> %i.jy, %i.kj ; 3 uses
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.km, %i.kc
  %i.ks = fdiv reassoc nsz arcp contract afn <4 x float> %i.kr, %i.kq
  %i.kt = fadd reassoc nsz arcp contract afn <4 x float> %i.ks, %i.jn
  %i.ku = fmul reassoc nsz arcp contract afn <4 x float> %i.kt, %i.gz
  %i.kv = fsub reassoc nsz arcp contract afn <4 x float> %i.ku, %i.it ; 4 uses
  %i.kw = extractelement <4 x float> %i.kv, i64 0
  %i.kx = extractelement <2 x float> %i.hc, i64 0 ; 2 uses
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, %i.kw
  %i.kz = fadd reassoc arcp contract afn <4 x float> %i.kp, %i.kf
  %i.la = insertelement <4 x float> %i.kq, float 1.000000e+00, i64 3
  %i.lb = fdiv reassoc arcp contract afn <4 x float> %i.kz, %i.la
  %i.lc = shufflevector <4 x float> %i.jn, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.ld = fadd reassoc nsz arcp contract afn <4 x float> %i.lc, %i.lb
  %i.le = fadd reassoc nsz arcp contract afn <4 x float> %i.ld, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -0.000000e+00>
  %i.lf = fmul reassoc nsz arcp contract afn <4 x float> %i.le, %i.iu ; 3 uses
  %i.lg = extractelement <4 x float> %i.lf, i64 0
  %i.lh = extractelement <2 x float> %i.hc, i64 1 ; 2 uses
  %i.li = fmul reassoc nsz arcp contract afn float %i.lh, %i.lg
  %i.lj = fadd reassoc nsz arcp contract afn float %i.li, %i.ky ; 2 uses
  %i.lk = fmul reassoc nsz arcp contract afn float %i.lj, %i.gu
  %i.ll = fadd reassoc nsz arcp contract afn float %i.lk, 1.000000e+00
  %i.lm = shufflevector <4 x float> %i.he, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.ln = fmul reassoc arcp contract afn <4 x float> %i.lm, %i.lf
  %i.lo = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lp = shufflevector <4 x float> %i.kv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lq = fmul reassoc nsz arcp contract afn <2 x float> %i.lo, %i.lp
  %i.lr = shufflevector <4 x float> %i.lf, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ls = fmul reassoc nsz arcp contract afn <2 x float> %i.hc, %i.lr
  %i.lt = fadd reassoc nsz arcp contract afn <2 x float> %i.ls, %i.lq ; 3 uses
  %i.lu = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul reassoc nsz arcp contract afn <2 x float> %i.lt, %i.lv
  %i.lx = fadd reassoc nsz arcp contract afn <2 x float> %i.lw, splat (float 1.000000e+00)
  %shift373 = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop374 = fadd reassoc nsz arcp contract afn <4 x float> %shift373, %i.kc
  %shift376 = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop377 = fdiv reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop374, %shift376
  %foldExtExtBinop379 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop377, %i.jn
  %foldExtExtBinop381 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop379, %i.gz
  %foldExtExtBinop383 = fsub reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop381, %i.it ; 2 uses
  %i.ly = extractelement <4 x float> %foldExtExtBinop383, i64 0
  %foldExtExtBinop385 = fmul reassoc nsz arcp contract afn <4 x float> %i.he, %foldExtExtBinop383
  %i.lz = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ma = fmul reassoc nsz arcp contract afn <4 x float> %i.lz, %i.kv
  %i.mb = fadd reassoc nsz arcp contract afn <4 x float> %i.ma, %i.ln ; 2 uses
  %i.mc = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.md = shufflevector <2 x float> %i.lx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.mc, <4 x float> %i.md, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> %foldExtExtBinop385, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.mb, %i.mf ; 4 uses
  %i.mh = fadd reassoc nsz arcp contract afn <4 x float> %i.mb, %i.mf
  %i.mi = shufflevector <4 x float> %i.mg, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mj = extractelement <4 x float> %i.mg, i64 0
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.gw
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, 1.000000e+00
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, %i.lj
  %i.mn = extractelement <4 x float> %i.mg, i64 1
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, %i.gw
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, 1.000000e+00
  %i.mq = extractelement <2 x float> %i.lt, i64 0
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mp, %i.mq
  %i.ms = extractelement <4 x float> %i.mg, i64 2
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.gw
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mt, 1.000000e+00
  %i.mv = extractelement <2 x float> %i.lt, i64 1
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mu, %i.mv
  %i.mx = fmul reassoc nsz arcp contract afn float %i.kx, %i.ly
  %i.my = extractelement <4 x float> %i.kv, i64 3
  %i.mz = fmul reassoc nsz arcp contract afn float %i.lh, %i.my
end_hunk_0
begin_hunk_1_@get_p:bb.a
  %.not58 = icmp eq i32 %i.au, 0
  br i1 %.not58, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.aj

bb.aa:                                            ; preds = %bb.y
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.108) #26
  %.not59 = icmp eq i32 %i.aw, 0
  br i1 %.not59, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.109) #26
  %.not60 = icmp eq i32 %i.ay, 0
  br i1 %.not60, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.37) #26
  %.not61 = icmp eq i32 %i.ba, 0
  br i1 %.not61, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.110) #26
  %.not62 = icmp eq i32 %i.bc, 0
  br i1 %.not62, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.111) #26
  %.not63 = icmp eq i32 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %spec.select = select i1 %.not63, ptr %i.bf, ptr null
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.a, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.ai ], [ %i.bd, %bb.ah ], [ %i.bb, %bb.af ], [ %i.az, %bb.ad ], [ %i.ax, %bb.ab ], [ %i.av, %bb.z ], [ %i.at, %bb.x ], [ %i.ar, %bb.v ], [ %i.ap, %bb.t ], [ %i.an, %bb.r ], [ %i.al, %bb.p ], [ %i.aj, %bb.n ], [ %i.ah, %bb.l ], [ %i.af, %bb.j ], [ %i.ad, %bb.h ], [ %i.ab, %bb.f ], [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %i.n, %bb.c ], [ %i.h, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.31) #25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.65) #25
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.70) #25
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.68) #25
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.72) #25
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.97) #25
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.98) #25
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.99) #25
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.100) #25
  %.not29 = icmp eq i32 %i.i, 0
  br i1 %.not29, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.101) #25
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.102) #25
  %.not31 = icmp eq i32 %i.k, 0
  br i1 %.not31, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.103) #25
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.104) #25
  %.not33 = icmp eq i32 %i.m, 0
  br i1 %.not33, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.105) #25
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.106) #25
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.107) #25
  %.not36 = icmp eq i32 %i.p, 0
  br i1 %.not36, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.108) #25
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.109) #25
  %.not38 = icmp eq i32 %i.r, 0
  br i1 %.not38, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.37) #25
  %.not39 = icmp eq i32 %i.s, 0
  br i1 %.not39, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.110) #25
  %.not40 = icmp eq i32 %i.t, 0
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.111) #25
  %.not41 = icmp eq i32 %i.u, 0
  %. = select i1 %.not41, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ %., %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_combobox_clear(ptr noundef) local_unnamed_addr #6

declare ptr @dt_bauhaus_combobox_get_text(ptr noundef) local_unnamed_addr #6

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #9

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #6

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #6

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #6

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #22

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !15, i64 0}
!18 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !15, i64 0}
!19 = !{!"p1 _ZTS18dt_histogram_roi_t", !15, i64 0}
!20 = !{!"dt_dev_histogram_collection_params_t", !19, i64 0, !9, i64 8}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !9, i64 0, !22, i64 8, !9, i64 16, !9, i64 20}
!24 = !{!"dt_iop_roi_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16}
!25 = !{!"short", !8, i64 0}
!26 = !{!"", !25, i64 0, !25, i64 2}
!27 = !{!"", !9, i64 0, !8, i64 16}
!28 = !{!"dt_iop_buffer_dsc_t", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !26, i64 48, !27, i64 64, !8, i64 96, !9, i64 112}
!29 = !{!"p1 _ZTS11_GHashTable", !15, i64 0}
!30 = !{!"p1 float", !15, i64 0}
!31 = !{!"dt_dev_distorted_mask_cache_t", !30, i64 0, !24, i64 8, !22, i64 32, !22, i64 40}
!32 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !18, i64 8, !15, i64 16, !15, i64 24, !9, i64 32, !9, i64 36, !20, i64 40, !21, i64 56, !23, i64 64, !8, i64 88, !12, i64 104, !9, i64 108, !9, i64 112, !22, i64 120, !9, i64 128, !9, i64 132, !24, i64 136, !24, i64 156, !24, i64 176, !24, i64 196, !9, i64 216, !9, i64 220, !28, i64 224, !28, i64 352, !8, i64 480, !9, i64 516, !29, i64 520, !31, i64 528, !31, i64 576}
!33 = !{!32, !18, i64 8}
!34 = !{!"any p2 pointer", !15, i64 0}
!35 = !{!"p1 long", !15, i64 0}
!36 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !15, i64 0}
!37 = !{!"dt_dev_pixelpipe_cache_t", !9, i64 0, !22, i64 8, !22, i64 16, !34, i64 24, !35, i64 32, !36, i64 40, !35, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !9, i64 80, !22, i64 88, !22, i64 96, !9, i64 104, !9, i64 108, !9, i64 112}
!38 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !15, i64 0}
!39 = !{!"p1 _ZTS6_GList", !15, i64 0}
!40 = !{!"p1 omnipotent char", !15, i64 0}
!41 = !{!"dt_pthread_mutex_t", !8, i64 0}
!42 = !{!"dt_dev_detail_mask_t", !24, i64 0, !22, i64 24, !30, i64 32}
!43 = !{!"dt_image_raw_parameters_t", !9, i64 0, !9, i64 3}
!44 = !{!"double", !8, i64 0}
!45 = !{!"dt_image_geoloc_t", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_color_harmony_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!47 = !{!"p1 _ZTS16dt_cache_entry_t", !15, i64 0}
!48 = !{!"dt_image_t", !9, i64 0, !9, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !9, i64 40, !8, i64 44, !8, i64 108, !8, i64 172, !8, i64 300, !8, i64 364, !8, i64 428, !8, i64 492, !22, i64 560, !9, i64 568, !8, i64 572, !8, i64 800, !8, i64 864, !8, i64 928, !8, i64 992, !9, i64 1120, !8, i64 1124, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !12, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436, !9, i64 1440, !9, i64 1444, !22, i64 1448, !22, i64 1456, !22, i64 1464, !22, i64 1472, !9, i64 1480, !28, i64 1488, !8, i64 1616, !40, i64 1656, !9, i64 1664, !9, i64 1668, !43, i64 1672, !45, i64 1680, !46, i64 1704, !25, i64 1736, !8, i64 1738, !9, i64 1748, !9, i64 1752, !12, i64 1756, !12, i64 1760, !8, i64 1776, !8, i64 1792, !8, i64 1840, !39, i64 1856, !47, i64 1864, !9, i64 1872, !9, i64 1876}
!49 = !{!"dt_dev_pixelpipe_t", !37, i64 0, !9, i64 120, !22, i64 128, !30, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !9, i64 156, !9, i64 160, !28, i64 176, !38, i64 304, !38, i64 312, !38, i64 320, !38, i64 328, !39, i64 336, !9, i64 344, !9, i64 348, !9, i64 352, !9, i64 356, !40, i64 360, !22, i64 368, !9, i64 376, !9, i64 380, !12, i64 384, !8, i64 388, !22, i64 416, !41, i64 424, !41, i64 464, !41, i64 504, !9, i64 544, !9, i64 548, !9, i64 552, !42, i64 560, !9, i64 600, !9, i64 604, !9, i64 608, !8, i64 612, !9, i64 616, !9, i64 620, !9, i64 624, !9, i64 628, !9, i64 632, !9, i64 636, !9, i64 640, !9, i64 644, !9, i64 648, !9, i64 652, !48, i64 656, !9, i64 2544, !40, i64 2552, !9, i64 2560, !39, i64 2568, !39, i64 2576, !39, i64 2584, !9, i64 2592, !30, i64 2600, !22, i64 2608, !8, i64 2616, !8, i64 2632}
!50 = !{!49, !9, i64 644}
!51 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!52 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!53 = !{!"p1 _ZTS25dt_develop_blend_params_t", !15, i64 0}
!54 = !{!"", !29, i64 0, !29, i64 8}
!55 = !{!"", !17, i64 0, !9, i64 8}
!56 = !{!"", !54, i64 0, !55, i64 16}
!57 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!58 = !{!"p1 _ZTS7_GSList", !15, i64 0}
!59 = !{!"p1 _ZTS18dt_iop_module_so_t", !15, i64 0}
!60 = !{!"dt_iop_module_t", !9, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !51, i64 448, !8, i64 456, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !9, i64 492, !9, i64 496, !9, i64 500, !9, i64 504, !8, i64 512, !8, i64 528, !8, i64 544, !8, i64 560, !8, i64 576, !8, i64 592, !21, i64 608, !23, i64 616, !8, i64 640, !9, i64 656, !9, i64 660, !52, i64 664, !9, i64 672, !9, i64 676, !15, i64 680, !15, i64 688, !9, i64 696, !15, i64 704, !41, i64 712, !15, i64 752, !15, i64 760, !53, i64 768, !53, i64 776, !15, i64 784, !56, i64 792, !57, i64 824, !57, i64 832, !57, i64 840, !57, i64 848, !57, i64 856, !57, i64 864, !57, i64 872, !9, i64 880, !57, i64 888, !57, i64 896, !57, i64 904, !58, i64 912, !58, i64 920, !57, i64 928, !57, i64 936, !9, i64 944, !59, i64 952, !9, i64 960, !8, i64 964, !9, i64 1092, !57, i64 1096, !15, i64 1104, !9, i64 1112}
!61 = !{!60, !15, i64 336}
!62 = !{!32, !15, i64 16}
!63 = !{!"dt_iop_clipping_data_t", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 24, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !8, i64 100, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !9, i64 172, !9, i64 176, !12, i64 180, !12, i64 184}
!64 = !{!63, !12, i64 124}
!65 = !{!63, !12, i64 132}
!66 = !{!63, !9, i64 172}
!67 = !{!63, !12, i64 56}
!68 = !{!63, !12, i64 60}
!69 = !{!63, !12, i64 44}
!70 = !{!63, !12, i64 52}
!71 = !{!63, !9, i64 96}
!72 = !{!63, !12, i64 80}
!73 = !{!63, !12, i64 180}
!74 = !{!63, !12, i64 84}
!75 = !{!63, !12, i64 184}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!24, !9, i64 8}
!79 = !{!24, !9, i64 12}
!80 = !{!63, !12, i64 116}
!81 = !{!63, !12, i64 120}
!82 = !{!63, !9, i64 92}
!83 = !{!63, !12, i64 0}
!84 = !{!63, !9, i64 88}
!85 = !{!24, !12, i64 16}
!86 = !{!"llvm.loop.unswitch.partial.disable"}
!87 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !13}
!88 = !{!63, !9, i64 176}
!89 = !{!63, !12, i64 40}
!90 = !{!63, !12, i64 48}
!91 = !{!63, !12, i64 164}
!92 = !{!63, !12, i64 168}
!93 = !{!24, !9, i64 0}
!94 = !{!24, !9, i64 4}
!95 = !{!"dt_codepath_t", !9, i64 0}
!96 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!97 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!98 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!99 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!100 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!101 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!102 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!103 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!104 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!105 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!106 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!107 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!108 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!109 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!110 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!111 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!112 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!113 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!114 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!115 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!116 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!117 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!118 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!119 = !{!"_Bool", !8, i64 0}
!120 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!121 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!122 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!123 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!124 = !{!"", !118, i64 0, !41, i64 8, !8, i64 48, !119, i64 96, !119, i64 97, !120, i64 104, !121, i64 112, !122, i64 120, !123, i64 128, !123, i64 136, !123, i64 144}
!125 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!126 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!127 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !9, i64 32}
!128 = !{!"dt_backthumb_t", !44, i64 0, !44, i64 8, !9, i64 16, !9, i64 20}
!129 = !{!"dt_gimp_t", !9, i64 0, !40, i64 8, !40, i64 16, !9, i64 24, !9, i64 28}
!130 = !{!"dt_splash_t", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !9, i64 32}
!131 = !{!"darktable_t", !95, i64 0, !9, i64 4, !9, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !96, i64 48, !97, i64 56, !52, i64 64, !98, i64 72, !99, i64 80, !100, i64 88, !101, i64 96, !102, i64 104, !103, i64 112, !104, i64 120, !105, i64 128, !106, i64 136, !107, i64 144, !108, i64 152, !109, i64 160, !110, i64 168, !111, i64 176, !112, i64 184, !113, i64 192, !114, i64 200, !115, i64 208, !116, i64 216, !117, i64 224, !8, i64 232, !41, i64 2792, !41, i64 2832, !41, i64 2872, !41, i64 2912, !41, i64 2952, !41, i64 2992, !40, i64 3032, !40, i64 3040, !40, i64 3048, !40, i64 3056, !40, i64 3064, !40, i64 3072, !40, i64 3080, !40, i64 3088, !40, i64 3096, !40, i64 3104, !40, i64 3112, !40, i64 3120, !40, i64 3128, !124, i64 3136, !39, i64 3288, !44, i64 3296, !39, i64 3304, !9, i64 3312, !8, i64 3316, !9, i64 3512, !9, i64 3516, !125, i64 3520, !126, i64 3528, !127, i64 3536, !128, i64 3576, !129, i64 3600, !130, i64 3632, !9, i64 3672}
!132 = !{!131, !9, i64 8}
!133 = !{!60, !15, i64 40}
!134 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!135 = !{!"dt_action_t", !9, i64 0, !40, i64 8, !40, i64 16, !15, i64 24, !134, i64 32, !134, i64 40}
!136 = !{!"dt_iop_module_so_t", !135, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !51, i64 488, !8, i64 496, !15, i64 520, !9, i64 528, !15, i64 536, !9, i64 544, !9, i64 548}
!137 = !{!136, !15, i64 520}
!138 = !{!"dt_iop_clipping_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!139 = !{!138, !12, i64 0}
!140 = !{!138, !12, i64 16}
!141 = !{!138, !12, i64 12}
!142 = !{!138, !9, i64 60}
end_hunk_1
