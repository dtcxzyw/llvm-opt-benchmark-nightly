Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_face_load_sbit_image:bb.a
bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !248
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 17
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 16
  %i.ay = or disjoint i64 %i.ax, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 8
  %i.bd = or disjoint i64 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.bh, ptr %i.bi, align 16, !tbaa !249
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 54
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 34
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !250
  %i.bm = icmp ult i64 %i.ae, %i.ao
  br i1 %i.bm, label %tt_face_load_sbix_image.exit.thread41, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = sub nuw i64 %i.ae, %i.ao
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = icmp samesign ugt i64 %i.bh, %i.bo
  br i1 %i.bp, label %tt_face_load_sbix_image.exit.thread41, label %tt_face_load_sbix_image.exit

tt_face_load_sbix_image.exit.thread41:            ; preds = %bb.e, %bb.f, %bb.d, %bb.b, %bb.c
  %.2.i.ph = phi i32 [ %i.p, %bb.c ], [ 3, %bb.d ], [ 142, %bb.b ], [ 3, %bb.f ], [ 3, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %tt_face_load_sbix_image.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.bq = lshr i32 %3, 22                         ; 2 uses
  %i.br = trunc i32 %i.bq to i8
  %i.bs = and i8 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !30
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.by, align 2, !tbaa !252
  store i16 0, ptr %6, align 2, !tbaa !253
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !244
  %i.cb = shl nuw nsw i64 %i.bx, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 16
  %i.cl = or disjoint i64 %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !29
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 8
  %i.cq = or disjoint i64 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.ct = zext i8 %i.cs to i64
  %i.cu = or disjoint i64 %i.cq, %i.ct            ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !115
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp ugt i32 %2, %i.cx
  br i1 %i.cy, label %tt_face_load_sbix_image.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.db = add nuw nsw i64 %i.cu, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.u, %.lr.ph.i
  %.0125173.i = phi i8 [ 0, %.lr.ph.i ], [ %.1126.i, %bb.u ] ; 3 uses
  %.0127172.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ej, %bb.u ] ; 2 uses
  %.0128171.i = phi i32 [ %2, %.lr.ph.i ], [ %i.el, %bb.u ] ; 3 uses
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !231 ; 2 uses
  %.not.i33 = icmp ult i64 %i.cu, %i.dc
  br i1 %.not.i33, label %bb.i, label %tt_face_load_sbix_image.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.dd = sub nuw i64 %i.dc, %i.cu
  %i.de = shl i32 %.0128171.i, 2                  ; 2 uses
  %i.df = add i32 %i.de, 12
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp ult i64 %i.dd, %i.dg
  br i1 %i.dh, label %tt_face_load_sbix_image.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = load i64, ptr %i.da, align 8, !tbaa !232
  %i.dj = zext i32 %i.de to i64
  %i.dk = add nuw nsw i64 %i.db, %i.dj
  %i.dl = add i64 %i.dk, %i.di
  %i.dm = tail call i32 @FT_Stream_Seek(ptr noundef %4, i64 noundef %i.dl) #27 ; 2 uses
  %.not143.i = icmp eq i32 %i.dm, 0
  br i1 %.not143.i, label %bb.k, label %tt_face_load_sbix_image.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.dn = tail call i32 @FT_Stream_EnterFrame(ptr noundef %4, i64 noundef 8) #27 ; 2 uses
  %.not144.i = icmp eq i32 %i.dn, 0
  br i1 %.not144.i, label %bb.l, label %tt_face_load_sbix_image.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.do = tail call i32 @FT_Stream_GetULong(ptr noundef %4) #27 ; 4 uses
  %i.dp = tail call i32 @FT_Stream_GetULong(ptr noundef %4) #27 ; 4 uses
  tail call void @FT_Stream_ExitFrame(ptr noundef %4) #27
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %tt_face_load_sbix_image.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = icmp ugt i32 %i.do, %i.dp
  br i1 %i.dr, label %tt_face_load_sbix_image.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = sub nuw i32 %i.dp, %i.do                ; 3 uses
  %i.dt = icmp ult i32 %i.ds, 8
  br i1 %i.dt, label %tt_face_load_sbix_image.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.du = load i64, ptr %i.cz, align 8, !tbaa !231
  %i.dv = sub i64 %i.du, %i.cu
  %i.dw = zext i32 %i.dp to i64
  %i.dx = icmp ult i64 %i.dv, %i.dw
  br i1 %i.dx, label %tt_face_load_sbix_image.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = load i64, ptr %i.da, align 8, !tbaa !232
  %i.dz = zext i32 %i.do to i64
  %i.ea = add nuw nsw i64 %i.cu, %i.dz
  %i.eb = add i64 %i.ea, %i.dy
  %i.ec = tail call i32 @FT_Stream_Seek(ptr noundef %4, i64 noundef %i.eb) #27 ; 2 uses
  %.not145.i = icmp eq i32 %i.ec, 0
  br i1 %.not145.i, label %bb.q, label %tt_face_load_sbix_image.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ed = zext i32 %i.ds to i64
  %i.ee = tail call i32 @FT_Stream_EnterFrame(ptr noundef %4, i64 noundef %i.ed) #27 ; 2 uses
  %.not146.i = icmp eq i32 %i.ee, 0
  br i1 %.not146.i, label %bb.r, label %tt_face_load_sbix_image.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ef = tail call zeroext i16 @FT_Stream_GetUShort(ptr noundef %4) #27 ; 2 uses
  %i.eg = tail call zeroext i16 @FT_Stream_GetUShort(ptr noundef %4) #27 ; 2 uses
  %i.eh = tail call i32 @FT_Stream_GetULong(ptr noundef %4) #27
  switch i32 %i.eh, label %.thread.i.loopexit [
    i32 1718380912, label %bb.s
    i32 1685418085, label %bb.t
    i32 1886283552, label %bb.v
    i32 1785751328, label %.thread.i
    i32 1953064550, label %.thread.i
    i32 1919378028, label %.thread.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.ei = xor i8 %.0125173.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1126.i = phi i8 [ %i.ei, %bb.s ], [ %.0125173.i, %bb.r ]
  %exitcond.not.i = icmp eq i32 %.0127172.i, 4
  br i1 %exitcond.not.i, label %.thread.i.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = add nuw nsw i32 %.0127172.i, 1
  %i.ek = tail call zeroext i16 @FT_Stream_GetUShort(ptr noundef %4) #27
  %i.el = zext i16 %i.ek to i32                   ; 2 uses
  tail call void @FT_Stream_ExitFrame(ptr noundef %4) #27
  %i.em = load i64, ptr %i.cv, align 8, !tbaa !115
  %i.en = trunc i64 %i.em to i32
  %i.eo = icmp ugt i32 %i.el, %i.en
  br i1 %i.eo, label %tt_face_load_sbix_image.exit.thread, label %bb.h

bb.v:                                             ; preds = %bb.r
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !239
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !131
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !137
  %i.ev = add i32 %i.ds, -8
  %i.ew = tail call fastcc i32 @Load_SBit_Png(ptr noundef %i.eq, i32 noundef 0, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %6, ptr noundef %i.es, ptr noundef %i.eu, i32 noundef %i.ev, i8 noundef zeroext 1, i8 noundef zeroext range(i8 0, 2) %i.bs) ; 2 uses
  %i.ex = icmp eq i8 %.0125173.i, 0
  %i.ey = trunc i32 %i.bq to i1
  %or.cond.i = or i1 %i.ex, %i.ey
  %i.ez = icmp ne i32 %i.ew, 0                    ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.ez
  br i1 %or.cond3.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = load i32, ptr %5, align 8, !tbaa !255
  %.not202.i = icmp eq i32 %i.fa, 0
  br i1 %.not202.i, label %.thread153.i, label %.lr.ph201.i

.lr.ph201.i:                                      ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !256 ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %.idx.i = shl nuw nsw i64 %i.fd, 2
  %i.fe = icmp ugt i32 %i.fc, 1
  br i1 %i.fe, label %.lr.ph197.preheader.i.preheader, label %.thread153.i

.lr.ph197.preheader.i.preheader:                  ; preds = %.lr.ph201.i
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !257
  br label %.lr.ph197.preheader.i

.thread153.i:                                     ; preds = %._crit_edge.loopexit.i, %.lr.ph201.i, %bb.w
  tail call void @FT_Stream_ExitFrame(ptr noundef %4) #27
  br label %bb.y

.lr.ph197.preheader.i:                            ; preds = %.lr.ph197.preheader.i.preheader, %._crit_edge.loopexit.i
  %.0122199.i = phi i32 [ %i.fm, %._crit_edge.loopexit.i ], [ 0, %.lr.ph197.preheader.i.preheader ]
  %.0123198.i = phi ptr [ %i.fh, %._crit_edge.loopexit.i ], [ %i.fg, %.lr.ph197.preheader.i.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0123198.i, i64 %.idx.i ; 2 uses
  %.0120194.i = getelementptr inbounds i8, ptr %i.fh, i64 -4
  br label %.lr.ph197.i

.lr.ph197.i:                                      ; preds = %.lr.ph197.i, %.lr.ph197.preheader.i
  %.0120196.i = phi ptr [ %.0120.i, %.lr.ph197.i ], [ %.0120194.i, %.lr.ph197.preheader.i ] ; 3 uses
  %.0121195.i = phi ptr [ %i.fk, %.lr.ph197.i ], [ %.0123198.i, %.lr.ph197.preheader.i ] ; 3 uses
  %i.fi = load i32, ptr %.0120196.i, align 4, !tbaa !30
  %i.fj = load i32, ptr %.0121195.i, align 4, !tbaa !30
  store i32 %i.fj, ptr %.0120196.i, align 4, !tbaa !30
  store i32 %i.fi, ptr %.0121195.i, align 4, !tbaa !30
  %i.fk = getelementptr inbounds nuw i8, ptr %.0121195.i, i64 4 ; 2 uses
  %.0120.i = getelementptr inbounds i8, ptr %.0120196.i, i64 -4 ; 2 uses
  %i.fl = icmp ult ptr %i.fk, %.0120.i
  br i1 %i.fl, label %.lr.ph197.i, label %._crit_edge.loopexit.i, !llvm.loop !559

._crit_edge.loopexit.i:                           ; preds = %.lr.ph197.i
  %.pre.i = load i32, ptr %5, align 8, !tbaa !255
  %i.fm = add nuw i32 %.0122199.i, 1              ; 2 uses
  %i.fn = icmp ult i32 %i.fm, %.pre.i
  br i1 %i.fn, label %.lr.ph197.preheader.i, label %.thread153.i, !llvm.loop !560

.thread.i.loopexit:                               ; preds = %bb.r, %bb.t
  %.2.ph.i.ph = phi i32 [ 7, %bb.r ], [ 3, %bb.t ]
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.r, %bb.r, %.thread.i.loopexit
  %.2.ph.i = phi i32 [ %.2.ph.i.ph, %.thread.i.loopexit ], [ 2, %bb.r ], [ 2, %bb.r ], [ 2, %bb.r ]
  tail call void @FT_Stream_ExitFrame(ptr noundef %4) #27
  br label %tt_face_load_sbix_image.exit.thread

bb.x:                                             ; preds = %bb.v
  tail call void @FT_Stream_ExitFrame(ptr noundef nonnull %4) #27
  br i1 %i.ez, label %tt_face_load_sbix_image.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread153.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @tt_face_get_metrics(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %.0128171.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 %i.ef, ptr %i.fo, align 2, !tbaa !258
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %i.ef, ptr %i.fp, align 2, !tbaa !259
  %i.fq = load i16, ptr %6, align 2, !tbaa !253
  %i.fr = add i16 %i.fq, %i.eg
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !260
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 %i.eg, ptr %i.ft, align 2, !tbaa !261
  %i.fu = load i16, ptr %i.b, align 2, !tbaa !154
  %i.fv = zext i16 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !262
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load i16, ptr %i.fy, align 8, !tbaa !561
  %i.ga = zext i16 %i.fz to i32                   ; 3 uses
  %i.gb = mul nuw nsw i32 %i.ga, %i.fv
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 338 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !171
  %i.ge = zext i16 %i.gd to i32                   ; 3 uses
  %i.gf = udiv i32 %i.gb, %i.ge
  %i.gg = trunc i32 %i.gf to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !265
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !173
  %.not149.i = icmp eq i8 %i.gj, 0
  br i1 %.not149.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @tt_face_get_metrics(ptr noundef nonnull %0, i8 noundef zeroext 1, i32 noundef %.0128171.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.pre218.i = load i16, ptr %i.b, align 2, !tbaa !154
  %.pre219.i = load ptr, ptr %i.fw, align 8, !tbaa !262
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre219.i, i64 24
  %.pre220.i = load i16, ptr %.phi.trans.insert.i, align 8, !tbaa !561
  %.pre221.i = load i16, ptr %i.gc, align 2, !tbaa !171
  %.pre222.i = zext i16 %.pre220.i to i32
  %.pre223.i = zext i16 %.pre221.i to i32
  %i.gk = zext i16 %.pre218.i to i32
  br label %tt_face_load_sbix_image.exit.thread38

bb.aa:                                            ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gm = load i16, ptr %i.gl, align 8, !tbaa !174
  %.not150.i = icmp eq i16 %i.gm, -1
  br i1 %.not150.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 706
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !196
  %i.gp = sext i16 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.gr = load i16, ptr %i.gq, align 4, !tbaa !197
  %i.gs = sext i16 %i.gr to i32
  %i.gt = sub nsw i32 %i.gp, %i.gs
  %i.gu = tail call i32 @llvm.abs.i32(i32 %i.gt, i1 true)
  br label %tt_face_load_sbix_image.exit.thread38

bb.ac:                                            ; preds = %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.gw = load i16, ptr %i.gv, align 8, !tbaa !198
  %i.gx = sext i16 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 410
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !199
  %i.ha = sext i16 %i.gz to i32
  %i.hb = sub nsw i32 %i.gx, %i.ha
  %i.hc = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  br label %tt_face_load_sbix_image.exit.thread38

tt_face_load_sbix_image.exit.thread38:            ; preds = %bb.z, %bb.ab, %bb.ac
  %.pre-phi224.i = phi i32 [ %i.ge, %bb.ab ], [ %i.ge, %bb.ac ], [ %.pre223.i, %bb.z ]
  %.pre-phi.i = phi i32 [ %i.ga, %bb.ab ], [ %i.ga, %bb.ac ], [ %.pre222.i, %bb.z ]
  %i.hd = phi i32 [ %i.gu, %bb.ab ], [ %i.hc, %bb.ac ], [ %i.gk, %bb.z ]
  %i.he = mul nuw nsw i32 %i.hd, %.pre-phi.i
  %i.hf = udiv i32 %i.he, %.pre-phi224.i
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ad

tt_face_load_sbix_image.exit:                     ; preds = %bb.f
  %i.hi = lshr i32 %3, 22
  %i.hj = trunc i32 %i.hi to i8
  %i.hk = and i8 %i.hj, 1
  %i.hl = call fastcc i32 @tt_sbit_decoder_load_image(ptr noundef nonnull %7, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.hk) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.not29 = icmp eq i32 %i.hl, 0
  br i1 %.not29, label %bb.ad, label %tt_face_load_sbix_image.exit.thread

bb.ad:                                            ; preds = %tt_face_load_sbix_image.exit.thread38, %tt_face_load_sbix_image.exit
  %i.hm = and i32 %3, 5242880
  %or.cond = icmp eq i32 %i.hm, 0
  br i1 %or.cond, label %bb.ae, label %tt_face_load_sbix_image.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !267
  %i.hp = icmp eq i8 %i.ho, 7
  br i1 %i.hp, label %bb.af, label %tt_face_load_sbix_image.exit.thread

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !239
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !562 ; 2 uses
  call void @FT_Bitmap_Init(ptr noundef nonnull %8) #27
  %i.ht = call i32 @FT_Bitmap_Convert(ptr noundef %i.hs, ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 1) #27 ; 2 uses
  %.not32 = icmp eq i32 %i.ht, 0
  br i1 %.not32, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hu = call i32 @FT_Bitmap_Done(ptr noundef %i.hs, ptr noundef nonnull %8) #27 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 26
  %i.hw = load i8, ptr %i.hv, align 2, !tbaa !267
  store i8 %i.hw, ptr %i.hn, align 2, !tbaa !267
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !274
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.hy, ptr %i.hz, align 8, !tbaa !274
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ib = load i16, ptr %i.ia, align 8, !tbaa !275
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.ib, ptr %i.ic, align 8, !tbaa !275
  %i.id = load ptr, ptr %i.hq, align 8, !tbaa !239
  %i.ie = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !257
  call void @ft_glyphslot_set_bitmap(ptr noundef %i.id, ptr noundef %i.if) #27
  %i.ig = load ptr, ptr %i.hq, align 8, !tbaa !239
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 296
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !276
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !278
  %i.il = or i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !278
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %tt_face_load_sbix_image.exit.thread

tt_face_load_sbix_image.exit.thread:              ; preds = %bb.p, %bb.m, %bb.i, %bb.h, %bb.j, %bb.n, %bb.u, %bb.k, %bb.l, %bb.o, %bb.q, %bb.g, %.thread.i, %bb.x, %bb.a, %tt_face_load_sbix_image.exit.thread41, %bb.ai, %bb.ae, %bb.ad, %tt_face_load_sbix_image.exit
  %.2 = phi i32 [ %i.hl, %tt_face_load_sbix_image.exit ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ %i.ht, %bb.ai ], [ %.2.i.ph, %tt_face_load_sbix_image.exit.thread41 ], [ %.2.ph.i, %.thread.i ], [ %i.ew, %bb.x ], [ 2, %bb.a ], [ 6, %bb.g ], [ %i.ee, %bb.q ], [ 3, %bb.o ], [ 157, %bb.l ], [ %i.dn, %bb.k ], [ 6, %bb.u ], [ 3, %bb.n ], [ %i.dm, %bb.j ], [ 3, %bb.h ], [ 3, %bb.i ], [ 3, %bb.m ], [ %i.ec, %bb.p ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 36) i32 @tt_face_get_ps_name(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !175
  %i.e = zext i16 %i.d to i32
  %.not38 = icmp ult i32 %1, %i.e
  br i1 %.not38, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %.not39 = icmp eq ptr %i.g, null
  br i1 %.not39, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !564
  %i.j = tail call ptr %i.i(i32 noundef 0) #27
  store ptr %i.j, ptr %2, align 8, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.l = load i64, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  switch i64 %i.l, label %bb.t [
    i64 151552, label %bb.e
    i64 131072, label %bb.e
    i64 65536, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 6 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !279
  %.not40 = icmp eq i8 %i.n, 0
  br i1 %.not40, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139  ; 5 uses
end_hunk_0
begin_hunk_1_@tt_face_find_bdf_prop:bb.a
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !825
  %i.ed = zext i16 %i.ec to i32
  br label %bb.k

bb.k:                                             ; preds = %.preheader113, %bb.l
  %.083 = phi ptr [ %i.ez, %bb.l ], [ %i.dx, %.preheader113 ] ; 5 uses
  %.080 = phi i32 [ %i.fa, %bb.l ], [ %i.ds, %.preheader113 ]
  %.078 = phi ptr [ %i.ey, %bb.l ], [ %i.ea, %.preheader113 ] ; 2 uses
  %i.ee = load i8, ptr %.083, align 1, !tbaa !29
  %i.ef = zext i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.083, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !29
  %i.ej = zext i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %.083, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !29
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.083, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !29
  %i.er = zext i8 %i.eq to i32
  %i.es = or disjoint i32 %i.eo, %i.er            ; 3 uses
  %i.et = icmp eq i32 %i.ek, %i.ed
  br i1 %i.et, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not100125 = icmp eq i32 %i.es, 0
  br i1 %.not100125, label %tt_face_load_bdf_props.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1400
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ew = mul nuw nsw i32 %i.es, 10
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.078, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.083, i64 4
  %i.fa = add i32 %.080, -1                       ; 2 uses
  %.old2.not = icmp eq i32 %i.fa, 0
  br i1 %.old2.not, label %tt_face_load_bdf_props.exit.thread, label %bb.k

bb.m:                                             ; preds = %.lr.ph, %.thread
  %.282127 = phi i32 [ %i.es, %.lr.ph ], [ %i.gr, %.thread ]
  %.184126 = phi ptr [ %.078, %.lr.ph ], [ %i.gq, %.thread ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.184126, i64 5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !29
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = and i32 %i.fd, 16
  %.not101 = icmp eq i32 %i.fe, 0
  br i1 %.not101, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = load i32, ptr %.184126, align 1
  %i.fg = tail call i32 @llvm.bswap.i32(i32 %i.ff)
  %i.fh = zext i32 %i.fg to i64                   ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.184126, i64 6
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !29
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 24
  %i.fm = getelementptr inbounds nuw i8, ptr %.184126, i64 7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 16
  %i.fq = or disjoint i32 %i.fp, %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %.184126, i64 8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !29
  %i.ft = zext i8 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 8
  %i.fv = or disjoint i32 %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.184126, i64 9
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !29
  %i.fy = zext i8 %i.fx to i32
  %i.fz = or disjoint i32 %i.fv, %i.fy            ; 3 uses
  %i.ga = load i64, ptr %i.eu, align 8, !tbaa !824 ; 4 uses
  %i.gb = icmp ugt i64 %i.ga, %i.fh
  br i1 %i.gb, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.gc = sub nuw i64 %i.ga, %i.fh                ; 2 uses
  %i.gd = icmp ult i64 %i.dt, %i.gc
  br i1 %i.gd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ge = load ptr, ptr %i.ev, align 8, !tbaa !823 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fh
  %i.gg = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef %i.gf, i64 noundef %i.gc) #30
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.gi = and i32 %i.fd, 15
  switch i32 %i.gi, label %.thread [
    i32 0, label %bb.r
    i32 1, label %bb.r
    i32 2, label %bb.u
    i32 3, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.gj = zext i32 %i.fz to i64                   ; 2 uses
  %i.gk = icmp ugt i64 %i.ga, %i.gj
  br i1 %i.gk, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gj ; 2 uses
  %i.gm = tail call ptr @memchr(ptr noundef %i.gl, i32 noundef 0, i64 noundef %i.ga) #30
  %.not102 = icmp eq ptr %i.gm, null
  br i1 %.not102, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %2, align 8, !tbaa !351
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.gl, ptr %i.gn, align 8, !tbaa !29
  br label %tt_face_load_bdf_props.exit.thread

bb.u:                                             ; preds = %bb.q
  store i32 2, ptr %2, align 8, !tbaa !351
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.fz, ptr %i.go, align 8, !tbaa !29
  br label %tt_face_load_bdf_props.exit.thread

bb.v:                                             ; preds = %bb.q
  store i32 3, ptr %2, align 8, !tbaa !351
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.fz, ptr %i.gp, align 8, !tbaa !29
  br label %tt_face_load_bdf_props.exit.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.m
  %i.gq = getelementptr inbounds nuw i8, ptr %.184126, i64 10
  %i.gr = add nsw i32 %.282127, -1                ; 2 uses
  %.not100 = icmp eq i32 %i.gr, 0
  br i1 %.not100, label %tt_face_load_bdf_props.exit.thread, label %bb.m, !llvm.loop !820

tt_face_load_bdf_props.exit.thread:               ; preds = %bb.d, %bb.l, %.thread, %.preheader, %bb.u, %bb.t, %bb.v, %bb.b, %tt_face_goto_table.exit.i, %bb.e, %select.unfold.i, %bb.i, %bb.j
  %.089 = phi i32 [ 6, %bb.i ], [ 6, %bb.j ], [ 6, %bb.l ], [ 6, %.preheader ], [ 0, %bb.u ], [ 8, %select.unfold.i ], [ 8, %bb.e ], [ 8, %tt_face_goto_table.exit.i ], [ 8, %bb.b ], [ 0, %bb.v ], [ 0, %bb.t ], [ 6, %.thread ], [ 8, %bb.d ]
  ret i32 %.089
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define internal i32 @tt_get_cmap_info(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !826
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !827  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef %1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 150, %bb.a ]
  ret i32 %.0
}

declare hidden void @ft_validator_error(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 65536) i32 @tt_cmap4_char_map_linear(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(address) %.24.val, ptr nofree noundef captures(none) %0, i8 noundef zeroext range(i8 0, 2) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 824
  %i.d = load i64, ptr %i.c, align 8, !tbaa !203
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.24.val, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %.24.val, i64 7
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %i.n = lshr i32 %i.m, 1                         ; 4 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %1 to i32
  %i.p = load i32, ptr %0, align 4, !tbaa !30
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = and i32 %i.m, 65534
  %i.s = getelementptr inbounds nuw i8, ptr %.24.val, i64 14 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.u = zext nneg i32 %i.r to i64                ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 2 uses
  %.not111.not214 = icmp eq i8 %1, 0              ; 2 uses
  %2 = add nsw i32 %i.n, -1                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  br i1 %.not111.not214, label %.split107.us.split.us, label %.split

.split107.us.split.us:                            ; preds = %bb.b, %.thread4.split.us.split.us.us.us
  %.091106.us.us = phi ptr [ %i.y, %.thread4.split.us.split.us.us.us ], [ %i.v, %bb.b ] ; 4 uses
  %.092105.us.us = phi ptr [ %i.x, %.thread4.split.us.split.us.us.us ], [ %i.s, %bb.b ] ; 3 uses
  %.094104.us.us = phi i32 [ %.094104.us.us.mux, %.thread4.split.us.split.us.us.us ], [ %i.q, %bb.b ] ; 2 uses
  %.0100103.us.us = phi i32 [ %i.be, %.thread4.split.us.split.us.us.us ], [ 0, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.092105.us.us, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %.091106.us.us, i64 2
  %i.z = load i8, ptr %.091106.us.us, align 1, !tbaa !29
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.091106.us.us, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae            ; 4 uses
  %.not213 = icmp ult i32 %.094104.us.us, %i.af
  %.094104.us.us.mux = tail call i32 @llvm.umax.i32(i32 %.094104.us.us, i32 %i.af) ; 7 uses
  br i1 %.not213, label %.thread14, label %.split.us.us.us

.split.us.us.us:                                  ; preds = %.split107.us.split.us
  %i.ag = load i8, ptr %.092105.us.us, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.092105.us.us, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al            ; 2 uses
  %.not112.us.us.us.us = icmp ugt i32 %.094104.us.us.mux, %i.am
  br i1 %.not112.us.us.us.us, label %.thread4.split.us.split.us.us.us, label %bb.c

bb.c:                                             ; preds = %.split.us.us.us
  %i.an = getelementptr inbounds nuw i8, ptr %.091106.us.us, i64 %i.u ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.u ; 4 uses
  %i.ap = icmp uge i32 %.0100103.us.us, %2
  %i.aq = icmp eq i32 %i.af, 65535
  %or.cond.us.us = and i1 %i.ap, %i.aq
  %i.ar = icmp eq i32 %i.am, 65535
  %or.cond3.us.us = and i1 %or.cond.us.us, %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !29
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax            ; 3 uses
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond7.us.us.us.us = select i1 %or.cond3.us.us, i1 %i.az, i1 false
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = icmp ugt ptr %i.bc, %i.e
  %or.cond123.us.us.us.us = select i1 %or.cond7.us.us.us.us, i1 %i.bd, i1 false ; 3 uses
  %.0102.us.us.us.us = select i1 %or.cond123.us.us.us.us, i32 0, i32 %i.ay ; 2 uses
  %trunc.us.us.us.us = trunc nuw i32 %.0102.us.us.us.us to i16
  switch i16 %trunc.us.us.us.us, label %.split140.us.split.us [
    i16 -1, label %.thread4.split.us.split.us.us.us
    i16 0, label %.split49.us.split.us.split.us
  ]

.thread4.split.us.split.us.us.us:                 ; preds = %bb.c, %.split.us.us.us
  %i.be = add nuw nsw i32 %.0100103.us.us, 1      ; 2 uses
  %exitcond202.not = icmp eq i32 %i.be, %i.n
  br i1 %exitcond202.not, label %.thread10, label %.split107.us.split.us, !llvm.loop !828

.split49.us.split.us.split.us:                    ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.bg = load i8, ptr %i.an, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %.0101.us.us.le86 = select i1 %or.cond123.us.us.us.us, i32 1, i32 %i.bl
  %i.bm = add nuw nsw i32 %.0101.us.us.le86, %.094104.us.us.mux
  %i.bn = and i32 %i.bm, 65535
  br label %.thread14

.split140.us.split.us:                            ; preds = %bb.c
  %i.bo = sub nsw i32 %.094104.us.us.mux, %i.af
  %i.bp = shl nsw i32 %i.bo, 1
  %i.bq = add nsw i32 %.0102.us.us.us.us, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !29
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !29
  %i.by = zext i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bv, %i.by            ; 2 uses
  %.not117.us.us = icmp eq i32 %i.bz, 0
  br i1 %.not117.us.us, label %.thread10, label %bb.d

.split:                                           ; preds = %bb.b, %.thread4.split
  %.091106 = phi ptr [ %i.ci, %.thread4.split ], [ %i.v, %bb.b ] ; 4 uses
  %.092105 = phi ptr [ %i.ca, %.thread4.split ], [ %i.s, %bb.b ] ; 3 uses
  %.094104 = phi i32 [ %.296, %.thread4.split ], [ %i.q, %bb.b ]
  %.0100103 = phi i32 [ %i.fd, %.thread4.split ], [ 0, %bb.b ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.092105, i64 2
  %i.cb = load i8, ptr %.092105, align 1, !tbaa !29
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.092105, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg            ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.091106, i64 2
  %i.cj = load i8, ptr %.091106, align 1, !tbaa !29
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.091106, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !29
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co            ; 3 uses
  %.094104.mux = tail call i32 @llvm.umax.i32(i32 %.094104, i32 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %.091106, i64 %i.u ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.u ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = icmp uge i32 %.0100103, %2
  %i.cv = icmp eq i32 %i.cp, 65535
  %or.cond = and i1 %i.cu, %i.cv
  %i.cw = icmp eq i32 %i.ch, 65535
  %or.cond3 = and i1 %or.cond, %i.cw
  br label %bb.e

bb.d:                                             ; preds = %.split140.us.split.us
  %i.cx = load i8, ptr %i.an, align 1, !tbaa !29
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !29
  %i.dc = zext i8 %i.db to i32
  %i.dd = or disjoint i32 %i.cz, %i.dc
  %.0101.us.us.le = select i1 %or.cond123.us.us.us.us, i32 1, i32 %i.dd
  %i.de = add nuw nsw i32 %i.bz, %.0101.us.us.le
  %i.df = and i32 %i.de, 65535                    ; 2 uses
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !115
  %i.dh = trunc i64 %i.dg to i32
  %.not118.us.us = icmp ult i32 %i.df, %i.dh
  %spec.store.select.us.us = select i1 %.not118.us.us, i32 %i.df, i32 0
  br label %.thread10

bb.e:                                             ; preds = %.thread, %.split
  %.296 = phi i32 [ %.094104.mux, %.split ], [ %i.fc, %.thread ] ; 9 uses
  %.not112 = icmp ugt i32 %.296, %i.ch
  br i1 %.not112, label %.thread4.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = load i8, ptr %i.cq, align 1, !tbaa !29
  %i.dj = zext i8 %i.di to i16
  %i.dk = shl nuw i16 %i.dj, 8
  %i.dl = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.dm = zext i8 %i.dl to i16
  %i.dn = or disjoint i16 %i.dk, %i.dm
  %i.do = sext i16 %i.dn to i32
  %i.dp = load i8, ptr %i.cs, align 1, !tbaa !29
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 8
  %i.ds = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt            ; 3 uses
  %i.dv = icmp ne i32 %i.du, 0
  %or.cond7 = select i1 %or.cond3, i1 %i.dv, i1 false
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = icmp ugt ptr %i.dy, %i.e
  %or.cond123 = select i1 %or.cond7, i1 %i.dz, i1 false ; 2 uses
  %.0102 = select i1 %or.cond123, i32 0, i32 %i.du ; 2 uses
  %.0101 = select i1 %or.cond123, i32 1, i32 %i.do ; 5 uses
  %trunc = trunc nuw i32 %.0102 to i16
  switch i16 %trunc, label %bb.g [
    i16 -1, label %.thread4.split
    i16 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ea = sub nsw i32 %.296, %i.cp
  %i.eb = shl nsw i32 %i.ea, 1
  %i.ec = add nsw i32 %.0102, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ed ; 3 uses
  %i.ef = icmp ugt ptr %i.ee, %i.e
  br i1 %i.ef, label %.thread4.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !29
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !29
  %i.el = zext i8 %i.ek to i32
  %i.em = or disjoint i32 %i.ei, %i.el            ; 2 uses
  %.not117 = icmp eq i32 %i.em, 0
  br i1 %.not117, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.en = add nsw i32 %i.em, %.0101
  %i.eo = and i32 %i.en, 65535                    ; 2 uses
  %i.ep = load i64, ptr %i.w, align 8, !tbaa !115
  %i.eq = trunc i64 %i.ep to i32
  %.not118 = icmp ult i32 %i.eo, %i.eq
  br i1 %.not118, label %select.unfold, label %.thread

bb.j:                                             ; preds = %bb.f
  %i.er = add nsw i32 %.0101, %.296               ; 3 uses
  %i.es = and i32 %i.er, 65535                    ; 2 uses
  %i.et = load i64, ptr %i.w, align 8, !tbaa !115
  %i.eu = trunc i64 %i.et to i32
  %.not115 = icmp ult i32 %i.es, %i.eu
  br i1 %.not115, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ev = icmp slt i32 %i.er, 0
  %i.ew = add nsw i32 %.0101, %i.ch               ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, -1
  %or.cond126 = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond126, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ey = sub nsw i32 0, %.0101
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ez = icmp slt i32 %i.er, 65536
  %i.fa = icmp sgt i32 %i.ew, 65535
  %or.cond128 = select i1 %i.ez, i1 %i.fa, i1 false
  br i1 %or.cond128, label %bb.n, label %.thread4.split

bb.n:                                             ; preds = %bb.m
  %narrow = sub nsw i32 65536, %.0101
  br label %.thread

select.unfold:                                    ; preds = %bb.i, %bb.j
  %.2 = phi i32 [ %i.es, %bb.j ], [ %i.eo, %bb.i ] ; 2 uses
  %.not212 = icmp eq i32 %.2, 0
  br i1 %.not212, label %.thread, label %.thread10

.thread:                                          ; preds = %bb.n, %bb.l, %bb.h, %bb.i, %select.unfold
  %.397217 = phi i32 [ %.296, %select.unfold ], [ %narrow, %bb.n ], [ %i.ey, %bb.l ], [ %.296, %bb.h ], [ %.296, %bb.i ] ; 3 uses
  %i.fb = icmp ugt i32 %.397217, 65534
  %i.fc = add nuw nsw i32 %.397217, 1
  br i1 %i.fb, label %.thread10.thread21, label %bb.e

.thread4.split:                                   ; preds = %bb.m, %bb.f, %bb.g, %bb.e
  %i.fd = add nuw nsw i32 %.0100103, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fd, %i.n
  br i1 %exitcond.not, label %.thread10, label %.split, !llvm.loop !828

.thread10:                                        ; preds = %.thread4.split, %select.unfold, %.thread4.split.us.split.us.us.us, %bb.d, %.split140.us.split.us
  %.6 = phi i32 [ %.296, %select.unfold ], [ %.094104.us.us.mux, %.split140.us.split.us ], [ %.094104.us.us.mux, %.thread4.split.us.split.us.us.us ], [ %.094104.us.us.mux, %bb.d ], [ %.296, %.thread4.split ]
  %.5 = phi i32 [ %.2, %select.unfold ], [ 0, %.split140.us.split.us ], [ 0, %.thread4.split.us.split.us.us.us ], [ %spec.store.select.us.us, %bb.d ], [ 0, %.thread4.split ] ; 2 uses
  br i1 %.not111.not214, label %.thread14, label %.thread10.thread21

.thread10.thread21:                               ; preds = %.thread, %.thread10
  %.526 = phi i32 [ %.5, %.thread10 ], [ 0, %.thread ]
  %.625 = phi i32 [ %.6, %.thread10 ], [ %.397217, %.thread ]
  store i32 %.625, ptr %0, align 4, !tbaa !30
  br label %.thread14

.thread14:                                        ; preds = %.split107.us.split.us, %.split49.us.split.us.split.us, %.thread10, %.thread10.thread21, %bb.a
  %.0103 = phi i32 [ 0, %bb.a ], [ %.526, %.thread10.thread21 ], [ %.5, %.thread10 ], [ %i.bn, %.split49.us.split.us.split.us ], [ 0, %.split107.us.split.us ]
  ret i32 %.0103
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap4_char_map_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !345
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.e = load i64, ptr %i.d, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !30
  %i.h = zext nneg i8 %2 to i32
  %i.i = add i32 %i.g, %i.h                       ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 2 uses
  %i.t = lshr i32 %i.s, 1                         ; 7 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.thread371, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = and i32 %i.s, 65534                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 8 uses
  %i.w = add nuw nsw i32 %i.u, 2
  %i.x = zext nneg i32 %i.w to i64                ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %bb.b
  %.0232 = phi i32 [ %i.t, %bb.b ], [ %.1233, %bb.v ] ; 2 uses
  %.0230 = phi i32 [ 0, %bb.b ], [ %.1231, %bb.v ] ; 2 uses
  %i.y = add i32 %.0230, %.0232                   ; 4 uses
  %i.z = lshr i32 %i.y, 1                         ; 15 uses
  %i.aa = and i32 %i.y, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq            ; 7 uses
  %i.as = icmp ult i32 %i.i, %i.ar
  br i1 %i.as, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp ugt i32 %i.i, %i.aj
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = add nuw i32 %i.z, 1
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.av = zext nneg i32 %i.u to i64               ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw i16 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i16
  %i.bd = or disjoint i16 %i.az, %i.bc
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 4 uses
  %i.bn = add nsw i32 %i.t, -1
  %i.bo = icmp uge i32 %i.z, %i.bn
  %i.bp = icmp eq i32 %i.ar, 65535
  %or.cond = and i1 %i.bo, %i.bp
  %i.bq = icmp eq i32 %i.aj, 65535
  %or.cond3 = select i1 %or.cond, i1 %i.bq, i1 false
  %i.br = icmp ne i32 %i.bm, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.br, i1 false
  %i.bs = zext nneg i32 %i.bm to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = icmp ugt ptr %i.bu, %i.f
  %or.cond315 = select i1 %or.cond5, i1 %i.bv, i1 false ; 2 uses
  %.0246 = select i1 %or.cond315, i32 0, i32 %i.bm ; 4 uses
  %.0234 = select i1 %or.cond315, i32 1, i32 %i.be ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !46
  %i.by = and i32 %i.bx, 2
  %.not295 = icmp eq i32 %i.by, 0
  %i.bz = icmp eq i32 %.0246, 65535               ; 3 uses
  br i1 %.not295, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = add nuw i32 %i.z, 1                     ; 3 uses
  %.not296411 = icmp eq i32 %i.z, 0
  br i1 %.not296411, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %spec.select = select i1 %i.bz, i32 %i.ca, i32 %i.z ; 2 uses
  %i.cb = lshr i32 %i.y, 1                        ; 3 uses
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cd = shl nuw i32 %i.cc, 1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !29
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ci, %i.cl            ; 2 uses
  %i.cn = icmp samesign ugt i32 %i.i, %i.cm
  br i1 %i.cn, label %._crit_edge, label %.lr.ph561

.lr.ph561:                                        ; preds = %.lr.ph.preheader
  %i.co = zext nneg i32 %i.cb to i64
  %invariant.gep = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

.lr.ph:                                           ; preds = %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv559, -1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  %i.cr = shl nuw i32 %i.cq, 1
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 2 uses
  %i.db = icmp samesign ugt i32 %i.i, %i.da
  br i1 %i.db, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !829

bb.h:                                             ; preds = %.lr.ph561, %.lr.ph
  %i.dc = phi i32 [ %i.cm, %.lr.ph561 ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.dd = phi i64 [ %i.ce, %.lr.ph561 ], [ %i.cs, %.lr.ph ]
  %i.de = phi i32 [ %i.cc, %.lr.ph561 ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.1220416560 = phi i32 [ %spec.select, %.lr.ph561 ], [ %spec.select316, %.lr.ph ]
  %indvars.iv559 = phi i64 [ %i.co, %.lr.ph561 ], [ %indvars.iv.next, %.lr.ph ]
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 %i.av ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.av ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !29
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !29
  %i.dm = zext i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.dj, %i.dm            ; 3 uses
  %.not297 = icmp eq i32 %i.dn, 65535
  %spec.select316 = select i1 %.not297, i32 %.1220416560, i32 %i.de ; 3 uses
  %.not296 = icmp eq i32 %i.de, 0
  br i1 %.not296, label %.._crit_edge_crit_edge, label %.lr.ph, !llvm.loop !829

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %i.do = load i8, ptr %gep, align 1, !tbaa !29
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !29
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dw = zext i8 %i.dv to i16
  %i.dx = shl nuw i16 %i.dw, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !29
  %i.ea = zext i8 %i.dz to i16
  %i.eb = or disjoint i16 %i.dx, %i.ea
end_hunk_1
