Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/aahd_demosaic?download=true
inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4AAHDC2ER6LibRaw:bb.a
  %i.e = zext i16 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 8                  ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !78
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %i.i, 8                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !79
  %i.l = mul nuw nsw i32 %i.j, %i.f
  %i.m = zext nneg i32 %i.l to i64                ; 7 uses
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 39) #12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !80
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %.preheader70

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 1, ptr %i.p, align 16, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

.preheader70:                                     ; preds = %bb.a
  %i.q = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw [6 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.m ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.m ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.w, ptr %i.x, align 8, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.y, ptr %i.z, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i16 0, ptr %i.ad, align 4, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  store i16 0, ptr %i.ae, align 2, !tbaa !86
  store i16 0, ptr %i.ac, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87 ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !86
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i16 %i.ah, ptr %i.ai, align 8, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 %i.an, ptr %i.ao, align 4, !tbaa !86
  %i.ap = load i16, ptr %i.g, align 2, !tbaa !78  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 153380 ; 3 uses
  store float 0.000000e+00, ptr %i.aq, align 8, !tbaa !88
  %i.as = load float, ptr %i.ar, align 4, !tbaa !88
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 2.627000e-01 ; 2 uses
  store float %i.at, ptr %i.aq, align 8, !tbaa !88
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 153396 ; 3 uses
  %i.au = load float, ptr %gep.1, align 4, !tbaa !88
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3F2D9168
  %i.aw = fadd reassoc nsz arcp contract afn float %i.at, %i.av ; 2 uses
  store float %i.aw, ptr %i.aq, align 8, !tbaa !88
  %gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 153412 ; 3 uses
  %i.ax = load float, ptr %gep.2, align 4, !tbaa !88
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, 5.930000e-02
  %i.az = fadd reassoc nsz arcp contract afn float %i.aw, %i.ay
  store float %i.az, ptr %i.aq, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !88
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 153384 ; 3 uses
  %i.bb = load float, ptr %invariant.gep.1, align 8, !tbaa !88
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, 2.627000e-01 ; 2 uses
  store float %i.bc, ptr %i.ba, align 4, !tbaa !88
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %1, i64 153400 ; 3 uses
  %i.bd = load float, ptr %gep.1.1, align 8, !tbaa !88
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, f0x3F2D9168
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bc, %i.be ; 2 uses
  store float %i.bf, ptr %i.ba, align 4, !tbaa !88
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %1, i64 153416 ; 3 uses
  %i.bg = load float, ptr %gep.2.1, align 8, !tbaa !88
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, 5.930000e-02
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bf, %i.bh
  store float %i.bi, ptr %i.ba, align 4, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store float 0.000000e+00, ptr %i.bj, align 8, !tbaa !88
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 153388 ; 3 uses
  %i.bk = load float, ptr %invariant.gep.2, align 4, !tbaa !88
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, 2.627000e-01 ; 2 uses
  store float %i.bl, ptr %i.bj, align 8, !tbaa !88
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %1, i64 153404 ; 3 uses
  %i.bm = load float, ptr %gep.1.2, align 4, !tbaa !88
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0x3F2D9168
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bl, %i.bn ; 2 uses
  store float %i.bo, ptr %i.bj, align 8, !tbaa !88
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %1, i64 153420 ; 3 uses
  %i.bp = load float, ptr %gep.2.2, align 4, !tbaa !88
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, 5.930000e-02
  %i.br = fadd reassoc nsz arcp contract afn float %i.bo, %i.bq
  store float %i.br, ptr %i.bj, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  store float 0.000000e+00, ptr %i.bs, align 4, !tbaa !88
  %i.bt = load float, ptr %i.ar, align 4, !tbaa !88
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, -1.396300e-01 ; 2 uses
  store float %i.bu, ptr %i.bs, align 4, !tbaa !88
  %i.bv = load float, ptr %gep.1, align 4, !tbaa !88
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, -3.603700e-01
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bu, %i.bw ; 2 uses
  store float %i.bx, ptr %i.bs, align 4, !tbaa !88
  %i.by = load float, ptr %gep.2, align 4, !tbaa !88
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, 5.000000e-01
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bx, %i.bz
  store float %i.ca, ptr %i.bs, align 4, !tbaa !88
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store float 0.000000e+00, ptr %i.cb, align 8, !tbaa !88
  %i.cc = load float, ptr %invariant.gep.1, align 8, !tbaa !88
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, -1.396300e-01 ; 2 uses
  store float %i.cd, ptr %i.cb, align 8, !tbaa !88
  %i.ce = load float, ptr %gep.1.1, align 8, !tbaa !88
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, -3.603700e-01
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cd, %i.cf ; 2 uses
  store float %i.cg, ptr %i.cb, align 8, !tbaa !88
  %i.ch = load float, ptr %gep.2.1, align 8, !tbaa !88
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, 5.000000e-01
  %i.cj = fadd reassoc nsz arcp contract afn float %i.cg, %i.ci
  store float %i.cj, ptr %i.cb, align 8, !tbaa !88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  store float 0.000000e+00, ptr %i.ck, align 4, !tbaa !88
  %i.cl = load float, ptr %invariant.gep.2, align 4, !tbaa !88
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, -1.396300e-01 ; 2 uses
  store float %i.cm, ptr %i.ck, align 4, !tbaa !88
  %i.cn = load float, ptr %gep.1.2, align 4, !tbaa !88
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, -3.603700e-01
  %i.cp = fadd reassoc nsz arcp contract afn float %i.cm, %i.co ; 2 uses
  store float %i.cp, ptr %i.ck, align 4, !tbaa !88
  %i.cq = load float, ptr %gep.2.2, align 4, !tbaa !88
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, 5.000000e-01
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cp, %i.cr
  store float %i.cs, ptr %i.ck, align 4, !tbaa !88
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store float 0.000000e+00, ptr %i.ct, align 8, !tbaa !88
  %i.cu = load float, ptr %i.ar, align 4, !tbaa !88
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, 5.034000e-01 ; 2 uses
  store float %i.cv, ptr %i.ct, align 8, !tbaa !88
  %i.cw = load float, ptr %gep.1, align 4, !tbaa !88
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, -4.629000e-01
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cv, %i.cx ; 2 uses
  store float %i.cy, ptr %i.ct, align 8, !tbaa !88
  %i.cz = load float, ptr %gep.2, align 4, !tbaa !88
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, -4.050000e-02
  %i.db = fadd reassoc nsz arcp contract afn float %i.cy, %i.da
  store float %i.db, ptr %i.ct, align 8, !tbaa !88
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  store float 0.000000e+00, ptr %i.dc, align 4, !tbaa !88
  %i.dd = load float, ptr %invariant.gep.1, align 8, !tbaa !88
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, 5.034000e-01 ; 2 uses
  store float %i.de, ptr %i.dc, align 4, !tbaa !88
  %i.df = load float, ptr %gep.1.1, align 8, !tbaa !88
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, -4.629000e-01
  %i.dh = fadd reassoc nsz arcp contract afn float %i.de, %i.dg ; 2 uses
  store float %i.dh, ptr %i.dc, align 4, !tbaa !88
  %i.di = load float, ptr %gep.2.1, align 8, !tbaa !88
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, -4.050000e-02
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dh, %i.dj
  store float %i.dk, ptr %i.dc, align 4, !tbaa !88
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store float 0.000000e+00, ptr %i.dl, align 8, !tbaa !88
  %i.dm = load float, ptr %invariant.gep.2, align 4, !tbaa !88
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, 5.034000e-01 ; 2 uses
  store float %i.dn, ptr %i.dl, align 8, !tbaa !88
  %i.do = load float, ptr %gep.1.2, align 4, !tbaa !88
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, -4.629000e-01
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dn, %i.dp ; 2 uses
  store float %i.dq, ptr %i.dl, align 8, !tbaa !88
  %i.dr = load float, ptr %gep.2.2, align 4, !tbaa !88
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, -4.050000e-02
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dq, %i.ds
  store float %i.dt, ptr %i.dl, align 8, !tbaa !88
  %i.du = load float, ptr @_ZN4AAHD8gammaLUTE, align 16, !tbaa !88
  %i.dv = fcmp reassoc nsz arcp contract afn olt float %i.du, -1.000000e-01
  br i1 %i.dv, label %vector.body, label %.loopexit

vector.body:                                      ; preds = %.preheader70, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader70 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader70 ] ; 2 uses
  %i.dw = uitofp nneg <8 x i32> %vec.ind to <8 x float> ; 2 uses
  %i.dx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dw, splat (float f0x37800000) ; 2 uses
  %i.dy = fpext reassoc nsz arcp contract afn <8 x float> %i.dx to <8 x double>
  %i.dz = fcmp reassoc nsz arcp contract afn olt <8 x double> %i.dy, splat (double 1.810000e-02)
  %i.ea = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.dx, <8 x float> splat (float 4.500000e-01))
  %i.eb = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ea, splat (float 1.099300e+00)
  %i.ec = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.eb, splat (float f0xBDCB5DCC)
  %i.ed = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dw, splat (float f0x38900000)
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.dz, <8 x float> %i.ed, <8 x float> %i.ec
  %i.ee = fmul reassoc nnan nsz arcp contract afn <8 x float> %predphi, splat (float 6.553600e+04)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @_ZN4AAHD8gammaLUTE, i64 %index
  store <8 x float> %i.ee, ptr %i.ef, align 16, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.eg = icmp eq i64 %index.next, 65536
  br i1 %i.eg, label %.loopexit, label %vector.body, !llvm.loop !89

.loopexit:                                        ; preds = %vector.body, %.preheader70
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !14
  %.not86 = icmp eq i16 %i.ej, 0
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %.loopexit
  %.not87 = icmp eq i16 %i.ap, 0
  %i.ek = zext i16 %i.ap to i64                   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  br label %bb.c

._crit_edge85:                                    ; preds = %._crit_edge, %.loopexit
  %i.eq = load i16, ptr %i.ac, align 8, !tbaa !86
  %i.er = load i16, ptr %i.ae, align 2, !tbaa !86
  %. = tail call i16 @llvm.umax.i16(i16 %i.eq, i16 %i.er)
  %i.es = load i16, ptr %i.ad, align 4, !tbaa !86
  %spec.select = tail call i16 @llvm.umax.i16(i16 %., i16 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 %spec.select, ptr %i.et, align 2, !tbaa !94
  ret void

bb.c:                                             ; preds = %.lr.ph84, %._crit_edge
  %.pre118 = phi ptr [ %i.eh, %.lr.ph84 ], [ %.pre, %._crit_edge ] ; 2 uses
  %indvars.iv115 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next116, %._crit_edge ] ; 4 uses
  %indvars.iv107 = phi i32 [ 4, %.lr.ph84 ], [ %indvars.iv.next108, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.eu = trunc nuw nsw i64 %indvars.iv115 to i32 ; 5 uses
  %i.ev = lshr i32 %i.eu, 1
  %indvars.iv115.tr = trunc nuw nsw i64 %indvars.iv115 to i32
  %i.ew = shl nuw nsw i32 %indvars.iv115.tr, 1
  %i.ex = and i32 %i.ew, 14
  %i.ey = getelementptr inbounds nuw i8, ptr %.pre118, i64 544
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !95
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZN6LibRaw5COLOREii.exit.thread.us.preheader, label %.split

_ZN6LibRaw5COLOREii.exit.thread.us.preheader:     ; preds = %bb.c
  store <8 x i32> splat (i32 6), ptr %i.a, align 16, !tbaa !96
  store <8 x i32> splat (i32 6), ptr %i.el, align 16, !tbaa !96
  store <8 x i32> splat (i32 6), ptr %i.em, align 16, !tbaa !96
  store <8 x i32> splat (i32 6), ptr %i.en, align 16, !tbaa !96
  store <8 x i32> splat (i32 6), ptr %i.eo, align 16, !tbaa !96
  store <8 x i32> splat (i32 6), ptr %i.ep, align 16, !tbaa !96
  br label %.split79.us

.split79.us.loopexit88:                           ; preds = %_ZN6LibRaw5COLOREii.exit.thread
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !93
  br label %.split79.us

.split79.us:                                      ; preds = %.split79.us.loopexit88, %_ZN6LibRaw5COLOREii.exit.thread.us.preheader
  %.pre = phi ptr [ %.pre.pre, %.split79.us.loopexit88 ], [ %.pre118, %_ZN6LibRaw5COLOREii.exit.thread.us.preheader ] ; 3 uses
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split79.us
  %i.fb = load i32, ptr %i.k, align 4, !tbaa !79
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !87
  %i.fe = mul nuw nsw i64 %indvars.iv115, %i.ek
  %i.ff = mul i32 %i.fb, %indvars.iv107
  %i.fg = add i32 %i.ff, 4
  %i.fh = sext i32 %i.fg to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  br label %bb.j

.split:                                           ; preds = %bb.c, %_ZN6LibRaw5COLOREii.exit.thread
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %_ZN6LibRaw5COLOREii.exit.thread ], [ 0, %bb.c ] ; 5 uses
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !93  ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 544
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !95 ; 4 uses
  %.not.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit.thread, label %bb.d

bb.d:                                             ; preds = %.split
  %i.fl = icmp ult i32 %i.fk, 1000
  br i1 %i.fl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fm = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.fn = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.fi, i32 noundef %i.eu, i32 noundef %i.fm)
  br label %_ZN6LibRaw5COLOREii.exit

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 381670
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !97 ; 2 uses
  %.not8.i = icmp eq i16 %i.fp, 0
  br i1 %.not8.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 381828
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !98
  %.not.i.i = icmp eq i32 %i.fr, 0
  %i.fs = trunc nuw nsw i64 %indvars.iv97 to i32  ; 4 uses
  br i1 %.not.i.i, label %bb.h, label %_ZN6LibRaw3FCFEii.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ft = lshr i32 %i.fs, 1
  br label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.g, %bb.h
  %.sink124 = phi i32 [ %i.ft, %bb.h ], [ %i.fs, %bb.g ]
  %.sink = phi i32 [ %i.eu, %bb.h ], [ %i.ev, %bb.g ]
  %.sink.i.i = phi i32 [ %i.fs, %bb.h ], [ %i.eu, %bb.g ]
  %.sink11.i.i = phi i32 [ %i.eu, %bb.h ], [ %i.fs, %bb.g ]
  %i.fu = xor i32 %.sink124, -1
  %i.fv = add nsw i32 %.sink, %i.fu
  %i.fw = zext i16 %i.fp to i32
  %i.fx = add i32 %i.fv, %i.fw
  %i.fy = add nuw nsw i32 %.sink.i.i, 1
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = add nuw i32 %i.fz, %.sink11.i.i
  %i.gb = shl i32 %i.fx, 1
  %i.gc = and i32 %i.gb, 14
  %i.gd = and i32 %i.ga, 1
  %i.ge = or disjoint i32 %i.gd, %i.gc
  %i.gf = shl nuw nsw i32 %i.ge, 1
  %i.gg = lshr i32 %i.fk, %i.gf
  %i.gh = and i32 %i.gg, 3
  br label %_ZN6LibRaw5COLOREii.exit

bb.i:                                             ; preds = %bb.f
  %i.gi = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.gj = and i32 %i.gi, 1
  %i.gk = or disjoint i32 %i.gj, %i.ex
  %i.gl = shl nuw nsw i32 %i.gk, 1
  %i.gm = lshr i32 %i.fk, %i.gl
  %i.gn = and i32 %i.gm, 3
  br label %_ZN6LibRaw5COLOREii.exit

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.e, %_ZN6LibRaw3FCFEii.exit.i, %bb.i
  %.0.i = phi i32 [ %i.fn, %bb.e ], [ %i.gn, %bb.i ], [ %i.gh, %_ZN6LibRaw3FCFEii.exit.i ]
  %.0.i.fr = freeze i32 %.0.i                     ; 2 uses
  %i.go = icmp eq i32 %.0.i.fr, 3
  %spec.select69 = select i1 %i.go, i32 1, i32 %.0.i.fr
  br label %_ZN6LibRaw5COLOREii.exit.thread

_ZN6LibRaw5COLOREii.exit.thread:                  ; preds = %_ZN6LibRaw5COLOREii.exit, %.split
  %i.gp = phi i32 [ 6, %.split ], [ %spec.select69, %_ZN6LibRaw5COLOREii.exit ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv97
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !96
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, 48
  br i1 %exitcond100.not, label %.split79.us.loopexit88, label %.split, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.p, %.split79.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.gs = load i16, ptr %i.gr, align 4, !tbaa !14
  %i.gt = zext i16 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next116, %i.gt
  %indvars.iv.next108 = add nuw nsw i32 %indvars.iv107, 1
  br i1 %i.gu, label %bb.c, label %._crit_edge85, !llvm.loop !101

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv109 = phi i64 [ %i.fh, %.lr.ph ], [ %indvars.iv.next110, %bb.p ] ; 3 uses
  %indvars.iv105 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next106, %bb.p ] ; 3 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.gw = urem i32 %i.gv, 48
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !96
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv105
  %i.ha = sext i32 %i.gz to i64                   ; 5 uses
  %i.hb = getelementptr inbounds [2 x i8], ptr %gep, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !86 ; 7 uses
  %.not65 = icmp eq i16 %i.hc, 0
  br i1 %.not65, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ha ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !86
  %i.hf = icmp ult i16 %i.he, %i.hc
  br i1 %i.hf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ha ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !86
  %i.hi = icmp ugt i16 %i.hh, %i.hc
  br i1 %i.hi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 %i.hc, ptr %i.hg, align 2, !tbaa !86
  br label %bb.o
end_hunk_0
