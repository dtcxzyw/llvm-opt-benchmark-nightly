inline.NumInlined: 31
inline.NumDeleted: 19
begin_hunk_0_@adjust_exif_parameters:bb.a
  %i.y = getelementptr i8, ptr %0, i64 4
  %i.z = load i16, ptr %i.y, align 1              ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = add i32 %1, -2                          ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %i.aa
  br i1 %i.ac, label %.thread, label %bb.o

.thread197:                                       ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj            ; 3 uses
  %i.al = add i32 %1, -2                          ; 2 uses
  %i.am = icmp ugt i32 %i.ak, %i.al
  br i1 %i.am, label %.thread, label %bb.n

bb.n:                                             ; preds = %.thread197
  %i.an = zext nneg i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aq = zext i16 %i.z to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink273.in = phi ptr [ %i.ar, %bb.o ], [ %i.ap, %bb.n ]
  %.sink.in.in.in = phi ptr [ %i.as, %bb.o ], [ %i.ao, %bb.n ]
  %.not191195200207 = phi i1 [ true, %bb.o ], [ false, %bb.n ] ; 2 uses
  %.0164201205 = phi i32 [ %i.aa, %bb.o ], [ %i.ak, %bb.n ]
  %i.at = phi i32 [ %i.ab, %bb.o ], [ %i.al, %bb.n ] ; 2 uses
  %.sink.in.in = load i8, ptr %.sink.in.in.in, align 1, !tbaa !20
  %.sink.in = zext i8 %.sink.in.in to i32
  %.sink = shl nuw nsw i32 %.sink.in, 8
  %.sink273 = load i8, ptr %.sink273.in, align 1, !tbaa !20
  %i.au = zext i8 %.sink273 to i32
  %i.av = or disjoint i32 %.sink, %i.au           ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nuw nsw i32 %.0164201205, 2         ; 2 uses
  %i.ay = add i32 %1, -12                         ; 3 uses
  %i.az = icmp ugt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ba = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.bb = zext i32 %i.ay to i64                   ; 2 uses
  br i1 %.not191195200207, label %.lr.ph.split.us, label %.thread209

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.r
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %bb.r ], [ %i.ba, %.lr.ph ] ; 7 uses
  %.1169232.us = phi i32 [ %i.bm, %bb.r ], [ %i.av, %.lr.ph ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv246
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv246
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj
  %i.bl = icmp eq i32 %i.bk, 34665
  br i1 %i.bl, label %.split.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us
  %i.bm = add nsw i32 %.1169232.us, -1            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 12 ; 2 uses
  %i.bo = icmp samesign ugt i64 %indvars.iv.next247, %i.bb
  %or.cond = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond, label %.thread, label %.lr.ph.split.us

.thread209:                                       ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ %i.ba, %.lr.ph ] ; 7 uses
  %.1169232 = phi i32 [ %i.bz, %bb.s ], [ %i.av, %.lr.ph ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bw = zext i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bs, %i.bw
  %i.by = icmp eq i32 %i.bx, 34665
  br i1 %i.by, label %.thread211, label %bb.s

bb.s:                                             ; preds = %.thread209
  %i.bz = add nsw i32 %.1169232, -1               ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 12 ; 2 uses
  %i.cb = icmp samesign ugt i64 %indvars.iv.next, %i.bb
  %or.cond239 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond239, label %.thread, label %.thread209

.thread211:                                       ; preds = %.thread209
  %i.cc = add nuw i64 %indvars.iv, 8
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !20
  %.not186 = icmp eq i8 %i.cf, 0
  br i1 %.not186, label %bb.t, label %.thread

bb.t:                                             ; preds = %.thread211
  %i.cg = add nuw i64 %indvars.iv, 9
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20
  %.not187 = icmp eq i8 %i.cj, 0
  br i1 %.not187, label %.thread212, label %.thread

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.ck = add nuw i64 %indvars.iv246, 11
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20
  %.not184 = icmp eq i8 %i.cn, 0
  br i1 %.not184, label %bb.u, label %.thread

bb.u:                                             ; preds = %.split.us
  %i.co = add nuw i64 %indvars.iv246, 10
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20
  %.not185 = icmp eq i8 %i.cr, 0
  br i1 %.not185, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cs = add nuw i64 %indvars.iv246, 9
  %i.ct = and i64 %i.cs, 4294967295
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !20
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 8
  %i.cy = add nuw i64 %indvars.iv246, 8
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dc = zext i8 %i.db to i32
  %i.dd = or disjoint i32 %i.cx, %i.dc            ; 3 uses
  %i.de = icmp ugt i32 %i.dd, %i.at
  br i1 %i.de, label %.thread, label %bb.w

.thread212:                                       ; preds = %bb.t
  %i.df = add nuw i64 %indvars.iv, 10
  %i.dg = and i64 %i.df, 4294967295
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = add nuw i64 %indvars.iv, 11
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !20
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dk, %i.dp            ; 3 uses
  %i.dr = icmp ugt i32 %i.dq, %i.at
  br i1 %i.dr, label %.thread, label %.thread215

.thread215:                                       ; preds = %.thread212
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = zext nneg i32 %i.dd to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread215
  %.sink276.in = phi ptr [ %i.dw, %bb.w ], [ %i.du, %.thread215 ]
  %.sink274.in.in.in = phi ptr [ %i.dx, %bb.w ], [ %i.dt, %.thread215 ]
  %.0163214217 = phi i32 [ %i.dd, %bb.w ], [ %i.dq, %.thread215 ]
  %.sink274.in.in = load i8, ptr %.sink274.in.in.in, align 1, !tbaa !20
  %.sink274.in = zext i8 %.sink274.in.in to i32
  %.sink274 = shl nuw nsw i32 %.sink274.in, 8
  %.sink276 = load i8, ptr %.sink276.in, align 1, !tbaa !20
  %i.dy = zext i8 %.sink276 to i32
  %i.dz = or disjoint i32 %.sink274, %i.dy        ; 3 uses
  %i.ea = icmp samesign ult i32 %i.dz, 2
  br i1 %i.ea, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = zext nneg i32 %.0163214217 to i64
  %i.ec = add nuw nsw i64 %i.eb, 2                ; 2 uses
  %i.ed = zext i32 %i.ay to i64                   ; 2 uses
  br i1 %.not191195200207, label %.split.us236, label %.split

.split.us236:                                     ; preds = %bb.y, %bb.ab
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %bb.ab ], [ %i.ec, %bb.y ] ; 11 uses
  %.3.us = phi i32 [ %i.fd, %bb.ab ], [ %i.dz, %bb.y ]
  %i.ee = icmp samesign ugt i64 %indvars.iv252, %i.ed
  br i1 %i.ee, label %.thread, label %bb.z

bb.z:                                             ; preds = %.split.us236
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !20
  %i.em = zext i8 %i.el to i32
  %i.en = or disjoint i32 %i.ej, %i.em            ; 2 uses
  %i.eo = and i32 %i.en, 65534
  %or.cond.us = icmp eq i32 %i.eo, 40962
  br i1 %or.cond.us, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = icmp eq i32 %i.en, 40962
  %..us = select i1 %i.ep, i32 %2, i32 %3         ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 2
  store <4 x i8> <i8 4, i8 0, i8 1, i8 0>, ptr %5, align 1, !tbaa !20
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i8 0, ptr %7, align 1, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 7
  store i8 0, ptr %i.er, align 1, !tbaa !20
  %i.es = trunc i32 %..us to i8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !20
  %i.ev = lshr i32 %..us, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 9
  store i8 %i.ew, ptr %i.ey, align 1, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 10
  store i8 0, ptr %i.fa, align 1, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv252
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 11
  store i8 0, ptr %i.fc, align 1, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 12
  %i.fd = add nsw i32 %.3.us, -1                  ; 2 uses
  %.not188.us = icmp eq i32 %i.fd, 0
  br i1 %.not188.us, label %.thread, label %.split.us236, !llvm.loop !142

.split:                                           ; preds = %bb.y, %bb.ad
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %bb.ad ], [ %i.ec, %bb.y ] ; 7 uses
  %.3 = phi i32 [ %i.fz, %bb.ad ], [ %i.dz, %bb.y ]
  %i.fe = icmp samesign ugt i64 %indvars.iv249, %i.ed
  br i1 %i.fe, label %.thread, label %.thread219

.thread219:                                       ; preds = %.split
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv249
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw nsw i32 %i.fh, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv249
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !20
  %i.fm = zext i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fi, %i.fm            ; 2 uses
  %i.fo = and i32 %i.fn, 65534
  %or.cond221 = icmp eq i32 %i.fo, 40962
  br i1 %or.cond221, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread219
  %i.fp = icmp eq i32 %i.fn, 40962
  %.225 = select i1 %i.fp, i32 %2, i32 %3         ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv249
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store <8 x i8> <i8 0, i8 4, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0>, ptr %i.fr, align 1, !tbaa !20
  %i.fs = lshr i32 %.225, 8
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv249
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 10
  store i8 %i.ft, ptr %i.fv, align 1, !tbaa !20
  %i.fw = trunc i32 %.225 to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv249
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 11
  store i8 %i.fw, ptr %i.fy, align 1, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %.thread219, %bb.ac
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 12
  %i.fz = add nsw i32 %.3, -1                     ; 2 uses
  %.not188 = icmp eq i32 %i.fz, 0
  br i1 %.not188, label %.thread, label %.split, !llvm.loop !142

.thread:                                          ; preds = %bb.s, %bb.r, %.split, %bb.ad, %bb.ab, %.split.us236, %bb.q, %bb.b, %bb.c, %.thread212, %.thread197, %bb.x, %bb.v, %bb.u, %.split.us, %bb.t, %.thread211, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jtransform_execute_transform(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly captures(none) %2, ptr noundef readonly %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 11 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !51
  switch i32 %i.c, label %do_crop_ext_zero.exit [
    i32 0, label %bb.b
    i32 1, label %bb.v
    i32 2, label %bb.ad
    i32 3, label %bb.ah
    i32 4, label %bb.al
    i32 5, label %bb.aq
    i32 6, label %bb.av
    i32 7, label %bb.bc
    i32 8, label %bb.bf
    i32 9, label %bb.bt
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = icmp ugt i32 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.l = load i32, ptr %i.k, align 4, !tbaa !53
  %i.m = icmp ugt i32 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  switch i32 %i.o, label %bb.g [
    i32 4, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !80
  tail call fastcc void @do_crop_ext_reflect(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %2, ptr noundef %i.b)
  br label %do_crop_ext_zero.exit

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.w = load i32, ptr %i.v, align 4, !tbaa !80
  tail call fastcc void @do_crop_ext_flat(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.u, i32 noundef %i.w, ptr noundef %2, ptr noundef %i.b)
  br label %do_crop_ext_zero.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !143
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !144
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = udiv i32 %i.g, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !103 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph102.i, label %do_crop_ext_zero.exit

.lr.ph102.i:                                      ; preds = %bb.g
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.an = load i32, ptr %i.am, align 8, !tbaa !145
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !146
  %i.aq = mul nsw i32 %i.ap, %i.an
  %i.ar = udiv i32 %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.av = add i32 %i.ar, %i.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph102.i
  %i.ax = phi i32 [ %i.aj, %.lr.ph102.i ], [ %i.eg, %._crit_edge.i ]
  %indvars.iv110.i = phi i64 [ 0, %.lr.ph102.i ], [ %indvars.iv.next111.i, %._crit_edge.i ] ; 4 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %indvars.iv110.i ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !75 ; 2 uses
  %i.bc = mul i32 %i.bb, %i.ag                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 7 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !77 ; 3 uses
  %i.bf = mul i32 %i.be, %i.aa                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !116
  %.not104.i = icmp eq i32 %i.bh, 0
  br i1 %.not104.i, label %._crit_edge.i, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.h
  %i.bi = mul i32 %i.bb, %i.y                     ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv110.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv110.i ; 2 uses
  %i.bl = mul i32 %i.be, %i.av
  %i.bm = zext i32 %i.bi to i64                   ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 28 ; 3 uses
  %.not92.i = icmp eq i32 %i.bi, 0
  %i.bo = shl nuw nsw i64 %i.bm, 7
  %i.bp = add i32 %i.bi, %i.bc                    ; 2 uses
  %i.bq = zext i32 %i.bc to i64
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.lr.ph99.i
  %i.br = phi i32 [ %i.be, %.lr.ph99.i ], [ %i.ec, %.loopexit.i ]
  %.097.i = phi i32 [ 0, %.lr.ph99.i ], [ %i.ed, %.loopexit.i ] ; 6 uses
  %i.bs = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !117
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bw = tail call ptr %i.bu(ptr noundef %0, ptr noundef %i.bv, i32 noundef %.097.i, i32 noundef %i.br, i32 noundef 1) #9, !inline_history !147 ; 4 uses
  %i.bx = load i32, ptr %i.au, align 4, !tbaa !140
  %i.by = load i32, ptr %i.ah, align 4, !tbaa !53
end_hunk_0
