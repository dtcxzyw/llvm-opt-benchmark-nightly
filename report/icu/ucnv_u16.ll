Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u16?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL28_UTF16BEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %.not = icmp ult ptr %i.s, %i.u
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %1, align 4, !tbaa !17
  br label %bb.aw

bb.g:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 1
  %i.z = trunc i64 %i.y to i32                    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not249 = icmp eq i32 %i.ad, 0
  br i1 %.not249, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.not250 = icmp eq i8 %.pre, 0
  br i1 %.not250, label %bb.z, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.aj = phi ptr [ %i.ah, %.thread ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ak = phi i8 [ 1, %.thread ], [ %.pre, %bb.h ]
  %i.al = sext i8 %i.ak to i32                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 66 ; 2 uses
  %i.ao = sub nsw i32 4, %i.al                    ; 2 uses
  %i.ap = trunc i64 %i.j to i32
  %i.aq = add i32 %i.al, %i.ap
  %i.ar = add i32 %i.aq, -4
  %i.as = trunc i64 %i.k to i32
  %i.at = sub i32 %i.ar, %i.as                    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %bb.i
  %.0219 = phi ptr [ %i.g, %bb.i ], [ %i.au, %bb.y ] ; 4 uses
  %.0191 = phi i32 [ %i.m, %bb.i ], [ %i.ba, %bb.y ]
  %.0184 = phi i32 [ %i.al, %bb.i ], [ %i.aw, %bb.y ] ; 2 uses
  %.0178 = phi i32 [ 0, %bb.i ], [ %i.az, %bb.y ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0219, i64 1 ; 3 uses
  %i.av = load i8, ptr %.0219, align 1, !tbaa !30
  %i.aw = add i32 %.0184, 1                       ; 3 uses
  %i.ax = zext i32 %.0184 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !30
  %i.az = add i32 %.0178, 1                       ; 3 uses
  %i.ba = add i32 %.0191, -1                      ; 4 uses
  switch i32 %i.aw, label %bb.y [
    i32 2, label %bb.k
    i32 4, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.am, align 1, !tbaa !30
  %i.bc = zext i8 %i.bb to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = load i8, ptr %i.an, align 2, !tbaa !30
  %i.bf = zext i8 %i.be to i16
  %i.bg = or disjoint i16 %i.bd, %i.bf            ; 3 uses
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %i.bi = and i32 %i.bh, 63488
  %i.bj = icmp eq i32 %i.bi, 55296
  br i1 %i.bj, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.bg, ptr %i.s, align 2, !tbaa !33
  %.not252 = icmp eq ptr %i.ab, null
  br i1 %.not252, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 -1, ptr %i.ab, align 4, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0200 = phi ptr [ %i.bl, %bb.m ], [ null, %bb.l ]
  %i.bm = add i32 %i.z, -1
  br label %.loopexit297

bb.o:                                             ; preds = %bb.k
  %i.bn = and i32 %i.bh, 1024
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.y, label %.loopexit297.loopexit

bb.p:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.br = zext i8 %i.bq to i16                    ; 2 uses
  %i.bs = shl nuw i16 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !30
  %i.bv = zext i8 %i.bu to i16
  %i.bw = or disjoint i16 %i.bs, %i.bv            ; 2 uses
  %i.bx = and i16 %i.br, 252
  %i.by = icmp eq i16 %i.bx, 220
  br i1 %i.by, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bz = load i8, ptr %i.am, align 1, !tbaa !30
  %i.ca = zext i8 %i.bz to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %i.cc = load i8, ptr %i.an, align 2, !tbaa !30
  %i.cd = zext i8 %i.cc to i16
  %i.ce = or disjoint i16 %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store i16 %i.ce, ptr %i.s, align 2, !tbaa !33
  %i.cg = icmp ugt i32 %i.z, 1
  br i1 %i.cg, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %i.bw, ptr %i.cf, align 2, !tbaa !33
  %.not251 = icmp eq ptr %i.ab, null
  br i1 %.not251, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 -1, ptr %i.ab, align 4, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 -1, ptr %i.ci, align 4, !tbaa !34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1201 = phi ptr [ %i.cj, %bb.s ], [ null, %bb.r ]
  %i.ck = add i32 %i.z, -2
  br label %.loopexit297

bb.u:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i16 %i.bw, ptr %i.cl, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i8 1, ptr %i.cm, align 1, !tbaa !35
  store i32 15, ptr %1, align 4, !tbaa !17
  br label %.loopexit297

bb.v:                                             ; preds = %bb.p
  store i32 12, ptr %1, align 4, !tbaa !17
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.au to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp sgt i64 %i.cq, 1
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds i8, ptr %.0219, i64 -1
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.ct = load i8, ptr %i.bp, align 1, !tbaa !30
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cu, 256
  store i32 %i.cv, ptr %i.ac, align 8, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w
  %.1220 = phi ptr [ %i.cs, %bb.w ], [ %.0219, %bb.x ]
  store i8 2, ptr %i.aj, align 8, !tbaa !31
  store ptr %.1220, ptr %i.f, align 8, !tbaa !24
  store ptr %i.s, ptr %i.r, align 8, !tbaa !27
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !29
  br label %bb.aw

bb.y:                                             ; preds = %bb.j, %bb.o
  %.not253 = icmp eq i32 %i.ba, 0
  br i1 %.not253, label %.loopexit297.loopexit, label %bb.j, !llvm.loop !52

.loopexit297.loopexit:                            ; preds = %bb.y, %bb.o
  %.lcssa365 = phi i32 [ %i.m, %bb.y ], [ %i.az, %bb.o ]
  %.lcssa362 = phi i32 [ 0, %bb.y ], [ %i.ba, %bb.o ]
  %.2.ph = phi i16 [ 0, %bb.y ], [ %i.bg, %bb.o ]
  %i.cw = trunc i32 %i.aw to i8
  br label %.loopexit297

.loopexit297:                                     ; preds = %.loopexit297.loopexit, %bb.t, %bb.u, %bb.n
  %i.cx = phi i32 [ %i.ao, %bb.t ], [ %i.ao, %bb.u ], [ %i.az, %bb.n ], [ %.lcssa365, %.loopexit297.loopexit ]
  %i.cy = phi i32 [ %i.at, %bb.t ], [ %i.at, %bb.u ], [ %i.ba, %bb.n ], [ %.lcssa362, %.loopexit297.loopexit ]
  %.1209 = phi ptr [ %i.ch, %bb.t ], [ %i.cf, %bb.u ], [ %i.bk, %bb.n ], [ %i.s, %.loopexit297.loopexit ]
  %.3203 = phi ptr [ %.1201, %bb.t ], [ %i.ab, %bb.u ], [ %.0200, %bb.n ], [ %i.ab, %.loopexit297.loopexit ]
  %.1196 = phi i32 [ %i.ck, %bb.t ], [ 0, %bb.u ], [ %i.bm, %bb.n ], [ %i.z, %.loopexit297.loopexit ]
  %.1185 = phi i8 [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.n ], [ %i.cw, %.loopexit297.loopexit ] ; 2 uses
  %.2 = phi i16 [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.n ], [ %.2.ph, %.loopexit297.loopexit ]
  store i8 %.1185, ptr %i.aj, align 8, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %.loopexit297, %bb.h
  %i.cz = phi ptr [ %i.aj, %.loopexit297 ], [ %i.ai, %bb.h ] ; 3 uses
  %i.da = phi i8 [ %.1185, %.loopexit297 ], [ 0, %bb.h ] ; 4 uses
  %.3222 = phi ptr [ %i.au, %.loopexit297 ], [ %i.g, %bb.h ] ; 3 uses
  %.3211 = phi ptr [ %.1209, %.loopexit297 ], [ %i.s, %bb.h ] ; 3 uses
  %.5205 = phi ptr [ %.3203, %.loopexit297 ], [ %i.ab, %bb.h ] ; 3 uses
  %.3198 = phi i32 [ %.1196, %.loopexit297 ], [ %i.z, %bb.h ] ; 3 uses
  %.1192 = phi i32 [ %i.cy, %.loopexit297 ], [ %i.m, %bb.h ] ; 4 uses
  %.1179 = phi i32 [ %i.cx, %.loopexit297 ], [ 0, %bb.h ] ; 4 uses
  %.4 = phi i16 [ %.2, %.loopexit297 ], [ 0, %bb.h ] ; 2 uses
  %i.db = shl i32 %.3198, 1                       ; 2 uses
  %i.dc = icmp ugt i32 %i.db, %.1192
  %i.dd = and i32 %.1192, -2
  %spec.select = select i1 %i.dc, i32 %i.dd, i32 %i.db ; 3 uses
  %i.de = icmp eq i16 %.4, 0
  %i.df = icmp ne i32 %spec.select, 0
  %or.cond = and i1 %i.de, %i.df
  br i1 %or.cond, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  %i.dg = sub i32 %.1192, %spec.select            ; 4 uses
  %i.dh = lshr exact i32 %spec.select, 1          ; 3 uses
  %i.di = sub i32 %.3198, %i.dh                   ; 4 uses
  %i.dj = icmp eq ptr %.5205, null
  br i1 %i.dj, label %.preheader, label %.preheader293

.preheader:                                       ; preds = %bb.aa, %bb.af
  %.4223 = phi ptr [ %.5224, %bb.af ], [ %.3222, %bb.aa ] ; 5 uses
  %.4212 = phi ptr [ %.5213, %bb.af ], [ %.3211, %bb.aa ] ; 7 uses
  %.3187 = phi i32 [ %i.em, %bb.af ], [ %i.dh, %bb.aa ] ; 5 uses
  %i.dk = load i8, ptr %.4223, align 1, !tbaa !30
  %i.dl = zext i8 %i.dk to i16
  %i.dm = shl nuw i16 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.4223, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !30
  %i.dp = zext i8 %i.do to i16
  %i.dq = or disjoint i16 %i.dm, %i.dp            ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.4223, i64 2 ; 4 uses
  %i.ds = zext i16 %i.dq to i32                   ; 2 uses
  %i.dt = and i32 %i.ds, 63488
  %i.du = icmp eq i32 %i.dt, 55296
  br i1 %i.du, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %.4212, i64 2
  store i16 %i.dq, ptr %.4212, align 2, !tbaa !33
  br label %bb.af

bb.ac:                                            ; preds = %.preheader
  %i.dw = and i32 %i.ds, 1024
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = icmp ugt i32 %.3187, 1
  %or.cond3 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond3, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load i8, ptr %i.dr, align 1, !tbaa !30
  %i.ea = zext i8 %i.dz to i16                    ; 2 uses
  %i.eb = and i16 %i.ea, 252
  %i.ec = icmp eq i16 %i.eb, 220
  br i1 %i.ec, label %bb.ae, label %.thread269

bb.ae:                                            ; preds = %bb.ad
  %i.ed = shl nuw i16 %i.ea, 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.4223, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !30
  %i.eg = zext i8 %i.ef to i16
  %i.eh = or disjoint i16 %i.ed, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.4223, i64 4
  %i.ej = add i32 %.3187, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %.4212, i64 2
  store i16 %i.dq, ptr %.4212, align 2, !tbaa !33
  %i.el = getelementptr inbounds nuw i8, ptr %.4212, i64 4
  store i16 %i.eh, ptr %i.ek, align 2, !tbaa !33
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae
  %.5224 = phi ptr [ %i.ei, %bb.ae ], [ %i.dr, %bb.ab ] ; 2 uses
  %.5213 = phi ptr [ %i.el, %bb.ae ], [ %i.dv, %bb.ab ] ; 2 uses
  %.4188 = phi i32 [ %i.ej, %bb.ae ], [ %.3187, %bb.ab ]
  %i.em = add i32 %.4188, -1                      ; 2 uses
  %.not255 = icmp eq i32 %i.em, 0
  br i1 %.not255, label %.thread283, label %.preheader, !llvm.loop !53

.preheader293:                                    ; preds = %bb.aa, %bb.ak
  %.6225 = phi ptr [ %.7226, %bb.ak ], [ %.3222, %bb.aa ] ; 5 uses
  %.6214 = phi ptr [ %.7215, %bb.ak ], [ %.3211, %bb.aa ] ; 7 uses
  %.6206 = phi ptr [ %.7207, %bb.ak ], [ %.5205, %bb.aa ] ; 7 uses
  %.5189 = phi i32 [ %i.ft, %bb.ak ], [ %i.dh, %bb.aa ] ; 5 uses
  %.2180 = phi i32 [ %i.fs, %bb.ak ], [ %.1179, %bb.aa ] ; 6 uses
  %i.en = load i8, ptr %.6225, align 1, !tbaa !30
  %i.eo = zext i8 %i.en to i16
  %i.ep = shl nuw i16 %i.eo, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.6225, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !30
  %i.es = zext i8 %i.er to i16
  %i.et = or disjoint i16 %i.ep, %i.es            ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.6225, i64 2 ; 4 uses
  %i.ev = zext i16 %i.et to i32                   ; 2 uses
  %i.ew = and i32 %i.ev, 63488
  %i.ex = icmp eq i32 %i.ew, 55296
  br i1 %i.ex, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.preheader293
  %i.ey = getelementptr inbounds nuw i8, ptr %.6214, i64 2
  store i16 %i.et, ptr %.6214, align 2, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %.6206, i64 4
  store i32 %.2180, ptr %.6206, align 4, !tbaa !34
  br label %bb.ak

bb.ah:                                            ; preds = %.preheader293
  %i.fa = and i32 %i.ev, 1024
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = icmp ugt i32 %.5189, 1
  %or.cond5 = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond5, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load i8, ptr %i.eu, align 1, !tbaa !30
  %i.fe = zext i8 %i.fd to i16                    ; 2 uses
  %i.ff = and i16 %i.fe, 252
  %i.fg = icmp eq i16 %i.ff, 220
  br i1 %i.fg, label %bb.aj, label %.thread269

bb.aj:                                            ; preds = %bb.ai
  %i.fh = shl nuw i16 %i.fe, 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.6225, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !30
  %i.fk = zext i8 %i.fj to i16
  %i.fl = or disjoint i16 %i.fh, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.6225, i64 4
  %i.fn = add i32 %.5189, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %.6214, i64 2
  store i16 %i.et, ptr %.6214, align 2, !tbaa !33
  %i.fp = getelementptr inbounds nuw i8, ptr %.6214, i64 4
  store i16 %i.fl, ptr %i.fo, align 2, !tbaa !33
  %i.fq = getelementptr inbounds nuw i8, ptr %.6206, i64 4
  store i32 %.2180, ptr %.6206, align 4, !tbaa !34
  %i.fr = getelementptr inbounds nuw i8, ptr %.6206, i64 8
  store i32 %.2180, ptr %i.fq, align 4, !tbaa !34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.aj
  %.sink = phi i32 [ 2, %bb.ag ], [ 4, %bb.aj ]
  %.7226 = phi ptr [ %i.eu, %bb.ag ], [ %i.fm, %bb.aj ] ; 2 uses
  %.7215 = phi ptr [ %i.ey, %bb.ag ], [ %i.fp, %bb.aj ] ; 2 uses
  %.7207 = phi ptr [ %i.ez, %bb.ag ], [ %i.fr, %bb.aj ] ; 2 uses
  %.6190 = phi i32 [ %.5189, %bb.ag ], [ %i.fn, %bb.aj ]
  %i.fs = add i32 %.2180, %.sink
  %i.ft = add i32 %.6190, -1                      ; 2 uses
  %.not254 = icmp eq i32 %i.ft, 0
  br i1 %.not254, label %.thread283, label %.preheader293, !llvm.loop !54

.loopexit:                                        ; preds = %bb.ah, %bb.ac
  %.8227 = phi ptr [ %i.dr, %bb.ac ], [ %i.eu, %bb.ah ] ; 2 uses
  %.8216 = phi ptr [ %.4212, %bb.ac ], [ %.6214, %bb.ah ] ; 2 uses
  %.8 = phi ptr [ null, %bb.ac ], [ %.6206, %bb.ah ] ; 2 uses
  %.7 = phi i32 [ %.3187, %bb.ac ], [ %.5189, %bb.ah ] ; 2 uses
  %.4182 = phi i32 [ %.1179, %bb.ac ], [ %.2180, %bb.ah ]
  %.5 = phi i16 [ %i.dq, %bb.ac ], [ %i.et, %bb.ah ]
  %i.fu = icmp eq i32 %.7, 0
  br i1 %i.fu, label %.thread283, label %.thread269

.thread269:                                       ; preds = %bb.ai, %bb.ad, %.loopexit
  %.5281 = phi i16 [ %.5, %.loopexit ], [ %i.dq, %bb.ad ], [ %i.et, %bb.ai ]
  %.4182280 = phi i32 [ %.4182, %.loopexit ], [ %.1179, %bb.ad ], [ %.2180, %bb.ai ]
  %.7279 = phi i32 [ %.7, %.loopexit ], [ %.3187, %bb.ad ], [ %.5189, %bb.ai ] ; 2 uses
  %.8278 = phi ptr [ %.8, %.loopexit ], [ null, %bb.ad ], [ %.6206, %bb.ai ]
  %.8216277 = phi ptr [ %.8216, %.loopexit ], [ %.4212, %bb.ad ], [ %.6214, %bb.ai ]
  %.8227276 = phi ptr [ %.8227, %.loopexit ], [ %i.dr, %bb.ad ], [ %i.eu, %bb.ai ]
  %i.fv = shl i32 %.7279, 1
  %i.fw = add i32 %i.dg, -2
  %i.fx = add i32 %i.fw, %i.fv
  %i.fy = add i32 %.7279, %i.di
  br label %bb.al

bb.al:                                            ; preds = %.thread269, %bb.z
  %.9228 = phi ptr [ %.3222, %bb.z ], [ %.8227276, %.thread269 ] ; 7 uses
  %.9217 = phi ptr [ %.3211, %bb.z ], [ %.8216277, %.thread269 ] ; 6 uses
  %.9 = phi ptr [ %.5205, %bb.z ], [ %.8278, %.thread269 ] ; 7 uses
  %.4199 = phi i32 [ %.3198, %bb.z ], [ %i.fy, %.thread269 ] ; 3 uses
  %.2193 = phi i32 [ %.1192, %bb.z ], [ %i.fx, %.thread269 ] ; 5 uses
  %.5183 = phi i32 [ %.1179, %bb.z ], [ %.4182280, %.thread269 ]
  %.6 = phi i16 [ %.4, %bb.z ], [ %.5281, %.thread269 ] ; 5 uses
  %.not256 = icmp eq i16 %.6, 0
  br i1 %.not256, label %.thread283, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fz = lshr i16 %.6, 8
  %i.ga = trunc nuw i16 %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %.not = icmp ult ptr %i.s, %i.u
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %1, align 4, !tbaa !17
  br label %bb.aw

bb.g:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 1
  %i.z = trunc i64 %i.y to i32                    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not249 = icmp eq i32 %i.ad, 0
  br i1 %.not249, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.not250 = icmp eq i8 %.pre, 0
  br i1 %.not250, label %bb.z, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.aj = phi ptr [ %i.ah, %.thread ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ak = phi i8 [ 1, %.thread ], [ %.pre, %bb.h ]
  %i.al = sext i8 %i.ak to i32                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  %i.an = sub nsw i32 4, %i.al                    ; 2 uses
  %i.ao = trunc i64 %i.j to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = add i32 %i.ap, -4
  %i.ar = trunc i64 %i.k to i32
  %i.as = sub i32 %i.aq, %i.ar                    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %bb.i
  %.0219 = phi ptr [ %i.g, %bb.i ], [ %i.at, %bb.y ] ; 4 uses
  %.0191 = phi i32 [ %i.m, %bb.i ], [ %i.az, %bb.y ]
  %.0184 = phi i32 [ %i.al, %bb.i ], [ %i.av, %bb.y ] ; 2 uses
  %.0178 = phi i32 [ 0, %bb.i ], [ %i.ay, %bb.y ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0219, i64 1 ; 3 uses
  %i.au = load i8, ptr %.0219, align 1, !tbaa !30
  %i.av = add i32 %.0184, 1                       ; 3 uses
  %i.aw = zext i32 %.0184 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !30
  %i.ay = add i32 %.0178, 1                       ; 3 uses
  %i.az = add i32 %.0191, -1                      ; 4 uses
  switch i32 %i.av, label %bb.y [
    i32 2, label %bb.k
    i32 4, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ba = load i16, ptr %i.am, align 1            ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = and i32 %i.bb, 63488
  %i.bd = icmp eq i32 %i.bc, 55296
  br i1 %i.bd, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.ba, ptr %i.s, align 2, !tbaa !33
  %.not252 = icmp eq ptr %i.ab, null
  br i1 %.not252, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 -1, ptr %i.ab, align 4, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0200 = phi ptr [ %i.bf, %bb.m ], [ null, %bb.l ]
  %i.bg = add i32 %i.z, -1
  br label %.loopexit297

bb.o:                                             ; preds = %bb.k
  %i.bh = and i32 %i.bb, 1024
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.y, label %.loopexit297.loopexit

bb.p:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !30
  %i.bl = zext i8 %i.bk to i16                    ; 2 uses
  %i.bm = shl nuw i16 %i.bl, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 67 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !30
  %i.bp = zext i8 %i.bo to i16
  %i.bq = or disjoint i16 %i.bm, %i.bp            ; 2 uses
  %i.br = and i16 %i.bl, 252
  %i.bs = icmp eq i16 %i.br, 220
  br i1 %i.bs, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bt = load i16, ptr %i.am, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store i16 %i.bt, ptr %i.s, align 2, !tbaa !33
  %i.bv = icmp ugt i32 %i.z, 1
  br i1 %i.bv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %i.bq, ptr %i.bu, align 2, !tbaa !33
  %.not251 = icmp eq ptr %i.ab, null
  br i1 %.not251, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 -1, ptr %i.ab, align 4, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 -1, ptr %i.bx, align 4, !tbaa !34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1201 = phi ptr [ %i.by, %bb.s ], [ null, %bb.r ]
  %i.bz = add i32 %i.z, -2
  br label %.loopexit297

bb.u:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i16 %i.bq, ptr %i.ca, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i8 1, ptr %i.cb, align 1, !tbaa !35
  store i32 15, ptr %1, align 4, !tbaa !17
  br label %.loopexit297

bb.v:                                             ; preds = %bb.p
  store i32 12, ptr %1, align 4, !tbaa !17
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.at to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp sgt i64 %i.cf, 1
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds i8, ptr %.0219, i64 -1
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.ci = load i8, ptr %i.bn, align 1, !tbaa !30
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cj, 256
  store i32 %i.ck, ptr %i.ac, align 8, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w
  %.1220 = phi ptr [ %i.ch, %bb.w ], [ %.0219, %bb.x ]
  store i8 2, ptr %i.aj, align 8, !tbaa !31
  store ptr %.1220, ptr %i.f, align 8, !tbaa !24
  store ptr %i.s, ptr %i.r, align 8, !tbaa !27
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !29
  br label %bb.aw

bb.y:                                             ; preds = %bb.j, %bb.o
  %.not253 = icmp eq i32 %i.az, 0
  br i1 %.not253, label %.loopexit297.loopexit, label %bb.j, !llvm.loop !65

.loopexit297.loopexit:                            ; preds = %bb.y, %bb.o
  %.lcssa365 = phi i32 [ %i.m, %bb.y ], [ %i.ay, %bb.o ]
  %.lcssa362 = phi i32 [ 0, %bb.y ], [ %i.az, %bb.o ]
  %.2.ph = phi i16 [ 0, %bb.y ], [ %i.ba, %bb.o ]
  %i.cl = trunc i32 %i.av to i8
  br label %.loopexit297

.loopexit297:                                     ; preds = %.loopexit297.loopexit, %bb.t, %bb.u, %bb.n
  %i.cm = phi i32 [ %i.an, %bb.t ], [ %i.an, %bb.u ], [ %i.ay, %bb.n ], [ %.lcssa365, %.loopexit297.loopexit ]
  %i.cn = phi i32 [ %i.as, %bb.t ], [ %i.as, %bb.u ], [ %i.az, %bb.n ], [ %.lcssa362, %.loopexit297.loopexit ]
  %.1209 = phi ptr [ %i.bw, %bb.t ], [ %i.bu, %bb.u ], [ %i.be, %bb.n ], [ %i.s, %.loopexit297.loopexit ]
  %.3203 = phi ptr [ %.1201, %bb.t ], [ %i.ab, %bb.u ], [ %.0200, %bb.n ], [ %i.ab, %.loopexit297.loopexit ]
  %.1196 = phi i32 [ %i.bz, %bb.t ], [ 0, %bb.u ], [ %i.bg, %bb.n ], [ %i.z, %.loopexit297.loopexit ]
  %.1185 = phi i8 [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.n ], [ %i.cl, %.loopexit297.loopexit ] ; 2 uses
  %.2 = phi i16 [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.n ], [ %.2.ph, %.loopexit297.loopexit ]
  store i8 %.1185, ptr %i.aj, align 8, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %.loopexit297, %bb.h
  %i.co = phi ptr [ %i.aj, %.loopexit297 ], [ %i.ai, %bb.h ] ; 3 uses
  %i.cp = phi i8 [ %.1185, %.loopexit297 ], [ 0, %bb.h ] ; 4 uses
  %.3222 = phi ptr [ %i.at, %.loopexit297 ], [ %i.g, %bb.h ] ; 3 uses
  %.3211 = phi ptr [ %.1209, %.loopexit297 ], [ %i.s, %bb.h ] ; 3 uses
  %.5205 = phi ptr [ %.3203, %.loopexit297 ], [ %i.ab, %bb.h ] ; 3 uses
  %.3198 = phi i32 [ %.1196, %.loopexit297 ], [ %i.z, %bb.h ] ; 3 uses
  %.1192 = phi i32 [ %i.cn, %.loopexit297 ], [ %i.m, %bb.h ] ; 4 uses
  %.1179 = phi i32 [ %i.cm, %.loopexit297 ], [ 0, %bb.h ] ; 4 uses
  %.4 = phi i16 [ %.2, %.loopexit297 ], [ 0, %bb.h ] ; 2 uses
  %i.cq = shl i32 %.3198, 1                       ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, %.1192
  %i.cs = and i32 %.1192, -2
  %spec.select = select i1 %i.cr, i32 %i.cs, i32 %i.cq ; 3 uses
  %i.ct = icmp eq i16 %.4, 0
  %i.cu = icmp ne i32 %spec.select, 0
  %or.cond = and i1 %i.ct, %i.cu
  br i1 %or.cond, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  %i.cv = sub i32 %.1192, %spec.select            ; 4 uses
  %i.cw = lshr exact i32 %spec.select, 1          ; 3 uses
  %i.cx = sub i32 %.3198, %i.cw                   ; 4 uses
  %i.cy = icmp eq ptr %.5205, null
  br i1 %i.cy, label %.preheader, label %.preheader293

.preheader:                                       ; preds = %bb.aa, %bb.af
  %.4223 = phi ptr [ %.5224, %bb.af ], [ %.3222, %bb.aa ] ; 4 uses
  %.4212 = phi ptr [ %.5213, %bb.af ], [ %.3211, %bb.aa ] ; 7 uses
  %.3187 = phi i32 [ %i.dv, %bb.af ], [ %i.cw, %bb.aa ] ; 5 uses
  %i.cz = load i16, ptr %.4223, align 1           ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.4223, i64 2 ; 4 uses
  %i.db = zext i16 %i.cz to i32                   ; 2 uses
  %i.dc = and i32 %i.db, 63488
  %i.dd = icmp eq i32 %i.dc, 55296
  br i1 %i.dd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.preheader
  %i.de = getelementptr inbounds nuw i8, ptr %.4212, i64 2
  store i16 %i.cz, ptr %.4212, align 2, !tbaa !33
  br label %bb.af

bb.ac:                                            ; preds = %.preheader
  %i.df = and i32 %i.db, 1024
  %i.dg = icmp eq i32 %i.df, 0
  %i.dh = icmp ugt i32 %.3187, 1
  %or.cond3 = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond3, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %.4223, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !30
  %i.dk = zext i8 %i.dj to i16                    ; 2 uses
  %i.dl = and i16 %i.dk, 252
  %i.dm = icmp eq i16 %i.dl, 220
  br i1 %i.dm, label %bb.ae, label %.thread269

bb.ae:                                            ; preds = %bb.ad
  %i.dn = shl nuw i16 %i.dk, 8
  %i.do = load i8, ptr %i.da, align 1, !tbaa !30
  %i.dp = zext i8 %i.do to i16
  %i.dq = or disjoint i16 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.4223, i64 4
  %i.ds = add i32 %.3187, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %.4212, i64 2
  store i16 %i.cz, ptr %.4212, align 2, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %.4212, i64 4
  store i16 %i.dq, ptr %i.dt, align 2, !tbaa !33
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae
  %.5224 = phi ptr [ %i.dr, %bb.ae ], [ %i.da, %bb.ab ] ; 2 uses
  %.5213 = phi ptr [ %i.du, %bb.ae ], [ %i.de, %bb.ab ] ; 2 uses
  %.4188 = phi i32 [ %i.ds, %bb.ae ], [ %.3187, %bb.ab ]
  %i.dv = add i32 %.4188, -1                      ; 2 uses
  %.not255 = icmp eq i32 %i.dv, 0
  br i1 %.not255, label %.thread283, label %.preheader, !llvm.loop !66

.preheader293:                                    ; preds = %bb.aa, %bb.ak
  %.6225 = phi ptr [ %.7226, %bb.ak ], [ %.3222, %bb.aa ] ; 4 uses
  %.6214 = phi ptr [ %.7215, %bb.ak ], [ %.3211, %bb.aa ] ; 7 uses
  %.6206 = phi ptr [ %.7207, %bb.ak ], [ %.5205, %bb.aa ] ; 7 uses
  %.5189 = phi i32 [ %i.ew, %bb.ak ], [ %i.cw, %bb.aa ] ; 5 uses
  %.2180 = phi i32 [ %i.ev, %bb.ak ], [ %.1179, %bb.aa ] ; 6 uses
  %i.dw = load i16, ptr %.6225, align 1           ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.6225, i64 2 ; 4 uses
  %i.dy = zext i16 %i.dw to i32                   ; 2 uses
  %i.dz = and i32 %i.dy, 63488
  %i.ea = icmp eq i32 %i.dz, 55296
  br i1 %i.ea, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.preheader293
  %i.eb = getelementptr inbounds nuw i8, ptr %.6214, i64 2
  store i16 %i.dw, ptr %.6214, align 2, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %.6206, i64 4
  store i32 %.2180, ptr %.6206, align 4, !tbaa !34
  br label %bb.ak

bb.ah:                                            ; preds = %.preheader293
  %i.ed = and i32 %i.dy, 1024
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = icmp ugt i32 %.5189, 1
  %or.cond5 = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond5, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %.6225, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !30
  %i.ei = zext i8 %i.eh to i16                    ; 2 uses
  %i.ej = and i16 %i.ei, 252
  %i.ek = icmp eq i16 %i.ej, 220
  br i1 %i.ek, label %bb.aj, label %.thread269

bb.aj:                                            ; preds = %bb.ai
  %i.el = shl nuw i16 %i.ei, 8
  %i.em = load i8, ptr %i.dx, align 1, !tbaa !30
  %i.en = zext i8 %i.em to i16
  %i.eo = or disjoint i16 %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.6225, i64 4
  %i.eq = add i32 %.5189, -1
  %i.er = getelementptr inbounds nuw i8, ptr %.6214, i64 2
  store i16 %i.dw, ptr %.6214, align 2, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %.6214, i64 4
  store i16 %i.eo, ptr %i.er, align 2, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %.6206, i64 4
  store i32 %.2180, ptr %.6206, align 4, !tbaa !34
  %i.eu = getelementptr inbounds nuw i8, ptr %.6206, i64 8
  store i32 %.2180, ptr %i.et, align 4, !tbaa !34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.aj
  %.sink = phi i32 [ 2, %bb.ag ], [ 4, %bb.aj ]
  %.7226 = phi ptr [ %i.dx, %bb.ag ], [ %i.ep, %bb.aj ] ; 2 uses
  %.7215 = phi ptr [ %i.eb, %bb.ag ], [ %i.es, %bb.aj ] ; 2 uses
  %.7207 = phi ptr [ %i.ec, %bb.ag ], [ %i.eu, %bb.aj ] ; 2 uses
  %.6190 = phi i32 [ %.5189, %bb.ag ], [ %i.eq, %bb.aj ]
  %i.ev = add i32 %.2180, %.sink
  %i.ew = add i32 %.6190, -1                      ; 2 uses
  %.not254 = icmp eq i32 %i.ew, 0
  br i1 %.not254, label %.thread283, label %.preheader293, !llvm.loop !67

.loopexit:                                        ; preds = %bb.ah, %bb.ac
  %.8227 = phi ptr [ %i.da, %bb.ac ], [ %i.dx, %bb.ah ] ; 2 uses
  %.8216 = phi ptr [ %.4212, %bb.ac ], [ %.6214, %bb.ah ] ; 2 uses
  %.8 = phi ptr [ null, %bb.ac ], [ %.6206, %bb.ah ] ; 2 uses
  %.7 = phi i32 [ %.3187, %bb.ac ], [ %.5189, %bb.ah ] ; 2 uses
  %.4182 = phi i32 [ %.1179, %bb.ac ], [ %.2180, %bb.ah ]
  %.5 = phi i16 [ %i.cz, %bb.ac ], [ %i.dw, %bb.ah ]
  %i.ex = icmp eq i32 %.7, 0
  br i1 %i.ex, label %.thread283, label %.thread269

.thread269:                                       ; preds = %bb.ai, %bb.ad, %.loopexit
  %.5281 = phi i16 [ %.5, %.loopexit ], [ %i.cz, %bb.ad ], [ %i.dw, %bb.ai ]
  %.4182280 = phi i32 [ %.4182, %.loopexit ], [ %.1179, %bb.ad ], [ %.2180, %bb.ai ]
  %.7279 = phi i32 [ %.7, %.loopexit ], [ %.3187, %bb.ad ], [ %.5189, %bb.ai ] ; 2 uses
  %.8278 = phi ptr [ %.8, %.loopexit ], [ null, %bb.ad ], [ %.6206, %bb.ai ]
  %.8216277 = phi ptr [ %.8216, %.loopexit ], [ %.4212, %bb.ad ], [ %.6214, %bb.ai ]
  %.8227276 = phi ptr [ %.8227, %.loopexit ], [ %i.da, %bb.ad ], [ %i.dx, %bb.ai ]
  %i.ey = shl i32 %.7279, 1
  %i.ez = add i32 %i.cv, -2
  %i.fa = add i32 %i.ez, %i.ey
  %i.fb = add i32 %.7279, %i.cx
  br label %bb.al

bb.al:                                            ; preds = %.thread269, %bb.z
  %.9228 = phi ptr [ %.3222, %bb.z ], [ %.8227276, %.thread269 ] ; 7 uses
  %.9217 = phi ptr [ %.3211, %bb.z ], [ %.8216277, %.thread269 ] ; 6 uses
  %.9 = phi ptr [ %.5205, %bb.z ], [ %.8278, %.thread269 ] ; 7 uses
  %.4199 = phi i32 [ %.3198, %bb.z ], [ %i.fb, %.thread269 ] ; 3 uses
  %.2193 = phi i32 [ %.1192, %bb.z ], [ %i.fa, %.thread269 ] ; 5 uses
  %.5183 = phi i32 [ %.1179, %bb.z ], [ %.4182280, %.thread269 ]
  %.6 = phi i16 [ %.4, %bb.z ], [ %.5281, %.thread269 ] ; 4 uses
  %.not256 = icmp eq i16 %.6, 0
  br i1 %.not256, label %.thread283, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i16 %.6, ptr %i.fc, align 1
  store i8 2, ptr %i.co, align 8, !tbaa !31
  %i.fd = and i16 %.6, 1024
  %i.fe = icmp eq i16 %i.fd, 0
  br i1 %i.fe, label %bb.an, label %.thread283.sink.split

bb.an:                                            ; preds = %bb.am
  %i.ff = icmp ugt i32 %.2193, 1
  br i1 %i.ff, label %bb.ao, label %.thread283

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %.9228, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !30
  %i.fi = zext i8 %i.fh to i16                    ; 2 uses
  %i.fj = shl nuw i16 %i.fi, 8
end_hunk_1
