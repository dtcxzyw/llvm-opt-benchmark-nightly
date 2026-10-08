Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_iso9660?download=true
inline.NumInlined: 294
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@iso9660_options:bb.a

get_str_opt.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ -30, %bb.d ], [ 0, %bb.e ]
  %i.m = zext i1 %i.h to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, -2
  %i.q = or disjoint i32 %i.p, %i.m
  store i32 %i.q, ptr %i.n, align 8
  br label %bb.co

bb.f:                                             ; preds = %bb.b
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.9) #25
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.u = icmp ugt i64 %i.t, 128
  br i1 %i.u, label %get_str_opt.exit200, label %bb.h

get_str_opt.exit200:                              ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.39, i64 noundef 128, ptr noundef nonnull %1) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store i64 0, ptr %i.w, align 8, !tbaa !89
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.y = tail call ptr @archive_strncat(ptr noundef nonnull %i.v, ptr noundef nonnull %2, i64 noundef %i.x) #23 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %get_str_opt.exit200, %bb.h
  %.0.i199210 = phi i32 [ 0, %bb.h ], [ -30, %get_str_opt.exit200 ]
  %i.z = phi i32 [ 2, %bb.h ], [ 0, %get_str_opt.exit200 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, -3
  %i.ad = or disjoint i32 %i.ac, %i.z
  store i32 %i.ad, ptr %i.aa, align 8
  br label %bb.co

bb.j:                                             ; preds = %bb.f
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.10) #25
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.co

bb.k:                                             ; preds = %bb.j
  %.not194 = icmp eq ptr %2, null
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = select i1 %.not194, i32 0, i32 4
  %i.aj = and i32 %i.ah, -5
  %i.ak = or disjoint i32 %i.aj, %i.ai
  store i32 %i.ak, ptr %i.ag, align 8
  br label %bb.co

bb.l:                                             ; preds = %bb.a
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.11) #25
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.an = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.ao = icmp ugt i64 %i.an, 37
  br i1 %i.ao, label %get_str_opt.exit202, label %bb.n

get_str_opt.exit202:                              ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.39, i64 noundef 37, ptr noundef nonnull %1) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  store i64 0, ptr %i.aq, align 8, !tbaa !89
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.as = tail call ptr @archive_strncat(ptr noundef nonnull %i.ap, ptr noundef nonnull %2, i64 noundef %i.ar) #23 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %get_str_opt.exit202, %bb.n
  %.0.i201213 = phi i32 [ 0, %bb.n ], [ -30, %get_str_opt.exit202 ]
  %i.at = phi i32 [ 8, %bb.n ], [ 0, %get_str_opt.exit202 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = and i32 %i.av, -9
  %i.ax = or disjoint i32 %i.aw, %i.at
  store i32 %i.ax, ptr %i.au, align 8
  br label %bb.co

bb.p:                                             ; preds = %bb.l
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.12) #25
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp eq ptr %2, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = and i32 %i.bc, -17
  store i32 %i.bd, ptr %i.bb, align 8
  br label %bb.co

bb.s:                                             ; preds = %bb.q
  %i.be = or i32 %i.bc, 16
  store i32 %i.be, ptr %i.bb, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 66344
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 66352
  store i64 0, ptr %i.bg, align 8, !tbaa !224
  %i.bh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.bi = tail call ptr @archive_strncat(ptr noundef nonnull %i.bf, ptr noundef nonnull %2, i64 noundef %i.bh) #23 ; 0 uses
  br label %bb.co

bb.t:                                             ; preds = %bb.p
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.13) #25
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 66312
  %i.bm = tail call fastcc i32 @get_str_opt(ptr noundef nonnull %0, ptr noundef nonnull %i.bl, i64 noundef 1024, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = select i1 %i.bn, i32 32, i32 0
  %i.br = and i32 %i.bp, -33
  %i.bs = or disjoint i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.bo, align 8
  br label %bb.co

bb.v:                                             ; preds = %bb.t
  %i.bt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.14) #25
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not193 = icmp eq ptr %2, null
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = select i1 %.not193, i32 0, i32 64
  %i.by = and i32 %i.bw, -65
  %i.bz = or disjoint i32 %i.by, %i.bx
  store i32 %i.bz, ptr %i.bv, align 8
  br label %bb.co

bb.x:                                             ; preds = %bb.v
  %i.ca = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.15) #25
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.ce = and i32 %i.cd, -129
  store i32 %i.ce, ptr %i.cc, align 8
  %i.cf = icmp eq ptr %2, null
  br i1 %i.cf, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load i8, ptr %2, align 1, !tbaa !68     ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 48
  br i1 %i.ch, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !68
  switch i8 %i.cj, label %.lr.ph.preheader [
    i8 120, label %bb.ab
    i8 88, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.ck, align 1, !tbaa !68
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.cl = phi i8 [ %.pre, %bb.ab ], [ %i.cg, %bb.z ] ; 2 uses
  %.0168 = phi ptr [ %i.ck, %bb.ab ], [ %2, %bb.z ]
  %.not188236 = icmp eq i8 %i.cl, 0
  br i1 %.not188236, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa, %bb.ac
  %.ph = phi i8 [ 48, %bb.aa ], [ %i.cl, %bb.ac ]
  %.1169237.ph = phi ptr [ %2, %bb.aa ], [ %.0168, %bb.ac ]
  br label %.lr.ph

bb.ad:                                            ; preds = %bb.aj
  %i.cm = getelementptr inbounds nuw i8, ptr %.1169237, i64 1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !68  ; 2 uses
  %.not188 = icmp eq i8 %i.cn, 0
  br i1 %.not188, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !223

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ad
  %i.co = phi i8 [ %i.cn, %bb.ad ], [ %.ph, %.lr.ph.preheader ] ; 5 uses
  %.0238 = phi i32 [ %.2, %bb.ad ], [ 0, %.lr.ph.preheader ]
  %.1169237 = phi ptr [ %i.cm, %bb.ad ], [ %.1169237.ph, %.lr.ph.preheader ]
  %i.cp = shl nuw nsw i32 %.0238, 4
  %i.cq = add i8 %i.co, -65
  %or.cond = icmp ult i8 %i.cq, 6
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph
  %i.cr = zext nneg i8 %i.co to i32
  %i.cs = add nsw i32 %i.cr, -55
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph
  %i.ct = add i8 %i.co, -97
  %or.cond195 = icmp ult i8 %i.ct, 6
  br i1 %or.cond195, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cu = zext nneg i8 %i.co to i32
  %i.cv = add nsw i32 %i.cu, -87
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.cw = add i8 %i.co, -48                       ; 2 uses
  %or.cond196 = icmp ult i8 %i.cw, 10
  br i1 %or.cond196, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cx = zext nneg i8 %i.cw to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ae
  %.pn = phi i32 [ %i.cs, %bb.ae ], [ %i.cv, %bb.ag ], [ %i.cx, %bb.ai ]
  %.2 = add nuw nsw i32 %.pn, %i.cp               ; 3 uses
  %i.cy = icmp ugt i32 %.2, 65535
  br i1 %i.cy, label %bb.ak, label %bb.ad

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.16, ptr noundef nonnull %1) #23
  br label %bb.co

._crit_edge.loopexit:                             ; preds = %bb.ad
  %i.cz = trunc nuw i32 %.2 to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ac
  %.0.lcssa = phi i16 [ 0, %bb.ac ], [ %i.cz, %._crit_edge.loopexit ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 66410
  store i16 %.0.lcssa, ptr %i.da, align 2, !tbaa !52
  %i.db = or i32 %i.cd, 128
  store i32 %i.db, ptr %i.cc, align 8
  br label %bb.co

bb.al:                                            ; preds = %bb.x
  %i.dc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.17) #25
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !90
  %i.de = call fastcc i32 @get_num_opt(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef nonnull %1, ptr noundef %2)
  %i.df = icmp eq i32 %i.de, 0                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = select i1 %i.df, i32 256, i32 0
  %i.dj = and i32 %i.dh, -257
  %i.dk = or disjoint i32 %i.dj, %i.di
  store i32 %i.dk, ptr %i.dg, align 8
  br i1 %i.df, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !90
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 66412
  store i16 %i.dm, ptr %i.dn, align 4, !tbaa !53
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.1171 = phi i32 [ 0, %bb.an ], [ -30, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.co

bb.ap:                                            ; preds = %bb.al
  %i.do = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.18) #25
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.aq, label %bb.co

bb.aq:                                            ; preds = %bb.ap
  %i.dq = icmp eq ptr %2, null
  br i1 %i.dq, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(13) @.str.19) #25
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.as, label %sub_0

bb.as:                                            ; preds = %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = and i32 %i.du, -1537
  %i.dw = or disjoint i32 %i.dv, 512
  store i32 %i.dw, ptr %i.dt, align 8
  br label %bb.co

sub_0:                                            ; preds = %bb.ar
  %i.dx = load i8, ptr %2, align 1
  %.not241 = icmp eq i8 %i.dx, 102
  br i1 %.not241, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.dz = load i8, ptr %i.dy, align 1
  %.not242 = icmp eq i8 %i.dz, 100
  br i1 %.not242, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.at, label %.tail.thread

bb.at:                                            ; preds = %.tail
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = and i32 %i.ee, -1537
  %i.eg = or disjoint i32 %i.ef, 1024
  store i32 %i.eg, ptr %i.ed, align 8
  br label %bb.co

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.eh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @.str.21) #25
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.au, label %.thread

bb.au:                                            ; preds = %.tail.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = or i32 %i.ek, 1536
  store i32 %i.el, ptr %i.ej, align 8
  br label %bb.co

bb.av:                                            ; preds = %bb.a
  %i.em = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.22) #25
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.eo = icmp eq ptr %2, null
  br i1 %i.eo, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = load i8, ptr %2, align 1, !tbaa !68
  %i.eq = add i8 %i.ep, -48                       ; 2 uses
  %or.cond197 = icmp ult i8 %i.eq, 10
  br i1 %or.cond197, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !68
  %.not185 = icmp eq i8 %i.es, 0
  br i1 %.not185, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  %i.et = zext nneg i8 %i.eq to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !55
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = or i32 %i.ew, 2048
  store i32 %i.ex, ptr %i.ev, align 8
  br label %bb.co

bb.ba:                                            ; preds = %bb.av
  %i.ey = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.23) #25
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.bb, label %bb.co

bb.bb:                                            ; preds = %bb.ba
  %i.fa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.fb = icmp ugt i64 %i.fa, 37
  br i1 %i.fb, label %get_str_opt.exit204, label %bb.bc

get_str_opt.exit204:                              ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.39, i64 noundef 37, ptr noundef nonnull %1) #23
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store i64 0, ptr %i.fd, align 8, !tbaa !89
  %i.fe = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %i.ff = tail call ptr @archive_strncat(ptr noundef nonnull %i.fc, ptr noundef nonnull %2, i64 noundef %i.fe) #23 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %get_str_opt.exit204, %bb.bc
  %.0.i203218 = phi i32 [ 0, %bb.bc ], [ -30, %get_str_opt.exit204 ]
  %i.fg = phi i32 [ 4096, %bb.bc ], [ 0, %get_str_opt.exit204 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 66416 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8
  %i.fj = and i32 %i.fi, -4097
  %i.fk = or disjoint i32 %i.fj, %i.fg
  store i32 %i.fk, ptr %i.fh, align 8
end_hunk_0
