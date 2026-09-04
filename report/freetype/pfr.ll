Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pfr?download=true
inline.NumInlined: 33
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pfr_face_init:bb.a
  %i.aa = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef %i.z) #12 ; 3 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !50
  %.not.i157 = icmp eq i32 %i.aa, 0
  br i1 %.not.i157, label %bb.g, label %.thread

bb.g:                                             ; preds = %pfr_header_check.exit
  %i.ab = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %0, ptr noundef nonnull %i.d) #12 ; 3 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !50  ; 2 uses
  %.not12.i = icmp eq i32 %i.ad, 0
  br i1 %.not12.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ugt i16 %i.ab, 13106
  br i1 %i.ae, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = mul nuw nsw i32 %i.ac, 5
  %i.ag = add nuw nsw i32 %i.af, 2
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !154 ; 2 uses
  %i.ak = sub i64 %i.aj, %i.z
  %.not13.i = icmp ugt i64 %i.ak, %i.ah
  br i1 %.not13.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.al = mul nuw nsw i32 %i.ac, 23
  %i.am = add nuw nsw i32 %i.al, 95
  %i.an = zext nneg i32 %i.am to i64
  %.not14.i = icmp ugt i64 %i.aj, %i.an
  br i1 %.not14.i, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.j, %bb.g, %pfr_header_check.exit
  %.ph = phi i32 [ 8, %bb.i ], [ 8, %bb.h ], [ 8, %bb.j ], [ %i.ad, %bb.g ], [ %i.aa, %pfr_header_check.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.critedge154

bb.k:                                             ; preds = %bb.j
  %i.ao = zext nneg i16 %i.ab to i64              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.e, align 4, !tbaa !50
  store i64 %i.ao, ptr %1, align 8, !tbaa !155
  %i.ap = icmp slt i32 %2, 0
  br i1 %i.ap, label %.critedge154, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = and i32 %2, 65535                       ; 3 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %.not138 = icmp samesign ugt i64 %i.ao, %i.ar
  br i1 %.not138, label %bb.m, label %.critedge154

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.at = load i32, ptr %i.x, align 4, !tbaa !153
  %i.au = load i32, ptr %i.i, align 8, !tbaa !156
  %.not = icmp eq i32 %i.au, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.av = zext i32 %i.at to i64
  %i.aw = call i32 @FT_Stream_Seek(ptr noundef nonnull %0, i64 noundef %i.av) #12 ; 3 uses
  store i32 %i.aw, ptr %i.c, align 4, !tbaa !50
  %.not.i159 = icmp eq i32 %i.aw, 0
  br i1 %.not.i159, label %bb.n, label %pfr_log_font_load.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ax = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !50  ; 2 uses
  %.not59.i = icmp eq i32 %i.ay, 0
  br i1 %.not59.i, label %bb.o, label %pfr_log_font_load.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.az = zext i16 %i.ax to i32
  %.not60.i = icmp samesign ult i32 %i.aq, %i.az
  br i1 %.not60.i, label %bb.p, label %pfr_log_font_load.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ba = mul nuw nsw i32 %i.aq, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.bb) #12 ; 3 uses
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !50
  %.not61.i = icmp eq i32 %i.bc, 0
  br i1 %.not61.i, label %bb.q, label %pfr_log_font_load.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bd = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12 ; 3 uses
  %i.be = zext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !50  ; 2 uses
  %.not62.i = icmp eq i32 %i.bf, 0
  br i1 %.not62.i, label %bb.r, label %pfr_log_font_load.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bg = call i64 @FT_Stream_ReadUOffset(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !50  ; 2 uses
  %.not63.i = icmp eq i32 %i.bh, 0
  br i1 %.not63.i, label %bb.s, label %pfr_log_font_load.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = trunc i64 %i.bg to i32
  store i32 %i.be, ptr %i.as, align 4, !tbaa !157
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !158
  %i.bk = and i64 %i.bg, 4294967295
  %i.bl = call i32 @FT_Stream_Seek(ptr noundef nonnull %0, i64 noundef %i.bk) #12 ; 3 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !50
  %.not64.i = icmp eq i32 %i.bl, 0
  br i1 %.not64.i, label %bb.t, label %pfr_log_font_load.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bm = zext i16 %i.bd to i64                   ; 3 uses
  %i.bn = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %0, i64 noundef %i.bm) #12 ; 3 uses
  store i32 %i.bn, ptr %i.c, align 4, !tbaa !50
  %.not65.i = icmp eq i32 %i.bn, 0
  br i1 %.not65.i, label %bb.u, label %pfr_log_font_load.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52 ; 18 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bm ; 5 uses
  %i.br = icmp ult i16 %i.bd, 13
  br i1 %i.br, label %bb.ar, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !53
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw i32 %i.bu, 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !53
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = or disjoint i32 %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !53
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.ca, %i.ce
  %i.cg = ashr exact i32 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 364
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.cj = load i8, ptr %i.bs, align 1, !tbaa !53
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw i32 %i.ck, 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !53
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 5
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !53
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 8
  %i.cv = or disjoint i32 %i.cq, %i.cu
  %i.cw = ashr exact i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bp, i64 9
  %i.cz = load i8, ptr %i.ci, align 1, !tbaa !53
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw i32 %i.da, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bp, i64 7
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !53
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 16
  %i.dg = or disjoint i32 %i.df, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !53
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = or disjoint i32 %i.dg, %i.dk
  %i.dm = ashr exact i32 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 372
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.dp = load i8, ptr %i.cy, align 1, !tbaa !53
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw i32 %i.dq, 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !53
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dv, %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !53
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = or disjoint i32 %i.dw, %i.ea
  %i.ec = ashr exact i32 %i.eb, 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 %i.ec, ptr %i.ed, align 8, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bp, i64 13 ; 2 uses
  %i.ef = load i8, ptr %i.do, align 1, !tbaa !53
  %i.eg = zext i8 %i.ef to i32                    ; 8 uses
  %i.eh = and i32 %i.eg, 4
  %.not66.i = icmp eq i32 %i.eh, 0                ; 2 uses
  br i1 %.not66.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = and i32 %i.eg, 8
  %.not67.i = icmp eq i32 %i.ei, 0
  %spec.select.i160 = select i1 %.not67.i, i64 1, i64 2 ; 2 uses
  %i.ej = and i32 %i.eg, 3
  %i.ek = icmp eq i32 %i.ej, 0
  %6 = add nuw nsw i64 %spec.select.i160, 3
  %spec.select76.i = select i1 %i.ek, i64 %6, i64 %spec.select.i160
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i = phi i64 [ 0, %bb.v ], [ %spec.select76.i, %bb.w ]
  %i.el = and i32 %i.eg, 16
  %.not68.i = icmp eq i32 %i.el, 0                ; 2 uses
  %i.em = and i32 %i.eg, 32
  %.not69.i = icmp eq i32 %i.em, 0                ; 2 uses
  %7 = select i1 %.not69.i, i64 14, i64 15
  %.2.i = select i1 %.not68.i, i64 13, i64 %7
  %i.en = add nuw nsw i64 %.2.i, %.1.i
  %i.eo = icmp samesign ugt i64 %i.en, %i.bm
  br i1 %i.eo, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not66.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = and i32 %i.eg, 8
  %.not70.i = icmp eq i32 %i.ep, 0
  %i.eq = load i8, ptr %i.ee, align 1, !tbaa !53  ; 2 uses
  br i1 %.not70.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.bp, i64 15
  %i.es = zext i8 %i.eq to i16
  %i.et = shl nuw i16 %i.es, 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bp, i64 14
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !53
  %i.ew = zext i8 %i.ev to i16
  %i.ex = or disjoint i16 %i.et, %i.ew
  %i.ey = sext i16 %i.ex to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bp, i64 14
  %i.fa = zext i8 %i.eq to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.i161 = phi ptr [ %i.ez, %bb.ab ], [ %i.er, %bb.aa ] ; 5 uses
  %i.fb = phi i32 [ %i.fa, %bb.ab ], [ %i.ey, %bb.aa ]
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !159
  %i.fd = and i32 %i.eg, 3
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i161, i64 3
  %i.fg = load i8, ptr %.0.i161, align 1, !tbaa !53
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw i32 %i.fh, 24
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i161, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !53
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 16
  %i.fn = or disjoint i32 %i.fm, %i.fi
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i161, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !53
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 8
  %i.fs = or disjoint i32 %i.fn, %i.fr
  %i.ft = ashr exact i32 %i.fs, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !160
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.y
  %.188.i = phi ptr [ %i.ee, %bb.y ], [ %i.ff, %bb.ad ], [ %.0.i161, %bb.ac ] ; 5 uses
  br i1 %.not68.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = load i8, ptr %.188.i, align 1, !tbaa !53 ; 2 uses
  br i1 %.not69.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %.188.i, i64 2
  %i.fx = zext i8 %i.fv to i16
  %i.fy = shl nuw i16 %i.fx, 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.188.i, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !53
  %i.gb = zext i8 %i.ga to i16
  %i.gc = or disjoint i16 %i.fy, %i.gb
  %i.gd = sext i16 %i.gc to i32
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ge = getelementptr inbounds nuw i8, ptr %.188.i, i64 1
  %i.gf = zext i8 %i.fv to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.289.i = phi ptr [ %i.ge, %bb.ah ], [ %i.fw, %bb.ag ]
  %i.gg = phi i32 [ %i.gf, %bb.ah ], [ %i.gd, %bb.ag ]
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 388
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !161
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %.3.i = phi ptr [ %.188.i, %bb.ae ], [ %.289.i, %bb.ai ] ; 3 uses
  %i.gi = and i32 %i.eg, 64
  %.not72.i = icmp eq i32 %i.gi, 0
  br i1 %.not72.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gj = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 3 uses
  %i.gk = icmp ugt ptr %i.gj, %i.bq
  br i1 %i.gk, label %pfr_extra_items_skip.exit.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gl = load i8, ptr %.3.i, align 1, !tbaa !53  ; 2 uses
  %.not55.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not55.i.i.i, label %pfr_extra_items_skip.exit.i, label %.lr.ph58.i.i.i

.lr.ph58.i.i.i:                                   ; preds = %bb.al
  %i.gm = zext i8 %i.gl to i32
  br label %.lr.ph58.split.us.i.i.i

.lr.ph58.split.us.i.i.i:                          ; preds = %.thread.us.i.i.i, %.lr.ph58.i.i.i
  %.03357.us.i.i.i = phi i32 [ %i.gt, %.thread.us.i.i.i ], [ %i.gm, %.lr.ph58.i.i.i ]
  %.03456.us.i.i.i = phi ptr [ %i.gr, %.thread.us.i.i.i ], [ %i.gj, %.lr.ph58.i.i.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.03456.us.i.i.i, i64 2 ; 2 uses
  %i.go = icmp ugt ptr %i.gn, %i.bq
  br i1 %i.go, label %pfr_extra_items_skip.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph58.split.us.i.i.i
  %i.gp = load i8, ptr %.03456.us.i.i.i, align 1, !tbaa !53
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gq ; 3 uses
  %i.gs = icmp ugt ptr %i.gr, %i.bq
  br i1 %i.gs, label %pfr_extra_items_skip.exit.thread.i, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %bb.am
  %i.gt = add nsw i32 %.03357.us.i.i.i, -1        ; 2 uses
  %.not.us.i.i.i = icmp eq i32 %i.gt, 0
  br i1 %.not.us.i.i.i, label %pfr_extra_items_skip.exit.i, label %.lr.ph58.split.us.i.i.i, !llvm.loop !0

pfr_extra_items_skip.exit.thread.i:               ; preds = %bb.am, %.lr.ph58.split.us.i.i.i, %bb.ak
  store i32 8, ptr %i.c, align 4, !tbaa !50
  br label %pfr_log_font_load.exit

pfr_extra_items_skip.exit.i:                      ; preds = %.thread.us.i.i.i, %bb.al
  %.1.i.i.i = phi ptr [ %i.gj, %bb.al ], [ %i.gr, %.thread.us.i.i.i ]
  store i32 0, ptr %i.c, align 4, !tbaa !50
  br label %bb.an

bb.an:                                            ; preds = %pfr_extra_items_skip.exit.i, %bb.aj
  %.4.i = phi ptr [ %.3.i, %bb.aj ], [ %.1.i.i.i, %pfr_extra_items_skip.exit.i ] ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.4.i, i64 5 ; 2 uses
  %i.gv = icmp ugt ptr %i.gu, %i.bq
  br i1 %i.gv, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gw = getelementptr inbounds nuw i8, ptr %.4.i, i64 2
  %i.gx = load i8, ptr %.4.i, align 1, !tbaa !53
  %i.gy = zext i8 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !53
  %i.hc = zext i8 %i.hb to i32
  %i.hd = or disjoint i32 %i.gz, %i.hc            ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 396 ; 2 uses
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !162
  %i.hf = load i8, ptr %i.gw, align 1, !tbaa !53
  %i.hg = zext i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 16
  %i.hi = getelementptr inbounds nuw i8, ptr %.4.i, i64 3
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !53
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 8
  %i.hm = or disjoint i32 %i.hl, %i.hh
  %i.hn = getelementptr inbounds nuw i8, ptr %.4.i, i64 4
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !53
  %i.hp = zext i8 %i.ho to i32
  %i.hq = or disjoint i32 %i.hm, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !163
  br i1 %.not, label %pfr_log_font_load.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %.4.i, i64 6
  %i.ht = icmp ugt ptr %i.hs, %i.bq
  br i1 %i.ht, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hu = load i8, ptr %i.gu, align 1, !tbaa !53
  %i.hv = zext i8 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 16
  %i.hx = or disjoint i32 %i.hw, %i.hd
  store i32 %i.hx, ptr %i.he, align 4, !tbaa !162
  br label %pfr_log_font_load.exit

bb.ar:                                            ; preds = %bb.ap, %bb.an, %bb.x, %bb.u
  store i32 8, ptr %i.c, align 4, !tbaa !50
  br label %pfr_log_font_load.exit

pfr_log_font_load.exit.thread:                    ; preds = %bb.o, %bb.t, %bb.s, %bb.p, %bb.q, %bb.r, %bb.m, %bb.n
  %.055.i.ph = phi i32 [ %i.ay, %bb.n ], [ %i.aw, %bb.m ], [ %i.bh, %bb.r ], [ %i.bf, %bb.q ], [ %i.bc, %bb.p ], [ %i.bl, %bb.s ], [ %i.bn, %bb.t ], [ 6, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.critedge154

pfr_log_font_load.exit:                           ; preds = %pfr_extra_items_skip.exit.thread.i, %bb.ao, %bb.aq, %bb.ar
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %0) #12
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  store i32 %.pre.i, ptr %i.e, align 4, !tbaa !50
  %.not139 = icmp eq i32 %.pre.i, 0
  br i1 %.not139, label %bb.as, label %.critedge154

bb.as:                                            ; preds = %pfr_log_font_load.exit
end_hunk_0
begin_hunk_1_@pfr_glyph_load_rec:bb.a
bb.dt:                                            ; preds = %bb.ds
  %i.rg = load i64, ptr %i.kz, align 8, !tbaa !121
  br label %bb.eb

bb.du:                                            ; preds = %bb.ds
  %i.rh = getelementptr inbounds nuw i8, ptr %.8.i.peel247, i64 1 ; 2 uses
  %i.ri = icmp ugt ptr %i.rh, %i.h
  br i1 %i.ri, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rj = load i8, ptr %.8.i.peel247, align 1, !tbaa !53
  %i.rk = load i64, ptr %i.kz, align 8, !tbaa !121
  %i.rl = sext i8 %i.rj to i64
  %i.rm = add nsw i64 %i.rk, %i.rl
  br label %bb.eb

bb.dw:                                            ; preds = %bb.ds
  %i.rn = getelementptr inbounds nuw i8, ptr %.8.i.peel247, i64 2 ; 2 uses
  %i.ro = icmp ugt ptr %i.rn, %i.h
  br i1 %i.ro, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rp = load i8, ptr %.8.i.peel247, align 1, !tbaa !53
  %i.rq = zext i8 %i.rp to i16
  %i.rr = shl nuw i16 %i.rq, 8
  %i.rs = getelementptr inbounds nuw i8, ptr %.8.i.peel247, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !53
  %i.ru = zext i8 %i.rt to i16
  %i.rv = or disjoint i16 %i.rr, %i.ru
  %i.rw = sext i16 %i.rv to i64
  br label %bb.eb

bb.dy:                                            ; preds = %bb.ds
  %i.rx = getelementptr inbounds nuw i8, ptr %.8.i.peel247, i64 1 ; 2 uses
  %i.ry = icmp ugt ptr %i.rx, %i.h
  br i1 %i.ry, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rz = load i8, ptr %.8.i.peel247, align 1, !tbaa !53 ; 2 uses
  %.not154.i.peel248 = icmp ult i8 %i.rz, %i.lc
  br i1 %.not154.i.peel248, label %bb.ea, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.ea:                                            ; preds = %bb.dz
  %i.sa = load ptr, ptr %i.ki, align 8, !tbaa !299
  %i.sb = zext i8 %i.rz to i64
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.sb
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !76
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dx, %bb.dv, %bb.dt
  %.sink325.i.peel249 = phi i64 [ %i.rg, %bb.dt ], [ %i.rm, %bb.dv ], [ %i.rw, %bb.dx ], [ %i.sd, %bb.ea ]
  %.9.i.peel250 = phi ptr [ %.8.i.peel247, %bb.dt ], [ %i.rh, %bb.dv ], [ %i.rn, %bb.dx ], [ %i.rx, %bb.ea ] ; 2 uses
  store i64 %.sink325.i.peel249, ptr %i.lf, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ky, ptr noundef nonnull align 16 dereferenceable(16) %i.le, i64 16, i1 false), !tbaa.struct !130
  br i1 %.not221, label %._crit_edge216.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %bb.eb, %bb.ef
  %.0108210.i = phi ptr [ %i.su, %bb.ef ], [ %i.lg, %bb.eb ] ; 4 uses
  %.7209.i = phi ptr [ %i.sm, %bb.ef ], [ %.9.i.peel250, %bb.eb ] ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.7209.i, i64 1 ; 3 uses
  %i.sf = icmp ugt ptr %i.se, %i.h
  br i1 %i.sf, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph215.i
  %i.sg = load i8, ptr %.7209.i, align 1, !tbaa !53 ; 2 uses
  %i.sh = zext i8 %i.sg to i32
  %.not153.i = icmp ugt i32 %.1120.i, %i.sh
  br i1 %.not153.i, label %bb.ed, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.ed:                                            ; preds = %bb.ec
  %i.si = load ptr, ptr %i.kj, align 8, !tbaa !105
  %i.sj = zext i8 %i.sg to i64
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !76
  store i64 %i.sl, ptr %.0108210.i, align 8, !tbaa !120
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 1 ; 2 uses
  %i.sn = icmp ugt ptr %i.sm, %i.h
  br i1 %i.sn, label %pfr_extra_items_skip.exit.thread.sink.split.i, label %bb.ee

.lr.ph215.i.unreachabledefault:                   ; preds = %.lr.ph215.i.peel.next
  unreachable

.lr.ph215.preheader.i.unreachabledefault:         ; preds = %.lr.ph215.preheader.i
  unreachable

.unreachabledefault:                              ; preds = %bb.cg
  unreachable

.lr.ph215.peel.next.i.unreachabledefault:         ; preds = %.lr.ph215.peel.next.i
  unreachable

.unreachabledefault228:                           ; preds = %bb.da
  unreachable

default.unreachable:                              ; preds = %bb.ds
  unreachable

bb.ee:                                            ; preds = %bb.ed
  %i.so = load i8, ptr %i.se, align 1, !tbaa !53  ; 2 uses
  %.not154.i = icmp ult i8 %i.so, %i.lc
  br i1 %.not154.i, label %bb.ef, label %pfr_extra_items_skip.exit.thread.sink.split.i

bb.ef:                                            ; preds = %bb.ee
  %i.sp = load ptr, ptr %i.ki, align 8, !tbaa !299
  %i.sq = zext i8 %i.so to i64
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.sq
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !76
  %i.st = getelementptr inbounds nuw i8, ptr %.0108210.i, i64 8
  store i64 %i.ss, ptr %i.st, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %.0108210.i, i64 16, i1 false), !tbaa.struct !130
  %i.su = getelementptr inbounds nuw i8, ptr %.0108210.i, i64 16
  br label %.lr.ph215.i, !llvm.loop !288

._crit_edge216.i:                                 ; preds = %bb.eb, %bb.dj, %bb.cr
  %.7.lcssa.i = phi ptr [ %.9.peel.i, %bb.cr ], [ %.9.i.peel, %bb.dj ], [ %.9.i.peel250, %bb.eb ] ; 5 uses
  switch i32 %i.lm, label %bb.eu [
    i32 0, label %._crit_edge216.thread315.i
    i32 1, label %._crit_edge216.thread.i
    i32 2, label %._crit_edge216.thread.i
    i32 3, label %._crit_edge216.thread.i
    i32 4, label %bb.ei
    i32 5, label %bb.ei
  ]

._crit_edge216.thread315.i:                       ; preds = %._crit_edge216.i, %bb.bu
  call fastcc void @pfr_glyph_end(ptr noundef %0)
  %.pre231.pre.i = load i32, ptr %i.a, align 4, !tbaa !50
  br label %pfr_extra_items_skip.exit.thread.sink.split.i

._crit_edge216.thread.sink.split.i:               ; preds = %bb.by, %bb.bw
  %.sink327.i = phi i64 [ %i.lw, %bb.by ], [ %i.lr, %bb.bw ]
  store i64 %.sink327.i, ptr %i.kx, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ky, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false)
  br label %._crit_edge216.thread.i

._crit_edge216.thread.i:                          ; preds = %._crit_edge216.thread.sink.split.i, %._crit_edge216.i, %._crit_edge216.i, %._crit_edge216.i
  %.7.lcssa314.i = phi ptr [ %.7.lcssa.i, %._crit_edge216.i ], [ %.7.lcssa.i, %._crit_edge216.i ], [ %.7.lcssa.i, %._crit_edge216.i ], [ %i.lh, %._crit_edge216.thread.sink.split.i ]
  %.val.i = load ptr, ptr %i.hr, align 8, !tbaa !101 ; 6 uses
  %.val156.i = load i8, ptr %i.kw, align 8, !tbaa !129
  %.not.i.i = icmp eq i8 %.val156.i, 0
  br i1 %.not.i.i, label %pfr_glyph_line_to.exit.i.thread, label %bb.eg

bb.eg:                                            ; preds = %._crit_edge216.thread.i
  %i.sv = getelementptr inbounds nuw i8, ptr %.val.i, i64 26
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !131
  %i.sx = zext i16 %i.sw to i32
  %i.sy = getelementptr inbounds nuw i8, ptr %.val.i, i64 98 ; 4 uses
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !132 ; 2 uses
  %i.ta = zext i16 %i.sz to i32
  %i.tb = add nuw nsw i32 %i.ta, %i.sx
  %i.tc = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !133
  %.not16.not.i.i = icmp ult i32 %i.tb, %i.td
  br i1 %.not16.not.i.i, label %.thread.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.te = call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.val.i, i32 noundef 1, i32 noundef 0) #12 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.te, 0
  br i1 %.not17.i.i, label %..thread_crit_edge.i.i, label %pfr_glyph_line_to.exit.i.thread

..thread_crit_edge.i.i:                           ; preds = %bb.eh
  %.pre.i.i = load i16, ptr %i.sy, align 2, !tbaa !116
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread_crit_edge.i.i, %bb.eg
  %i.tf = phi i16 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %i.sz, %bb.eg ]
  %i.tg = getelementptr inbounds nuw i8, ptr %.val.i, i64 104
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !117
  %i.ti = zext i16 %i.tf to i64                   ; 2 uses
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.th, i64 %i.ti
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tj, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !130
  %i.tk = getelementptr inbounds nuw i8, ptr %.val.i, i64 112
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !134
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.ti
  store i8 1, ptr %i.tm, align 1, !tbaa !53
  %i.tn = load i16, ptr %i.sy, align 2, !tbaa !116
  %i.to = add i16 %i.tn, 1
  store i16 %i.to, ptr %i.sy, align 2, !tbaa !116
  br label %pfr_glyph_line_to.exit.i

bb.ei:                                            ; preds = %._crit_edge216.i, %._crit_edge216.i
  %i.tp = load ptr, ptr %i.hr, align 8, !tbaa !101 ; 12 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 96 ; 3 uses
  %i.tr = load i8, ptr %i.kw, align 8, !tbaa !129
  %.not.i.i.i = icmp eq i8 %i.tr, 0
  br i1 %.not.i.i.i, label %pfr_glyph_close_contour.exit.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 98 ; 2 uses
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !116 ; 2 uses
  %i.tu = zext i16 %i.tt to i32                   ; 2 uses
  %i.tv = add nsw i32 %i.tu, -1                   ; 5 uses
  %i.tw = load i16, ptr %i.tq, align 8, !tbaa !135 ; 4 uses
  %.not28.i.i.i = icmp eq i16 %i.tw, 0
  br i1 %.not28.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.tx = zext i16 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tp, i64 120
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !136
  %6 = getelementptr [2 x i8], ptr %i.tz, i64 %i.tx
  %7 = getelementptr i8, ptr %6, i64 -2
  %i.ua = load i16, ptr %7, align 2, !tbaa !114
  %i.ub = zext i16 %i.ua to i32
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.0.i.i.i = phi i32 [ %i.ub, %bb.ek ], [ 0, %bb.ej ] ; 3 uses
  %i.uc = icmp sgt i32 %i.tv, %.0.i.i.i
  br i1 %i.uc, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tp, i64 104
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !117 ; 2 uses
  %i.uf = zext nneg i32 %.0.i.i.i to i64
  %i.ug = getelementptr inbounds nuw [16 x i8], ptr %i.ue, i64 %i.uf ; 2 uses
  %i.uh = zext nneg i32 %i.tv to i64
  %i.ui = getelementptr inbounds nuw [16 x i8], ptr %i.ue, i64 %i.uh ; 2 uses
  %i.uj = load i64, ptr %i.ug, align 8, !tbaa !120
  %i.uk = load i64, ptr %i.ui, align 8, !tbaa !120
  %i.ul = icmp eq i64 %i.uj, %i.uk
  br i1 %i.ul, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.um = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.un = load i64, ptr %i.um, align 8, !tbaa !121
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !121
  %i.uq = icmp eq i64 %i.un, %i.up
  br i1 %i.uq, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ur = add i16 %i.tt, -1
  store i16 %i.ur, ptr %i.ts, align 2, !tbaa !116
  %i.us = add nsw i32 %i.tu, -2
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.el
  %.1.i.i159.i = phi i32 [ %i.tv, %bb.el ], [ %i.us, %bb.eo ], [ %i.tv, %bb.en ], [ %i.tv, %bb.em ] ; 2 uses
  %.not29.i.i.i = icmp slt i32 %.1.i.i159.i, %.0.i.i.i
  br i1 %.not29.i.i.i, label %pfr_glyph_close_contour.exit.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ut = trunc nuw i32 %.1.i.i159.i to i16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tp, i64 120
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !136
  %i.uw = add i16 %i.tw, 1
  store i16 %i.uw, ptr %i.tq, align 8, !tbaa !135
  %i.ux = zext i16 %i.tw to i64
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.uv, i64 %i.ux
  store i16 %i.ut, ptr %i.uy, align 2, !tbaa !114
  br label %pfr_glyph_close_contour.exit.i.i

pfr_glyph_close_contour.exit.i.i:                 ; preds = %bb.eq, %bb.ep, %bb.ei
  store i8 1, ptr %i.kw, align 8, !tbaa !129
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tp, i64 26
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !131
  %i.vb = zext i16 %i.va to i32
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tp, i64 98 ; 2 uses
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !132 ; 2 uses
  %i.ve = zext i16 %i.vd to i32
  %i.vf = add nuw nsw i32 %i.ve, %i.vb
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !133
  %.not.not.i.i = icmp ult i32 %i.vf, %i.vh
  br i1 %.not.not.i.i, label %bb.er, label %bb.es

bb.er:                                            ; preds = %pfr_glyph_close_contour.exit.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  %i.vj = load i16, ptr %i.vi, align 8, !tbaa !301
  %i.vk = zext i16 %i.vj to i32
  %i.vl = load i16, ptr %i.tq, align 8, !tbaa !302
  %i.vm = zext i16 %i.vl to i32
  %i.vn = add nuw nsw i32 %i.vm, %i.vk
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !303
  %.not.not14.i.i = icmp ult i32 %i.vn, %i.vp
  br i1 %.not.not14.i.i, label %.thread.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er, %pfr_glyph_close_contour.exit.i.i
  %i.vq = call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.tp, i32 noundef 1, i32 noundef 1) #12 ; 2 uses
  %.not.i160.i = icmp eq i32 %i.vq, 0
  br i1 %.not.i160.i, label %.thread.i162.i, label %pfr_glyph_line_to.exit.i.thread

.thread.i162.i:                                   ; preds = %bb.es
  %.val15.pre.i.i = load i8, ptr %i.kw, align 8, !tbaa !129
  %i.vr = icmp eq i8 %.val15.pre.i.i, 0
  br i1 %i.vr, label %pfr_glyph_line_to.exit.i.thread, label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %.thread.i162.i
  %.val.pre.i.i = load ptr, ptr %i.hr, align 8, !tbaa !101 ; 6 uses
  %.phi.trans.insert225.i = getelementptr inbounds nuw i8, ptr %.val.pre.i.i, i64 26
  %.pre226.i = load i16, ptr %.phi.trans.insert225.i, align 2, !tbaa !131
  %.phi.trans.insert227.i = getelementptr inbounds nuw i8, ptr %.val.pre.i.i, i64 98 ; 4 uses
  %.pre228.i = load i16, ptr %.phi.trans.insert227.i, align 2, !tbaa !132 ; 2 uses
  %.phi.trans.insert229.i = getelementptr inbounds nuw i8, ptr %.val.pre.i.i, i64 8
  %.pre230.i = load i32, ptr %.phi.trans.insert229.i, align 8, !tbaa !133
  %.pre233.i = zext i16 %.pre226.i to i32
  %.pre234.i = zext i16 %.pre228.i to i32
  %.pre236.i = add nuw nsw i32 %.pre234.i, %.pre233.i
  %i.vs = icmp ult i32 %.pre236.i, %.pre230.i
  br i1 %i.vs, label %.thread.i.i.i, label %bb.et

bb.et:                                            ; preds = %.thread.thread.i.i
  %i.vt = call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.val.pre.i.i, i32 noundef 1, i32 noundef 0) #12 ; 2 uses
  %.not17.i.i.i = icmp eq i32 %i.vt, 0
  br i1 %.not17.i.i.i, label %..thread_crit_edge.i.i.i, label %pfr_glyph_line_to.exit.i.thread

..thread_crit_edge.i.i.i:                         ; preds = %bb.et
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert227.i, align 2, !tbaa !116
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.er, %..thread_crit_edge.i.i.i, %.thread.thread.i.i
  %i.vu = phi ptr [ %.phi.trans.insert227.i, %..thread_crit_edge.i.i.i ], [ %.phi.trans.insert227.i, %.thread.thread.i.i ], [ %i.vc, %bb.er ] ; 2 uses
  %.val27.i319.i = phi ptr [ %.val.pre.i.i, %..thread_crit_edge.i.i.i ], [ %.val.pre.i.i, %.thread.thread.i.i ], [ %i.tp, %bb.er ] ; 2 uses
  %i.vv = phi i16 [ %.pre.i.i.i, %..thread_crit_edge.i.i.i ], [ %.pre228.i, %.thread.thread.i.i ], [ %i.vd, %bb.er ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.val27.i319.i, i64 104
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !117
  %i.vy = zext i16 %i.vv to i64                   ; 2 uses
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.vx, i64 %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vz, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !130
  %i.wa = getelementptr inbounds nuw i8, ptr %.val27.i319.i, i64 112
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !134
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.vy
  store i8 1, ptr %i.wc, align 1, !tbaa !53
  %i.wd = load i16, ptr %i.vu, align 2, !tbaa !116
  %i.we = add i16 %i.wd, 1
  store i16 %i.we, ptr %i.vu, align 2, !tbaa !116
  br label %pfr_glyph_line_to.exit.i

bb.eu:                                            ; preds = %._crit_edge216.i
  %.val157.i = load ptr, ptr %i.hr, align 8, !tbaa !101
  %.val158.i = load i8, ptr %i.kw, align 8, !tbaa !129
  %i.wf = call fastcc i32 @pfr_glyph_curve_to(ptr %.val157.i, i8 %.val158.i, ptr noundef %5, ptr noundef %i.la, ptr noundef %i.lb)
  br label %pfr_glyph_line_to.exit.i

pfr_glyph_line_to.exit.i.thread:                  ; preds = %._crit_edge216.thread.i, %bb.eh, %bb.es, %bb.et, %.thread.i162.i
  %.sink328.i.ph = phi i32 [ 8, %.thread.i162.i ], [ %i.vt, %bb.et ], [ %i.vq, %bb.es ], [ %i.te, %bb.eh ], [ 8, %._crit_edge216.thread.i ] ; 2 uses
  store i32 %.sink328.i.ph, ptr %i.a, align 4, !tbaa !50
  br label %pfr_extra_items_skip.exit.thread.sink.split.i

pfr_glyph_line_to.exit.i:                         ; preds = %bb.eu, %.thread.i.i.i, %.thread.i.i
  %.sink328.i = phi i32 [ %i.wf, %bb.eu ], [ 0, %.thread.i.i ], [ 0, %.thread.i.i.i ] ; 3 uses
  %.7.lcssa313.i = phi ptr [ %.7.lcssa.i, %bb.eu ], [ %.7.lcssa314.i, %.thread.i.i ], [ %.7.lcssa.i, %.thread.i.i.i ]
  store i32 %.sink328.i, ptr %i.a, align 4, !tbaa !50
  %.not152.i = icmp eq i32 %.sink328.i, 0
  br i1 %.not152.i, label %bb.bt, label %pfr_extra_items_skip.exit.thread.sink.split.i

pfr_extra_items_skip.exit.thread.sink.split.i:    ; preds = %pfr_glyph_line_to.exit.i, %bb.cq, %bb.cn, %bb.cm, %bb.ck, %bb.ci, %bb.ce, %bb.cd, %bb.cb, %.lr.ph215.preheader.thread.i, %bb.bx, %bb.bv, %bb.bt, %bb.ct, %bb.cv, %bb.cx, %bb.cy, %bb.dc, %bb.de, %bb.dg, %bb.dh, %bb.ee, %bb.ed, %bb.ec, %.lr.ph215.i, %bb.dl, %bb.dn, %bb.dp, %bb.dq, %bb.du, %bb.dw, %bb.dy, %bb.dz, %pfr_glyph_line_to.exit.i.thread, %._crit_edge216.thread315.i
  %.ph329.i = phi i32 [ %.sink328.i.ph, %pfr_glyph_line_to.exit.i.thread ], [ %.pre231.pre.i, %._crit_edge216.thread315.i ], [ 8, %bb.ee ], [ 8, %bb.dz ], [ 8, %bb.dy ], [ 8, %bb.dw ], [ 8, %bb.du ], [ 8, %bb.dq ], [ 8, %bb.dp ], [ 8, %bb.dn ], [ 8, %bb.dl ], [ 8, %.lr.ph215.i ], [ 8, %bb.ec ], [ 8, %bb.ed ], [ 8, %bb.ci ], [ 8, %bb.ce ], [ 8, %bb.cd ], [ 8, %bb.cb ], [ 8, %.lr.ph215.preheader.thread.i ], [ 8, %bb.bt ], [ 8, %bb.bx ], [ 8, %bb.bv ], [ 8, %bb.cq ], [ 8, %bb.cn ], [ 8, %bb.cm ], [ 8, %bb.ck ], [ 8, %bb.ct ], [ 8, %bb.cv ], [ 8, %bb.cx ], [ 8, %bb.cy ], [ 8, %bb.dc ], [ 8, %bb.de ], [ 8, %bb.dg ], [ 8, %bb.dh ], [ %.sink328.i, %pfr_glyph_line_to.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %pfr_glyph_load_simple.exit

pfr_glyph_load_simple.exit:                       ; preds = %bb.bh, %bb.bk, %bb.bm, %.lr.ph58.split.us.i.i.i100, %bb.br, %.thread, %bb.au, %bb.aw, %bb.az, %bb.bc, %bb.bf, %bb.bp, %pfr_extra_items_skip.exit.thread.sink.split.i
  %i.wg = phi i32 [ 8, %bb.bp ], [ %i.iz, %bb.bf ], [ 8, %bb.aw ], [ 8, %bb.az ], [ %.ph329.i, %pfr_extra_items_skip.exit.thread.sink.split.i ], [ 8, %.thread ], [ 8, %bb.au ], [ 8, %bb.bc ], [ 8, %.lr.ph58.split.us.i.i.i100 ], [ 8, %bb.br ], [ 8, %bb.bm ], [ 8, %bb.bk ], [ 8, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit118.sink.split

.loopexit118.sink.split:                          ; preds = %pfr_glyph_load_simple.exit, %pfr_glyph_load_compound.exit.thread
  %.3.ph = phi i32 [ %.ph, %pfr_glyph_load_compound.exit.thread ], [ %i.wg, %pfr_glyph_load_simple.exit ]
  call void @FT_Stream_ExitFrame(ptr noundef %1) #12
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit, %bb.ao, %.loopexit118.sink.split, %.loopexit119, %bb.b, %bb.a
  %.3 = phi i32 [ %i.d, %bb.a ], [ %i.e, %bb.b ], [ 0, %.loopexit119 ], [ %.3.ph, %.loopexit118.sink.split ], [ 0, %.loopexit ], [ %i.fj, %bb.ao ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pfr_glyph_end(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !129
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %pfr_glyph_close_contour.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 98 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !116  ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 5 uses
  %i.j = load i16, ptr %i.c, align 8, !tbaa !135  ; 4 uses
  %.not28.i = icmp eq i16 %i.j, 0
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136
  %1 = getelementptr [2 x i8], ptr %i.m, i64 %i.k
  %2 = getelementptr i8, ptr %1, i64 -2
  %i.n = load i16, ptr %2, align 2, !tbaa !114
  %i.o = zext i16 %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ]   ; 3 uses
  %i.p = icmp sgt i32 %i.i, %.0.i
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117  ; 2 uses
  %i.s = zext nneg i32 %.0.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = zext nneg i32 %i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %i.t, align 8, !tbaa !120
  %i.x = load i64, ptr %i.v, align 8, !tbaa !120
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !121
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = add i16 %i.g, -1
  store i16 %i.ae, ptr %i.f, align 2, !tbaa !116
  %i.af = add nsw i32 %i.h, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.1.i = phi i32 [ %i.i, %bb.d ], [ %i.af, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %.not29.i = icmp slt i32 %.1.i, %.0.i
  br i1 %.not29.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc nuw i32 %.1.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.aj = add i16 %i.j, 1
  store i16 %i.aj, ptr %i.c, align 8, !tbaa !135
  %i.ak = zext i16 %i.j to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ak
  store i16 %i.ag, ptr %i.al, align 2, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 0, ptr %i.d, align 8, !tbaa !129
  br label %pfr_glyph_close_contour.exit

pfr_glyph_close_contour.exit:                     ; preds = %bb.a, %bb.j
  tail call void @FT_GlyphLoader_Add(ptr noundef %i.b) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pfr_glyph_curve_to(ptr %.40.val, i8 %.48.val, ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i8 %.48.val, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.40.val, i64 26
  %i.b = load i16, ptr %i.a, align 2, !tbaa !131
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %.40.val, i64 98 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !132  ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.c, 3
  %i.h = add nuw nsw i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %.40.val, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !133
  %.not23 = icmp ugt i32 %i.h, %i.j
  br i1 %.not23, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.40.val, i32 noundef 3, i32 noundef 0) #12 ; 2 uses
  %.not24 = icmp eq i32 %i.k, 0
  br i1 %.not24, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i16, ptr %i.d, align 2, !tbaa !116
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.l = phi i16 [ %.pre, %..thread_crit_edge ], [ %i.e, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.40.val, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = zext i16 %i.l to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.40.val, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !130
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !130
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !130
  store i8 2, ptr %i.s, align 1, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 2, ptr %i.v, align 1, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 1, ptr %i.w, align 1, !tbaa !53
  %i.x = load i16, ptr %i.d, align 2, !tbaa !116
  %i.y = add i16 %i.x, 3
  store i16 %i.y, ptr %i.d, align 2, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %.thread
  %.0 = phi i32 [ %i.k, %bb.c ], [ 0, %.thread ], [ 8, %bb.a ]
  ret i32 %.0
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_GlyphLoader_CheckPoints(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !49}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11FT_FaceRec_", !9, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"FT_CharMapRec_", !10, i64 0, !6, i64 8, !11, i64 12, !11, i64 14}
!13 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !9, i64 0}
!14 = !{!"FT_CMapRec_", !12, i64 0, !13, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"p1 _ZTS15FT_Bitmap_Size_", !9, i64 0}
!18 = !{!"any p2 pointer", !9, i64 0}
!19 = !{!"p2 _ZTS14FT_CharMapRec_", !18, i64 0}
!20 = !{!"FT_Generic_", !9, i64 0, !9, i64 8}
!21 = !{!"FT_BBox_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!22 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !9, i64 0}
!23 = !{!"p1 _ZTS11FT_SizeRec_", !9, i64 0}
!24 = !{!"p1 _ZTS14FT_CharMapRec_", !9, i64 0}
!25 = !{!"p1 _ZTS13FT_DriverRec_", !9, i64 0}
!26 = !{!"p1 _ZTS13FT_MemoryRec_", !9, i64 0}
!27 = !{!"p1 _ZTS13FT_StreamRec_", !9, i64 0}
!28 = !{!"p1 _ZTS15FT_ListNodeRec_", !9, i64 0}
!29 = !{!"FT_ListRec_", !28, i64 0, !28, i64 8}
!30 = !{!"p1 _ZTS20FT_Face_InternalRec_", !9, i64 0}
!31 = !{!"FT_FaceRec_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !16, i64 40, !16, i64 48, !6, i64 56, !17, i64 64, !6, i64 72, !19, i64 80, !20, i64 88, !21, i64 104, !11, i64 136, !11, i64 138, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !22, i64 152, !23, i64 160, !24, i64 168, !25, i64 176, !26, i64 184, !27, i64 192, !29, i64 200, !20, i64 216, !9, i64 232, !30, i64 240}
!32 = !{!"PFR_HeaderRec_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104}
!33 = !{!"PFR_LogFontRec_", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!34 = !{!"p1 int", !9, i64 0}
!35 = !{!"PFR_DimensionRec_", !6, i64 0, !6, i64 4, !34, i64 8}
!36 = !{!"p1 _ZTS14PFR_StrikeRec_", !9, i64 0}
!37 = !{!"p1 _ZTS12PFR_CharRec_", !9, i64 0}
!38 = !{!"p1 _ZTS16PFR_KernItemRec_", !9, i64 0}
!39 = !{!"p2 _ZTS16PFR_KernItemRec_", !18, i64 0}
!40 = !{!"PFR_PhyFontRec_", !26, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !21, i64 24, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !35, i64 80, !35, i64 96, !16, i64 112, !16, i64 120, !16, i64 128, !6, i64 136, !6, i64 140, !36, i64 144, !6, i64 152, !34, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !15, i64 184, !37, i64 192, !6, i64 200, !38, i64 208, !39, i64 216, !15, i64 224, !16, i64 232}
!41 = !{!"PFR_FaceRec_", !31, i64 0, !32, i64 248, !33, i64 356, !40, i64 408}
!42 = !{!41, !6, i64 584}
!43 = !{!"PFR_CMapRec_", !14, i64 0, !6, i64 24, !37, i64 32}
!44 = !{!43, !6, i64 24}
!45 = !{!41, !37, i64 600}
end_hunk_1
