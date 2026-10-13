Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@commit_params:bb.a
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !426
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !14
  %i.at = insertelement <4 x i32> poison, i32 %i.ac, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.ar, i64 3
  %i.av = shufflevector <2 x i32> %i.as, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> %i.au, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.aw, ptr %i.ap, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !427
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %i.ay, ptr %i.az, align 64, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !428
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i32 %i.bb, ptr %i.bc, align 16, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.be = tail call fastcc i32 @dt_iop_filmic_rgb_compute_spline(ptr noundef nonnull %1, ptr noundef nonnull %i.bd) ; 0 uses
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !180
  %i.bg = icmp ugt i32 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !181 ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, f0x3C23D70A
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, 2.000000e-02
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, 1.000000e+00
  %.sink = select i1 %i.bg, float %i.bj, float %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %.sink, ptr %i.bm, align 4, !tbaa !119
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bp = load <2 x float>, ptr %i.bn, align 16, !tbaa !13 ; 2 uses
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, <float poison, float f0x3EAAAAAB>
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, <float f0x3EAAAAAB, float poison>
  %i.bs = fsub reassoc nsz arcp contract afn <2 x float> <float poison, float f0x3EAAAAAB>, %i.bq
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bt
  store <2 x float> %i.bu, ptr %i.bo, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !429
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.t
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bx)
  %i.by = fmul reassoc nsz arcp contract afn float %exp2, %.071 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.by, ptr %i.bz, align 16, !tbaa !113
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !430
  %i.cc = fdiv reassoc nsz arcp contract afn float 1.200000e+01, %i.cb
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.cd, ptr %i.ce, align 4, !tbaa !71
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.cd, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.cf, ptr %i.cg, align 4, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !431
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, 5.000000e-03
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, 5.000000e-01
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.ck, ptr %i.cl, align 32, !tbaa !123
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !13
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 5.000000e-03)
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 5.000000e-01)
  store <2 x float> %i.cq, ptr %i.cn, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !182
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !48
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @dt_iop_filmic_rgb_compute_spline(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 12), (16, 28), (32, 44), (48, 60), (72, 76), (80, 136)) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [25 x double], align 16           ; 18 uses
  %i.b = alloca [5 x double], align 16            ; 8 uses
  %i.c = alloca [16 x double], align 16           ; 14 uses
  %i.d = alloca [4 x double], align 16            ; 7 uses
  %i.e = alloca [16 x double], align 16           ; 13 uses
  %i.f = alloca [4 x double], align 16            ; 7 uses
  %i.g = alloca [25 x double], align 16           ; 17 uses
  %i.h = alloca [5 x double], align 16            ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !178
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !134 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load float, ptr %i.m, align 4, !tbaa !183 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !184 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.l, %i.q
  %. = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi reassoc nsz arcp contract afn float [ %i.n, %bb.b ], [ %., %bb.c ]
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3C23D70A
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load float, ptr %i.u, align 4, !tbaa !19 ; 2 uses
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.t, float %i.w)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load float, ptr %i.y, align 4, !tbaa !19 ; 2 uses
  %i.aa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.845000e-01, float %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi float [ %i.v, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %.0 = phi nsz float [ %i.x, %bb.d ], [ %i.ab, %bb.e ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21 ; 3 uses
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ae, %i.ag ; 7 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ag)
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ah ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !184 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !134 ; 4 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.ao, %i.aq
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ao, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.as, float 0.000000e+00, float %i.ao
  %i.at = select reassoc nsz arcp contract afn i1 %i.ar, float %i.aq, float %spec.select
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3C23D70A ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !183
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aw, float %i.aq)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac ; 2 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !183
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float %i.aq)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, f0x3C23D70A
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float %i.az)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0336 = phi nsz float [ %i.ay, %bb.g ], [ %i.bf, %bb.h ] ; 5 uses
  %.0335 = phi nsz float [ %i.au, %bb.g ], [ %i.ba, %bb.h ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !24 ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %i.bh, 5.000000e+01
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bh, -5.000000e+01
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, f0x3C23D70A
  %spec.select358 = select i1 %i.bj, float -5.000000e-01, float %i.bk
  %i.bl = select i1 %i.bi, float 5.000000e-01, float %spec.select358 ; 3 uses
  %i.bm = icmp ult i32 %i.al, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !22 ; 3 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 1.000000e+02
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bo, 0.000000e+00
  %i.br = fmul reassoc nsz arcp contract afn float %i.bo, f0x3C23D70A
  %spec.select359 = select i1 %i.bq, float 0.000000e+00, float %i.br
  %i.bs = select i1 %i.bp, float 1.000000e+00, float %spec.select359 ; 4 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.ah ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23 ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 6.000000e+00
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bv, 1.000010e+00
  %spec.select360 = select reassoc nsz arcp contract afn i1 %i.bx, float 1.000010e+00, float %i.bv
  %i.by = select reassoc nsz arcp contract afn i1 %i.bw, float 6.000000e+00, float %spec.select360 ; 8 uses
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bt, %i.ah ; 2 uses
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca)
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bz, %i.cb
  %i.cd = fsub reassoc nsz arcp contract afn float %i.aj, %i.cc ; 2 uses
  %i.ce = fdiv reassoc nsz arcp contract afn float %i.ae, %i.ah
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bz, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.aj ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.by, %i.aj
  %i.cj = fsub reassoc nsz arcp contract afn float %.0, %i.ci ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cd, %i.by
  %2 = fadd reassoc nsz arcp contract afn float %i.cj, %i.ck
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ch, %i.by
  %3 = fadd reassoc nsz arcp contract afn float %i.cj, %i.cl
  %i.cm = fmul reassoc nsz arcp contract afn float %i.by, %i.by
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, 1.000000e+00
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cn) ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.bl, -2.000000e+00
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.bt
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cq, %i.ah ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.by
  %i.ct = fdiv reassoc nsz arcp contract afn float %i.cs, %i.co ; 2 uses
  %i.cu = fadd reassoc nsz arcp contract afn float %2, %i.ct
  %i.cv = fadd reassoc nsz arcp contract afn float %3, %i.ct
  %i.cw = fdiv reassoc nsz arcp contract afn float %i.cr, %i.co ; 2 uses
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cd ; 2 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cw, %i.ch
  %.pre = fmul reassoc nsz arcp contract afn float %i.cx, %i.by
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.da = load float, ptr %i.cz, align 4, !tbaa !23
  %i.db = fmul reassoc nsz arcp contract afn float %i.ah, 1.250000e-01
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.da
  %i.dd = fadd reassoc nsz arcp contract afn float %i.ac, -1.000000e+00
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.0, float %i.dd)
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.ac
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.dc, %i.df ; 4 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ogt float %i.dg, 1.000000e+02
  br i1 %i.dh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = fsub reassoc nsz arcp contract afn float %.0336, %.0
  %i.dj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.dk = fdiv reassoc nsz arcp contract afn float %i.di, %i.dj
  %i.dl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dk, float 1.000000e+00)
  %i.dm = fsub reassoc nsz arcp contract afn float %.0, %.0335
  %i.dn = fdiv reassoc nsz arcp contract afn float %i.dm, %i.aj
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dl, float %i.dn)
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, f0x3C23D70A ; 2 uses
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.dg, %i.dp
  %i.dr = select reassoc nsz arcp contract afn i1 %i.dq, float %i.dp, float %i.dg
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ds = phi reassoc nsz arcp contract afn float [ %i.dr, %bb.l ], [ 1.000000e+02, %bb.k ] ; 7 uses
  %i.dt = fcmp reassoc nsz arcp contract afn une float %i.ds, %i.dg
  %i.du = zext i1 %i.dt to i32
  %i.dv = fmul reassoc nsz arcp contract afn float %i.ds, %i.aj
  %i.dw = fsub reassoc nsz arcp contract afn float %.0, %i.dv ; 4 uses
  %i.dx = fsub reassoc nsz arcp contract afn float %.0336, %.0335
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x3C23D70A ; 2 uses
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %.0335
  %i.ea = fsub reassoc nsz arcp contract afn float %i.dz, %i.dw
  %i.eb = fdiv reassoc nsz arcp contract afn float %i.ea, %i.ds ; 2 uses
  %i.ec = fadd reassoc nsz arcp contract afn float %i.dy, %i.dw
  %i.ed = fsub reassoc nsz arcp contract afn float %.0336, %i.ec
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.ed, %i.ds ; 3 uses
  %i.ef = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bs
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.aj ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eb, %i.bs
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.eg ; 2 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ee, %i.bs
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.eg ; 2 uses
  %i.el = fcmp reassoc nsz arcp contract afn ogt float %i.bl, 0.000000e+00
  %i.em = fmul reassoc nsz arcp contract afn float %i.bl, 2.000000e+00
  %i.en = fsub reassoc nsz arcp contract afn float %i.aj, %i.ei
  %i.eo = fsub reassoc nsz arcp contract afn float %i.ek, %i.aj
  %.sink = select i1 %i.el, float %i.eo, float %i.en
  %i.ep = fmul reassoc nsz arcp contract afn float %i.em, %.sink ; 2 uses
  %i.eq = fsub reassoc nsz arcp contract afn float %i.ei, %i.ep
  %i.er = fsub reassoc nsz arcp contract afn float %i.ek, %i.ep ; 2 uses
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eq, float %i.eb) ; 2 uses
  %i.et = fcmp reassoc nsz arcp contract afn olt float %i.er, %i.ee
  %i.eu = select reassoc nsz arcp contract afn i1 %i.et, float %i.er, float %i.ee ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.es, %i.ds ; 2 uses
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.dw
  %i.ex = fmul reassoc nsz arcp contract afn float %i.eu, %i.ds
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, %i.dw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pre-phi = phi float [ %i.ev, %bb.m ], [ %.pre, %bb.j ] ; 2 uses
  %.0341 = phi nsz float [ %i.ds, %bb.m ], [ %i.by, %bb.j ] ; 10 uses
  %.0340 = phi nsz float [ %i.ey, %bb.m ], [ %i.cv, %bb.j ] ; 3 uses
  %.0339 = phi nsz float [ %i.ew, %bb.m ], [ %i.cu, %bb.j ] ; 6 uses
  %.0338 = phi nsz float [ %i.eu, %bb.m ], [ %i.cy, %bb.j ] ; 4 uses
  %.0337 = phi nsz float [ %i.es, %bb.m ], [ %i.cx, %bb.j ] ; 7 uses
  %.0334 = phi i32 [ %i.du, %bb.m ], [ 0, %bb.j ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float 0.000000e+00, ptr %i.ez, align 4, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %.0337, ptr %i.fa, align 4, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.aj, ptr %i.fb, align 4, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %.0338, ptr %i.fc, align 4, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float 1.000000e+00, ptr %i.fd, align 4, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %.0335, ptr %i.fe, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %.0339, ptr %i.ff, align 4, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %.0, ptr %i.fg, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 3 uses
  store float %.0340, ptr %i.fh, align 4, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store float %.0336, ptr %i.fi, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.0337, ptr %i.fj, align 16, !tbaa !124
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %.0338, ptr %i.fk, align 4, !tbaa !125
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !432
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.fm, ptr %i.fn, align 16, !tbaa !14
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !433
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !14
  %i.fr = fpext reassoc nsz arcp contract afn float %.0337 to double ; 10 uses
  %i.fs = fmul reassoc nsz arcp contract afn double %i.fr, %i.fr ; 6 uses
  %i.ft = fmul reassoc nsz arcp contract afn double %i.fs, %i.fr ; 4 uses
  %i.fu = fpext reassoc nsz arcp contract afn float %.0338 to double ; 10 uses
  %i.fv = fmul reassoc nsz arcp contract afn double %i.fu, %i.fu ; 6 uses
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fv, %i.fu ; 4 uses
  %i.fx = fmul reassoc nsz arcp contract afn double %i.fw, %i.fu
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store float %.0341, ptr %i.fz, align 8, !tbaa !13
  %i.ga = fsub reassoc nsz arcp contract afn float %.0339, %.pre-phi
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ga, ptr %i.gb, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 0.000000e+00, ptr %i.gd, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.gf, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 0.000000e+00, ptr %i.gh, align 8, !tbaa !13
  %i.gi = load i32, ptr %i.fl, align 4, !tbaa !432
  switch i32 %i.gi, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.gj = fmul reassoc nsz arcp contract afn double %i.ft, %i.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.gk, align 16, !tbaa !185
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.gm, align 16, !tbaa !185
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.gj, ptr %i.gn, align 16, !tbaa !185
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %i.ft, ptr %i.go, align 8, !tbaa !185
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.fs, ptr %i.gp, align 16, !tbaa !185
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double %i.fr, ptr %i.gq, align 8, !tbaa !185
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double 1.000000e+00, ptr %i.gr, align 16, !tbaa !185
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gt = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.ft, i64 0
  %i.gu = insertelement <4 x double> %i.gt, double %i.fs, i64 1
  %i.gv = insertelement <4 x double> %i.gu, double %i.fr, i64 2
  %i.gw = fmul reassoc nsz arcp contract afn <4 x double> %i.gv, <double 4.000000e+00, double 3.000000e+00, double 2.000000e+00, double 1.000000e+00>
  store <4 x double> %i.gw, ptr %i.gs, align 8, !tbaa !185
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store double 0.000000e+00, ptr %i.gx, align 8, !tbaa !185
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.gz = fmul reassoc nsz arcp contract afn double %i.fs, 1.200000e+01
  store double %i.gz, ptr %i.gy, align 16, !tbaa !185
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.hb = fmul reassoc nsz arcp contract afn double %i.fr, 6.000000e+00
  store double %i.hb, ptr %i.ha, align 8, !tbaa !185
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store double 2.000000e+00, ptr %i.hc, align 16, !tbaa !185
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.he = fpext reassoc nsz arcp contract afn float %.0335 to double
  store double %i.he, ptr %i.b, align 16, !tbaa !185
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.hf, align 8, !tbaa !185
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hh = insertelement <2 x float> poison, float %.0339, i64 0
  %i.hi = insertelement <2 x float> %i.hh, float %.0341, i64 1
  %i.hj = fpext <2 x float> %i.hi to <2 x double>
  store <2 x double> %i.hj, ptr %i.hg, align 16, !tbaa !185
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.hk, align 16, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.a, ptr noundef %i.b, i32 noundef 5)
  %i.hl = load <4 x double>, ptr %i.b, align 16, !tbaa !185
  %i.hm = fptrunc <4 x double> %i.hl to <4 x float> ; 4 uses
  %i.hn = extractelement <4 x float> %i.hm, i64 0
  store float %i.hn, ptr %i.gg, align 16, !tbaa !13
  %i.ho = extractelement <4 x float> %i.hm, i64 1
  store float %i.ho, ptr %i.ge, align 16, !tbaa !13
  %i.hp = extractelement <4 x float> %i.hm, i64 2
  store float %i.hp, ptr %i.gc, align 16, !tbaa !13
  %i.hq = extractelement <4 x float> %i.hm, i64 3
  store float %i.hq, ptr %i.fy, align 16, !tbaa !13
  %i.hr = load double, ptr %i.hk, align 16, !tbaa !185
  %i.hs = fptrunc reassoc nsz arcp contract afn double %i.hr to float
  store float %i.hs, ptr %1, align 16, !tbaa !13
end_hunk_0
begin_hunk_1_@gamut_check_RGB:bb.a
  %i.v = fmul reassoc nsz arcp contract afn float %i.m, 3.000000e-02
  %i.w = fadd reassoc nsz arcp contract afn float %i.u, %i.v ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.l, 0.000000e+00
  %i.y = fmul reassoc nsz arcp contract afn float %i.m, 9.700000e-01
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fmul reassoc nsz arcp contract afn float %i.r, f0x3F309D77
  %i.ab = fmul reassoc nsz arcp contract afn float %i.w, f0x3EB2573F
  %i.ac = fadd reassoc nsz arcp contract afn float %i.aa, %i.ab ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, 0.000000e+00
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.a, %i.ac
  %i.af = select reassoc nsz arcp contract afn i1 %i.ad, float 0.000000e+00, float %i.ae ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.r ; 3 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, %i.w ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.af, %i.z ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load float, ptr %2, align 4, !tbaa !13  ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.ag, %i.al
  %i.an = load float, ptr %i.aj, align 4, !tbaa !13 ; 2 uses
  %i.ao = fmul reassoc nsz arcp contract afn float %i.ah, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %i.am
  %i.aq = load float, ptr %i.ak, align 4, !tbaa !13 ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ai, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn float %i.ap, %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !13
  %i.av = fmul reassoc nsz arcp contract afn float %i.ag, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !13
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ah, %i.ax
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ai, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.az, %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ag, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !13
  %i.bj = fmul reassoc nsz arcp contract afn float %i.ah, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !13
  %i.bn = fmul reassoc nsz arcp contract afn float %i.ai, %i.bm
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bk, %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.as, %i.bd
  %i.bt = select reassoc nsz arcp contract afn i1 %i.bs, float %i.as, float %i.bd ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bo
  %. = select reassoc nsz arcp contract afn i1 %i.bu, float %i.bt, float %i.bo
  %i.bv = fneg reassoc nsz arcp contract afn float %. ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 0.000000e+00
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bw, float %i.bv, float 0.000000e+00 ; 3 uses
  %i.by = fadd reassoc nsz arcp contract afn float %i.as, %i.bx ; 2 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bd, %i.bx ; 2 uses
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bo, %i.bx ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load float, ptr %0, align 4, !tbaa !13
  %i.ce = fmul reassoc nsz arcp contract afn float %i.by, %i.cd
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !13
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bz, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.ce
  %i.ci = load float, ptr %i.cc, align 4, !tbaa !13
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ca, %i.ci
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !13
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.by
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cp = load float, ptr %i.co, align 4, !tbaa !13
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.bz
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cq, %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !13
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.ca
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cr, %i.cu
  %i.cw = fmul reassoc nsz arcp contract afn float %i.ck, f0x3F309D77
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cv, f0x3EB2573F
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cw, %i.a
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, %i.cx
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, 5.000000e-01 ; 3 uses
  %i.db = fmul reassoc nsz arcp contract afn float %4, f0x3F8767CD ; 2 uses
  %i.dc = fcmp reassoc nsz arcp contract afn ogt float %i.da, %i.db
  %i.dd = fmul reassoc nsz arcp contract afn float %3, f0x3F8767CD ; 2 uses
  %i.de = fcmp reassoc nsz arcp contract afn olt float %i.da, %i.dd
  %.55 = select reassoc nsz arcp contract afn i1 %i.de, float %i.dd, float %i.da
  %i.df = select reassoc nsz arcp contract afn i1 %i.dc, float %i.db, float %.55 ; 2 uses
  %i.dg = tail call reassoc nsz arcp contract afn fastcc float @Ych_max_chroma(ptr noundef %1, float noundef %4, float noundef %i.df, float noundef %i.e, float noundef %i.g) ; 2 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt float %i.c, %i.dg
  %spec.select58 = select reassoc nsz arcp contract afn i1 %i.dh, float %i.c, float %i.dg ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %spec.select58, %i.e
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, f0x3E604727 ; 3 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %spec.select58, %i.g
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, 5.437140e-01 ; 3 uses
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj ; 2 uses
  %i.dn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dm ; 3 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dj, f0x3F733333
  %i.dp = fmul reassoc nsz arcp contract afn float %i.dl, 3.800000e-01
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, %i.do
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dn, 0.000000e+00
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dq, %i.dr ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dj, 5.000000e-02
  %i.du = fmul reassoc nsz arcp contract afn float %i.dl, 6.200000e-01
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.dt
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dn, 3.000000e-02
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dv, %i.dw ; 2 uses
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dm, 0.000000e+00
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dn, 9.700000e-01
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dy
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ds, f0x3F309D77
  %i.ec = fmul reassoc nsz arcp contract afn float %i.dx, f0x3EB2573F
  %i.ed = fadd reassoc nsz arcp contract afn float %i.eb, %i.ec ; 2 uses
  %i.ee = fcmp reassoc nsz arcp contract afn oeq float %i.ed, 0.000000e+00
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.df, %i.ed
  %i.eg = select reassoc nsz arcp contract afn i1 %i.ee, float 0.000000e+00, float %i.ef ; 3 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.ds ; 4 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eg, %i.dx ; 4 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %i.eg, %i.ea ; 4 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.eh, %i.al
  %i.el = fmul reassoc nsz arcp contract afn float %i.ei, %i.an
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.ek
  %i.en = fmul reassoc nsz arcp contract afn float %i.ej, %i.aq
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eq = fadd reassoc nsz arcp contract afn float %i.em, %i.en ; 2 uses
  store float %i.eq, ptr %6, align 4, !tbaa !13
  %i.er = load float, ptr %i.at, align 4, !tbaa !13
  %i.es = fmul reassoc nsz arcp contract afn float %i.eh, %i.er
  %i.et = load float, ptr %i.aw, align 4, !tbaa !13
  %i.eu = fmul reassoc nsz arcp contract afn float %i.ei, %i.et
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.es
  %i.ew = load float, ptr %i.ba, align 4, !tbaa !13
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ej, %i.ew
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ev, %i.ex ; 2 uses
  store float %i.ey, ptr %i.eo, align 4, !tbaa !13
  %i.ez = load float, ptr %i.be, align 4, !tbaa !13
  %i.fa = fmul reassoc nsz arcp contract afn float %i.eh, %i.ez
  %i.fb = load float, ptr %i.bh, align 4, !tbaa !13
  %i.fc = fmul reassoc nsz arcp contract afn float %i.ei, %i.fb
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fc, %i.fa
  %i.fe = load float, ptr %i.bl, align 4, !tbaa !13
  %i.ff = fmul reassoc nsz arcp contract afn float %i.ej, %i.fe
  %i.fg = fadd reassoc nsz arcp contract afn float %i.fd, %i.ff ; 2 uses
  store float %i.fg, ptr %i.ep, align 4, !tbaa !13
  %i.fh = load float, ptr %i.bp, align 4, !tbaa !13
  %i.fi = fmul reassoc nsz arcp contract afn float %i.eh, %i.fh
  %i.fj = load float, ptr %i.bq, align 4, !tbaa !13
  %i.fk = fmul reassoc nsz arcp contract afn float %i.ei, %i.fj
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fk, %i.fi
  %i.fm = load float, ptr %i.br, align 4, !tbaa !13
  %i.fn = fmul reassoc nsz arcp contract afn float %i.ej, %i.fm
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fl, %i.fn
  %i.fp = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.fq = insertelement <4 x float> %i.fp, float %i.ey, i64 1
  %i.fr = insertelement <4 x float> %i.fq, float %i.fg, i64 2
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 3 ; 3 uses
  %i.ft = insertelement <4 x float> poison, float %4, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fv = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fs, %i.fu
  %i.fw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fs, zeroinitializer
  %i.fx = select <4 x i1> %i.fw, <4 x float> zeroinitializer, <4 x float> %i.fs
  %i.fy = select <4 x i1> %i.fv, <4 x float> %i.fu, <4 x float> %i.fx
  store <4 x float> %i.fy, ptr %6, align 4, !tbaa !13
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @Ych_max_chroma(ptr nofree noundef nonnull readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #27 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn fastcc float @_clip_chroma_white(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call reassoc nsz arcp contract afn fastcc float @_clip_chroma_white(ptr noundef %i.b, float noundef %1, float noundef %2, float noundef %3, float noundef %4) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn fastcc float @_clip_chroma_white(ptr noundef %i.d, float noundef %1, float noundef %2, float noundef %3, float noundef %4) ; 2 uses
  %i.f = load float, ptr %0, align 4, !tbaa !13   ; 2 uses
  %i.g = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.h = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, %i.g ; 3 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !13 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.n = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.m ; 3 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.l, %i.o
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !13 ; 2 uses
  %i.t = fadd reassoc nsz arcp contract afn float %4, %3 ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.s
  %i.v = fsub reassoc nsz arcp contract afn float %i.q, %i.u ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %_clip_chroma_black.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = fmul reassoc nsz arcp contract afn float %i.l, f0x3F5B4315
  %i.y = fadd reassoc nsz arcp contract afn float %i.f, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, f0x3F0E1437
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, %i.z
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0xBEDAE22E
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.v ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oge float %i.ac, 0.000000e+00
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float %i.ac, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit.i

_clip_chroma_black.exit.i:                        ; preds = %bb.b, %bb.a
  %.0.i.i = phi nsz float [ %i.ae, %bb.b ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %i.af = load float, ptr %i.b, align 4, !tbaa !13 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !13 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.o
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn float %i.t, %i.am
  %i.ao = fsub reassoc nsz arcp contract afn float %i.ak, %i.an ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %_clip_chroma_black.exit21.i, label %bb.c

bb.c:                                             ; preds = %_clip_chroma_black.exit.i
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ai, f0x3F5B4315
  %i.ar = fadd reassoc nsz arcp contract afn float %i.af, %i.aq
  %i.as = fmul reassoc nsz arcp contract afn float %i.am, f0x3F0E1437
  %i.at = fadd reassoc nsz arcp contract afn float %i.ar, %i.as
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0xBEDAE22E
  %i.av = fdiv reassoc nsz arcp contract afn float %i.au, %i.ao ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn oge float %i.av, 0.000000e+00
  %i.ax = select reassoc nsz arcp contract afn i1 %i.aw, float %i.av, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit21.i

_clip_chroma_black.exit21.i:                      ; preds = %bb.c, %_clip_chroma_black.exit.i
  %.0.i20.i = phi nsz float [ %i.ax, %bb.c ], [ f0x7F7FFFFF, %_clip_chroma_black.exit.i ] ; 2 uses
  %i.ay = load float, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.o
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.t, %i.bf
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bd, %i.bg ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %Ych_max_chroma_without_negatives.exit, label %bb.d

bb.d:                                             ; preds = %_clip_chroma_black.exit21.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bb, f0x3F5B4315
  %i.bk = fadd reassoc nsz arcp contract afn float %i.ay, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0xBEDAE22E
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bh ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn oge float %i.bo, 0.000000e+00
  %i.bq = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bo, float f0x7F7FFFFF
  br label %Ych_max_chroma_without_negatives.exit

Ych_max_chroma_without_negatives.exit:            ; preds = %_clip_chroma_black.exit21.i, %bb.d
  %.0.i22.i = phi nsz float [ %i.bq, %bb.d ], [ f0x7F7FFFFF, %_clip_chroma_black.exit21.i ] ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn olt float %i.a, %i.c
  %i.bs = select reassoc nsz arcp contract afn i1 %i.br, float %i.a, float %i.c ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bs, %i.e
  %. = select reassoc nsz arcp contract afn i1 %i.bt, float %i.bs, float %i.e ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %.0.i.i, %.0.i20.i
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bu, float %.0.i.i, float %.0.i20.i ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn olt float %i.bv, %.0.i22.i
  %..i = select reassoc nsz arcp contract afn i1 %i.bw, float %i.bv, float %.0.i22.i ; 2 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %..i, %.
  %i.by = select reassoc nsz arcp contract afn i1 %i.bx, float %..i, float %.
  ret float %i.by
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @_clip_chroma_white(ptr nofree noundef nonnull readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #27 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %1, f0x3F8767CD
  %i.b = fsub reassoc nsz arcp contract afn float %i.a, %2 ; 2 uses
  %i.c = fcmp reassoc nsz arcp contract afn ogt float %i.b, 0.000000e+00
  %i.d = select reassoc nsz arcp contract afn i1 %i.c, float %i.b, float 0.000000e+00 ; 2 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e-03
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = fmul reassoc nsz arcp contract afn float %1, f0x3A8AA7BC
  %i.g = fmul reassoc nsz arcp contract afn float %1, f0x3F874523 ; 3 uses
  %i.h = load float, ptr %0, align 4, !tbaa !13   ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.j = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = fmul reassoc nsz arcp contract afn float %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !13 ; 2 uses
  %i.o = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.p = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.n, %i.q
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !13 ; 2 uses
  %i.v = fadd reassoc nsz arcp contract afn float %4, %3
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, %i.u
  %i.x = fsub reassoc nsz arcp contract afn float %i.s, %i.w ; 3 uses
  %i.y = fmul reassoc nsz arcp contract afn float %3, f0x3F2ECFE7
  %i.z = fmul reassoc nsz arcp contract afn float %4, f0x3EF6DAAB
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %1 ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn une float %i.x, 0.000000e+00
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ab, %i.x
  %i.ae = fcmp reassoc nsz arcp contract afn ugt float %i.g, %i.ad
  %or.cond.i = and i1 %i.ac, %i.ae
  br i1 %or.cond.i, label %bb.c, label %_clip_chroma_white_raw.exit

bb.c:                                             ; preds = %bb.b
  %i.af = fmul reassoc nsz arcp contract afn float %i.x, %i.g
  %i.ag = fsub reassoc nsz arcp contract afn float %i.af, %i.ab
  %i.ah = fmul reassoc nsz arcp contract afn float %i.n, f0x3F5B4315
  %i.ai = fadd reassoc nsz arcp contract afn float %i.h, %i.ah
  %i.aj = fmul reassoc nsz arcp contract afn float %i.u, f0x3F0E1437
  %i.ak = fadd reassoc nsz arcp contract afn float %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.g
  %i.am = fmul reassoc nsz arcp contract afn float %1, f0x3F7CFD26
  %i.an = fsub reassoc nsz arcp contract afn float %i.al, %i.am
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, f0xBEDAE22E
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.ao, %i.ag
  br label %_clip_chroma_white_raw.exit

_clip_chroma_white_raw.exit:                      ; preds = %bb.b, %bb.c
  %.1.i = phi nsz float [ f0x7F7FFFFF, %bb.b ], [ %i.ap, %bb.c ]
  %i.aq = fmul reassoc nsz arcp contract afn float %.1.i, %i.d
  %i.ar = fdiv reassoc nsz arcp contract afn float %i.aq, %i.f
  br label %_clip_chroma_white_raw.exit23

bb.d:                                             ; preds = %bb.a
  %i.as = load float, ptr %0, align 4, !tbaa !13  ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %3, f0x3F7AB8BE
  %i.au = fmul reassoc nsz arcp contract afn float %4, f0x3EC893CB
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = fmul reassoc nsz arcp contract afn float %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !13 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %3, f0x3CA8E83F
  %i.ba = fmul reassoc nsz arcp contract afn float %4, f0x3F1BB61A
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.az
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ay, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.aw
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13 ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %4, %3
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.bf
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bd, %i.bh ; 3 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %3, f0x3F2ECFE7
  %i.bk = fmul reassoc nsz arcp contract afn float %4, f0x3EF6DAAB
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bj
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %1 ; 2 uses
  %i.bn = fcmp reassoc nsz arcp contract afn une float %i.bi, 0.000000e+00
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bi
  %i.bp = fcmp reassoc nsz arcp contract afn ugt float %2, %i.bo
  %or.cond.i21 = and i1 %i.bn, %i.bp
  br i1 %or.cond.i21, label %bb.e, label %_clip_chroma_white_raw.exit23

bb.e:                                             ; preds = %bb.d
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bi, %2
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.bm
  %i.bs = fmul reassoc nsz arcp contract afn float %i.ay, f0x3F5B4315
  %i.bt = fadd reassoc nsz arcp contract afn float %i.as, %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bt, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %2
  %i.bx = fmul reassoc nsz arcp contract afn float %1, f0x3F7CFD26
  %i.by = fsub reassoc nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, f0xBEDAE22E
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.bz, %i.br
  br label %_clip_chroma_white_raw.exit23

_clip_chroma_white_raw.exit23:                    ; preds = %bb.e, %bb.d, %_clip_chroma_white_raw.exit
  %.0 = phi nsz float [ %i.ar, %_clip_chroma_white_raw.exit ], [ f0x7F7FFFFF, %bb.d ], [ %i.ca, %bb.e ] ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn oge float %.0, 0.000000e+00
  %i.cc = select reassoc nsz arcp contract afn i1 %i.cb, float %.0, float f0x7F7FFFFF
  ret float %i.cc
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @gauss_solve(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 4, 6) %2) unnamed_addr #4 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 2
  %i.b = zext nneg i32 %i.a to i64
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #36 ; 4 uses
  %i.d = add nsw i32 %2, -1                       ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 9 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  store i32 %i.d, ptr %i.f, align 4, !tbaa !14
  %i.g = zext nneg i32 %2 to i64                  ; 57 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %i.j = mul nuw nsw i64 %i.g, %i.g
  %i.k = shl nuw nsw i64 %i.j, 3
  %scevgep1 = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = add nsw i64 %i.h, -8
  %i.m = mul nuw nsw i64 %i.l, %i.g
  %i.n = shl nuw nsw i64 %i.g, 3
  %i.o = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.o
  %i.p = add nuw nsw i64 %i.o, 8
  %i.q = shl nuw nsw i64 %i.g, 3
  %i.r = add nsw i64 %i.g, -2
  %i.s = getelementptr i8, ptr %0, i64 %i.o
  %i.t = getelementptr i8, ptr %0, i64 %i.i
  %i.u = getelementptr i8, ptr %0, i64 %i.h
  %i.v = getelementptr i8, ptr %0, i64 %i.m
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %0, i64 %i.h
  br label %bb.b

.loopexit.i:                                      ; preds = %._crit_edge121.i, %.preheader111.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %i.g
  br i1 %exitcond151.not.i, label %.lr.ph.preheader.i9.preheader, label %bb.b

.lr.ph.preheader.i9.preheader:                    ; preds = %.loopexit.i
  %i.y = shl nuw nsw i64 %i.g, 3                  ; 4 uses
  %scevgep50 = getelementptr i8, ptr %1, i64 %i.y
  %i.z = add nuw nsw i64 %i.y, 8
  %i.aa = add nsw i64 %i.y, -8
  %i.ab = mul nuw nsw i64 %i.aa, %i.g
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = getelementptr i8, ptr %0, i64 %i.y
  %broadcast.splatinsert62 = insertelement <4 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat63 = shufflevector <4 x i64> %broadcast.splatinsert62, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.preheader.i9

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %indvars.iv147.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next148.i, %.loopexit.i ] ; 16 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 15 uses
  %i.af = xor i64 %indvars.iv147.i, -1
  %i.ag = add nsw i64 %i.af, %i.g                 ; 2 uses
  %i.ah = sub nsw i64 %i.r, %indvars.iv147.i      ; 2 uses
  %i.ai = shl nuw nsw i64 %indvars.iv147.i, 3
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %scevgep27 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = mul i64 %i.p, %indvars.iv147.i
  %i.al = getelementptr i8, ptr %0, i64 %i.ak
  %scevgep31 = getelementptr i8, ptr %i.al, i64 8
  %i.am = mul i64 %i.q, %indvars.iv147.i
  %scevgep32 = getelementptr i8, ptr %i.s, i64 %i.am
  %i.an = xor i64 %indvars.iv147.i, -1
  %i.ao = add nsw i64 %i.an, %i.g                 ; 10 uses
  %i.ap = mul i64 %i.i, %indvars.iv147.i          ; 3 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ap ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.u, i64 %i.ap
  %i.aq = shl nuw nsw i64 %indvars.iv147.i, 3
  %scevgep3 = getelementptr i8, ptr %i.w, i64 %i.aq
  %i.ar = getelementptr i8, ptr %0, i64 %i.ap
  %scevgep4 = getelementptr i8, ptr %i.ar, i64 8
  %i.as = mul i64 %i.n, %indvars.iv147.i
  %scevgep5 = getelementptr i8, ptr %i.x, i64 %i.as
  %indvars149.i = trunc i64 %indvars.iv147.i to i32 ; 4 uses
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 3 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next148.i, %i.g ; 2 uses
  br i1 %i.at, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147.i ; 10 uses
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv124.i.prol = phi i64 [ %indvars.iv.next125.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0100112.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %indvars149.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.au = mul nuw nsw i64 %indvars.iv124.i.prol, %i.g
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.au
  %i.av = load double, ptr %gep.i.prol, align 8, !tbaa !185
  %i.aw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.av)
  %i.ax = mul nsw i32 %.0100112.i.prol, %2
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !185
  %i.bb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp reassoc nsz arcp contract afn ogt double %i.aw, %i.bb
  %i.bd = trunc nuw nsw i64 %indvars.iv124.i.prol to i32
  %spec.select.i.prol = select i1 %i.bc, i32 %i.bd, i32 %.0100112.i.prol ; 3 uses
  %indvars.iv.next125.i.prol = add nuw nsw i64 %indvars.iv124.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !500

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %indvars.iv124.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next125.i.prol, %.lr.ph.i.prol ]
  %.0100112.i.unr = phi i32 [ %indvars149.i, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.be = icmp ult i64 %i.ah, 3
  br i1 %i.be, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.0100.lcssa.i = phi i32 [ %indvars149.i, %bb.b ], [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv147.i
  store i32 %.0100.lcssa.i, ptr %i.bf, align 4, !tbaa !14
  %i.bg = mul nsw i32 %.0100.lcssa.i, %2
  %i.bh = sext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %0, i64 %indvars.iv147.i ; 8 uses
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !185 ; 7 uses
  %i.bl = mul nuw nsw i64 %indvars.iv147.i, %i.g  ; 2 uses
  %i.bm = mul nuw nsw i32 %2, %indvars149.i
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bn ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !185
  store double %i.bp, ptr %i.bj, align 8, !tbaa !185
  store double %i.bk, ptr %i.bo, align 8, !tbaa !185
  %i.bq = fcmp reassoc nsz arcp contract afn une double %i.bk, 0.000000e+00
  br i1 %i.bq, label %.preheader111.i, label %gauss_make_triangular.exit.thread

.preheader111.i:                                  ; preds = %._crit_edge.i
  br i1 %i.at, label %.lr.ph115.i.preheader, label %.loopexit.i

.lr.ph115.i.preheader:                            ; preds = %.preheader111.i
  %xtraiter76 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol.preheader

.lr.ph115.i.prol.preheader:                       ; preds = %.lr.ph115.i.preheader
  %i.br = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bk
  br label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.prol.preheader
  %indvars.iv127.i.prol = phi i64 [ %indvars.iv.next128.i.prol, %.lr.ph115.i.prol ], [ %indvars.iv.i, %.lr.ph115.i.prol.preheader ] ; 2 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.i.prol.preheader ]
  %i.bs = mul nuw nsw i64 %indvars.iv127.i.prol, %i.g
  %gep156.i.prol = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bt = load double, ptr %gep156.i.prol, align 8, !tbaa !185
  %i.bu = fneg reassoc nsz arcp contract afn double %i.bt
  %i.bv = fmul reassoc nsz arcp contract afn double %i.bu, %i.br
  store double %i.bv, ptr %gep156.i.prol, align 8, !tbaa !185
  %indvars.iv.next128.i.prol = add nuw nsw i64 %indvars.iv127.i.prol, 1 ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !501

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.preheader
  %indvars.iv127.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph115.i.preheader ], [ %indvars.iv.next128.i.prol, %.lr.ph115.i.prol ]
  %i.bw = icmp ult i64 %i.ah, 3
  br i1 %i.bw, label %._crit_edge116.i, label %.lr.ph115.i.preheader.new

.lr.ph115.i.preheader.new:                        ; preds = %.lr.ph115.i.prol.loopexit
  %i.bx = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bk
  %i.by = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bk
  %i.bz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bk
  %i.ca = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bk
  br label %.lr.ph115.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i.3, %.lr.ph.i ], [ %indvars.iv124.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0100112.i = phi i32 [ %spec.select.i.3, %.lr.ph.i ], [ %.0100112.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.cb = mul nuw nsw i64 %indvars.iv124.i, %i.g
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.cb
  %i.cc = load double, ptr %gep.i, align 8, !tbaa !185
end_hunk_1
