Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 75
begin_hunk_0_@distort_transform:bb.a
  %i.cg = fadd reassoc nsz arcp contract afn <8 x float> %i.cf, %i.ce
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cg, %broadcast.splat51
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat53, %strided.vec
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat55, %strided.vec62
  %i.ck = fadd reassoc nsz arcp contract afn <8 x float> %i.cj, %i.ci
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, %broadcast.splat57 ; 2 uses
  %i.cm = fdiv reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cl
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat59
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> %i.ch, %i.cl
  %i.cp = fsub reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat61
  %interleaved.vec = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bz, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.040.ph = phi i64 [ 0, %.lr.ph ], [ %i.by, %middle.block ]
  %i.cr = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.bn, <4 x float> %i.cs, <2 x i32> <i32 0, i32 4>
  %i.cu = shufflevector <4 x float> %i.bn, <4 x float> %i.cs, <2 x i32> <i32 2, i32 5>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_isneutral.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.040 = phi i64 [ %i.dm, %scalar.ph ], [ %.040.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.040 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cv, align 8, !tbaa !15 ; 4 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cx
  %i.cz = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cw
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cz, %i.cy
  %i.db = fadd reassoc nsz arcp contract afn <2 x float> %i.da, %i.cu
  %i.dc = extractelement <2 x float> %i.cw, i64 0
  %i.dd = fmul reassoc nsz arcp contract afn float %i.bq, %i.dc
  %i.de = extractelement <2 x float> %i.cw, i64 1
  %i.df = fmul reassoc nsz arcp contract afn float %i.bs, %i.de
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.dd
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, %i.bu
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv reassoc nsz arcp contract afn <2 x float> %i.db, %i.dj
  %i.dl = fsub reassoc nsz arcp contract afn <2 x float> %i.dk, %i.bk
  store <2 x float> %i.dl, ptr %i.cv, align 8, !tbaa !15
  %i.dm = add nuw i64 %.040, 2                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.bl
  br i1 %i.dn, label %scalar.ph, label %._crit_edge, !llvm.loop !343

bb.h:                                             ; preds = %_isneutral.exit, %._crit_edge
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_homography(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 11 uses
  %i.b = sitofp reassoc nsz arcp contract afn i32 %8 to float ; 6 uses
  %i.c = sitofp reassoc nsz arcp contract afn i32 %9 to float ; 7 uses
  %i.d = fmul reassoc nsz arcp contract afn float %1, f0x3C8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.d) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 6 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 5 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %7) ; 2 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %2) ; 6 uses
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.c, f0x40E66666
  %i.h = fdiv reassoc nsz arcp contract afn float %i.g, %i.b
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, f0x40E66666
  %i.j = fadd reassoc nsz arcp contract afn float %i.f, -1.000000e+00 ; 3 uses
  %i.k = fmul reassoc nsz arcp contract afn float %5, %i.j
  %i.l = fadd reassoc nsz arcp contract afn float %i.f, 1.000000e+00 ; 3 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.i, %i.l
  %i.n = fdiv reassoc nsz arcp contract afn float %i.k, %i.m
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.atan.f32(float %i.n) ; 2 uses
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.o)
  %or.cond = fcmp reassoc nsz arcp contract afn ogt float %i.p, 1.500000e+00
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fmul reassoc nsz arcp contract afn float %i.o, 5.000000e-01
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.q) ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi float [ f0x3EEDE42B, %bb.a ], [ %i.s, %bb.b ]
  %i.u = fmul reassoc nsz arcp contract afn float %6, -2.000000e-02 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %i.u
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, 1.000000e+00
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.w, float 1.000000e-01) ; 4 uses
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %3) ; 6 uses
  %i.z = fmul reassoc nnan nsz arcp contract afn float %i.b, f0x40E66666
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.c
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, f0x40E66666
  %i.ac = fadd reassoc nsz arcp contract afn float %i.y, -1.000000e+00 ; 3 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %5, %i.ac
  %i.ae = fadd reassoc nsz arcp contract afn float %i.y, 1.000000e+00 ; 3 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, %i.ae
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.ad, %i.af
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.atan.f32(float %i.ag) ; 2 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ah)
  %or.cond225 = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 1.500000e+00
  br i1 %or.cond225, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ah, 5.000000e-01
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.aj) ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi float [ f0x3EEDE42B, %bb.c ], [ %i.al, %bb.d ]
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.u
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, 1.000000e+00
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ao, float 1.000000e-01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.aq = fmul reassoc nnan nsz arcp contract afn float %i.c, -5.000000e-01 ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %cos
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.b, 5.000000e-01 ; 4 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %sin
  %i.au = fmul reassoc nsz arcp contract afn float %i.aq, %sin
  %i.av = fmul reassoc nsz arcp contract afn float %i.as, %cos
  %i.aw = fsub reassoc nsz arcp contract afn float %i.au, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %sin, -0.000000e+00 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bd = fmul reassoc nsz arcp contract afn float %i.j, %i.b ; 2 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, -5.000000e-01
  %i.bf = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.x
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.as ; 3 uses
  %i.bh = fmul reassoc nsz arcp contract afn float %i.ac, %i.c ; 2 uses
  %i.bi = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ap
  %i.bj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e ; 2 uses
  %i.bk = fmul reassoc nnan nsz arcp contract afn float %i.c, 5.000000e-01 ; 2 uses
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.at
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.be, %i.l ; 3 uses
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.j, %i.c ; 3 uses
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bl, %i.ar ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, 0.000000e+00 ; 2 uses
  %i.bq = fadd reassoc nsz arcp contract afn float %i.ax, %cos
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bp ; 3 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %4
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bd, 5.000000e-01
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.bt, %i.c ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.f, 2.000000e+00
  %i.bw = fdiv reassoc nsz arcp contract afn float %i.bv, %i.l ; 3 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %cos, 0.000000e+00 ; 4 uses
  %i.by = fadd reassoc nsz arcp contract afn float %i.ax, %i.bx
  %i.bz = fmul reassoc nsz arcp contract afn float %sin, 0.000000e+00 ; 2 uses
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bx, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.aw, %i.as ; 2 uses
  %i.cc = fsub reassoc nsz arcp contract afn float %i.bx, %sin
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bp, %i.cc ; 3 uses
  %i.ce = fadd reassoc nsz arcp contract afn float %i.by, %i.bo ; 3 uses
  %i.cf = fadd reassoc nsz arcp contract afn float %i.bz, %cos
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cb, 0.000000e+00 ; 2 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cf, %i.cg ; 3 uses
  %i.ci = fadd reassoc nsz arcp contract afn float %i.bx, %sin
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.cg ; 4 uses
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ca, %i.cb ; 4 uses
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ch, %4
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %i.cd ; 3 uses
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cj, %4
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.br ; 3 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.ck, %4
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.ce ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cd, %4
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.ch ; 2 uses
  %i.ct = fadd reassoc nsz arcp contract afn float %i.bs, %i.cj ; 2 uses
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ce, %4
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.ck ; 2 uses
  %i.cw = fadd reassoc nsz arcp contract afn float %i.ch, %i.cd
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, 0.000000e+00 ; 3 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cj, %i.br
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, 0.000000e+00 ; 3 uses
  %i.da = fadd reassoc nsz arcp contract afn float %i.ck, %i.ce
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 0.000000e+00
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, 1.000000e+00 ; 3 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cm, %i.f
  %i.de = fmul reassoc nsz arcp contract afn float %i.cs, 0.000000e+00 ; 2 uses
  %i.df = fadd reassoc nsz arcp contract afn float %i.dd, %i.cx
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.de ; 2 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.co, %i.f
  %i.di = fmul reassoc nsz arcp contract afn float %i.ct, 0.000000e+00 ; 2 uses
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dh, %i.cz
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dj, %i.di ; 3 uses
  store float %i.dk, ptr %i.ay, align 4, !tbaa !15, !alias.scope !351
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cq, %i.f
  %i.dm = fmul reassoc nsz arcp contract afn float %i.cv, 0.000000e+00 ; 2 uses
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = fmul reassoc ninf nsz arcp contract afn float %i.dc, 0.000000e+00
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dn, %i.do ; 3 uses
  store float %i.dp, ptr %i.az, align 8, !tbaa !15, !alias.scope !351
  %i.dq = fmul reassoc nsz arcp contract afn float %i.cm, %i.bu
  %i.dr = fmul reassoc nsz arcp contract afn float %i.cs, %i.bw
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.dq
  %i.dt = fmul reassoc nsz arcp contract afn float %i.cx, %i.bm
  %i.du = fadd reassoc nsz arcp contract afn float %i.ds, %i.dt ; 3 uses
  %i.dv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.du, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.cj, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.ck, i64 2
  store <4 x float> %i.dx, ptr %i.ba, align 4, !tbaa !15
  %i.dy = fmul reassoc nsz arcp contract afn float %i.co, %i.bu
  %i.dz = fmul reassoc nsz arcp contract afn float %i.ct, %i.bw
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dy
  %i.eb = fmul reassoc nsz arcp contract afn float %i.cz, %i.bm
  %i.ec = fadd reassoc nsz arcp contract afn float %i.ea, %i.eb ; 2 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.cq, %i.bu
  %i.ee = fmul reassoc nsz arcp contract afn float %i.cv, %i.bw
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ed
  %i.eg = fmul reassoc nsz arcp contract afn float %i.dc, %i.bm
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ef, %i.eg ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.cm, %i.bn
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.cx
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.de ; 3 uses
  %i.el = fmul reassoc nsz arcp contract afn float %i.co, %i.bn
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.cz
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.di ; 3 uses
  %i.eo = fmul reassoc nsz arcp contract afn float %i.cq, %i.bn
  %i.ep = fadd reassoc nsz arcp contract afn float %i.dm, %i.eo
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.dc ; 3 uses
  %i.er = fmul reassoc nsz arcp contract afn float %i.du, 0.000000e+00 ; 2 uses
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, %i.dg
  %i.et = fmul reassoc nsz arcp contract afn float %i.ek, 0.000000e+00
  %i.eu = fadd reassoc nsz arcp contract afn float %i.es, %i.et ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.ec, 0.000000e+00 ; 2 uses
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.dk
  %i.ex = fmul reassoc nsz arcp contract afn float %i.en, 0.000000e+00
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ew, %i.ex ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.eh, 0.000000e+00 ; 2 uses
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.dp
  %i.fb = fmul reassoc nsz arcp contract afn float %i.eq, 0.000000e+00
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fa, %i.fb ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %i.dg, 0.000000e+00 ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.x, %i.du
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, %i.fd
  %i.fg = fmul reassoc nsz arcp contract afn float %i.bg, %i.ek
  %i.fh = fadd reassoc nsz arcp contract afn float %i.ff, %i.fg ; 2 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.dk, 0.000000e+00 ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn float %i.x, %i.ec
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.fi
  %i.fl = fmul reassoc nsz arcp contract afn float %i.bg, %i.en
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl ; 2 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.dp, 0.000000e+00 ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.x, %i.eh
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fn
  %i.fq = fmul reassoc nsz arcp contract afn float %i.bg, %i.eq
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fp, %i.fq ; 2 uses
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fd, %i.ek
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %i.er ; 2 uses
  %i.fu = fadd reassoc nsz arcp contract afn float %i.fi, %i.en
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.ev ; 2 uses
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fn, %i.eq
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, %i.ez ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.eu, 0.000000e+00 ; 2 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %i.ft, 0.000000e+00 ; 2 uses
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fy
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, %i.fh ; 4 uses
  store float %i.gb, ptr %i.a, align 64, !tbaa !15, !alias.scope !352
  %i.gc = fmul reassoc nsz arcp contract afn float %i.ey, 0.000000e+00 ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fv, 0.000000e+00 ; 2 uses
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.gc
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fm ; 3 uses
  %i.gg = fmul reassoc nsz arcp contract afn float %i.fc, 0.000000e+00 ; 2 uses
  %i.gh = fmul reassoc nsz arcp contract afn float %i.fx, 0.000000e+00 ; 2 uses
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.gg
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %i.fr ; 3 uses
  %i.gk = fmul reassoc nsz arcp contract afn float %i.fh, 0.000000e+00
  %i.gl = fadd reassoc nsz arcp contract afn float %i.fz, %i.eu
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gd, %i.ey
  %i.gn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.fr, i64 1
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, zeroinitializer
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gh, %i.fc
  %i.gr = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.gs = insertelement <4 x float> %i.gr, float %i.gq, i64 1
  %i.gt = insertelement <4 x float> %i.gs, float %i.gl, i64 2
  %i.gu = shufflevector <2 x float> %i.gp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gv = insertelement <4 x float> %i.gu, float %i.gk, i64 2 ; 2 uses
  %i.gw = fadd reassoc nsz arcp contract afn <4 x float> %i.gt, %i.gv ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.gy = fadd reassoc nsz arcp contract afn float %i.fy, %i.ft
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gc, %i.fv
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gg, %i.fx
  %i.hb = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.hc = insertelement <4 x float> %i.hb, float %i.ha, i64 1
  %i.hd = insertelement <4 x float> %i.hc, float %i.gy, i64 2
  %i.he = fadd reassoc nsz arcp contract afn <4 x float> %i.hd, %i.gv
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.hg = insertelement <2 x float> poison, float %i.y, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.bh, i64 1
  %i.hi = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, <float 2.000000e+00, float 5.000000e-01>
  %i.hj = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.b, i64 1
  %i.hl = fdiv reassoc nsz arcp contract afn <2 x float> %i.hi, %i.hk ; 2 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.bh, -5.000000e-01
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.hm, %i.ae
  %i.ho = fdiv reassoc nsz arcp contract afn float %i.ac, %i.b
  %i.hp = fmul reassoc nsz arcp contract afn float %i.gb, %i.y
  %i.hq = fmul reassoc nsz arcp contract afn float %i.gf, %i.y
  %i.hr = fmul reassoc nsz arcp contract afn float %i.gj, %i.y
  %i.hs = fmul reassoc nsz arcp contract afn <4 x float> %i.gx, zeroinitializer ; 2 uses
  %i.ht = insertelement <4 x float> poison, float %i.hq, i64 0
  %i.hu = insertelement <4 x float> %i.ht, float %i.hr, i64 1
  %i.hv = insertelement <4 x float> %i.hu, float %i.hp, i64 2
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hx = fadd reassoc nsz arcp contract afn <4 x float> %i.hs, %i.hw
  %i.hy = fmul reassoc nsz arcp contract afn <4 x float> %i.hf, zeroinitializer
  %i.hz = fadd reassoc nsz arcp contract afn <4 x float> %i.hx, %i.hy ; 2 uses
  %i.ia = insertelement <4 x float> %i.gx, float %i.gj, i64 1
  %i.ib = insertelement <4 x float> %i.ia, float %i.gf, i64 3 ; 2 uses
  %i.ic = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.id = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, %i.ic
  %i.ie = shufflevector <4 x float> %i.ib, <4 x float> %i.gw, <4 x i32> <i32 3, i32 5, i32 poison, i32 0>
  %i.if = insertelement <4 x float> %i.ie, float %i.gb, i64 2
  %i.ig = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.if, %i.ig
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.ih, %i.id
  %i.ij = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = fmul reassoc nsz arcp contract afn <4 x float> %i.hf, %i.ik
  %i.im = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.il ; 2 uses
  %i.in = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.io = insertelement <4 x float> %i.in, float %i.gj, i64 1
  %i.ip = insertelement <4 x float> %i.io, float %i.gb, i64 2
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ir = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fmul reassoc nsz arcp contract afn <4 x float> %i.iq, %i.is
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.hf, %i.it
  %i.iv = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, %i.hs ; 3 uses
  %i.iw = fmul reassoc nsz arcp contract afn float %i.bi, %i.bk
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %i.im, zeroinitializer ; 2 uses
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.ix, %i.hz
  %i.iz = fmul reassoc nsz arcp contract afn <4 x float> %i.iv, zeroinitializer
  %i.ja = fadd reassoc nsz arcp contract afn <4 x float> %i.iy, %i.iz ; 3 uses
  %i.jb = fmul reassoc nsz arcp contract afn <4 x float> %i.hz, zeroinitializer ; 2 uses
  %i.jc = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <4 x float> %i.jd, %i.im
  %i.jf = fadd reassoc nsz arcp contract afn <4 x float> %i.je, %i.jb
  %i.jg = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul reassoc nsz arcp contract afn <4 x float> %i.jh, %i.iv
  %i.jj = fadd reassoc nsz arcp contract afn <4 x float> %i.jf, %i.ji ; 3 uses
  %i.jk = fadd reassoc nsz arcp contract afn <4 x float> %i.jb, %i.iv
  %i.jl = fadd reassoc nsz arcp contract afn <4 x float> %i.jk, %i.ix ; 3 uses
  %i.jm = insertelement <4 x float> poison, float %i.e, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %i.ja, %i.jn
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %i.jj, zeroinitializer ; 3 uses
  %i.jq = fmul reassoc nsz arcp contract afn <4 x float> %i.jl, zeroinitializer ; 3 uses
  %i.jr = fadd reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jo
  %i.js = fadd reassoc nsz arcp contract afn <4 x float> %i.jr, %i.jp ; 6 uses
  %i.jt = extractelement <4 x float> %i.ja, i64 1
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, 0.000000e+00 ; 2 uses
  %i.jv = extractelement <4 x float> %i.jj, i64 1
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, %i.bj
  %i.jx = extractelement <4 x float> %i.jq, i64 1
  %i.jy = fadd reassoc nsz arcp contract afn float %i.jx, %i.ju
  %i.jz = fadd reassoc nsz arcp contract afn float %i.jy, %i.jw ; 3 uses
  %i.ka = shufflevector <4 x float> %i.ja, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kb = fmul reassoc nsz arcp contract afn <2 x float> %i.ka, zeroinitializer ; 2 uses
  %i.kc = shufflevector <4 x float> %i.jj, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kd = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul reassoc nsz arcp contract afn <2 x float> %i.kc, %i.ke
  %i.kg = shufflevector <4 x float> %i.jq, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kh = fadd reassoc nsz arcp contract afn <2 x float> %i.kg, %i.kb
  %i.ki = fadd reassoc nsz arcp contract afn <2 x float> %i.kh, %i.kf ; 4 uses
  %i.kj = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kk = fadd reassoc nsz arcp contract afn <2 x float> %i.kb, %i.kj
  %i.kl = shufflevector <4 x float> %i.jp, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.km = fadd reassoc nsz arcp contract afn <2 x float> %i.kk, %i.kl ; 5 uses
  %i.kn = extractelement <4 x float> %i.jl, i64 1
  %i.ko = fadd reassoc nsz arcp contract afn float %i.ju, %i.kn
  %i.kp = extractelement <4 x float> %i.jp, i64 1
  %i.kq = fadd reassoc nsz arcp contract afn float %i.ko, %i.kp ; 4 uses
  %i.kr = icmp sgt i32 %9, 0
  br i1 %i.kr, label %.preheader.lr.ph, label %._crit_edge360

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.ks = icmp sgt i32 %8, 0
  %i.kt = add nsw i32 %8, -1
  %i.ku = add nsw i32 %9, -1                      ; 2 uses
  br i1 %i.ks, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.kv = shufflevector <2 x float> %i.ki, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kw = shufflevector <4 x float> %i.js, <4 x float> %i.kv, <2 x i32> <i32 0, i32 5>
  %i.kx = shufflevector <4 x float> %i.js, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_0
begin_hunk_1_@gui_post_expose:bb.a
  store double %i.abt, ptr %i.e, align 16, !tbaa !166
  %i.abu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.abt, ptr %i.abu, align 8, !tbaa !166
  %i.abv = getelementptr inbounds nuw i8, ptr %i.j, i64 324
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !201 ; 2 uses
  %i.abx = fmul reassoc nsz arcp contract afn float %i.abw, %2
  %i.aby = fpext reassoc nsz arcp contract afn float %i.abx to double
  %i.abz = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %i.aca = load float, ptr %i.abz, align 8, !tbaa !202 ; 2 uses
  %i.acb = fmul reassoc nsz arcp contract afn float %i.aca, %3
  %i.acc = fpext reassoc nsz arcp contract afn float %i.acb to double
  %i.acd = fsub reassoc nsz arcp contract afn float %4, %i.abw
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, %2
  %i.acf = fpext reassoc nsz arcp contract afn float %i.ace to double
  %i.acg = fsub reassoc nsz arcp contract afn float %5, %i.aca
  %i.ach = fmul reassoc nsz arcp contract afn float %i.acg, %3
  %i.aci = fpext reassoc nsz arcp contract afn float %i.ach to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.aby, double noundef %i.acc, double noundef %i.acf, double noundef %i.aci) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 8.000000e-01) #34
  %i.acj = extractelement <2 x double> %i.abs, i64 1
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.acj) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 2, double noundef 0.000000e+00) #34
  call void @cairo_stroke_preserve(ptr noundef %1) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 2, double noundef 4.000000e+00) #34
  call void @cairo_stroke(ptr noundef %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit
  %i.ack = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.acl = load float, ptr %i.ack, align 8, !tbaa !203 ; 2 uses
  %i.acm = fcmp reassoc nsz arcp contract afn ogt float %i.acl, 0.000000e+00
  br i1 %i.acm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.acn = fdiv reassoc nsz arcp contract afn double 4.000000e+00, %i.o ; 2 uses
  store double %i.acn, ptr %i.f, align 16, !tbaa !166
  %i.aco = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %i.acn, ptr %i.aco, align 8, !tbaa !166
  %i.acp = fmul reassoc nsz arcp contract afn float %4, %2
  %i.acq = fpext reassoc nsz arcp contract afn float %i.acp to double
  %i.acr = fmul reassoc nsz arcp contract afn float %5, %3
  %i.acs = fpext reassoc nsz arcp contract afn float %i.acr to double
  %i.act = fpext reassoc nsz arcp contract afn float %i.acl to double
  call void @cairo_arc(ptr noundef %1, double noundef %i.acq, double noundef %i.acs, double noundef %i.act, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 8.000000e-01) #34
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.p) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 2, double noundef 0.000000e+00) #34
  call void @cairo_stroke_preserve(ptr noundef %1) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 2, double noundef 4.000000e+00) #34
  call void @cairo_stroke(ptr noundef %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void @cairo_restore(ptr noundef %1) #34
  br label %_get_points.exit.thread

.critedge:                                        ; preds = %bb.e, %bb.g, %bb.d, %call_distort_transform.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_get_points.exit.thread

.critedge497:                                     ; preds = %.preheader510.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_get_points.exit.thread

_get_points.exit.thread:                          ; preds = %bb.z, %bb.au, %bb.av, %bb.y, %.critedge497, %bb.bq, %.thread573, %bb.ay, %bb.r, %bb.s, %bb.q, %.critedge
  ret void
}

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #7

declare i32 @dt_iop_has_focus(ptr noundef) local_unnamed_addr #7

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @cairo_save(ptr noundef) local_unnamed_addr #7

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #7

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_set_fill_rule(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #7

declare void @cairo_fill(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dt_draw_set_color_overlay(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #13 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.c = load double, ptr %i.b, align 8, !tbaa !167
  %i.d = fmul reassoc nsz arcp contract afn double %i.c, 5.000000e-01 ; 2 uses
  %i.e = fneg reassoc nsz arcp contract afn double %i.d
  %.p = select i1 %.not, double %i.e, double %i.d
  %i.f = fadd reassoc nsz arcp contract afn double %.p, 5.000000e-01 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1384
  %i.h = load double, ptr %i.g, align 8, !tbaa !168
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1400
  %i.k = load double, ptr %i.j, align 8, !tbaa !169
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  %i.n = load double, ptr %i.m, align 8, !tbaa !170
  %i.o = fmul reassoc nsz arcp contract afn double %i.n, %i.f
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.i, double noundef %i.l, double noundef %i.o, double noundef 1.000000e+00) #34
  ret void
}

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #7

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

declare void @dt_guides_draw(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_rel_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_restore(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc float @_calculate_straightening(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = fsub reassoc nsz arcp contract afn float %1, %3
  %i.c = fsub reassoc nsz arcp contract afn float %2, %4
  %i.d = fmul reassoc nsz arcp contract afn float %5, %i.b ; 3 uses
  %i.e = fmul reassoc nsz arcp contract afn float %6, %i.c ; 3 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.d, %i.d
  %i.g = fmul reassoc nsz arcp contract afn float %i.e, %i.e
  %i.h = fadd reassoc nsz arcp contract afn float %i.g, %i.f
  %i.i = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.j = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.i)
  %i.k = fpext reassoc nsz arcp contract afn float %7 to double
  %i.l = fmul reassoc nsz arcp contract afn double %i.j, %i.k
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1432
  %i.o = load double, ptr %i.n, align 8, !tbaa !165
  %i.p = fmul reassoc nsz arcp contract afn double %i.o, 2.500000e+01
  %i.q = fcmp reassoc nsz arcp contract afn olt double %i.l, %i.p
  br i1 %i.q, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.d, i64 2
  %i.t = insertelement <4 x float> %i.s, float %i.e, i64 3
  store <4 x float> %i.t, ptr %i.a, align 16, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !126  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.z = load i32, ptr %i.y, align 16, !tbaa !144
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ab = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.v, ptr noundef %i.x, double noundef %i.aa, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 2) #34 ; 0 uses
  %i.ac = load <2 x float>, ptr %i.a, align 16, !tbaa !15
  %i.ad = load <2 x float>, ptr %i.r, align 8, !tbaa !15
  %i.ae = fsub reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ad ; 3 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.af, 0.000000e+00 ; 2 uses
  %i.ah = fneg reassoc nsz arcp contract afn <2 x float> %i.ae ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %.039 = select nsz i1 %i.ag, float %i.ai, float %i.af
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  %i.ak = extractelement <2 x float> %i.ae, i64 1
  %.038 = select nsz i1 %i.ag, float %i.aj, float %i.ak
  %i.al = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %.038, float %.039) ; 6 uses
  %i.am = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.al)
  %or.cond = fcmp reassoc nsz arcp contract afn ugt float %i.am, f0x3FC90FDB
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.al, f0x3F490FDB
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = fsub fast float f0x3FC90FDB, %i.al
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.al, f0xBF490FDB
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = fsub fast float f0xBFC90FDB, %i.al
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = fneg reassoc nsz arcp contract afn float %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.037 = phi nsz float [ %i.ao, %bb.d ], [ %i.aq, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = fmul reassoc nnan nsz arcp contract afn float %.037, f0x42652EE0 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.as, -1.800000e+02
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, 3.600000e+02
  %spec.select = select nsz i1 %i.at, float %i.au, float %i.as ; 3 uses
  %i.av = fcmp reassoc nsz arcp contract afn ogt float %spec.select, 1.800000e+02
  %i.aw = fadd reassoc nsz arcp contract afn float %spec.select, -3.600000e+02
  %.1 = select nsz i1 %i.av, float %i.aw, float %spec.select
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.040 = phi nsz float [ %.1, %bb.h ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.141 = phi nsz float [ %.040, %bb.i ], [ 0.000000e+00, %bb.a ]
  ret float %.141
}

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #7

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #7

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #7

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_gui_draw_rounded_rectangle(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #7

declare void @g_object_unref(ptr noundef) local_unnamed_addr #7

declare i64 @dt_dev_hash_distort_plus(ptr noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_update_colors(i32 %.704.val.152.val, ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %.704.val.152.val, 0        ; 4 uses
  %i.b = select i1 %.not, i32 4, i32 2            ; 2 uses
  %i.c = select i1 %.not, i32 3, i32 1            ; 2 uses
  %i.d = select i1 %.not, i32 2, i32 4            ; 2 uses
  %i.e = select i1 %.not, i32 1, i32 3            ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat2 = shufflevector <8 x i32> %broadcast.splatinsert1, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat4 = shufflevector <8 x i32> %broadcast.splatinsert3, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat6 = shufflevector <8 x i32> %broadcast.splatinsert5, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %0, <8 x i64> %vec.ind ; 2 uses
  %wide.gep7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep7, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !196
  %i.f = and <8 x i32> %wide.masked.gather, splat (i32 7) ; 4 uses
  %wide.gep8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %i.g = icmp eq <8 x i32> %i.f, splat (i32 7)
  %i.h = icmp eq <8 x i32> %i.f, splat (i32 3)
  %i.i = icmp eq <8 x i32> %i.f, splat (i32 5)
  %i.j = icmp eq <8 x i32> %i.f, splat (i32 1)
  %predphi = select <8 x i1> %i.g, <8 x i32> %broadcast.splat6, <8 x i32> zeroinitializer
  %predphi9 = select <8 x i1> %i.h, <8 x i32> %broadcast.splat4, <8 x i32> %predphi
  %predphi10 = select <8 x i1> %i.j, <8 x i32> %broadcast.splat, <8 x i32> %predphi9
  %predphi11 = select <8 x i1> %i.i, <8 x i32> %broadcast.splat2, <8 x i32> %predphi10
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi11, <8 x ptr> align 8 %wide.gep8, <8 x i1> splat (i1 true)), !tbaa !191
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %bb.f, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !196
  %i.o = and i32 %i.n, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  switch i32 %i.o, label %bb.e [
    i32 7, label %bb.f
    i32 3, label %bb.b
    i32 5, label %bb.c
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %scalar.ph
  br label %bb.f

bb.c:                                             ; preds = %scalar.ph
  br label %bb.f

bb.d:                                             ; preds = %scalar.ph
  br label %bb.f

bb.e:                                             ; preds = %scalar.ph
  br label %bb.f

bb.f:                                             ; preds = %scalar.ph, %bb.b, %bb.d, %bb.e, %bb.c
  %.sink = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.d ], [ 0, %bb.e ], [ %i.c, %bb.c ], [ %i.e, %scalar.ph ]
  store i32 %.sink, ptr %i.p, align 8, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !401
}

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = alloca [4 x [3 x float]], align 16       ; 7 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca [2 x float], align 8              ; 10 uses
  %i.g = alloca [2 x float], align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !125 ; 46 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !174
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.ck

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.m = load i32, ptr %i.l, align 16, !tbaa !158
  %.not256 = icmp eq i32 %i.m, 0
  br i1 %.not256, label %bb.ck, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.p = call i32 @dt_dev_get_preview_size(ptr noundef %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #34 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 348
  %i.r = load i32, ptr %i.q, align 4, !tbaa !171
  %.not257 = icmp eq i32 %i.r, 0
  br i1 %.not257, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store float %1, ptr %i.e, align 16, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %2, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.v, align 8, !tbaa !15
end_hunk_1
begin_hunk_2_@_do_get_structure_auto:bb.a
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.av = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.au) #34
  %.not.i.i = icmp eq i32 %i.av, 0
  %.not.i.i.i = icmp eq i64 %i.al, 0              ; 3 uses
  %or.cond.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.f
  %i.aw = add i64 %i.al, -4                       ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.aw, 12
  br i1 %i.az, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, 9223372036854775804
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.01214.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.cn, %.preheader.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 4 uses
  %i.bb = load float, ptr %i.ba, align 64, !tbaa !15
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float 4.500000e-01)
  store float %i.bc, ptr %i.ba, align 64, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !15
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float 4.500000e-01)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !15
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float 4.500000e-01)
  store float %i.bi, ptr %i.bg, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 16, !tbaa !15
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bl, float 4.500000e-01)
  store float %i.bm, ptr %i.bk, align 16, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float 4.500000e-01)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !15
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.br, float 4.500000e-01)
  store float %i.bs, ptr %i.bq, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 32, !tbaa !15
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float 4.500000e-01)
  store float %i.bw, ptr %i.bu, align 32, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !15
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float 4.500000e-01)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !15
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float 4.500000e-01)
  store float %i.cc, ptr %i.ca, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !15
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cf, float 4.500000e-01)
  store float %i.cg, ptr %i.ce, align 16, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 52 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !15
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float 4.500000e-01)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !15
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cl, float 4.500000e-01)
  store float %i.cm, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add nuw i64 %.01214.i.i.i, 16           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %gamma_correct.exit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i

gamma_correct.exit.i.i.loopexit.unr-lcssa:        ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.01214.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.cn, %gamma_correct.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod251 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod251)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.01214.i.i.i.epil = phi i64 [ %i.cx, %.preheader.i.i.i.epil ], [ %.01214.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i.epil ; 4 uses
  %i.cp = load float, ptr %i.co, align 16, !tbaa !15
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cp, float 4.500000e-01)
  store float %i.cq, ptr %i.co, align 16, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cs, float 4.500000e-01)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !15
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float 4.500000e-01)
  store float %i.cw, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add nuw i64 %.01214.i.i.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !520

gamma_correct.exit.i.i:                           ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.f
  %i.cy = and i32 %1, 2
  %.not185.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not185.i.i, label %detail_enhance.exit.i.i, label %bb.g

bb.g:                                             ; preds = %gamma_correct.exit.i.i
  %i.cz = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.z)
  %i.da = sitofp i32 %i.cz to float
  %i.db = fmul reassoc nnan nsz arcp contract afn float %i.da, 2.000000e-02
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %dt_XYZ_to_Lab.exit.i.i.i, %bb.g
  %i.dc = tail call ptr @dt_bilateral_init(i32 noundef %i.aa, i32 noundef %i.z, float noundef %i.db, float noundef 5.000000e+00) #34 ; 5 uses
  %.not.i191.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i191.i.i, label %bb.t, label %bb.s

.lr.ph.i.i.i:                                     ; preds = %bb.g, %dt_XYZ_to_Lab.exit.i.i.i
  %.02943.i.i.i = phi i64 [ %i.fg, %dt_XYZ_to_Lab.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.02943.i.i.i ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load float, ptr %i.df, align 8, !tbaa !15 ; 4 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, f0x3E1283AB
  %i.di = fmul reassoc nsz arcp contract afn float %i.dg, 6.061690e-02
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dg, f0x3F36D410
  %i.dk = load float, ptr %i.dd, align 16, !tbaa !15
  %i.dl = load float, ptr %i.de, align 4, !tbaa !15
  %i.dm = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = fmul reassoc arcp contract afn <4 x float> %i.dn, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.dp = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul reassoc arcp contract afn <4 x float> %i.dq, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.ds = fadd reassoc nsz arcp contract afn <4 x float> %i.dr, %i.do ; 4 uses
  %i.dt = extractelement <4 x float> %i.ds, i64 0
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.dh ; 2 uses
  %i.dv = extractelement <4 x float> %i.ds, i64 1
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.di ; 3 uses
  %i.dx = extractelement <4 x float> %i.ds, i64 2
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.dj ; 2 uses
  %i.dz = extractelement <4 x float> %i.ds, i64 3
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dg
  %i.eb = fmul reassoc nsz arcp contract afn float %i.du, f0x3F84C0A6 ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.eb, f0x3C111AA7
  br i1 %i.ec, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ed = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.eb) #35
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ee = fmul reassoc nsz arcp contract afn float %i.du, f0x410137F7
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, f0x3E0D3DCB
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eg = phi reassoc nsz arcp contract afn float [ %i.ed, %bb.h ], [ %i.ef, %bb.i ]
  %i.eh = fcmp reassoc nsz arcp contract afn ogt float %i.dw, f0x3C111AA7
  br i1 %i.eh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ei = fmul reassoc nsz arcp contract afn float %i.dw, f0x40F92F69
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ek = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.dw) #35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.el = phi reassoc nsz arcp contract afn float [ %i.ek, %bb.l ], [ %i.ej, %bb.k ] ; 3 uses
  %i.em = fmul reassoc nsz arcp contract afn float %i.dy, f0x3F9B2B9B ; 2 uses
  %i.en = fcmp reassoc nsz arcp contract afn ogt float %i.em, f0x3C111AA7
  br i1 %i.en, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eo = fmul reassoc nsz arcp contract afn float %i.dy, f0x41170A26
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, f0x3E0D3DCB
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.eq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.em) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.er = phi reassoc nsz arcp contract afn float [ %i.eq, %bb.o ], [ %i.ep, %bb.n ]
  %i.es = fmul reassoc nsz arcp contract afn float %i.ea, 0.000000e+00 ; 3 uses
  %i.et = fcmp reassoc nsz arcp contract afn ogt float %i.es, f0x3C111AA7
  br i1 %i.et, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = fadd reassoc ninf nsz arcp contract afn float %i.es, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ev = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.es) #35
  br label %dt_XYZ_to_Lab.exit.i.i.i

dt_XYZ_to_Lab.exit.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.ew = phi reassoc nsz arcp contract afn float [ %i.ev, %bb.r ], [ %i.eu, %bb.q ]
  %i.ex = fmul reassoc nsz arcp contract afn float %i.el, 1.160000e+02
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, -1.600000e+01
  %i.ez = fsub reassoc nsz arcp contract afn float %i.eg, %i.el
  %i.fa = fsub reassoc nsz arcp contract afn float %i.er, %i.el
  %i.fb = insertelement <4 x float> poison, float %i.ez, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.fa, i64 2
  %i.fd = insertelement <4 x float> %i.fc, float %i.ew, i64 3
  %i.fe = fmul reassoc nsz arcp contract afn <4 x float> %i.fd, <float poison, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.ff = insertelement <4 x float> %i.fe, float %i.ey, i64 0
  store <4 x float> %i.ff, ptr %i.dd, align 16, !tbaa !15
  %i.fg = add nuw i64 %.02943.i.i.i, 4            ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.al
  br i1 %i.fh, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  tail call void @dt_bilateral_splat(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ah) #34
  tail call void @dt_bilateral_blur(ptr noundef nonnull %i.dc) #34
  tail call void @dt_bilateral_slice_to_output(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ah, float noundef 1.000000e+01) #34
  tail call void @dt_bilateral_free(ptr noundef nonnull %i.dc) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  br i1 %.not.i.i.i, label %detail_enhance.exit.i.i, label %.lr.ph46.i.i.i.preheader

.lr.ph46.i.i.i.preheader:                         ; preds = %bb.t
  %i.fi = add i64 %i.al, -4                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.fi, 32
  br i1 %min.iters.check, label %.lr.ph46.i.i.i.preheader250, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.i.i.preheader
  %i.fj = lshr exact i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %i.fl = and i64 %i.fk, 7                        ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = select i1 %i.fm, i64 8, i64 %i.fl
  %n.vec = sub nsw i64 %i.fk, %i.fn               ; 2 uses
  %i.fo = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.fp, align 64, !tbaa !15 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec152 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec153 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec152, splat (float 2.000000e-03)
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.fs = fadd reassoc nsz arcp contract afn <8 x float> %i.fr, splat (float f0x3E0D3DCB) ; 7 uses
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec153, splat (float 5.000000e-03)
  %i.fu = fadd reassoc nsz arcp contract afn <8 x float> %i.fs, %i.fq ; 5 uses
  %i.fv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fu, splat (float f0x3E53DCB1)
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fu
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fw, %i.fu
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, splat (float f0x3E038026)
  %i.fz = fadd reassoc nsz arcp contract afn <8 x float> %i.fy, splat (float f0xBC911AA6)
  %i.ga = select reassoc nsz arcp contract afn <8 x i1> %i.fv, <8 x float> %i.fx, <8 x float> %i.fz ; 3 uses
  %i.gb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fs, splat (float f0x3E53DCB1)
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, %i.fs
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %i.gc, %i.fs
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, splat (float f0x3E038026)
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, splat (float f0xBC911AA6)
  %i.gg = select reassoc nsz arcp contract afn <8 x i1> %i.gb, <8 x float> %i.gd, <8 x float> %i.gf ; 3 uses
  %i.gh = fsub reassoc nsz arcp contract afn <8 x float> %i.fs, %i.ft ; 5 uses
  %i.gi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gh, splat (float f0x3E53DCB1)
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, %i.gh
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, %i.gh
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, splat (float f0x3E038026)
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, splat (float f0xBC911AA6)
  %i.gn = select reassoc nsz arcp contract afn <8 x i1> %i.gi, <8 x float> %i.gk, <8 x float> %i.gm ; 3 uses
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %i.ga, splat (float 9.642000e-01)
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %i.gn, splat (float f0x3F532CA5)
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %i.ga, splat (float f0x3D8E11AE)
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, splat (float f0xBE6A7CB9)
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gr
  %i.gt = fmul reassoc nsz arcp contract afn <8 x float> %i.gn, splat (float f0x3F94602A)
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gs, %i.gt
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %i.gg
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, %i.gp
  %i.gx = fmul reassoc nsz arcp contract afn <8 x float> %i.gw, zeroinitializer
  %i.gy = shufflevector <8 x float> %i.ga, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gz = fmul reassoc nsz arcp contract afn <16 x float> %i.gy, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.ha = shufflevector <8 x float> %i.gg, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hb = fmul reassoc nsz arcp contract afn <16 x float> %i.ha, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.hc = fadd reassoc nsz arcp contract afn <16 x float> %i.gz, %i.hb
  %i.hd = shufflevector <8 x float> %i.gn, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.he = fmul reassoc nsz arcp contract afn <16 x float> %i.hd, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.hf = fadd reassoc nsz arcp contract afn <16 x float> %i.hc, %i.he
  %i.hg = shufflevector <8 x float> %i.gu, <8 x float> %i.gx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.hf, <16 x float> %i.hg, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.fp, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %.lr.ph46.i.i.i.preheader250, label %vector.body, !llvm.loop !521

.lr.ph46.i.i.i.preheader250:                      ; preds = %vector.body, %.lr.ph46.i.i.i.preheader
  %.044.i.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.i.preheader ], [ %i.fo, %vector.body ]
  br label %.lr.ph46.i.i.i

.lr.ph46.i.i.i:                                   ; preds = %.lr.ph46.i.i.i.preheader250, %.lr.ph46.i.i.i
  %.044.i.i.i = phi i64 [ %i.ja, %.lr.ph46.i.i.i ], [ %.044.i.i.i.ph, %.lr.ph46.i.i.i.preheader250 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.044.i.i.i ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !15
  %i.hl = load float, ptr %i.hi, align 16, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !15
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hk, 2.000000e-03
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hl, 8.620690e-03
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hp, f0x3E0D3DCB ; 4 uses
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hn, 5.000000e-03
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hq, %i.ho ; 2 uses
  %i.ht = fsub reassoc nsz arcp contract afn float %i.hq, %i.hr
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.hq, i64 1 ; 5 uses
  %i.hw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hv, splat (float f0x3E53DCB1)
  %i.hx = fmul reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hv
  %i.hy = insertelement <4 x float> poison, float %i.hq, i64 0
  %i.hz = insertelement <4 x float> %i.hy, float %i.hs, i64 1
  %i.ia = insertelement <4 x float> %i.hz, float %i.ht, i64 3 ; 4 uses
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, %i.ia
  %i.id = fmul reassoc nsz arcp contract afn <2 x float> %i.hx, %i.hv
  %i.ie = fmul reassoc nsz arcp contract afn <2 x float> %i.hv, splat (float f0x3E038026)
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, splat (float f0x3E038026)
  %i.ig = fadd reassoc nsz arcp contract afn <2 x float> %i.ie, splat (float f0xBC911AA6)
  %i.ih = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ib, splat (float f0x3E53DCB1)
  %i.ii = fmul reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ia
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ik = fadd reassoc nsz arcp contract afn <4 x float> %i.if, splat (float f0xBC911AA6)
  %i.il = select <2 x i1> %i.hw, <2 x float> %i.id, <2 x float> %i.ig
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.in = select <4 x i1> %i.ih, <4 x float> %i.ij, <4 x float> %i.ik ; 2 uses
  %i.io = shufflevector <4 x float> <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float poison>, <4 x float> %i.im, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ip = fmul reassoc nsz arcp contract afn <4 x float> %i.io, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn <4 x float> %i.in, <float f0xBFCEF57D, float f0xBF719831, float f0xBE6A7CB9, float f0x3F532CA5>
  %i.ir = shufflevector <4 x float> %i.in, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.is = fmul reassoc nsz arcp contract afn <4 x float> %i.ir, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn <4 x float> %i.ip, %i.im
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.ip, %i.im
  %i.iv = shufflevector <4 x float> %i.it, <4 x float> %i.iu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.iw = fadd reassoc nsz arcp contract afn <4 x float> %i.iv, %i.iq ; 2 uses
  %i.ix = fadd reassoc nsz arcp contract afn <4 x float> %i.iw, %i.is
  %i.iy = fmul reassoc nsz arcp contract afn <4 x float> %i.iw, %i.is
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> %i.iy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.iz, ptr %i.hi, align 16, !tbaa !15
  %i.ja = add nuw i64 %.044.i.i.i, 4              ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.al
  br i1 %i.jb, label %.lr.ph46.i.i.i, label %detail_enhance.exit.i.i, !llvm.loop !522

detail_enhance.exit.i.i:                          ; preds = %.lr.ph46.i.i.i, %bb.t, %gamma_correct.exit.i.i
  %i.jc = shl nsw i64 %i.ad, 3
  %i.jd = mul i64 %i.jc, %i.ae                    ; 3 uses
  %i.je = tail call noalias ptr @malloc(i64 noundef %i.jd) #33 ; 16 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %line_detect.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %detail_enhance.exit.i.i
  %i.jg = mul nsw i64 %i.ae, %i.ad                ; 9 uses
  %.not.i192.i.i = icmp eq i64 %i.jg, 0           ; 2 uses
  br i1 %.not.i192.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i.preheader

.lr.ph.i193.i.i.preheader:                        ; preds = %bb.u
  %min.iters.check155 = icmp ult i64 %i.jg, 5
  br i1 %min.iters.check155, label %.lr.ph.i193.i.i.preheader249, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i193.i.i.preheader
  %i.jh = and i64 %i.jg, 3                        ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %i.jj = select i1 %i.ji, i64 4, i64 %i.jh
  %n.vec157 = sub i64 %i.jg, %i.jj                ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 3 uses
  %i.jk = shl i64 %index159, 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jk
  %wide.vec160 = load <16 x float>, ptr %i.jl, align 64, !tbaa !15 ; 3 uses
  %strided.vec161 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec162 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec163 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.jm = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec161, splat (float 3.000000e-01)
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec162, splat (float 5.900000e-01)
  %i.jo = fadd reassoc nsz arcp contract afn <4 x float> %i.jn, %i.jm
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec163, splat (float 1.100000e-01)
  %i.jq = fadd reassoc nsz arcp contract afn <4 x float> %i.jo, %i.jp
  %i.jr = fpext reassoc nsz arcp contract afn <4 x float> %i.jq to <4 x double>
  %i.js = fmul reassoc nsz arcp contract afn <4 x double> %i.jr, splat (double 2.560000e+02)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %index159
  store <4 x double> %i.js, ptr %i.jt, align 8, !tbaa !166
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
end_hunk_2
