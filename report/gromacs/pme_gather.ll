Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_gather?download=true
inline.NumInlined: 148
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z17gather_f_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEEbP11PmeAtomCommRK12splinedata_tf:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.ar = icmp sgt i32 %i.b, 0
  %wide.trip.count90.i = zext i32 %i.b to i64     ; 4 uses
  %i.as = sitofp i32 %i.v to float
  %i.at = sitofp <2 x i32> %i.t to <2 x float>    ; 2 uses
  %i.au = sext i32 %i.b to i64
  %i.av = extractelement <2 x float> %i.at, i64 1
  %xtraiter = and i64 %wide.trip.count90.i, 3     ; 3 uses
  %i.aw = icmp ult i32 %i.b, 4
  %unroll_iter = and i64 %wide.trip.count90.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.ax = phi i32 [ %i.q, %.lr.ph ], [ %i.kq, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !143
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !107
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = load i64, ptr %i.x, align 8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = load float, ptr %i.be, align 4, !tbaa !101
  %i.bg = fmul float %6, %i.bf                    ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.bb ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bh, align 4, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bj = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  store ptr %0, ptr %7, align 8, !tbaa !145, !noalias !146
  store ptr %1, ptr %i.y, align 8, !tbaa !111, !noalias !146
  store ptr %4, ptr %i.z, align 8, !tbaa !147, !noalias !146
  store ptr %5, ptr %i.aa, align 8, !tbaa !148, !noalias !146
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bk, ptr %i.ab, align 8, !tbaa !112, !noalias !146
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !149, !alias.scope !144
  %i.bm = load i32, ptr %i.ad, align 8, !tbaa !150, !noalias !146 ; 3 uses
  store i32 %i.bm, ptr %i.ac, align 4, !tbaa !115, !noalias !146
  %i.bn = load i32, ptr %i.af, align 4, !tbaa !151, !noalias !146 ; 4 uses
  store i32 %i.bn, ptr %i.ae, align 8, !tbaa !116, !noalias !146
  %i.bo = load i32, ptr %i.az, align 4, !tbaa !107
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bp ; 4 uses
  store ptr %i.bq, ptr %i.ag, align 8, !tbaa !152, !noalias !146
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !107 ; 3 uses
  store i32 %i.br, ptr %i.ai, align 8, !tbaa !117, !noalias !146
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !107 ; 3 uses
  store i32 %i.bt, ptr %i.aj, align 4, !tbaa !118, !noalias !146
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !107 ; 3 uses
  store i32 %i.bv, ptr %i.ak, align 8, !tbaa !119, !noalias !146
  switch i32 %i.b, label %bb.h [
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.bw = shl nuw nsw i64 %indvars.iv, 2          ; 6 uses
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !120
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw ; 4 uses
  %i.bz = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bw
  %i.cd = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bw ; 4 uses
  %i.cf = load ptr, ptr %i.ap, align 8, !tbaa !120
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !120
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.bw
  %.val66.i = load <4 x float>, ptr %i.cc, align 16, !tbaa !121
  %i.cj = shufflevector <4 x float> %.val66.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %.val.i = load <4 x float>, ptr %i.ci, align 16, !tbaa !121
  %i.ck = shufflevector <4 x float> %.val.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cl = sext i32 %i.bv to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.cl ; 4 uses
  %i.cm = insertelement <8 x i32> poison, i32 %i.bn, i64 0
  %i.cn = shufflevector <8 x i32> %i.cm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.co = mul <8 x i32> %i.cn, <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cp = add <8 x i32> %i.co, <i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2> ; 4 uses
  %i.cq = load float, ptr %i.by, align 4, !tbaa !101
  %i.cr = insertelement <16 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <16 x float> %i.cr, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ct = load float, ptr %i.ce, align 4, !tbaa !101
  %i.cu = insertelement <16 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <16 x float> %i.cu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cw = call noundef <16 x float> @llvm.masked.expandload.v16f32.p0(ptr readonly %i.ca, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <16 x float> zeroinitializer)
  %i.cx = shufflevector <16 x float> %i.cw, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12> ; 8 uses
  %i.cy = call noundef <16 x float> @llvm.masked.expandload.v16f32.p0(ptr readonly %i.cg, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <16 x float> zeroinitializer)
  %i.cz = shufflevector <16 x float> %i.cy, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12> ; 4 uses
  %i.da = fmul <16 x float> %i.cv, %i.cx
  %i.db = fmul <16 x float> %i.cs, %i.cz
  %i.dc = fmul <16 x float> %i.cs, %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !101
  %i.df = insertelement <16 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !101
  %i.dj = insertelement <16 x float> poison, float %i.di, i64 0
  %i.dk = shufflevector <16 x float> %i.dj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dl = fmul <16 x float> %i.cx, %i.dk
  %i.dm = fmul <16 x float> %i.cz, %i.dg
  %i.dn = fmul <16 x float> %i.cx, %i.dg
  %i.do = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !101
  %i.dq = insertelement <16 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !101
  %i.du = insertelement <16 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <16 x float> %i.du, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dw = fmul <16 x float> %i.cx, %i.dv
  %i.dx = fmul <16 x float> %i.cz, %i.dr
  %i.dy = fmul <16 x float> %i.cx, %i.dr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !101
  %i.eb = insertelement <16 x float> poison, float %i.ea, i64 0
  %i.ec = shufflevector <16 x float> %i.eb, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !101
  %i.ef = insertelement <16 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <16 x float> %i.ef, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eh = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %i.ei = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ej = add <4 x i32> %i.ei, <i32 0, i32 1, i32 2, i32 3>
  %i.ek = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %i.el = shufflevector <4 x i32> %i.ek, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.em = mul <4 x i32> %i.ej, %i.el
  %i.en = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.eo = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ep = add <4 x i32> %i.eo, %i.em
  %i.eq = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %i.er = shufflevector <4 x i32> %i.eq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.es = mul <4 x i32> %i.ep, %i.er              ; 4 uses
  %i.et = extractelement <4 x i32> %i.es, i64 0
  %i.eu = sext i32 %i.et to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.eu
  %i.ev = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i, <8 x i32> %i.cp, <8 x i1> splat (i1 true), i32 4)
  %i.ew = bitcast <8 x double> %i.ev to <16 x float> ; 2 uses
  %i.ex = fmul <16 x float> %i.cj, %i.ew          ; 2 uses
  %i.ey = fmul <16 x float> %i.ck, %i.ew
  %i.ez = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.da, <16 x float> %i.ex, <16 x float> zeroinitializer)
  %i.fa = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.db, <16 x float> %i.ex, <16 x float> zeroinitializer)
  %i.fb = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dc, <16 x float> %i.ey, <16 x float> zeroinitializer)
  %i.fc = extractelement <4 x i32> %i.es, i64 1
  %i.fd = sext i32 %i.fc to i64
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fd
  %i.fe = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.1.i, <8 x i32> %i.cp, <8 x i1> splat (i1 true), i32 4)
  %i.ff = bitcast <8 x double> %i.fe to <16 x float> ; 2 uses
  %i.fg = fmul <16 x float> %i.cj, %i.ff          ; 2 uses
  %i.fh = fmul <16 x float> %i.ck, %i.ff
  %i.fi = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dl, <16 x float> %i.fg, <16 x float> %i.ez)
  %i.fj = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dm, <16 x float> %i.fg, <16 x float> %i.fa)
  %i.fk = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dn, <16 x float> %i.fh, <16 x float> %i.fb)
  %i.fl = extractelement <4 x i32> %i.es, i64 2
  %i.fm = sext i32 %i.fl to i64
  %gep.2.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fm
  %i.fn = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.2.i, <8 x i32> %i.cp, <8 x i1> splat (i1 true), i32 4)
  %i.fo = bitcast <8 x double> %i.fn to <16 x float> ; 2 uses
  %i.fp = fmul <16 x float> %i.cj, %i.fo          ; 2 uses
  %i.fq = fmul <16 x float> %i.ck, %i.fo
  %i.fr = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dw, <16 x float> %i.fp, <16 x float> %i.fi)
  %i.fs = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dx, <16 x float> %i.fp, <16 x float> %i.fj)
  %i.ft = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dy, <16 x float> %i.fq, <16 x float> %i.fk)
  %i.fu = extractelement <4 x i32> %i.es, i64 3
  %i.fv = sext i32 %i.fu to i64
  %gep.3.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fv
  %i.fw = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.3.i, <8 x i32> %i.cp, <8 x i1> splat (i1 true), i32 4)
  %i.fx = bitcast <8 x double> %i.fw to <16 x float> ; 2 uses
  %i.fy = fmul <16 x float> %i.cj, %i.fx          ; 2 uses
  %i.fz = fmul <16 x float> %i.ck, %i.fx
  %i.ga = fmul <16 x float> %i.cx, %i.eg
  %i.gb = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ga, <16 x float> %i.fy, <16 x float> %i.fr) ; 2 uses
  %i.gc = fmul <16 x float> %i.cz, %i.ec
  %i.gd = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.gc, <16 x float> %i.fy, <16 x float> %i.fs) ; 2 uses
  %i.ge = fmul <16 x float> %i.cx, %i.ec
  %i.gf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ge, <16 x float> %i.fz, <16 x float> %i.ft) ; 2 uses
  %i.gg = shufflevector <16 x float> %i.gb, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = fadd <16 x float> %i.gb, %i.gg          ; 2 uses
  %i.gi = shufflevector <16 x float> %i.gh, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.gj = fadd <16 x float> %i.gh, %i.gi          ; 2 uses
  %i.gk = shufflevector <16 x float> %i.gj, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.gl = fadd <16 x float> %i.gj, %i.gk          ; 2 uses
  %8 = shufflevector <16 x float> %i.gd, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gm = fadd <16 x float> %i.gd, %8             ; 2 uses
  %9 = shufflevector <16 x float> %i.gm, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %10 = fadd <16 x float> %i.gm, %9               ; 2 uses
  %11 = shufflevector <16 x float> %10, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %12 = fadd <16 x float> %10, %11                ; 2 uses
  %13 = shufflevector <16 x float> %i.gf, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = fadd <16 x float> %i.gf, %13              ; 2 uses
  %15 = shufflevector <16 x float> %14, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %16 = fadd <16 x float> %14, %15                ; 2 uses
  %17 = shufflevector <16 x float> %16, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %18 = fadd <16 x float> %16, %17                ; 2 uses
  %19 = shufflevector <16 x float> %18, <16 x float> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = fadd <16 x float> %18, %19
  %.0.vec.extract.i68.i = extractelement <16 x float> %20, i64 0
  %21 = shufflevector <16 x float> %i.gl, <16 x float> %12, <2 x i32> <i32 0, i32 16>
  %22 = shufflevector <16 x float> %i.gl, <16 x float> %12, <2 x i32> <i32 1, i32 17>
  %.sroa.074.4.vec.insert.i = fadd <2 x float> %21, %22
  br label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

bb.g:                                             ; preds = %bb.e
  %i.gn = call { <2 x float>, float } @_ZNK10do_fsplineclILi5EEENSt9enable_ifIXooeqT_Li4EeqT_Li5EEN3gmx11BasicVectorIfEEE4typeESt17integral_constantIiXT_EE(ptr noundef nonnull align 8 dereferenceable(68) %7) ; 2 uses
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.gn, 0
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.gn, 1
  br label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

bb.h:                                             ; preds = %bb.e
  %i.go = mul nsw i64 %indvars.iv, %i.au          ; 6 uses
  %i.gp = load ptr, ptr %i.al, align 8, !tbaa !120
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.go
  %i.gr = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.go
  %i.gt = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.go ; 5 uses
  %i.gv = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.go
  %i.gx = load ptr, ptr %i.ap, align 8, !tbaa !120
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.go
  %i.gz = load ptr, ptr %i.aq, align 8, !tbaa !120
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.go ; 5 uses
  br i1 %i.ar, label %.lr.ph66.us.i, label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

.lr.ph66.us.i:                                    ; preds = %bb.h, %._crit_edge67.split.us.us.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %._crit_edge67.split.us.us.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.074.us.i = phi <2 x float> [ %i.jt, %._crit_edge67.split.us.us.i ], [ zeroinitializer, %bb.h ]
  %.sroa.7.073.us.i = phi float [ %i.jv, %._crit_edge67.split.us.us.i ], [ 0.000000e+00, %bb.h ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv87.i
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !101 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv87.i
  %i.he = load float, ptr %i.hd, align 4, !tbaa !101
  %i.hf = trunc i64 %indvars.iv87.i to i32
  %i.hg = add i32 %i.br, %i.hf
  %i.hh = mul i32 %i.hg, %i.bm
  %invariant.op70.us.i = add i32 %i.hh, %i.bt
  %i.hi = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.hc, i64 1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph66.us.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %._crit_edge.us.us.i ], [ 0, %.lr.ph66.us.i ] ; 4 uses
  %.sroa.0.163.us.us.i = phi <2 x float> [ %i.jt, %._crit_edge.us.us.i ], [ %.sroa.0.074.us.i, %.lr.ph66.us.i ]
  %.sroa.7.162.us.us.i = phi float [ %i.jv, %._crit_edge.us.us.i ], [ %.sroa.7.073.us.i, %.lr.ph66.us.i ]
  %i.hk = trunc nuw nsw i64 %indvars.iv82.i to i32
  %.reass71.us.us.i = add i32 %invariant.op70.us.i, %i.hk
  %i.hl = mul i32 %.reass71.us.us.i, %i.bn
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv82.i
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !101 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv82.i
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !101
  %invariant.op.us.us.i = add i32 %i.hl, %i.bv    ; 5 uses
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 7 uses
  %.04659.us.us.i = phi float [ %i.jd, %.lr.ph.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %.04758.us.us.i = phi float [ %i.ja, %.lr.ph.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.hq = trunc nuw nsw i64 %indvars.iv.i to i32
  %.reass.us.us.i = add i32 %invariant.op.us.us.i, %i.hq
  %i.hr = sext i32 %.reass.us.us.i to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !101 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !101
  %i.hw = call float @llvm.fmuladd.f32(float %i.hv, float %i.ht, float %.04758.us.us.i)
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !101
  %i.hz = call float @llvm.fmuladd.f32(float %i.hy, float %i.ht, float %.04659.us.us.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ia = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.reass.us.us.i.1 = add i32 %invariant.op.us.us.i, %i.ia
  %i.ib = sext i32 %.reass.us.us.i.1 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !101 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i
  %i.if = load float, ptr %i.ie, align 4, !tbaa !101
  %i.ig = call float @llvm.fmuladd.f32(float %i.if, float %i.id, float %i.hw)
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next.i
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !101
  %i.ij = call float @llvm.fmuladd.f32(float %i.ii, float %i.id, float %i.hz)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 3 uses
  %i.ik = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %.reass.us.us.i.2 = add i32 %invariant.op.us.us.i, %i.ik
  %i.il = sext i32 %.reass.us.us.i.2 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %1, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !101 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i.1
  %i.ip = load float, ptr %i.io, align 4, !tbaa !101
  %i.iq = call float @llvm.fmuladd.f32(float %i.ip, float %i.in, float %i.ig)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next.i.1
  %i.is = load float, ptr %i.ir, align 4, !tbaa !101
  %i.it = call float @llvm.fmuladd.f32(float %i.is, float %i.in, float %i.ij)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 3 uses
  %i.iu = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %.reass.us.us.i.3 = add i32 %invariant.op.us.us.i, %i.iu
  %i.iv = sext i32 %.reass.us.us.i.3 to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !101 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i.2
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !101
  %i.ja = call float @llvm.fmuladd.f32(float %i.iz, float %i.ix, float %i.iq) ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next.i.2
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !101
  %i.jd = call float @llvm.fmuladd.f32(float %i.jc, float %i.ix, float %i.it) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !128

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.04659.us.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.i ], [ %i.jd, %._crit_edge.us.us.i.unr-lcssa ]
  %.04758.us.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.i ], [ %i.ja, %._crit_edge.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %bb.i ], [ %indvars.iv.i.epil.init, %.epil.preheader ] ; 4 uses
  %.04659.us.us.i.epil = phi float [ %i.jn, %bb.i ], [ %.04659.us.us.i.epil.init, %.epil.preheader ]
  %.04758.us.us.i.epil = phi float [ %i.jk, %bb.i ], [ %.04758.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.i ], [ 0, %.epil.preheader ]
  %i.je = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %.reass.us.us.i.epil = add i32 %invariant.op.us.us.i, %i.je
  %i.jf = sext i32 %.reass.us.us.i.epil to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jf
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !101 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i.epil
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !101
  %i.jk = call float @llvm.fmuladd.f32(float %i.jj, float %i.jh, float %.04758.us.us.i.epil) ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.epil
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !101
  %i.jn = call float @llvm.fmuladd.f32(float %i.jm, float %i.jh, float %.04659.us.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.i, !llvm.loop !129

._crit_edge.us.us.i:                              ; preds = %bb.i, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa90 = phi float [ %i.ja, %._crit_edge.us.us.i.unr-lcssa ], [ %i.jk, %bb.i ]
  %.lcssa = phi float [ %i.jd, %._crit_edge.us.us.i.unr-lcssa ], [ %i.jn, %bb.i ]
  %i.jo = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %i.hp, i64 1
  %i.jq = fmul <2 x float> %i.hj, %i.jp
  %i.jr = insertelement <2 x float> poison, float %.lcssa90, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.js, <2 x float> %.sroa.0.163.us.us.i) ; 3 uses
  %i.ju = fmul float %i.hc, %i.hn
  %i.jv = call float @llvm.fmuladd.f32(float %i.ju, float %.lcssa, float %.sroa.7.162.us.us.i) ; 3 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count90.i
  br i1 %exitcond86.not.i, label %._crit_edge67.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !130

._crit_edge67.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count90.i
  br i1 %exitcond91.not.i, label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit, label %.lr.ph66.us.i, !llvm.loop !131

_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit: ; preds = %._crit_edge67.split.us.us.i, %bb.h, %bb.g, %bb.f
  %.sroa.10.0 = phi float [ %.fca.1.extract3, %bb.g ], [ %.0.vec.extract.i68.i, %bb.f ], [ 0.000000e+00, %bb.h ], [ %i.jv, %._crit_edge67.split.us.us.i ]
  %.sroa.0.0 = phi <2 x float> [ %.fca.0.extract2, %bb.g ], [ %.sroa.074.4.vec.insert.i, %bb.f ], [ zeroinitializer, %bb.h ], [ %i.jt, %._crit_edge67.split.us.us.i ] ; 2 uses
  %i.jw = fneg float %i.bg                        ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.jx = fmul float %.sroa.0.0.vec.extract, %i.as ; 3 uses
  %i.jy = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.bb ; 3 uses
  %shift = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.at
  %i.jz = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ka = fmul float %i.h, %i.jz
  %i.kb = fmul float %i.e, %i.jx
  %i.kc = call float @llvm.fmuladd.f32(float %i.jx, float %i.f, float %i.ka)
  %i.kd = load <2 x float>, ptr %i.jy, align 4, !tbaa !101
  %i.ke = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %i.kc, i64 1
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.kh, <2 x float> %i.kd)
  store <2 x float> %i.ki, ptr %i.jy, align 4, !tbaa !101
  %i.kj = fmul float %i.l, %i.jz
  %i.kk = call float @llvm.fmuladd.f32(float %i.jx, float %i.j, float %i.kj)
  %i.kl = fmul float %.sroa.10.0, %i.av
  %i.km = call float @llvm.fmuladd.f32(float %i.kl, float %i.n, float %i.kk)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !101
  %i.kp = call float @llvm.fmuladd.f32(float %i.jw, float %i.km, float %i.ko)
  store float %i.kp, ptr %i.kn, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %.pre = load i32, ptr %5, align 8, !tbaa !141
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit, %bb.d
  %i.kq = phi i32 [ %.pre, %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit ], [ %i.ax, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = icmp slt i64 %indvars.iv.next, %i.kr
  br i1 %i.ks, label %bb.b, label %._crit_edge, !llvm.loop !132
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, float } @_ZNK10do_fsplineclILi5EEENSt9enable_ifIXooeqT_Li4EeqT_Li5EEN3gmx11BasicVectorIfEEE4typeESt17integral_constantIiXT_EE(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112
  %i.c = mul nsw i32 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154, !nonnull !155, !align !156 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.h = sext i32 %i.c to i64                     ; 6 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.h ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !157, !nonnull !155, !align !156
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !158 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !119 ; 2 uses
  %i.ad = and i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.af = sub nsw i64 0, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.af ; 2 uses
  %.val6.i = load <4 x float>, ptr %i.ag, align 1, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val.i = load <4 x float>, ptr %i.ah, align 1, !tbaa !121
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %.val6.i101 = load <4 x float>, ptr %i.ai, align 1, !tbaa !121
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i102 = load <4 x float>, ptr %i.aj, align 1, !tbaa !121
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  %.sroa.066.0.copyload121 = load <16 x i1>, ptr %i.ak, align 2, !tbaa !160 ; 2 uses
  %i.al = shufflevector <4 x float> %.val6.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.am = select <16 x i1> %.sroa.066.0.copyload121, <16 x float> %i.al, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.an = shufflevector <16 x float> %i.am, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ao = shufflevector <4 x float> %.val6.i101, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ap = select <16 x i1> %.sroa.066.0.copyload121, <16 x float> %i.ao, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.aq = shufflevector <16 x float> %i.ap, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ae
  %.sroa.060.0.copyload122 = load <16 x i1>, ptr %i.as, align 2, !tbaa !160 ; 2 uses
  %i.at = shufflevector <4 x float> %.val.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = select <16 x i1> %.sroa.060.0.copyload122, <16 x float> %i.at, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.av = shufflevector <16 x float> %i.au, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.aw = shufflevector <4 x float> %.val.i102, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ax = select <16 x i1> %.sroa.060.0.copyload122, <16 x float> %i.aw, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.ay = shufflevector <16 x float> %i.ax, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !117
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !115
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !116 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !111
  %i.bj = sext i32 %i.ac to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bi, i64 %i.bj
  %invariant.gep123 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.af ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !101 ; 2 uses
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre152 = load float, ptr %.phi.trans.insert151, align 4, !tbaa !101
  %.phi.trans.insert153 = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.pre154 = load float, ptr %.phi.trans.insert153, align 4, !tbaa !101 ; 2 uses
  %.phi.trans.insert155 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.pre156 = load float, ptr %.phi.trans.insert155, align 4, !tbaa !101
  %i.bk = load float, ptr %i.l, align 4, !tbaa !101 ; 2 uses
  %i.bl = load float, ptr %i.u, align 4, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !101 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.br = load float, ptr %i.bq, align 4, !tbaa !101 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !101
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %1 = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %2 = fadd <4 x float> %i.fk, %1                 ; 2 uses
  %3 = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %4 = fadd <4 x float> %i.fn, %3                 ; 2 uses
  %5 = shufflevector <4 x float> %2, <4 x float> %4, <2 x i32> <i32 0, i32 4>
  %6 = shufflevector <4 x float> %2, <4 x float> %4, <2 x i32> <i32 1, i32 5>
  %i.bu = fadd <2 x float> %5, %6
  %i.bv = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bw = fadd <4 x float> %i.fq, %i.bv           ; 2 uses
  %shift = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bw, %shift
  %i.bx = extractelement <4 x float> %foldExtExtBinop, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.bu, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.bx, 1
  ret { <2 x float>, float } %.fca.1.insert

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.sroa.073.0132 = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.fk, %bb.c ]
  %.sroa.071.0131 = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.fn, %bb.c ]
  %.sroa.069.0130 = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.fq, %bb.c ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !101 ; 10 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !101 ; 5 uses
  %i.cc = trunc i64 %indvars.iv to i32
  %i.cd = add i32 %i.ba, %i.cc
  %i.ce = mul i32 %i.cd, %i.bc
  %invariant.op = add i32 %i.ce, %i.bg            ; 5 uses
  %i.cf = mul i32 %invariant.op, %i.be
  %i.cg = sext i32 %i.cf to i64
  %gep124 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.cg ; 2 uses
  %.val100 = load <4 x float>, ptr %gep124, align 16, !tbaa !121 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %gep124, i64 16
  %.val = load <4 x float>, ptr %i.ch, align 16, !tbaa !121 ; 2 uses
  %i.ci = fmul <4 x float> %i.an, %.val100
  %i.cj = fmul <4 x float> %i.aq, %.val100
  %i.ck = fmul <4 x float> %i.av, %.val
  %i.cl = fmul <4 x float> %i.ay, %.val
  %i.cm = fadd <4 x float> %i.ci, %i.ck           ; 2 uses
  %i.cn = fadd <4 x float> %i.cj, %i.cl
  %.scalar = fmul float %i.cb, %i.bk
  %i.co = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cp, <4 x float> %i.cm, <4 x float> %.sroa.073.0132)
  %.scalar137 = fmul float %i.bz, %i.bl
  %i.cr = insertelement <4 x float> poison, float %.scalar137, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cs, <4 x float> %i.cm, <4 x float> %.sroa.071.0131)
  %.scalar138 = fmul float %i.bz, %i.bk
  %i.cu = insertelement <4 x float> poison, float %.scalar138, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cv, <4 x float> %i.cn, <4 x float> %.sroa.069.0130)
  %.reass.1 = add i32 %invariant.op, 1
  %i.cx = mul i32 %.reass.1, %i.be
  %i.cy = sext i32 %i.cx to i64
  %gep124.1 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.cy ; 2 uses
  %.val100.1 = load <4 x float>, ptr %gep124.1, align 16, !tbaa !121 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %gep124.1, i64 16
  %.val.1 = load <4 x float>, ptr %i.cz, align 16, !tbaa !121 ; 2 uses
  %i.da = fmul <4 x float> %i.an, %.val100.1
  %i.db = fmul <4 x float> %i.aq, %.val100.1
  %i.dc = fmul <4 x float> %i.av, %.val.1
  %i.dd = fmul <4 x float> %i.ay, %.val.1
  %i.de = fadd <4 x float> %i.da, %i.dc           ; 2 uses
  %i.df = fadd <4 x float> %i.db, %i.dd
  %.scalar139 = fmul float %i.cb, %i.bn
  %i.dg = insertelement <4 x float> poison, float %.scalar139, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dh, <4 x float> %i.de, <4 x float> %i.cq)
  %.scalar140 = fmul float %i.bz, %i.bp
  %i.dj = insertelement <4 x float> poison, float %.scalar140, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dk, <4 x float> %i.de, <4 x float> %i.ct)
  %.scalar141 = fmul float %i.bz, %i.bn
  %i.dm = insertelement <4 x float> poison, float %.scalar141, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dn, <4 x float> %i.df, <4 x float> %i.cw)
  %.reass.2 = add i32 %invariant.op, 2
  %i.dp = mul i32 %.reass.2, %i.be
  %i.dq = sext i32 %i.dp to i64
  %gep124.2 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.dq ; 2 uses
  %.val100.2 = load <4 x float>, ptr %gep124.2, align 16, !tbaa !121 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %gep124.2, i64 16
  %.val.2 = load <4 x float>, ptr %i.dr, align 16, !tbaa !121 ; 2 uses
  %i.ds = fmul <4 x float> %i.an, %.val100.2
  %i.dt = fmul <4 x float> %i.aq, %.val100.2
  %i.du = fmul <4 x float> %i.av, %.val.2
  %i.dv = fmul <4 x float> %i.ay, %.val.2
  %i.dw = fadd <4 x float> %i.ds, %i.du           ; 2 uses
  %i.dx = fadd <4 x float> %i.dt, %i.dv
  %.scalar142 = fmul float %i.cb, %.pre
  %i.dy = insertelement <4 x float> poison, float %.scalar142, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dz, <4 x float> %i.dw, <4 x float> %i.di)
  %.scalar143 = fmul float %i.bz, %.pre152
  %i.eb = insertelement <4 x float> poison, float %.scalar143, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ec, <4 x float> %i.dw, <4 x float> %i.dl)
  %.scalar144 = fmul float %i.bz, %.pre
  %i.ee = insertelement <4 x float> poison, float %.scalar144, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ef, <4 x float> %i.dx, <4 x float> %i.do)
  %.reass.3 = add i32 %invariant.op, 3
  %i.eh = mul i32 %.reass.3, %i.be
  %i.ei = sext i32 %i.eh to i64
  %gep124.3 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.ei ; 2 uses
  %.val100.3 = load <4 x float>, ptr %gep124.3, align 16, !tbaa !121 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %gep124.3, i64 16
  %.val.3 = load <4 x float>, ptr %i.ej, align 16, !tbaa !121 ; 2 uses
  %i.ek = fmul <4 x float> %i.an, %.val100.3
  %i.el = fmul <4 x float> %i.aq, %.val100.3
  %i.em = fmul <4 x float> %i.av, %.val.3
  %i.en = fmul <4 x float> %i.ay, %.val.3
  %i.eo = fadd <4 x float> %i.ek, %i.em           ; 2 uses
  %i.ep = fadd <4 x float> %i.el, %i.en
  %.scalar145 = fmul float %i.cb, %.pre154
  %i.eq = insertelement <4 x float> poison, float %.scalar145, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.er, <4 x float> %i.eo, <4 x float> %i.ea)
  %.scalar146 = fmul float %i.bz, %.pre156
  %i.et = insertelement <4 x float> poison, float %.scalar146, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.eu, <4 x float> %i.eo, <4 x float> %i.ed)
  %.scalar147 = fmul float %i.bz, %.pre154
  %i.ew = insertelement <4 x float> poison, float %.scalar147, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> %i.ep, <4 x float> %i.eg)
  %.reass.4 = add i32 %invariant.op, 4
  %i.ez = mul i32 %.reass.4, %i.be
  %i.fa = sext i32 %i.ez to i64
  %gep124.4 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.fa ; 2 uses
  %.val100.4 = load <4 x float>, ptr %gep124.4, align 16, !tbaa !121 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %gep124.4, i64 16
  %.val.4 = load <4 x float>, ptr %i.fb, align 16, !tbaa !121 ; 2 uses
  %i.fc = fmul <4 x float> %i.an, %.val100.4
  %i.fd = fmul <4 x float> %i.aq, %.val100.4
  %i.fe = fmul <4 x float> %i.av, %.val.4
  %i.ff = fmul <4 x float> %i.ay, %.val.4
  %i.fg = fadd <4 x float> %i.fc, %i.fe           ; 2 uses
  %i.fh = fadd <4 x float> %i.fd, %i.ff
  %.scalar148 = fmul float %i.cb, %i.br
  %i.fi = insertelement <4 x float> poison, float %.scalar148, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fj, <4 x float> %i.fg, <4 x float> %i.es) ; 3 uses
  %.scalar149 = fmul float %i.bz, %i.bt
  %i.fl = insertelement <4 x float> poison, float %.scalar149, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fm, <4 x float> %i.fg, <4 x float> %i.ev) ; 3 uses
  %.scalar150 = fmul float %i.bz, %i.br
  %i.fo = insertelement <4 x float> poison, float %.scalar150, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fp, <4 x float> %i.fh, <4 x float> %i.ey) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !153
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.expandload.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double>, ptr, <8 x i32>, <8 x i1>, i32 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: mustprogress uwtable
define noundef float @_Z22gather_energy_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEERK11PmeAtomComm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(992) %0, ptr nofree readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !167
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ22gather_energy_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEERK11PmeAtomCommENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 366) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.e = load i32, ptr %i.d, align 8, !tbaa !200
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ22gather_energy_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEERK11PmeAtomCommENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 367) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100
  %.fr82 = freeze i32 %i.h                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !201  ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !202  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.o = load i64, ptr %i.n, align 8
  %i.p = inttoptr i64 %i.o to ptr                 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.v = icmp sgt i32 %.fr82, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.x = load i32, ptr %i.w, align 4
  br i1 %i.v, label %.lr.ph80.split.us.preheader, label %.lr.ph80.split.preheader

.lr.ph80.split.preheader:                         ; preds = %.lr.ph80
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.y = icmp ult i32 %i.j, 8
  br i1 %i.y, label %.lr.ph80.split.epil.preheader, label %.lr.ph80.split.preheader.new

.lr.ph80.split.preheader.new:                     ; preds = %.lr.ph80.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph80.split

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext nneg i32 %.fr82 to i64             ; 5 uses
  %wide.trip.count103 = zext nneg i32 %i.j to i64
  %xtraiter112 = and i64 %i.ab, 3                 ; 3 uses
  %i.ac = icmp ult i32 %.fr82, 4
  %unroll_iter117 = and i64 %i.ab, 2147483644
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  br label %.lr.ph80.split.us

.lr.ph80.split.us:                                ; preds = %.lr.ph80.split.us.preheader, %bb.g
  %indvars.iv100 = phi i64 [ 0, %.lr.ph80.split.us.preheader ], [ %indvars.iv.next101, %bb.g ] ; 4 uses
  %.06178.us = phi float [ 0.000000e+00, %.lr.ph80.split.us.preheader ], [ %.162.us, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv100
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = fcmp une float %i.ae, 0.000000e+00
  br i1 %i.af, label %.lr.ph.us, label %bb.g

.lr.ph.us:                                        ; preds = %.lr.ph80.split.us
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv100 ; 3 uses
  %i.ah = mul nuw nsw i64 %indvars.iv100, %i.ab   ; 3 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !107
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ah
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ah
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !120
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ah ; 5 uses
  br label %.lr.ph72.us.us

.lr.ph72.us.us:                                   ; preds = %._crit_edge73.split.us.us.us, %.lr.ph.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %._crit_edge73.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %.05975.us.us = phi float [ %.lcssa, %._crit_edge73.split.us.us.us ], [ 0.000000e+00, %.lr.ph.us ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv95
  %i.au = load float, ptr %i.at, align 4, !tbaa !101
  %i.av = trunc i64 %indvars.iv95 to i32
  %i.aw = add i32 %i.ai, %i.av
  %i.ax = mul i32 %i.aw, %i.aa
  %i.ay = add i32 %i.ax, %i.ak
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.lr.ph72.us.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge.us.us.us ], [ 0, %.lr.ph72.us.us ] ; 3 uses
  %.169.us.us.us = phi float [ %.lcssa, %._crit_edge.us.us.us ], [ %.05975.us.us, %.lr.ph72.us.us ] ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv90 to i32
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = mul i32 %i.ba, %i.x
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv90
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !101
  %i.be = add i32 %i.bb, %i.am                    ; 5 uses
  %i.bf = fmul float %i.au, %i.bd                 ; 5 uses
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 6 uses
  %.267.us.us.us = phi float [ %i.cp, %.lr.ph.us.us.us.new ], [ %.169.us.us.us, %.lr.ph.us.us.us ]
  %niter118 = phi i64 [ %niter118.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bg = trunc nuw nsw i64 %indvars.iv85 to i32
  %i.bh = add i32 %i.be, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !101
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv85
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !101
  %i.bn = fmul float %i.bf, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bk, float %.267.us.us.us)
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 2 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %i.bq = add i32 %i.be, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !101
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next86
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !101
  %i.bw = fmul float %i.bf, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bt, float %i.bo)
  %indvars.iv.next86.1 = or disjoint i64 %indvars.iv85, 2 ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.next86.1 to i32
  %i.bz = add i32 %i.be, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !101
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next86.1
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !101
  %i.cf = fmul float %i.bf, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cc, float %i.bx)
  %indvars.iv.next86.2 = or disjoint i64 %indvars.iv85, 3 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next86.2 to i32
  %i.ci = add i32 %i.be, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !101
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next86.2
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !101
  %i.co = fmul float %i.bf, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cl, float %i.cg) ; 3 uses
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !161

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod114.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next86.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.267.us.us.us.epil.init = phi float [ %.169.us.us.us, %.lr.ph.us.us.us ], [ %i.cp, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv85.epil = phi i64 [ %indvars.iv.next86.epil, %bb.f ], [ %indvars.iv85.epil.init, %.epil.preheader ] ; 3 uses
  %.267.us.us.us.epil = phi float [ %i.cy, %bb.f ], [ %.267.us.us.us.epil.init, %.epil.preheader ]
end_hunk_0
