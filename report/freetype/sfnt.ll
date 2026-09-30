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
  %.pre219.i = load i16, ptr %i.b, align 2, !tbaa !154
  %.pre220.i = load ptr, ptr %i.fw, align 8, !tbaa !262
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre220.i, i64 24
  %.pre221.i = load i16, ptr %.phi.trans.insert.i, align 8, !tbaa !561
  %.pre222.i = load i16, ptr %i.gc, align 2, !tbaa !171
  %.pre223.i = zext i16 %.pre221.i to i32
  %.pre224.i = zext i16 %.pre222.i to i32
  %i.gk = zext i16 %.pre219.i to i32
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
  %.pre-phi225.i = phi i32 [ %i.ge, %bb.ab ], [ %i.ge, %bb.ac ], [ %.pre224.i, %bb.z ]
  %.pre-phi.i = phi i32 [ %i.ga, %bb.ab ], [ %i.ga, %bb.ac ], [ %.pre223.i, %bb.z ]
  %i.hd = phi i32 [ %i.gu, %bb.ab ], [ %i.hc, %bb.ac ], [ %i.gk, %bb.z ]
  %i.he = mul nuw nsw i32 %i.hd, %.pre-phi.i
  %i.hf = udiv i32 %i.he, %.pre-phi225.i
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
