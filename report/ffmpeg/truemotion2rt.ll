Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/truemotion2rt?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0_@truemotion2rt_decode_frame:bb.a
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !53 ; 2 uses
  %i.m = lshr i8 %i.g, 5
  %i.n = shl i8 %i.g, 3
  %i.o = and i8 %i.n, 120
  %i.p = or disjoint i8 %i.m, %i.o
  %i.q = zext nneg i8 %i.p to i64
  %i.r = add nsw i64 %i.q, -1                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.r, -32                      ; 3 uses
  %i.s = or disjoint i64 %n.vec, 1
  %vector.recur.init = insertelement <16 x i8> poison, i8 %.pre.i, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load402, %vector.body ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !53 ; 3 uses
  %wide.load402 = load <16 x i8>, ptr %i.v, align 1, !tbaa !53 ; 4 uses
  %i.w = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.x = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load402, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.y = xor <16 x i8> %wide.load, %i.w
  %i.z = xor <16 x i8> %wide.load402, %i.x
  %i.aa = getelementptr i8, ptr %i.a, i64 %index  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store <16 x i8> %i.y, ptr %i.aa, align 16, !tbaa !53
  store <16 x i8> %i.z, ptr %i.ab, align 16, !tbaa !53
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load402, i64 15
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph425 = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %.val213) #6
  br label %truemotion2rt_decode_header.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ad = phi i8 [ %i.af, %.lr.ph.i ], [ %.ph425, %.lr.ph.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv.next.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !53  ; 2 uses
  %i.ag = xor i8 %i.af, %i.ad
  %i.ah = getelementptr i8, ptr %i.a, i64 %indvars.iv.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !53
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.pre6.i = load i8, ptr %.phi.trans.insert5.i, align 1, !tbaa !53
  %.phi.trans.insert3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre4.i = load i8, ptr %.phi.trans.insert3.i, align 1, !tbaa !53 ; 2 uses
  %i.aj = zext i8 %.pre4.i to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 9 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !59
  %.not41.i = icmp eq i8 %.pre6.i, 0
  %i.al = select i1 %.not41.i, i32 1, i32 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 14 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !60
  %i.an = add i8 %.pre4.i, -5
  %or.cond.i = icmp ult i8 %i.an, -3
  br i1 %or.cond.i, label %truemotion2rt_decode_header.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !53
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !53
  %i.at = zext i16 %i.as to i32
  %i.au = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %i.aq) #6 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %truemotion2rt_decode_header.exit.thread, label %bb.h

truemotion2rt_decode_header.exit.thread:          ; preds = %bb.b, %bb.d, %bb.f, %._crit_edge.i, %bb.g
  %.035.i.ph = phi i32 [ %i.au, %bb.g ], [ -1094995529, %._crit_edge.i ], [ -1094995529, %bb.f ], [ -1094995529, %bb.d ], [ -1094995529, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 22 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !61
  %i.ay = load i32, ptr %i.am, align 4, !tbaa !60 ; 2 uses
  %i.az = add i32 %i.ax, -1
  %i.ba = add i32 %i.az, %i.ay
  %i.bb = sdiv i32 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62
  %i.be = mul nsw i32 %i.bd, %i.bb
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.bg = mul nsw i32 %i.be, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !52  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 5
  %i.bl = icmp slt i64 %i.bk, %i.bh
  br i1 %i.bl, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %wide.trip.count.i
  %i.bo = sub nsw i32 %i.bi, %i.k                 ; 2 uses
  %or.cond.i215 = icmp ugt i32 %i.bo, 268435455
  %i.bp = shl nuw nsw i32 %i.bo, 3
  %i.bq = select i1 %or.cond.i215, i32 -8, i32 %i.bp ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.bq, 2147483134   ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.bn
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.bq ; 2 uses
  store ptr %.014.i.i, ptr %i.c, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %.013.i.i, ptr %i.br, align 4, !tbaa !64
  %i.bs = add nuw nsw i32 %.013.i.i, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 15 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !66
  br i1 %or.cond.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = load i32, ptr %i.bu, align 8, !tbaa !66
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.bz = add i32 %i.bx, 32
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.bz)
  store i32 %i.ca, ptr %i.bu, align 8, !tbaa !66
  %i.cb = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.cc = add nsw i32 %i.cb, -2                   ; 3 uses
  %i.cd = load i32, ptr %i.bc, align 4, !tbaa !62 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader230.lr.ph.a, label %._crit_edge236

.preheader230.lr.ph.a:                            ; preds = %bb.k
  %i.cf = sext i32 %i.cc to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr @delta_tabs, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ci = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.preheader230.preheader, label %._crit_edge236

.preheader230.preheader:                          ; preds = %.preheader230.lr.ph.a
  %i.ck = load ptr, ptr %1, align 8, !tbaa !67
  br label %.preheader230.a

.preheader230.a:                                  ; preds = %.preheader230.preheader, %._crit_edge
  %i.cl = phi i32 [ %i.ex, %._crit_edge ], [ %i.ci, %.preheader230.preheader ] ; 2 uses
  %.0178235 = phi i32 [ %i.fb, %._crit_edge ], [ 0, %.preheader230.preheader ] ; 2 uses
  %.0188233 = phi ptr [ %i.fa, %._crit_edge ], [ %i.ck, %.preheader230.preheader ] ; 4 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader230.a
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !68 ; 2 uses
  %.not203 = icmp eq i32 %.0178235, 0
  br i1 %.not203, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0177232.us = phi i32 [ %i.dh, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.0179231.us = phi i32 [ %i.dm, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.co = load i32, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.cp = load i32, ptr %i.bu, align 8, !tbaa !66 ; 3 uses
  %i.cq = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.cs = lshr i32 %i.cp, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 1, !tbaa !53
  %i.cw = and i32 %i.cp, 7
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = sub i32 32, %i.co
  %i.cz = lshr i32 -1, %i.cy
  %i.da = and i32 %i.cx, %i.cz
  %i.db = add i32 %i.cp, %i.co
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 %i.db)
  store i32 %i.dc, ptr %i.bu, align 8, !tbaa !66
  %i.dd = zext i32 %i.da to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !70
  %i.dg = sext i16 %i.df to i32
  %i.dh = add nsw i32 %.0177232.us, %i.dg         ; 2 uses
  %4 = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 0)
  %.0.i212224.us = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %i.di = trunc nuw i32 %.0.i212224.us to i8
  %i.dj = sext i32 %.0179231.us to i64
  %i.dk = getelementptr inbounds i8, ptr %.0188233, i64 %i.dj
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !53
  %i.dl = load i32, ptr %i.am, align 4, !tbaa !60
  %i.dm = add nsw i32 %i.dl, %.0179231.us         ; 2 uses
  %i.dn = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !31

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.0177232 = phi i32 [ %i.ei, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.0179231 = phi i32 [ %i.eu, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.dp = load i32, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.dq = load i32, ptr %i.bu, align 8, !tbaa !66 ; 3 uses
  %i.dr = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.dt = lshr i32 %i.dq, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !53
  %i.dx = and i32 %i.dq, 7
  %i.dy = lshr i32 %i.dw, %i.dx
  %i.dz = sub i32 32, %i.dp
  %i.ea = lshr i32 -1, %i.dz
  %i.eb = and i32 %i.dy, %i.ea
  %i.ec = add i32 %i.dq, %i.dp
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.ec)
  store i32 %i.ed, ptr %i.bu, align 8, !tbaa !66
  %i.ee = zext i32 %i.eb to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !70
  %i.eh = sext i16 %i.eg to i32
  %i.ei = add nsw i32 %.0177232, %i.eh            ; 2 uses
  %i.ej = load i32, ptr %i.ch, align 8, !tbaa !71
  %i.ek = sub nsw i32 %.0179231, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %.0188233, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !53
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nsw i32 %i.ei, %i.eo
  %5 = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %.0.i212224 = tail call i32 @llvm.umin.i32(i32 %5, i32 255)
  %i.eq = trunc nuw i32 %.0.i212224 to i8
  %i.er = sext i32 %.0179231 to i64
  %i.es = getelementptr inbounds i8, ptr %.0188233, i64 %i.er
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !53
  %i.et = load i32, ptr %i.am, align 4, !tbaa !60
  %i.eu = add nsw i32 %i.et, %.0179231            ; 2 uses
  %i.ev = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.ew = icmp slt i32 %i.eu, %i.ev
  br i1 %i.ew, label %.lr.ph.split, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader230.a
  %i.ex = phi i32 [ %i.dn, %.lr.ph.split.us ], [ %i.cl, %.preheader230.a ], [ %i.ev, %.lr.ph.split ]
  %i.ey = load i32, ptr %i.ch, align 8, !tbaa !71
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %.0188233, i64 %i.ez
  %i.fb = add nuw nsw i32 %.0178235, 1            ; 2 uses
  %i.fc = load i32, ptr %i.bc, align 4, !tbaa !62 ; 2 uses
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %.preheader230.a, label %._crit_edge236, !llvm.loop !32

._crit_edge236:                                   ; preds = %._crit_edge, %.preheader230.lr.ph.a, %bb.k
  %i.fe = phi i32 [ %i.cd, %bb.k ], [ %i.cd, %.preheader230.lr.ph.a ], [ %i.fc, %._crit_edge ] ; 5 uses
  %i.ff = load i32, ptr %i.am, align 4, !tbaa !60
  %i.fg = icmp sgt i32 %i.ff, 1
  br i1 %i.fg, label %bb.l, label %.loopexit229.a

bb.l:                                             ; preds = %._crit_edge236
  %i.fh = icmp sgt i32 %i.fe, 0
  br i1 %i.fh, label %.preheader228.lr.ph.a, label %._crit_edge247.thread

.preheader228.lr.ph.a:                            ; preds = %bb.l
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fj = load i32, ptr %i.aw, align 8, !tbaa !61 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %.preheader228.preheader, label %.preheader227.lr.ph.a

.preheader228.preheader:                          ; preds = %.preheader228.lr.ph.a
  %i.fl = load ptr, ptr %1, align 8, !tbaa !67
  br label %.preheader228.a

.preheader228.a:                                  ; preds = %.preheader228.preheader, %._crit_edge239
  %i.fm = phi i32 [ %i.fx, %._crit_edge239 ], [ %i.fe, %.preheader228.preheader ]
  %i.fn = phi i32 [ %i.fy, %._crit_edge239 ], [ %i.fj, %.preheader228.preheader ] ; 2 uses
  %.1241 = phi i32 [ %i.gc, %._crit_edge239 ], [ 0, %.preheader228.preheader ]
  %.1189240 = phi ptr [ %i.gb, %._crit_edge239 ], [ %i.fl, %.preheader228.preheader ] ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %.lr.ph238, label %._crit_edge239

.lr.ph238:                                        ; preds = %.preheader228.a, %.lr.ph238
  %.1180237 = phi i32 [ %i.fu, %.lr.ph238 ], [ 1, %.preheader228.a ] ; 2 uses
  %i.fp = sext i32 %.1180237 to i64
  %i.fq = getelementptr i8, ptr %.1189240, i64 %i.fp ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 -1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !53
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !53
  %i.ft = load i32, ptr %i.am, align 4, !tbaa !60
  %i.fu = add nsw i32 %i.ft, %.1180237            ; 2 uses
  %i.fv = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %.lr.ph238, label %._crit_edge239.loopexit, !llvm.loop !33

._crit_edge239.loopexit:                          ; preds = %.lr.ph238
  %.pre = load i32, ptr %i.bc, align 4, !tbaa !62
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %.preheader228.a
  %i.fx = phi i32 [ %.pre, %._crit_edge239.loopexit ], [ %i.fm, %.preheader228.a ] ; 3 uses
  %i.fy = phi i32 [ %i.fv, %._crit_edge239.loopexit ], [ %i.fn, %.preheader228.a ]
  %i.fz = load i32, ptr %i.fi, align 8, !tbaa !71
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %.1189240, i64 %i.ga
  %i.gc = add nuw nsw i32 %.1241, 1               ; 2 uses
  %i.gd = icmp slt i32 %i.gc, %i.fx
  br i1 %i.gd, label %.preheader228.a, label %.loopexit229.a, !llvm.loop !34

.loopexit229.a:                                   ; preds = %._crit_edge239, %._crit_edge236
  %i.ge = phi i32 [ %i.fe, %._crit_edge236 ], [ %i.fx, %._crit_edge239 ] ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.preheader227.lr.phthread-pre-split, label %._crit_edge247.thread

.preheader227.lr.phthread-pre-split:              ; preds = %.loopexit229.a
  %.pr = load i32, ptr %i.aw, align 8, !tbaa !61
  br label %.preheader227.lr.ph.a

.preheader227.lr.ph.a:                            ; preds = %.preheader228.lr.ph.a, %.preheader227.lr.phthread-pre-split
  %i.gg = phi i32 [ %.pr, %.preheader227.lr.phthread-pre-split ], [ %i.fj, %.preheader228.lr.ph.a ] ; 2 uses
  %i.gh = phi i32 [ %i.ge, %.preheader227.lr.phthread-pre-split ], [ %i.fe, %.preheader228.lr.ph.a ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gj = icmp sgt i32 %i.gg, 0
  br i1 %i.gj, label %.preheader227.preheader, label %._crit_edge247

.preheader227.preheader:                          ; preds = %.preheader227.lr.ph.a
  %i.gk = load ptr, ptr %1, align 8, !tbaa !67
  br label %.preheader227.a

.preheader227.a:                                  ; preds = %.preheader227.preheader, %._crit_edge244
  %i.gl = phi i32 [ %i.gx, %._crit_edge244 ], [ %i.gh, %.preheader227.preheader ]
  %i.gm = phi i32 [ %i.gy, %._crit_edge244 ], [ %i.gg, %.preheader227.preheader ] ; 2 uses
  %.2246 = phi i32 [ %i.hc, %._crit_edge244 ], [ 0, %.preheader227.preheader ]
  %.2190245 = phi ptr [ %i.hb, %._crit_edge244 ], [ %i.gk, %.preheader227.preheader ] ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph243, label %._crit_edge244

.lr.ph243:                                        ; preds = %.preheader227.a, %.lr.ph243
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph243 ], [ 0, %.preheader227.a ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.2190245, i64 %indvars.iv ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !53  ; 2 uses
  %i.gq = zext i8 %i.gp to i32
  %.lhs.trunc = xor i8 %i.gp, -128
  %i.gr = sdiv i8 %.lhs.trunc, 3
  %.sext = sext i8 %i.gr to i32
  %i.gs = add nsw i32 %.sext, %i.gq
  %6 = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 0)
  %.0.i209223 = tail call i32 @llvm.umin.i32(i32 %6, i32 255)
  %i.gt = trunc nuw i32 %.0.i209223 to i8
  store i8 %i.gt, ptr %i.go, align 1, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gu = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp slt i64 %indvars.iv.next, %i.gv
  br i1 %i.gw, label %.lr.ph243, label %._crit_edge244.loopexit, !llvm.loop !35

._crit_edge244.loopexit:                          ; preds = %.lr.ph243
  %.pre299 = load i32, ptr %i.bc, align 4, !tbaa !62
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %._crit_edge244.loopexit, %.preheader227.a
  %i.gx = phi i32 [ %.pre299, %._crit_edge244.loopexit ], [ %i.gl, %.preheader227.a ] ; 3 uses
  %i.gy = phi i32 [ %i.gu, %._crit_edge244.loopexit ], [ %i.gm, %.preheader227.a ]
  %i.gz = load i32, ptr %i.gi, align 8, !tbaa !71
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %.2190245, i64 %i.ha
  %i.hc = add nuw nsw i32 %.2246, 1               ; 2 uses
  %i.hd = icmp slt i32 %i.hc, %i.gx
  br i1 %i.hd, label %.preheader227.a, label %._crit_edge247, !llvm.loop !36

._crit_edge247.thread:                            ; preds = %.loopexit229.a, %bb.l
  %.ph = phi i32 [ %i.ge, %.loopexit229.a ], [ %i.fe, %bb.l ]
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %._crit_edge255

._crit_edge247:                                   ; preds = %._crit_edge244, %.preheader227.lr.ph.a
  %i.hf = phi i32 [ %i.gh, %.preheader227.lr.ph.a ], [ %i.gx, %._crit_edge244 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hh = icmp sgt i32 %i.hf, 3
  br i1 %i.hh, label %.preheader226.lr.ph.a, label %._crit_edge255

.preheader226.lr.ph.a:                            ; preds = %._crit_edge247
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !67
  %i.hj = sext i32 %i.cc to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr @delta_tabs, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.pre300 = load i32, ptr %i.aw, align 8, !tbaa !61
  br label %.preheader226.a

.preheader226.a:                                  ; preds = %.preheader226.lr.ph.a, %._crit_edge251
  %i.hm = phi i32 [ %.pre300, %.preheader226.lr.ph.a ], [ %i.ka, %._crit_edge251 ] ; 2 uses
  %.3254 = phi i32 [ 0, %.preheader226.lr.ph.a ], [ %i.ke, %._crit_edge251 ] ; 2 uses
  %.3191252 = phi ptr [ %i.hi, %.preheader226.lr.ph.a ], [ %i.kd, %._crit_edge251 ] ; 4 uses
  %i.hn = icmp sgt i32 %i.hm, 3
  br i1 %i.hn, label %.lr.ph250, label %._crit_edge251

.lr.ph250:                                        ; preds = %.preheader226.a
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !68 ; 2 uses
  %.not202 = icmp eq i32 %.3254, 0
  br i1 %.not202, label %.lr.ph250.split.us, label %.lr.ph250.split

.lr.ph250.split.us:                               ; preds = %.lr.ph250, %.lr.ph250.split.us
  %.0176249.us = phi i32 [ %i.ii, %.lr.ph250.split.us ], [ 0, %.lr.ph250 ]
  %.3182248.us = phi i32 [ %i.in, %.lr.ph250.split.us ], [ 0, %.lr.ph250 ] ; 2 uses
  %i.hp = load i32, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.hq = load i32, ptr %i.bu, align 8, !tbaa !66 ; 3 uses
  %i.hr = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.ht = lshr i32 %i.hq, 3
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 1, !tbaa !53
  %i.hx = and i32 %i.hq, 7
  %i.hy = lshr i32 %i.hw, %i.hx
  %i.hz = sub i32 32, %i.hp
  %i.ia = lshr i32 -1, %i.hz
  %i.ib = and i32 %i.hy, %i.ia
  %i.ic = add i32 %i.hq, %i.hp
  %i.id = tail call i32 @llvm.umin.i32(i32 %i.hr, i32 %i.ic)
  store i32 %i.id, ptr %i.bu, align 8, !tbaa !66
  %i.ie = zext i32 %i.ib to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !70
  %i.ih = sext i16 %i.ig to i32
  %i.ii = add nsw i32 %.0176249.us, %i.ih         ; 2 uses
  %7 = tail call i32 @llvm.smax.i32(i32 %i.ii, i32 -128)
  %8 = add nsw i32 %7, 128
  %.0.i206222.us = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %i.ij = trunc nuw i32 %.0.i206222.us to i8
  %i.ik = sext i32 %.3182248.us to i64
  %i.il = getelementptr inbounds i8, ptr %.3191252, i64 %i.ik
  store i8 %i.ij, ptr %i.il, align 1, !tbaa !53
  %i.im = load i32, ptr %i.am, align 4, !tbaa !60
  %i.in = add nsw i32 %i.im, %.3182248.us         ; 2 uses
  %i.io = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.ip = ashr i32 %i.io, 2
  %i.iq = icmp slt i32 %i.in, %i.ip
  br i1 %i.iq, label %.lr.ph250.split.us, label %._crit_edge251, !llvm.loop !37

.lr.ph250.split:                                  ; preds = %.lr.ph250, %.lr.ph250.split
  %.0176249 = phi i32 [ %i.jk, %.lr.ph250.split ], [ 0, %.lr.ph250 ]
  %.3182248 = phi i32 [ %i.jw, %.lr.ph250.split ], [ 0, %.lr.ph250 ] ; 3 uses
  %i.ir = load i32, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.is = load i32, ptr %i.bu, align 8, !tbaa !66 ; 3 uses
  %i.it = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.iu = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.iv = lshr i32 %i.is, 3
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 1, !tbaa !53
  %i.iz = and i32 %i.is, 7
  %i.ja = lshr i32 %i.iy, %i.iz
  %i.jb = sub i32 32, %i.ir
  %i.jc = lshr i32 -1, %i.jb
  %i.jd = and i32 %i.ja, %i.jc
  %i.je = add i32 %i.is, %i.ir
  %i.jf = tail call i32 @llvm.umin.i32(i32 %i.it, i32 %i.je)
  store i32 %i.jf, ptr %i.bu, align 8, !tbaa !66
  %i.jg = zext i32 %i.jd to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !70
  %i.jj = sext i16 %i.ji to i32
  %i.jk = add nsw i32 %.0176249, %i.jj            ; 2 uses
  %i.jl = load i32, ptr %i.hl, align 4, !tbaa !71
  %i.jm = sub nsw i32 %.3182248, %i.jl
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %.3191252, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !53
  %i.jq = zext i8 %i.jp to i32
  %i.jr = add nsw i32 %i.jk, %i.jq
  %9 = tail call i32 @llvm.smax.i32(i32 %i.jr, i32 0)
  %.0.i206222 = tail call i32 @llvm.umin.i32(i32 %9, i32 255)
  %i.js = trunc nuw i32 %.0.i206222 to i8
  %i.jt = sext i32 %.3182248 to i64
  %i.ju = getelementptr inbounds i8, ptr %.3191252, i64 %i.jt
  store i8 %i.js, ptr %i.ju, align 1, !tbaa !53
  %i.jv = load i32, ptr %i.am, align 4, !tbaa !60
  %i.jw = add nsw i32 %i.jv, %.3182248            ; 2 uses
  %i.jx = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.jy = ashr i32 %i.jx, 2
  %i.jz = icmp slt i32 %i.jw, %i.jy
  br i1 %i.jz, label %.lr.ph250.split, label %._crit_edge251, !llvm.loop !37

._crit_edge251:                                   ; preds = %.lr.ph250.split, %.lr.ph250.split.us, %.preheader226.a
  %i.ka = phi i32 [ %i.io, %.lr.ph250.split.us ], [ %i.hm, %.preheader226.a ], [ %i.jx, %.lr.ph250.split ]
  %i.kb = load i32, ptr %i.hl, align 4, !tbaa !71
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr %.3191252, i64 %i.kc
  %i.ke = add nuw nsw i32 %.3254, 1               ; 2 uses
  %i.kf = load i32, ptr %i.bc, align 4, !tbaa !62 ; 2 uses
  %i.kg = ashr i32 %i.kf, 2
  %i.kh = icmp slt i32 %i.ke, %i.kg
  br i1 %i.kh, label %.preheader226.a, label %._crit_edge255, !llvm.loop !38

._crit_edge255:                                   ; preds = %._crit_edge251, %._crit_edge247.thread, %._crit_edge247
  %i.ki = phi ptr [ %i.he, %._crit_edge247.thread ], [ %i.hg, %._crit_edge247 ], [ %i.hg, %._crit_edge251 ] ; 2 uses
  %i.kj = phi i32 [ %.ph, %._crit_edge247.thread ], [ %i.hf, %._crit_edge247 ], [ %i.kf, %._crit_edge251 ] ; 4 uses
  %i.kk = load i32, ptr %i.am, align 4, !tbaa !60
  %i.kl = icmp sgt i32 %i.kk, 1
  br i1 %i.kl, label %bb.m, label %.loopexit225

bb.m:                                             ; preds = %._crit_edge255
  %i.km = icmp sgt i32 %i.kj, 3
  br i1 %i.km, label %.preheader224.lr.ph, label %._crit_edge266.thread

.preheader224.lr.ph:                              ; preds = %bb.m
  %i.kn = load ptr, ptr %i.ki, align 8, !tbaa !67
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.pre301 = load i32, ptr %i.aw, align 8, !tbaa !61
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.lr.ph, %._crit_edge258
  %i.kp = phi i32 [ %i.kj, %.preheader224.lr.ph ], [ %i.lb, %._crit_edge258 ]
  %i.kq = phi i32 [ %.pre301, %.preheader224.lr.ph ], [ %i.lc, %._crit_edge258 ] ; 2 uses
  %.4260 = phi i32 [ 0, %.preheader224.lr.ph ], [ %i.lg, %._crit_edge258 ]
  %.4192259 = phi ptr [ %i.kn, %.preheader224.lr.ph ], [ %i.lf, %._crit_edge258 ] ; 2 uses
  %i.kr = icmp sgt i32 %i.kq, 7
  br i1 %i.kr, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %.preheader224, %.lr.ph257
  %.4183256 = phi i32 [ %i.kx, %.lr.ph257 ], [ 1, %.preheader224 ] ; 2 uses
  %i.ks = sext i32 %.4183256 to i64
  %i.kt = getelementptr i8, ptr %.4192259, i64 %i.ks ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 -1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !53
  store i8 %i.kv, ptr %i.kt, align 1, !tbaa !53
  %i.kw = load i32, ptr %i.am, align 4, !tbaa !60
  %i.kx = add nsw i32 %i.kw, %.4183256            ; 2 uses
  %i.ky = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.kz = ashr i32 %i.ky, 2
  %i.la = icmp slt i32 %i.kx, %i.kz
  br i1 %i.la, label %.lr.ph257, label %._crit_edge258.loopexit, !llvm.loop !39

._crit_edge258.loopexit:                          ; preds = %.lr.ph257
  %.pre302 = load i32, ptr %i.bc, align 4, !tbaa !62
  br label %._crit_edge258

._crit_edge258:                                   ; preds = %._crit_edge258.loopexit, %.preheader224
  %i.lb = phi i32 [ %.pre302, %._crit_edge258.loopexit ], [ %i.kp, %.preheader224 ] ; 3 uses
  %i.lc = phi i32 [ %i.ky, %._crit_edge258.loopexit ], [ %i.kq, %.preheader224 ]
  %i.ld = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds i8, ptr %.4192259, i64 %i.le
  %i.lg = add nuw nsw i32 %.4260, 1               ; 2 uses
  %i.lh = ashr i32 %i.lb, 2
  %i.li = icmp slt i32 %i.lg, %i.lh
  br i1 %i.li, label %.preheader224, label %.loopexit225, !llvm.loop !40

.loopexit225:                                     ; preds = %._crit_edge258, %._crit_edge255
  %i.lj = phi i32 [ %i.kj, %._crit_edge255 ], [ %i.lb, %._crit_edge258 ] ; 3 uses
  %i.lk = icmp sgt i32 %i.lj, 3
  br i1 %i.lk, label %.preheader223.lr.ph, label %._crit_edge266.thread

.preheader223.lr.ph:                              ; preds = %.loopexit225
  %i.ll = load ptr, ptr %i.ki, align 8, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.pre303 = load i32, ptr %i.aw, align 8, !tbaa !61
  br label %.preheader223

.preheader223:                                    ; preds = %.preheader223.lr.ph, %._crit_edge263
  %i.ln = phi i32 [ %i.lj, %.preheader223.lr.ph ], [ %i.ly, %._crit_edge263 ]
  %i.lo = phi i32 [ %.pre303, %.preheader223.lr.ph ], [ %i.lz, %._crit_edge263 ] ; 2 uses
  %.5265 = phi i32 [ 0, %.preheader223.lr.ph ], [ %i.md, %._crit_edge263 ]
  %.5193264 = phi ptr [ %i.ll, %.preheader223.lr.ph ], [ %i.mc, %._crit_edge263 ] ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, 3
  br i1 %i.lp, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %.preheader223, %.lr.ph262
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.lr.ph262 ], [ 0, %.preheader223 ] ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.5193264, i64 %indvars.iv293 ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !53  ; 2 uses
  %.lhs.trunc217 = xor i8 %i.lr, -128
  %i.ls = sdiv i8 %.lhs.trunc217, 8
  %i.lt = add i8 %i.ls, %i.lr
  store i8 %i.lt, ptr %i.lq, align 1, !tbaa !53
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.lu = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.lv = ashr i32 %i.lu, 2
  %i.lw = sext i32 %i.lv to i64
  %i.lx = icmp slt i64 %indvars.iv.next294, %i.lw
  br i1 %i.lx, label %.lr.ph262, label %._crit_edge263.loopexit, !llvm.loop !41

._crit_edge263.loopexit:                          ; preds = %.lr.ph262
  %.pre304 = load i32, ptr %i.bc, align 4, !tbaa !62
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %._crit_edge263.loopexit, %.preheader223
  %i.ly = phi i32 [ %.pre304, %._crit_edge263.loopexit ], [ %i.ln, %.preheader223 ] ; 4 uses
  %i.lz = phi i32 [ %i.lu, %._crit_edge263.loopexit ], [ %i.lo, %.preheader223 ]
  %i.ma = load i32, ptr %i.lm, align 4, !tbaa !71
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds i8, ptr %.5193264, i64 %i.mb
  %i.md = add nuw nsw i32 %.5265, 1               ; 2 uses
  %i.me = ashr i32 %i.ly, 2
  %i.mf = icmp slt i32 %i.md, %i.me
  br i1 %i.mf, label %.preheader223, label %._crit_edge266, !llvm.loop !42

._crit_edge266.thread:                            ; preds = %.loopexit225, %bb.m
  %.ph357 = phi i32 [ %i.lj, %.loopexit225 ], [ %i.kj, %bb.m ]
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %._crit_edge274

._crit_edge266:                                   ; preds = %._crit_edge263
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.mi = icmp sgt i32 %i.ly, 3
  br i1 %i.mi, label %.preheader222.lr.ph, label %._crit_edge274

.preheader222.lr.ph:                              ; preds = %._crit_edge266
  %i.mj = load ptr, ptr %i.mh, align 8, !tbaa !67
  %i.mk = sext i32 %i.cc to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr @delta_tabs, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.pre305 = load i32, ptr %i.aw, align 8, !tbaa !61
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.lr.ph, %._crit_edge270
  %i.mn = phi i32 [ %.pre305, %.preheader222.lr.ph ], [ %i.pb, %._crit_edge270 ] ; 2 uses
  %.6273 = phi i32 [ 0, %.preheader222.lr.ph ], [ %i.pf, %._crit_edge270 ] ; 2 uses
  %.6194271 = phi ptr [ %i.mj, %.preheader222.lr.ph ], [ %i.pe, %._crit_edge270 ] ; 4 uses
  %i.mo = icmp sgt i32 %i.mn, 3
  br i1 %i.mo, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %.preheader222
  %i.mp = load ptr, ptr %i.ml, align 8, !tbaa !68 ; 2 uses
  %.not = icmp eq i32 %.6273, 0
  br i1 %.not, label %.lr.ph269.split.us, label %.lr.ph269.split

.lr.ph269.split.us:                               ; preds = %.lr.ph269, %.lr.ph269.split.us
  %.0268.us = phi i32 [ %i.nj, %.lr.ph269.split.us ], [ 0, %.lr.ph269 ]
  %.6185267.us = phi i32 [ %i.no, %.lr.ph269.split.us ], [ 0, %.lr.ph269 ] ; 2 uses
  %i.mq = load i32, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.mr = load i32, ptr %i.bu, align 8, !tbaa !66 ; 3 uses
  %i.ms = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.mt = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.mu = lshr i32 %i.mr, 3
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 1, !tbaa !53
  %i.my = and i32 %i.mr, 7
  %i.mz = lshr i32 %i.mx, %i.my
  %i.na = sub i32 32, %i.mq
  %i.nb = lshr i32 -1, %i.na
  %i.nc = and i32 %i.mz, %i.nb
  %i.nd = add i32 %i.mr, %i.mq
  %i.ne = tail call i32 @llvm.umin.i32(i32 %i.ms, i32 %i.nd)
  store i32 %i.ne, ptr %i.bu, align 8, !tbaa !66
  %i.nf = zext i32 %i.nc to i64
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %i.nf
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !70
  %i.ni = sext i16 %i.nh to i32
  %i.nj = add nsw i32 %.0268.us, %i.ni            ; 2 uses
  %10 = tail call i32 @llvm.smax.i32(i32 %i.nj, i32 -128)
  %11 = add nsw i32 %10, 128
  %.0.i221.us = tail call i32 @llvm.umin.i32(i32 %11, i32 255)
  %i.nk = trunc nuw i32 %.0.i221.us to i8
  %i.nl = sext i32 %.6185267.us to i64
  %i.nm = getelementptr inbounds i8, ptr %.6194271, i64 %i.nl
  store i8 %i.nk, ptr %i.nm, align 1, !tbaa !53
  %i.nn = load i32, ptr %i.am, align 4, !tbaa !60
  %i.no = add nsw i32 %i.nn, %.6185267.us         ; 2 uses
  %i.np = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.nq = ashr i32 %i.np, 2
  %i.nr = icmp slt i32 %i.no, %i.nq
  br i1 %i.nr, label %.lr.ph269.split.us, label %._crit_edge270, !llvm.loop !43

.lr.ph269.split:                                  ; preds = %.lr.ph269, %.lr.ph269.split
  %.0268 = phi i32 [ %i.ol, %.lr.ph269.split ], [ 0, %.lr.ph269 ]
  %.6185267 = phi i32 [ %i.ox, %.lr.ph269.split ], [ 0, %.lr.ph269 ] ; 3 uses
  %i.ns = load i32, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.nt = load i32, ptr %i.bu, align 8, !tbaa !66 ; 3 uses
  %i.nu = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.nv = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.nw = lshr i32 %i.nt, 3
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 1, !tbaa !53
  %i.oa = and i32 %i.nt, 7
  %i.ob = lshr i32 %i.nz, %i.oa
  %i.oc = sub i32 32, %i.ns
  %i.od = lshr i32 -1, %i.oc
  %i.oe = and i32 %i.ob, %i.od
  %i.of = add i32 %i.nt, %i.ns
  %i.og = tail call i32 @llvm.umin.i32(i32 %i.nu, i32 %i.of)
  store i32 %i.og, ptr %i.bu, align 8, !tbaa !66
  %i.oh = zext i32 %i.oe to i64
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.mp, i64 %i.oh
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !70
  %i.ok = sext i16 %i.oj to i32
  %i.ol = add nsw i32 %.0268, %i.ok               ; 2 uses
  %i.om = load i32, ptr %i.mm, align 8, !tbaa !71
  %i.on = sub nsw i32 %.6185267, %i.om
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds i8, ptr %.6194271, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !53
  %i.or = zext i8 %i.oq to i32
  %i.os = add nsw i32 %i.ol, %i.or
  %12 = tail call i32 @llvm.smax.i32(i32 %i.os, i32 0)
  %.0.i221 = tail call i32 @llvm.umin.i32(i32 %12, i32 255)
  %i.ot = trunc nuw i32 %.0.i221 to i8
  %i.ou = sext i32 %.6185267 to i64
  %i.ov = getelementptr inbounds i8, ptr %.6194271, i64 %i.ou
  store i8 %i.ot, ptr %i.ov, align 1, !tbaa !53
  %i.ow = load i32, ptr %i.am, align 4, !tbaa !60
  %i.ox = add nsw i32 %i.ow, %.6185267            ; 2 uses
  %i.oy = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.oz = ashr i32 %i.oy, 2
  %i.pa = icmp slt i32 %i.ox, %i.oz
  br i1 %i.pa, label %.lr.ph269.split, label %._crit_edge270, !llvm.loop !43

._crit_edge270:                                   ; preds = %.lr.ph269.split, %.lr.ph269.split.us, %.preheader222
  %i.pb = phi i32 [ %i.np, %.lr.ph269.split.us ], [ %i.mn, %.preheader222 ], [ %i.oy, %.lr.ph269.split ]
  %i.pc = load i32, ptr %i.mm, align 8, !tbaa !71
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds i8, ptr %.6194271, i64 %i.pd
  %i.pf = add nuw nsw i32 %.6273, 1               ; 2 uses
  %i.pg = load i32, ptr %i.bc, align 4, !tbaa !62 ; 2 uses
  %i.ph = ashr i32 %i.pg, 2
  %i.pi = icmp slt i32 %i.pf, %i.ph
  br i1 %i.pi, label %.preheader222, label %._crit_edge274, !llvm.loop !44

._crit_edge274:                                   ; preds = %._crit_edge270, %._crit_edge266.thread, %._crit_edge266
  %i.pj = phi ptr [ %i.mg, %._crit_edge266.thread ], [ %i.mh, %._crit_edge266 ], [ %i.mh, %._crit_edge270 ] ; 2 uses
  %i.pk = phi i32 [ %.ph357, %._crit_edge266.thread ], [ %i.ly, %._crit_edge266 ], [ %i.pg, %._crit_edge270 ] ; 3 uses
  %i.pl = load i32, ptr %i.am, align 4, !tbaa !60
  %i.pm = icmp sgt i32 %i.pl, 1
  br i1 %i.pm, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge274
  %i.pn = icmp sgt i32 %i.pk, 3
  br i1 %i.pn, label %.preheader221.lr.ph, label %._crit_edge285

.preheader221.lr.ph:                              ; preds = %bb.n
  %i.po = load ptr, ptr %i.pj, align 8, !tbaa !67
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre306 = load i32, ptr %i.aw, align 8, !tbaa !61
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.lr.ph, %._crit_edge277
  %i.pq = phi i32 [ %i.pk, %.preheader221.lr.ph ], [ %i.qc, %._crit_edge277 ]
  %i.pr = phi i32 [ %.pre306, %.preheader221.lr.ph ], [ %i.qd, %._crit_edge277 ] ; 2 uses
  %.7279 = phi i32 [ 0, %.preheader221.lr.ph ], [ %i.qh, %._crit_edge277 ]
  %.7195278 = phi ptr [ %i.po, %.preheader221.lr.ph ], [ %i.qg, %._crit_edge277 ] ; 2 uses
  %i.ps = icmp sgt i32 %i.pr, 7
  br i1 %i.ps, label %.lr.ph276, label %._crit_edge277

.lr.ph276:                                        ; preds = %.preheader221, %.lr.ph276
  %.7186275 = phi i32 [ %i.py, %.lr.ph276 ], [ 1, %.preheader221 ] ; 2 uses
  %i.pt = sext i32 %.7186275 to i64
  %i.pu = getelementptr i8, ptr %.7195278, i64 %i.pt ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 -1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !53
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !53
  %i.px = load i32, ptr %i.am, align 4, !tbaa !60
  %i.py = add nsw i32 %i.px, %.7186275            ; 2 uses
  %i.pz = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.qa = ashr i32 %i.pz, 2
  %i.qb = icmp slt i32 %i.py, %i.qa
  br i1 %i.qb, label %.lr.ph276, label %._crit_edge277.loopexit, !llvm.loop !45

._crit_edge277.loopexit:                          ; preds = %.lr.ph276
  %.pre307 = load i32, ptr %i.bc, align 4, !tbaa !62
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %._crit_edge277.loopexit, %.preheader221
  %i.qc = phi i32 [ %.pre307, %._crit_edge277.loopexit ], [ %i.pq, %.preheader221 ] ; 3 uses
  %i.qd = phi i32 [ %i.pz, %._crit_edge277.loopexit ], [ %i.pr, %.preheader221 ]
  %i.qe = load i32, ptr %i.pp, align 8, !tbaa !71
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds i8, ptr %.7195278, i64 %i.qf
  %i.qh = add nuw nsw i32 %.7279, 1               ; 2 uses
  %i.qi = ashr i32 %i.qc, 2
  %i.qj = icmp slt i32 %i.qh, %i.qi
  br i1 %i.qj, label %.preheader221, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %._crit_edge277, %._crit_edge274
  %i.qk = phi i32 [ %i.pk, %._crit_edge274 ], [ %i.qc, %._crit_edge277 ] ; 2 uses
  %i.ql = icmp sgt i32 %i.qk, 3
  br i1 %i.ql, label %.preheader.lr.ph, label %._crit_edge285

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.qm = load ptr, ptr %i.pj, align 8, !tbaa !67
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre308 = load i32, ptr %i.aw, align 8, !tbaa !61
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge282
  %i.qo = phi i32 [ %i.qk, %.preheader.lr.ph ], [ %i.qz, %._crit_edge282 ]
  %i.qp = phi i32 [ %.pre308, %.preheader.lr.ph ], [ %i.ra, %._crit_edge282 ] ; 2 uses
  %.8284 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.re, %._crit_edge282 ]
  %.8196283 = phi ptr [ %i.qm, %.preheader.lr.ph ], [ %i.rd, %._crit_edge282 ] ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, 3
  br i1 %i.qq, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %.preheader, %.lr.ph281
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.lr.ph281 ], [ 0, %.preheader ] ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.8196283, i64 %indvars.iv296 ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !53  ; 2 uses
  %.lhs.trunc219 = xor i8 %i.qs, -128
  %i.qt = sdiv i8 %.lhs.trunc219, 8
  %i.qu = add i8 %i.qt, %i.qs
  store i8 %i.qu, ptr %i.qr, align 1, !tbaa !53
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.qv = load i32, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.qw = ashr i32 %i.qv, 2
  %i.qx = sext i32 %i.qw to i64
  %i.qy = icmp slt i64 %indvars.iv.next297, %i.qx
  br i1 %i.qy, label %.lr.ph281, label %._crit_edge282.loopexit, !llvm.loop !47

._crit_edge282.loopexit:                          ; preds = %.lr.ph281
  %.pre309 = load i32, ptr %i.bc, align 4, !tbaa !62
  br label %._crit_edge282

._crit_edge282:                                   ; preds = %._crit_edge282.loopexit, %.preheader
  %i.qz = phi i32 [ %.pre309, %._crit_edge282.loopexit ], [ %i.qo, %.preheader ] ; 2 uses
  %i.ra = phi i32 [ %i.qv, %._crit_edge282.loopexit ], [ %i.qp, %.preheader ]
  %i.rb = load i32, ptr %i.qn, align 8, !tbaa !71
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %.8196283, i64 %i.rc
  %i.re = add nuw nsw i32 %.8284, 1               ; 2 uses
  %i.rf = ashr i32 %i.qz, 2
  %i.rg = icmp slt i32 %i.re, %i.rf
  br i1 %i.rg, label %.preheader, label %._crit_edge285, !llvm.loop !48

._crit_edge285:                                   ; preds = %._crit_edge282, %bb.n, %.loopexit
  store i32 1, ptr %2, align 4, !tbaa !71
  %i.rh = load i32, ptr %i.e, align 8, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %truemotion2rt_decode_header.exit.thread, %bb.j, %bb.i, %bb.h, %._crit_edge285
  %.0197 = phi i32 [ %i.rh, %._crit_edge285 ], [ %.035.i.ph, %truemotion2rt_decode_header.exit.thread ], [ -1094995529, %bb.h ], [ -1094995529, %bb.i ], [ %i.bv, %bb.j ]
  ret i32 %.0197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !6, i64 136}
!29 = distinct !{!29, !54, !55, !56}
!30 = distinct !{!30, !54, !56, !55}
!31 = distinct !{!31, !54}
!32 = distinct !{!32, !54, !72}
!33 = distinct !{!33, !54}
!34 = distinct !{!34, !54, !72}
!35 = distinct !{!35, !54}
!36 = distinct !{!36, !54, !72}
!37 = distinct !{!37, !54}
!38 = distinct !{!38, !54}
!39 = distinct !{!39, !54}
!40 = distinct !{!40, !54}
!41 = distinct !{!41, !54}
!42 = distinct !{!42, !54}
!43 = distinct !{!43, !54}
!44 = distinct !{!44, !54}
!45 = distinct !{!45, !54}
!46 = distinct !{!46, !54}
!47 = distinct !{!47, !54}
!48 = distinct !{!48, !54}
!49 = !{!27, !9, i64 32}
!50 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!51 = !{!50, !14, i64 24}
!52 = !{!50, !6, i64 32}
!53 = !{!5, !5, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!58 = !{!"TrueMotion2RTContext", !57, i64 0, !6, i64 24, !6, i64 28}
!59 = !{!58, !6, i64 24}
!60 = !{!58, !6, i64 28}
!61 = !{!27, !6, i64 112}
!62 = !{!27, !6, i64 116}
!63 = !{!57, !14, i64 0}
!64 = !{!57, !6, i64 12}
!65 = !{!57, !6, i64 16}
!66 = !{!57, !6, i64 8}
!67 = !{!14, !14, i64 0}
!68 = !{!17, !17, i64 0}
!69 = !{!"short", !5, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!6, !6, i64 0}
!72 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
