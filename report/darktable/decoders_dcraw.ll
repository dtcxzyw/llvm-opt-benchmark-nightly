Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw9pana_dataEiPj:bb.a
  %i.al = icmp eq i32 %i.ak, 5
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !76  ; 4 uses
  br i1 %i.al, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 548 ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16936 ; 34 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !147 ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !147
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !99
  %i.au = zext i8 %i.at to i32
  store i32 %i.au, ptr %2, align 4, !tbaa !120
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.aw = and i32 %i.av, 16383                    ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ao, align 4, !tbaa !147
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !99
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !120
  %i.bd = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.be = and i32 %i.bd, 16383                    ; 2 uses
  %i.bf = add nuw nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.ao, align 4, !tbaa !147
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !99
  %i.bj = zext i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !120
  %i.bl = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.bm = and i32 %i.bl, 16383                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.ao, align 4, !tbaa !147
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !99
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !120
  %i.bt = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.bu = and i32 %i.bt, 16383                    ; 2 uses
  %i.bv = add nuw nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ao, align 4, !tbaa !147
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !99
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !120
  %i.cb = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.cc = and i32 %i.cb, 16383                    ; 2 uses
  %i.cd = add nuw nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ao, align 4, !tbaa !147
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !99
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !120
  %i.cj = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.ck = and i32 %i.cj, 16383                    ; 2 uses
  %i.cl = add nuw nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ao, align 4, !tbaa !147
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !99
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !120
  %i.cr = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.cs = and i32 %i.cr, 16383                    ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.ao, align 4, !tbaa !147
  %i.cu = zext nneg i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !99
  %i.cx = zext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !120
  %i.cz = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.da = and i32 %i.cz, 16383                    ; 2 uses
  %i.db = add nuw nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.ao, align 4, !tbaa !147
  %i.dc = zext nneg i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !99
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !120
  %i.dh = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.di = and i32 %i.dh, 16383                    ; 2 uses
  %i.dj = add nuw nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.ao, align 4, !tbaa !147
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !99
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !120
  %i.dp = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.dq = and i32 %i.dp, 16383                    ; 2 uses
  %i.dr = add nuw nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.ao, align 4, !tbaa !147
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !99
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !120
  %i.dx = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.dy = and i32 %i.dx, 16383                    ; 2 uses
  %i.dz = add nuw nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.ao, align 4, !tbaa !147
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !99
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !120
  %i.ef = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.eg = and i32 %i.ef, 16383                    ; 2 uses
  %i.eh = add nuw nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ao, align 4, !tbaa !147
  %i.ei = zext nneg i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !99
  %i.el = zext i8 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.el, ptr %i.em, align 4, !tbaa !120
  %i.en = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.eo = and i32 %i.en, 16383                    ; 2 uses
  %i.ep = add nuw nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.ao, align 4, !tbaa !147
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !99
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !120
  %i.ev = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.ew = and i32 %i.ev, 16383                    ; 2 uses
  %i.ex = add nuw nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ao, align 4, !tbaa !147
  %i.ey = zext nneg i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !99
  %i.fb = zext i8 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !120
  %i.fd = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.fe = and i32 %i.fd, 16383                    ; 2 uses
  %i.ff = add nuw nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.ao, align 4, !tbaa !147
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !99
  %i.fj = zext i8 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !120
  %i.fl = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.fm = and i32 %i.fl, 16383
  store i32 %i.fm, ptr %i.ao, align 4, !tbaa !147
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.am, i64 16936 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !147
  %i.fp = sub nsw i32 %i.fo, %1                   ; 2 uses
  %i.fq = and i32 %i.fp, 131071                   ; 2 uses
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !147
  %i.fr = getelementptr inbounds nuw i8, ptr %i.am, i64 548
  %i.fs = lshr i32 %i.fq, 3
  %i.ft = xor i32 %i.fs, 16368
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 1
  %i.fx = zext i16 %i.fw to i32
  %i.fy = and i32 %i.fp, 7
  %i.fz = lshr i32 %i.fx, %i.fy
  %i.ga = shl nsw i32 -1, %1
  %i.gb = xor i32 %i.ga, -1
  %i.gc = and i32 %i.fz, %i.gb
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.j, %bb.b
  %.012 = phi i32 [ 0, %bb.b ], [ %i.gc, %bb.j ], [ 0, %.preheader ]
  ret i32 %.012
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18panasonic_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 548
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16386) %i.f, i8 0, i64 16386, i1 false)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16936
  store i32 0, ptr %i.h, align 4, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 381912 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !229
  %i.k = icmp eq i32 %i.j, 12
  %i.l = select i1 %i.k, i64 10, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381908
  %i.n = load i32, ptr %i.m, align 4, !tbaa !148
  %i.o = icmp eq i32 %i.n, 5
  br i1 %i.o, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !116
  %.not95 = icmp eq i16 %i.q, 0
  br i1 %.not95, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %.pre = load i16, ptr %i.s, align 2, !tbaa !117
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge90
  %i.aa = phi i16 [ %.pre, %.lr.ph92 ], [ %i.cj, %._crit_edge90 ]
  %.07391 = phi i32 [ 0, %.lr.ph92 ], [ %i.ck, %._crit_edge90 ] ; 2 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !118
  %i.ac = zext i16 %i.aa to i32
  %i.ad = mul nuw nsw i32 %.07391, %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ae ; 2 uses
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ag = load i16, ptr %i.s, align 2, !tbaa !117
  %.not96 = icmp eq i16 %i.ag, 0
  br i1 %.not96, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %i.ah = call noundef i32 @_ZN6LibRaw9pana_dataEiPj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !229
  switch i32 %i.ai, label %bb.e [
    i32 12, label %bb.c
    i32 14, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph89
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %1 = load <16 x i32>, ptr %i.c, align 16        ; 2 uses
  %i.ak = shufflevector <16 x i32> %1, <16 x i32> poison, <8 x i32> <i32 1, i32 2, i32 4, i32 5, i32 7, i32 8, i32 10, i32 11>
  %i.al = shl <8 x i32> %i.ak, <i32 8, i32 4, i32 8, i32 4, i32 8, i32 4, i32 8, i32 4>
  %i.am = and <8 x i32> %i.al, <i32 3840, i32 -1, i32 3840, i32 -1, i32 3840, i32 -1, i32 3840, i32 -1>
  %i.an = shufflevector <16 x i32> %1, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 3, i32 4, i32 6, i32 7, i32 9, i32 10>
  %i.ao = lshr <8 x i32> %i.an, <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  %i.ap = add <8 x i32> %i.am, %i.ao
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.aj, align 2, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load <2 x i32>, ptr %i.y, align 16, !tbaa !120
  %i.at = load <2 x i32>, ptr %i.z, align 4, !tbaa !120
  %i.au = shl <2 x i32> %i.at, <i32 8, i32 4>
  %i.av = and <2 x i32> %i.au, <i32 3840, i32 -1>
  %i.aw = lshr <2 x i32> %i.as, <i32 0, i32 4>
  %i.ax = add <2 x i32> %i.av, %i.aw
  %i.ay = trunc <2 x i32> %i.ax to <2 x i16>
  store <2 x i16> %i.ay, ptr %i.ar, align 2, !tbaa !97
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph89
  %i.az = load i32, ptr %i.c, align 16, !tbaa !120
  %i.ba = load i32, ptr %i.t, align 4, !tbaa !120 ; 2 uses
  %i.bb = shl i32 %i.ba, 8
  %i.bc = and i32 %i.bb, 16128
  %i.bd = add i32 %i.bc, %i.az
  %i.be = trunc i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load <8 x i32>, ptr %i.w, align 8, !tbaa !120
  %i.bi = load <13 x i32>, ptr %i.v, align 4, !tbaa !120 ; 2 uses
  %i.bj = shufflevector <13 x i32> %i.bi, <13 x i32> poison, <8 x i32> <i32 0, i32 2, i32 2, i32 5, i32 7, i32 9, i32 9, i32 12> ; 2 uses
  %i.bk = shufflevector <13 x i32> %i.bi, <13 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 5, i32 7>
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.ba, i64 0
  %i.bm = lshr <4 x i32> %i.bl, <i32 6, i32 4, i32 6, i32 4>
  %i.bn = load <10 x i32>, ptr %i.u, align 8, !tbaa !120
  %i.bo = shufflevector <10 x i32> %i.bn, <10 x i32> poison, <4 x i32> <i32 0, i32 2, i32 7, i32 9>
  %i.bp = shl <4 x i32> %i.bo, <i32 2, i32 4, i32 2, i32 4>
  %i.bq = add <4 x i32> %i.bp, %i.bm
  %i.br = load <8 x i32>, ptr %i.x, align 4, !tbaa !120
  %i.bs = shufflevector <8 x i32> %i.br, <8 x i32> poison, <2 x i32> <i32 0, i32 7>
  %i.bt = shl <8 x i32> %i.bj, <i32 10, i32 12, i32 2, i32 8, i32 10, i32 12, i32 2, i32 8>
  %i.bu = lshr <8 x i32> %i.bj, <i32 10, i32 12, i32 2, i32 8, i32 10, i32 12, i32 2, i32 8>
  %i.bv = shufflevector <8 x i32> %i.bt, <8 x i32> %i.bu, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 5, i32 14, i32 7>
  %i.bw = and <8 x i32> %i.bv, <i32 15360, i32 12288, i32 63, i32 16128, i32 15360, i32 12288, i32 63, i32 16128> ; 2 uses
  %i.bx = shl <8 x i32> %i.bh, <i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6>
  %i.by = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 7, i32 poison>
  %i.bz = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x i32> %i.bq, <4 x i32> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 4, i32 5>
  %i.cb = shufflevector <8 x i32> %i.ca, <8 x i32> %i.by, <8 x i32> <i32 0, i32 1, i32 10, i32 6, i32 2, i32 3, i32 14, i32 7> ; 2 uses
  %i.cc = add <8 x i32> %i.bw, %i.cb
  %i.cd = or disjoint <8 x i32> %i.bw, %i.cb
  %i.ce = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 5, i32 14, i32 7>
  %i.cf = trunc <8 x i32> %i.ce to <8 x i16>
  store <8 x i16> %i.cf, ptr %i.bg, align 2, !tbaa !97
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph89, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.l ; 2 uses
  %i.cg = load i16, ptr %i.s, align 2, !tbaa !117 ; 2 uses
  %i.ch = zext i16 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph89, label %._crit_edge90, !llvm.loop !225

._crit_edge90:                                    ; preds = %bb.e, %bb.b
  %i.cj = phi i16 [ 0, %bb.b ], [ %i.cg, %bb.e ]
  %i.ck = add nuw nsw i32 %.07391, 1              ; 2 uses
  %i.cl = load i16, ptr %i.p, align 8, !tbaa !116
  %i.cm = zext i16 %i.cl to i32
  %i.cn = icmp samesign ult i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !226

bb.f:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !135
  %i.cq = icmp ugt i32 %i.cp, 16383
  br i1 %i.cq, label %bb.g, label %.preheader80

.preheader80:                                     ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !116
  %.not93 = icmp eq i16 %i.cs, 0
  br i1 %.not93, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %.preheader80
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cz = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.cz, align 16, !tbaa !134
  tail call void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.h:                                             ; preds = %.lr.ph86, %._crit_edge
  %.085 = phi i32 [ 0, %.lr.ph86 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.17484 = phi i32 [ 0, %.lr.ph86 ], [ %i.fb, %._crit_edge ] ; 3 uses
  tail call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.da = load i16, ptr %i.ct, align 2, !tbaa !117
  %.not94 = icmp eq i16 %i.da, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.t
  %.183 = phi i32 [ %.2, %bb.t ], [ %.085, %bb.h ] ; 2 uses
  %.17282 = phi i32 [ %i.ex, %bb.t ], [ 0, %bb.h ] ; 5 uses
  %.lhs.trunc = trunc nuw i32 %.17282 to i16
  %i.db = urem i16 %.lhs.trunc, 14                ; 4 uses
  %i.dc = icmp eq i16 %i.db, 0
  br i1 %i.dc, label %.thread, label %bb.i

.thread:                                          ; preds = %.lr.ph
  store i32 0, ptr %i.cu, align 4, !tbaa !120
  store i32 0, ptr %i.b, align 4, !tbaa !120
  store i32 0, ptr %i.cv, align 4, !tbaa !120
  store i32 0, ptr %i.a, align 4, !tbaa !120
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %.lhs.trunc78 = trunc nuw nsw i16 %i.db to i8
  %i.dd = urem i8 %.lhs.trunc78, 3
  %i.de = icmp eq i8 %i.dd, 2
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.df = tail call noundef i32 @_ZN6LibRaw9pana_dataEiPj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null)
  %i.dg = sub nsw i32 3, %i.df
  %i.dh = lshr i32 4, %i.dg
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j, %bb.i
  %.2 = phi i32 [ %i.dh, %bb.j ], [ %.183, %bb.i ], [ %.183, %.thread ] ; 6 uses
  %i.di = and i16 %i.db, 1
  %i.dj = zext nneg i16 %i.di to i64              ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !120
  %.not = icmp eq i32 %i.dl, 0
  %i.dm = tail call noundef i32 @_ZN6LibRaw9pana_dataEiPj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8, ptr noundef null) ; 5 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not77 = icmp eq i32 %i.dm, 0
  br i1 %.not77, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = shl nsw i32 -128, %.2
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !120
  %i.dp = add i32 %i.do, %.neg                    ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  %i.dr = icmp eq i32 %.2, 4
  %or.cond = select i1 %i.dq, i1 true, i1 %i.dr
  %i.ds = shl nsw i32 -1, %.2
  %i.dt = xor i32 %i.ds, -1
  %i.du = select i1 %or.cond, i32 %i.dt, i32 -1
  %storemerge = and i32 %i.du, %i.dp
  %i.dv = shl nuw nsw i32 %i.dm, %.2
  %i.dw = add nsw i32 %storemerge, %i.dv
  store i32 %i.dw, ptr %i.dn, align 4, !tbaa !120
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !120
  %i.dx = icmp ne i32 %i.dm, 0
  %i.dy = icmp samesign ugt i16 %i.db, 11
  %or.cond3 = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = shl nuw nsw i32 %i.dm, 4
  %i.ea = tail call noundef i32 @_ZN6LibRaw9pana_dataEiPj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null)
  %i.eb = or i32 %i.ea, %i.dz
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !120
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.m
  %i.ed = and i32 %.17282, 1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !120 ; 2 uses
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = load ptr, ptr %i.cw, align 8, !tbaa !118
  %i.ej = load i16, ptr %i.ct, align 2, !tbaa !117
  %i.ek = zext i16 %i.ej to i32
  %i.el = mul nuw nsw i32 %.17484, %i.ek
  %i.em = add nuw nsw i32 %i.el, %.17282
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.en
  store i16 %i.eh, ptr %i.eo, align 2, !tbaa !97
  %i.ep = and i32 %i.eg, 65535
  %i.eq = icmp samesign ugt i32 %i.ep, 4098
  br i1 %i.eq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.er = load i16, ptr %i.cx, align 2, !tbaa !138
  %i.es = zext i16 %i.er to i32
  %i.et = icmp samesign ult i32 %.17282, %i.es
  br i1 %i.et, label %bb.r, label %bb.t

end_hunk_0
