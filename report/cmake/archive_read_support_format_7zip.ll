Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_7zip?download=true
inline.NumInlined: 90
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Bcj2_Decode:bb.a
  %i.i = sub i64 0, %i.c
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20088 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20040
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20064
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = sub i64 0, %i.l
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20096 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20048
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20072
  %i.y = load i64, ptr %i.x, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = sub i64 0, %i.u
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20104 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !42 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20056
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20080
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 4 uses
  %i.aj = sub i64 0, %i.ad
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 19996 ; 5 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !166
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %iter.check, label %bb.f

iter.check:                                       ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20660
  store i8 0, ptr %i.ao, align 4, !tbaa !242
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20144
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20160
  store <8 x i16> splat (i16 1024), ptr %i.ap, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.aq, align 8, !tbaa !243
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20176
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20192
  store <8 x i16> splat (i16 1024), ptr %i.ar, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.as, align 8, !tbaa !243
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20208
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20224
  store <8 x i16> splat (i16 1024), ptr %i.at, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.au, align 8, !tbaa !243
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20240
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20256
  store <8 x i16> splat (i16 1024), ptr %i.av, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.aw, align 8, !tbaa !243
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20272
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20288
  store <8 x i16> splat (i16 1024), ptr %i.ax, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.ay, align 8, !tbaa !243
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20304
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20320
  store <8 x i16> splat (i16 1024), ptr %i.az, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.ba, align 8, !tbaa !243
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20336
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20352
  store <8 x i16> splat (i16 1024), ptr %i.bb, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bc, align 8, !tbaa !243
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20368
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20384
  store <8 x i16> splat (i16 1024), ptr %i.bd, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.be, align 8, !tbaa !243
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20400
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20416
  store <8 x i16> splat (i16 1024), ptr %i.bf, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bg, align 8, !tbaa !243
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20432
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20448
  store <8 x i16> splat (i16 1024), ptr %i.bh, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bi, align 8, !tbaa !243
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20464
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20480
  store <8 x i16> splat (i16 1024), ptr %i.bj, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bk, align 8, !tbaa !243
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20496
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20512
  store <8 x i16> splat (i16 1024), ptr %i.bl, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bm, align 8, !tbaa !243
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20528
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20544
  store <8 x i16> splat (i16 1024), ptr %i.bn, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bo, align 8, !tbaa !243
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20560
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20576
  store <8 x i16> splat (i16 1024), ptr %i.bp, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bq, align 8, !tbaa !243
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20592
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20608
  store <8 x i16> splat (i16 1024), ptr %i.br, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bs, align 8, !tbaa !243
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20624
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20640
  store <8 x i16> splat (i16 1024), ptr %i.bt, align 8, !tbaa !243
  store <8 x i16> splat (i16 1024), ptr %i.bu, align 8, !tbaa !243
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20656
  store <2 x i16> splat (i16 1024), ptr %i.bv, align 8, !tbaa !243
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20668 ; 6 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !244
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 20664
  store i32 -1, ptr %i.bx, align 8, !tbaa !245
  %i.by = icmp eq i64 %i.ad, 0
  br i1 %i.by, label %.thread279, label %bb.b

bb.b:                                             ; preds = %iter.check
  %i.bz = load i8, ptr %i.ak, align 1, !tbaa !41
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !244
  %i.cb = icmp eq i64 %i.ad, 1
  br i1 %i.cb, label %.thread279, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.cd = shl nuw nsw i32 %i.ca, 8
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !41
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 2 uses
  store i32 %i.cg, ptr %i.bw, align 4, !tbaa !244
  %i.ch = icmp eq i64 %i.ad, 2
  br i1 %i.ch, label %.thread279, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.cj = shl nuw nsw i32 %i.cg, 8
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !41
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl            ; 2 uses
  store i32 %i.cm, ptr %i.bw, align 4, !tbaa !244
  %i.cn = icmp eq i64 %i.ad, 3
  br i1 %i.cn, label %.thread279, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %i.cp = shl nuw i32 %i.cm, 8
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !41
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  store i32 %i.cs, ptr %i.bw, align 4, !tbaa !244
  %i.ct = icmp eq i64 %i.ad, 4
  br i1 %i.ct, label %.thread279, label %.critedge

.critedge:                                        ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.cv = shl i32 %i.cs, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ak, i64 5
  %i.cx = load i8, ptr %i.cu, align 1, !tbaa !41
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cv, %i.cy
  store i32 %i.cz, ptr %i.bw, align 4, !tbaa !244
  store i32 1, ptr %i.al, align 4, !tbaa !166
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.a
  %.1183 = phi ptr [ %i.cw, %.critedge ], [ %i.ak, %bb.a ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 20000 ; 4 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !138
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = icmp ne i64 %2, 0                       ; 2 uses
  %i.de = and i1 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 20008
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0206310 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.g ] ; 3 uses
  %i.dg = and i64 %.0206310, 4294967295
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !41
  %i.dj = add nuw i64 %.0206310, 1                ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %.0206310
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !41
  %i.dl = load i64, ptr %i.da, align 8, !tbaa !138
  %i.dm = add i64 %i.dl, -1                       ; 2 uses
  store i64 %i.dm, ptr %i.da, align 8, !tbaa !138
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ult i64 %i.dj, %2
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %bb.g, label %.preheader291, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.f
  br i1 %i.dd, label %.preheader291, label %.thread279

.preheader291:                                    ; preds = %bb.g, %._crit_edge
  %.0206.lcssa367 = phi i64 [ 0, %._crit_edge ], [ %i.dj, %bb.g ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 20660 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 20144
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 20664 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 20668 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 20672 ; 3 uses
  %i.dv = getelementptr i8, ptr %0, i64 20008
  br label %.outer

.outer:                                           ; preds = %.lr.ph316.3, %.preheader291
  %.0214.ph = phi i64 [ %i.eq, %.lr.ph316.3 ], [ 0, %.preheader291 ]
  %.1207.ph = phi i64 [ %i.gw, %.lr.ph316.3 ], [ %.0206.lcssa367, %.preheader291 ]
  %.0201.ph = phi ptr [ %.1202, %.lr.ph316.3 ], [ %i.s, %.preheader291 ] ; 3 uses
  %.0196.ph = phi ptr [ %.1197, %.lr.ph316.3 ], [ %i.ab, %.preheader291 ] ; 3 uses
  %.0191.ph = phi i64 [ %.1192, %.lr.ph316.3 ], [ %i.l, %.preheader291 ] ; 5 uses
  %.0186.ph = phi i64 [ %.1187, %.lr.ph316.3 ], [ %i.u, %.preheader291 ] ; 5 uses
  %.2184.ph = phi ptr [ %.4, %.lr.ph316.3 ], [ %.1183, %.preheader291 ]
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.t
  %.0214 = phi i64 [ %i.eq, %bb.t ], [ %.0214.ph, %.outer ] ; 3 uses
  %.1207 = phi i64 [ %.3209, %bb.t ], [ %.1207.ph, %.outer ] ; 3 uses
  %.2184 = phi ptr [ %.3185, %bb.t ], [ %.2184.ph, %.outer ] ; 10 uses
  %i.dw = sub i64 %i.c, %.0214
  %i.dx = sub i64 %2, %.1207
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dw) ; 3 uses
  %i.dy = load i32, ptr %i.al, align 4, !tbaa !166
  %i.dz = icmp eq i32 %i.dy, 1
  %i.ea = icmp ne i64 %spec.select, 0
  %or.cond = and i1 %i.ea, %i.dz
  br i1 %or.cond, label %.preheader, label %bb.l

bb.i:                                             ; preds = %bb.j
  %i.eb = add i64 %.1215, 1                       ; 2 uses
  store i8 %i.ee, ptr %i.dq, align 4, !tbaa !242
  %i.ec = add i64 %.1, -1                         ; 2 uses
  %.old2.not = icmp eq i64 %i.ec, 0
  br i1 %.old2.not, label %.thread265, label %.preheader

.preheader:                                       ; preds = %bb.h, %bb.i
  %.1215 = phi i64 [ %i.eb, %bb.i ], [ %.0214, %bb.h ] ; 3 uses
  %.2208 = phi i64 [ %i.ef, %bb.i ], [ %.1207, %bb.h ] ; 2 uses
  %.1 = phi i64 [ %i.ec, %bb.i ], [ %spec.select, %bb.h ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1215
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !41  ; 3 uses
  %i.ef = add i64 %.2208, 1                       ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %.2208
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !41
  %i.eh = zext i8 %i.ee to i32                    ; 2 uses
  %i.ei = and i32 %i.eh, 254
  %i.ej = icmp eq i32 %i.ei, 232
  br i1 %i.ej, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.ek = load i8, ptr %i.dq, align 4, !tbaa !242
  %i.el = icmp eq i8 %i.ek, 15
  %i.em = and i32 %i.eh, 240
  %i.en = icmp eq i32 %i.em, 128
  %or.cond236 = and i1 %i.en, %i.el
  br i1 %or.cond236, label %bb.k, label %bb.i

bb.k:                                             ; preds = %.preheader, %bb.j
  store i32 2, ptr %i.al, align 4, !tbaa !166
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.3217 = phi i64 [ %.0214, %bb.h ], [ %.1215, %bb.k ] ; 3 uses
  %.3209 = phi i64 [ %.1207, %bb.h ], [ %i.ef, %bb.k ] ; 9 uses
  %.3 = phi i64 [ %spec.select, %bb.h ], [ 1, %bb.k ]
  %i.eo = icmp eq i64 %.3, 0
  %i.ep = icmp eq i64 %.3209, %2
  %or.cond237 = or i1 %i.ep, %i.eo
  br i1 %or.cond237, label %.thread265, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.al, align 4, !tbaa !166
  %i.eq = add i64 %.3217, 1                       ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 %.3217
  %i.es = load i8, ptr %i.er, align 1, !tbaa !41  ; 3 uses
  %i.et = icmp eq i8 %i.es, -24                   ; 2 uses
  br i1 %i.et, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eu = load i8, ptr %i.dq, align 4, !tbaa !242
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ev
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ex = icmp eq i8 %i.es, -23
  %..v = select i1 %i.ex, i64 20656, i64 20658
  %. = getelementptr inbounds nuw i8, ptr %0, i64 %..v
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0172 = phi ptr [ %i.ew, %bb.n ], [ %., %bb.o ] ; 3 uses
  %i.ey = load i16, ptr %.0172, align 2, !tbaa !243 ; 4 uses
  %i.ez = zext i16 %i.ey to i32                   ; 2 uses
  %i.fa = load i32, ptr %i.ds, align 8, !tbaa !245 ; 2 uses
  %i.fb = lshr i32 %i.fa, 11
  %i.fc = mul i32 %i.fb, %i.ez                    ; 6 uses
  %i.fd = load i32, ptr %i.dt, align 4, !tbaa !244 ; 3 uses
  %i.fe = icmp ult i32 %i.fd, %i.fc
  br i1 %i.fe, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  store i32 %i.fc, ptr %i.ds, align 8, !tbaa !245
  %i.ff = sub nsw i32 2048, %i.ez
  %i.fg = lshr i32 %i.ff, 5
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = add i16 %i.ey, %i.fh
  store i16 %i.fi, ptr %.0172, align 2, !tbaa !243
  %i.fj = icmp ult i32 %i.fc, 16777216
  br i1 %i.fj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fk = icmp eq ptr %.2184, %i.ai
  br i1 %i.fk, label %.thread279, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = shl nuw i32 %i.fc, 8
  store i32 %i.fl, ptr %i.ds, align 8, !tbaa !245
  %i.fm = shl nuw i32 %i.fd, 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.2184, i64 1
  %i.fo = load i8, ptr %.2184, align 1, !tbaa !41
  %i.fp = zext i8 %i.fo to i32
  %i.fq = or disjoint i32 %i.fm, %i.fp
  store i32 %i.fq, ptr %i.dt, align 4, !tbaa !244
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.3185 = phi ptr [ %i.fn, %bb.s ], [ %.2184, %bb.q ]
  store i8 %i.es, ptr %i.dq, align 4, !tbaa !242
  br label %bb.h

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.fr = sub i32 %i.fa, %i.fc                    ; 3 uses
  store i32 %i.fr, ptr %i.ds, align 8, !tbaa !245
  %i.fs = sub nuw i32 %i.fd, %i.fc                ; 2 uses
  store i32 %i.fs, ptr %i.dt, align 4, !tbaa !244
  %i.ft = lshr i16 %i.ey, 5
  %i.fu = sub nuw i16 %i.ey, %i.ft
  store i16 %i.fu, ptr %.0172, align 2, !tbaa !243
  %i.fv = icmp ult i32 %i.fr, 16777216
  br i1 %i.fv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fw = icmp eq ptr %.2184, %i.ai
  br i1 %i.fw, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = shl nuw i32 %i.fr, 8
  store i32 %i.fx, ptr %i.ds, align 8, !tbaa !245
  %i.fy = shl i32 %i.fs, 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.2184, i64 1
  %i.ga = load i8, ptr %.2184, align 1, !tbaa !41
  %i.gb = zext i8 %i.ga to i32
  %i.gc = or disjoint i32 %i.fy, %i.gb
  store i32 %i.gc, ptr %i.dt, align 4, !tbaa !244
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.4 = phi ptr [ %i.fz, %bb.w ], [ %.2184, %bb.u ] ; 2 uses
  br i1 %i.et, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.gd = icmp ult i64 %.0191.ph, 4
  br i1 %i.gd, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %.0201.ph, i64 4
  %i.gf = add i64 %.0191.ph, -4
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.gg = icmp ult i64 %.0186.ph, 4
  br i1 %i.gg, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %.0196.ph, i64 4
  %i.gi = add i64 %.0186.ph, -4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.1202 = phi ptr [ %i.ge, %bb.z ], [ %.0201.ph, %bb.ab ]
  %.1197 = phi ptr [ %.0196.ph, %bb.z ], [ %i.gh, %bb.ab ]
  %.1192 = phi i64 [ %i.gf, %bb.z ], [ %.0191.ph, %bb.ab ] ; 2 uses
  %.1187 = phi i64 [ %.0186.ph, %bb.z ], [ %i.gi, %bb.ab ] ; 2 uses
  %.0 = phi ptr [ %.0201.ph, %bb.z ], [ %.0196.ph, %bb.ab ]
  %i.gj = load i32, ptr %.0, align 1
  %i.gk = tail call i32 @llvm.bswap.i32(i32 %i.gj)
  %i.gl = load i64, ptr %i.du, align 8, !tbaa !139
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = trunc i64 %.3209 to i32
  %i.go = add i32 %i.gn, %i.gm
  %reass.sub = sub i32 %i.gk, %i.go
  %i.gp = add i32 %reass.sub, -4                  ; 2 uses
  %i.gq = lshr i32 %i.gp, 24
  %i.gr = trunc nuw i32 %i.gq to i8
  store i8 %i.gr, ptr %i.dq, align 4, !tbaa !242
  store i32 %i.gp, ptr %i.a, align 4, !tbaa !41
  %i.gs = icmp ult i64 %.3209, %2
  br i1 %i.gs, label %.lr.ph316.preheader, label %._crit_edge317.thread

.lr.ph316.preheader:                              ; preds = %bb.ac
  %scevgep = getelementptr i8, ptr %1, i64 %.3209
  %i.gt = xor i64 %.3209, -1
  %i.gu = add i64 %2, %i.gt
  %umin = tail call i64 @llvm.umin.i64(i64 %i.gu, i64 3) ; 2 uses
  %i.gv = add nuw nsw i64 %umin, 1                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 range(i64 0, 5) %i.gv, i1 false), !tbaa !41
  %i.gw = add i64 %.3209, %i.gv                   ; 2 uses
  %3 = extractelement <4 x i1> <i1 true, i1 true, i1 true, i1 false>, i64 %umin
  br i1 %3, label %bb.ad, label %.lr.ph316.3

.lr.ph316.3:                                      ; preds = %.lr.ph316.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.outer

bb.ad:                                            ; preds = %.lr.ph316.preheader
  %4 = trunc nuw nsw i64 %i.gv to i32
  br label %._crit_edge317.thread

._crit_edge317.thread:                            ; preds = %bb.ac, %bb.ad
  %.2180.lcssa372 = phi i32 [ %4, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %.4210.lcssa371 = phi i64 [ %i.gw, %bb.ad ], [ %.3209, %bb.ac ]
  %i.gx = sub nuw nsw i32 4, %.2180.lcssa372
  %i.gy = zext nneg i32 %i.gx to i64
  store i64 %i.gy, ptr %i.da, align 8, !tbaa !138
  %i.gz = zext nneg i32 %.2180.lcssa372 to i64
  %scevgep347 = getelementptr i8, ptr %i.a, i64 %i.gz
  %narrow = sub nuw nsw i32 4, %.2180.lcssa372
  %i.ha = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dv, ptr align 1 %scevgep347, i64 range(i64 0, 5) %i.ha, i1 false), !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread265

bb.ae:                                            ; preds = %bb.y, %bb.aa, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread279

.thread265:                                       ; preds = %bb.l, %bb.i, %._crit_edge317.thread
  %.7278 = phi ptr [ %.4, %._crit_edge317.thread ], [ %.2184, %bb.i ], [ %.2184, %bb.l ]
  %.4190277 = phi i64 [ %.1187, %._crit_edge317.thread ], [ %.0186.ph, %bb.i ], [ %.0186.ph, %bb.l ]
  %.4195276 = phi i64 [ %.1192, %._crit_edge317.thread ], [ %.0191.ph, %bb.i ], [ %.0191.ph, %bb.l ]
  %.7213275 = phi i64 [ %.4210.lcssa371, %._crit_edge317.thread ], [ %i.ef, %bb.i ], [ %.3209, %bb.l ] ; 2 uses
  %.4218274 = phi i64 [ %i.eq, %._crit_edge317.thread ], [ %i.eb, %bb.i ], [ %.3217, %bb.l ]
  %i.hb = load i64, ptr %i.b, align 8, !tbaa !156
  %i.hc = sub i64 %i.hb, %.4218274
  store i64 %i.hc, ptr %i.b, align 8, !tbaa !156
  store i64 %.4195276, ptr %i.k, align 8, !tbaa !42
  store i64 %.4190277, ptr %i.t, align 8, !tbaa !42
  %i.hd = ptrtoint ptr %i.ai to i64
  %i.he = ptrtoint ptr %.7278 to i64
  %i.hf = sub i64 %i.hd, %i.he
  store i64 %i.hf, ptr %i.ac, align 8, !tbaa !42
  %i.hg = load i64, ptr %i.du, align 8, !tbaa !139
  %i.hh = add i64 %i.hg, %.7213275
  store i64 %i.hh, ptr %i.du, align 8, !tbaa !139
  br label %.thread279

.thread279:                                       ; preds = %bb.r, %._crit_edge, %iter.check, %bb.b, %bb.c, %bb.d, %bb.e, %bb.ae, %.thread265
  %.6225 = phi i64 [ 0, %._crit_edge ], [ -25, %iter.check ], [ %.7213275, %.thread265 ], [ -25, %bb.ae ], [ -25, %bb.b ], [ -25, %bb.e ], [ -25, %bb.d ], [ -25, %bb.c ], [ -25, %bb.r ]
  ret i64 %.6225
}

; Function Attrs: nounwind
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @lzma_end(ptr noundef) local_unnamed_addr #14

declare i32 @BZ2_bzDecompress(ptr noundef) local_unnamed_addr #2

declare i32 @BZ2_bzDecompressEnd(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_decompressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ZSTD_isError(i64 noundef) local_unnamed_addr #2

declare ptr @ZSTD_getErrorName(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ppmd_read(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !246    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2072
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 19928 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 19936 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !159  ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 19952 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !160
  %i.l = add i64 %i.k, 1
  %i.m = call ptr @__archive_read_ahead(ptr noundef nonnull %i.b, i64 noundef %i.l, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !42
  %i.p = load i64, ptr %i.j, align 8, !tbaa !160  ; 3 uses
  %.not = icmp sgt i64 %i.o, %i.p
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.b, i32 noundef 84, ptr noundef nonnull @.str.33) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 19984
  store i32 1, ptr %i.q, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.f, align 8, !tbaa !158
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre = load i64, ptr %i.g, align 8, !tbaa !159
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.f, align 8, !tbaa !158
  %i.x = load i8, ptr %i.v, align 1, !tbaa !41
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 19952
  %.pre22 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.y = phi i64 [ %i.p, %bb.d ], [ %.pre22, %bb.e ]
  %i.z = phi i64 [ %.pre, %bb.d ], [ %i.h, %bb.e ]
  %.1 = phi i8 [ %i.u, %bb.d ], [ %i.x, %bb.e ]
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 19944 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !167
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 19952
  %i.af = add nsw i64 %i.y, 1
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.120 = phi i8 [ %.1, %bb.f ], [ 0, %.critedge ]
  ret i8 %.120
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_StreamsInfo(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 104)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._7z_digests, align 8        ; 11 uses
  %3 = alloca %struct._7z_digests, align 8        ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 104, i1 false)
  %i.d = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 1, !tbaa !41    ; 2 uses
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.h = tail call fastcc i32 @parse_7zip_uint64(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.k = tail call fastcc i32 @parse_7zip_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.j, align 8, !tbaa !269
  %i.n = add i64 %i.m, -100000001
  %or.cond47.i = icmp ult i64 %i.n, -100000000
  br i1 %or.cond47.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc ptr @header_bytes(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.o, align 1, !tbaa !41
  switch i8 %i.q, label %.critedge [
    i8 0, label %read_PackInfo.exit.thread96
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.j, align 8, !tbaa !269  ; 3 uses
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 8) #19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !140
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 8) #19 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !141
  %i.w = icmp eq ptr %i.s, null
  %i.x = icmp eq ptr %i.u, null
  %or.cond.i = or i1 %i.w, %i.x
  br i1 %or.cond.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
end_hunk_0
