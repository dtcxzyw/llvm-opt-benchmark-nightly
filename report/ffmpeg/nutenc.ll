inline.NumInlined: 118
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 27
begin_hunk_0_@nut_write_header:bb.a
  %.sroa.0.12.6.i = phi i32 [ %i.cp, %bb.p ], [ %.sroa.0.12.5.i, %.critedge.5.i ] ; 3 uses
  %i.co = srem i32 %.sroa.0.12.6.i, 13
  %i.cp = sdiv i32 %.sroa.0.12.6.i, 13            ; 3 uses
  %i.cq = icmp eq i32 %i.co, 0
  br i1 %i.cq, label %bb.p, label %.critedge.6.i

bb.p:                                             ; preds = %.lr.ph.6.i
  %i.cr = sdiv i32 %.val101, %i.cp
  %i.cs = icmp slt i32 %i.cr, 48000
  br i1 %i.cs, label %.lr.ph.6.i, label %.critedge.6.i, !llvm.loop !58

.critedge.6.i:                                    ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %.lr.ph.6.i, %.critedge.5.i, %.critedge.4.i, %.critedge.3.i, %.critedge.2.i, %.critedge.1.i, %.critedge.i, %bb.i
  %.sroa.0.1.lcssa.6.i = phi i32 [ %.sroa.0.12.5.i, %.critedge.5.i ], [ %.sroa.0.12.6.i, %.lr.ph.6.i ], [ %.val, %bb.i ], [ %i.cj, %bb.o ], [ %.sroa.0.12.4.i, %.critedge.4.i ], [ %i.cd, %bb.n ], [ %.sroa.0.12.3.i, %.critedge.3.i ], [ %i.bx, %bb.m ], [ %.sroa.0.12.2.i, %.critedge.2.i ], [ %i.br, %bb.l ], [ %.sroa.0.12.1.i, %.critedge.1.i ], [ %i.bl, %bb.k ], [ %.sroa.0.12.i, %.critedge.i ], [ %i.cp, %bb.p ], [ %i.bg, %bb.j ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.critedge.6.i
  %.sroa.7.0.i = phi i32 [ %i.cx, %bb.q ], [ %.val101, %.critedge.6.i ] ; 5 uses
  %i.ct = sdiv i32 %.sroa.7.0.i, %.sroa.0.1.lcssa.6.i
  %i.cu = icmp slt i32 %i.ct, 48000
  %i.cv = icmp slt i32 %.sroa.7.0.i, 16777216
  %i.cw = and i1 %i.cv, %i.cu
  %i.cx = shl i32 %.sroa.7.0.i, 1
  br i1 %i.cw, label %bb.q, label %choose_timebase.exit, !llvm.loop !60

choose_timebase.exit:                             ; preds = %bb.q
  %.sroa.7.0.insert.ext.i = zext i32 %.sroa.7.0.i to i64
  %.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.1.lcssa.6.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %1, align 8
  br label %bb.r

bb.r:                                             ; preds = %choose_timebase.exit, %bb.h
  %i.cy = phi i32 [ %.sroa.7.0.i, %choose_timebase.exit ], [ %i.az, %bb.h ]
  %i.cz = phi i32 [ %.sroa.0.1.lcssa.6.i, %choose_timebase.exit ], [ 1, %bb.h ]
  call void @avpriv_set_pts_info(ptr noundef %i.at, i32 noundef 64, i32 noundef %i.cz, i32 noundef %i.cy) #12
  %i.da = load i32, ptr %i.am, align 4, !tbaa !42 ; 3 uses
  %.not151 = icmp eq i32 %i.da, 0
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  br i1 %.not151, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %wide.trip.count = zext i32 %i.da to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.dc = load i64, ptr %1, align 8
  %i.dd = load i64, ptr %i.db, align 1
  %i.de = icmp ne i64 %i.dc, %i.dd
  %i.df = zext i1 %i.de to i32
  %.not99 = icmp eq i32 %i.df, 0
  br i1 %.not99, label %._crit_edge.loopexit.split.loop.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !61

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.s
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %._crit_edge.loopexit.split.loop.exit, %bb.r
  %.087.lcssa = phi i32 [ 0, %bb.r ], [ %i.dg, %._crit_edge.loopexit.split.loop.exit ], [ %i.da, %bb.t ] ; 3 uses
  %i.dh = zext nneg i32 %.087.lcssa to i64        ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dh
  %i.dj = load i64, ptr %1, align 8
  store i64 %i.dj, ptr %i.di, align 4
  %i.dk = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dh
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %i.dm, i64 %indvars.iv181 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !62
  %i.dp = load i32, ptr %i.am, align 4, !tbaa !42
  %i.dq = icmp eq i32 %.087.lcssa, %i.dp
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.dr = add i32 %.087.lcssa, 1
  store i32 %i.dr, ptr %i.am, align 4, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %i.ds = load i32, ptr %1, align 8, !tbaa !65    ; 3 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul nsw i64 %i.dt, 1000
  %i.dv = load i32, ptr %i.al, align 4, !tbaa !66 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %.not100 = icmp slt i64 %i.du, %i.dw
  %spec.select = select i1 %.not100, i32 14, i32 7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store i32 %spec.select, ptr %i.dx, align 8, !tbaa !67
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dv, i32 %i.ds)
  %i.dz = sdiv i32 %i.dy, %i.ds
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.eb = load i32, ptr %i.r, align 4, !tbaa !37
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp samesign ult i64 %indvars.iv.next182, %i.ec
  br i1 %i.ed, label %bb.f, label %.preheader, !llvm.loop !69

bb.w:                                             ; preds = %.lr.ph148, %bb.aa
  %i.ee = phi ptr [ %i.an, %.lr.ph148 ], [ %i.et, %bb.aa ] ; 2 uses
  %i.ef = phi i32 [ %.pre192, %.lr.ph148 ], [ %i.fa, %bb.aa ] ; 3 uses
  %indvars.iv189 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next190, %bb.aa ] ; 3 uses
  %i.eg = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv189
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !71
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %.not153 = icmp eq i32 %i.ef, 0
  br i1 %.not153, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.w
  %wide.trip.count187 = zext i32 %i.ef to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph142, %bb.y
  %indvars.iv184 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next185, %bb.y ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv184
  %i.el = load i64, ptr %i.ej, align 1
  %i.em = load i64, ptr %i.ek, align 1
  %i.en = icmp ne i64 %i.el, %i.em
  %i.eo = zext i1 %i.en to i32
  %.not96 = icmp eq i32 %i.eo, 0
  br i1 %.not96, label %._crit_edge143.loopexit.split.loop.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge143, label %bb.x, !llvm.loop !73

._crit_edge143.loopexit.split.loop.exit:          ; preds = %bb.x
  %i.ep = trunc nuw nsw i64 %indvars.iv184 to i32
  br label %._crit_edge143

._crit_edge143:                                   ; preds = %bb.y, %._crit_edge143.loopexit.split.loop.exit, %bb.w
  %.188.lcssa = phi i32 [ 0, %bb.w ], [ %i.ep, %._crit_edge143.loopexit.split.loop.exit ], [ %i.ef, %bb.y ] ; 3 uses
  %i.eq = zext nneg i32 %.188.lcssa to i64        ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eq
  %i.es = load i64, ptr %i.ej, align 8
  store i64 %i.es, ptr %i.er, align 4
  %i.et = load ptr, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eq
  %i.ev = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv189
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !74
  %i.ex = load i32, ptr %i.aq, align 4, !tbaa !42 ; 2 uses
  %i.ey = icmp eq i32 %.188.lcssa, %i.ex
  br i1 %i.ey, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge143
  %i.ez = add i32 %.188.lcssa, 1                  ; 2 uses
  store i32 %i.ez, ptr %i.aq, align 4, !tbaa !42
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge143
  %i.fa = phi i32 [ %i.ez, %bb.z ], [ %i.ex, %._crit_edge143 ]
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.fb = load i32, ptr %i.w, align 8, !tbaa !39
  %i.fc = zext i32 %i.fb to i64
  %i.fd = icmp samesign ult i64 %indvars.iv.next190, %i.fc
  br i1 %i.fd, label %bb.w, label %._crit_edge149, !llvm.loop !76

._crit_edge149:                                   ; preds = %bb.aa, %.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 4264
  store i32 32767, ptr %i.fe, align 8, !tbaa !77
  %.val102 = load ptr, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val102, i64 4288 ; 2 uses
  store i32 7, ptr %i.ff, align 8, !tbaa !78
  %i.fg = getelementptr inbounds nuw i8, ptr %.val102, i64 3088
  %i.fh = getelementptr inbounds nuw i8, ptr %.val102, i64 3216
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %._crit_edge149
  %indvars.iv.i = phi i64 [ 1, %._crit_edge149 ], [ %indvars.iv.next.i, %bb.ab ] ; 4 uses
  %i.fi = getelementptr [5 x i8], ptr @build_elision_headers.headers, i64 %indvars.iv.i ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 -5
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv.i
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !79
  %i.fm = getelementptr i8, ptr %i.fi, i64 -4
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !80
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fo = load i32, ptr %i.ff, align 8, !tbaa !78
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next.i, %i.fp
  br i1 %i.fq, label %bb.ab, label %build_elision_headers.exit, !llvm.loop !81

build_elision_headers.exit:                       ; preds = %bb.ab
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !9   ; 11 uses
  %i.fs = load i32, ptr %i.r, align 4, !tbaa !37  ; 3 uses
  %i.ft = icmp ugt i32 %i.fs, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  store i16 4096, ptr %i.fv, align 2, !tbaa !82
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  store i16 1, ptr %i.fw, align 2, !tbaa !85
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 36
  store i16 1, ptr %i.fx, align 2, !tbaa !86
  br i1 %i.ft, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %build_elision_headers.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store i16 56, ptr %i.fy, align 2, !tbaa !82
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 44
  store i16 1, ptr %i.fz, align 2, !tbaa !85
  br label %.lr.ph230.i

bb.ac:                                            ; preds = %build_elision_headers.exit
  %.not231.i = icmp eq i32 %i.fs, 0
  br i1 %.not231.i, label %build_frame_code.exit, label %.lr.ph230.i

.lr.ph230.i:                                      ; preds = %bb.ac, %.thread.i
  %.0160280.i = phi i32 [ 3, %.thread.i ], [ 2, %bb.ac ] ; 3 uses
  %i.ga = sub nuw nsw i32 254, %.0160280.i        ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 4248
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.ad

.loopexit214.i:                                   ; preds = %.loopexit.i
  %i.gn = load i32, ptr %i.r, align 4, !tbaa !37  ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp samesign ult i64 %indvars.iv.next266.i, %i.go
  br i1 %i.gp, label %bb.ad, label %build_frame_code.exit, !llvm.loop !87

bb.ad:                                            ; preds = %.loopexit214.i, %.lr.ph230.i
  %.val.us.i196 = phi ptr [ %i.fr, %.lr.ph230.i ], [ %.val.us.i, %.loopexit214.i ]
  %indvars.iv265.i = phi i64 [ 0, %.lr.ph230.i ], [ %indvars.iv.next266.i, %.loopexit214.i ] ; 6 uses
  %i.gq = phi i32 [ %i.fs, %.lr.ph230.i ], [ %i.gn, %.loopexit214.i ] ; 2 uses
  %i.gr = trunc nuw i64 %indvars.iv265.i to i32
  %i.gs = mul i32 %i.ga, %i.gr
  %i.gt = udiv i32 %i.gs, %i.gq
  %i.gu = add nuw i32 %i.gt, %.0160280.i          ; 5 uses
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1 ; 3 uses
  %i.gv = trunc nuw i64 %indvars.iv.next266.i to i32
  %i.gw = mul i32 %i.ga, %i.gv
  %i.gx = udiv i32 %i.gw, %i.gq
  %i.gy = add nuw i32 %i.gx, %.0160280.i
  %i.gz = load ptr, ptr %i.gb, align 8, !tbaa !43
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv265.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !44 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !46 ; 10 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !53
  %i.hf = icmp eq i32 %i.he, 1                    ; 3 uses
  br i1 %i.hf, label %.split.us.preheader.i, label %.split222.us.thread.i

.split.us.preheader.i:                            ; preds = %bb.ad
  %i.hg = call i32 @av_get_audio_frame_duration2(ptr noundef nonnull %i.hd, i32 noundef 0) #12 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 6 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !88 ; 5 uses
  %i.hj = icmp ne i32 %i.hi, 86021
  %i.hk = icmp ne i32 %i.hg, 0
  %or.cond.i = select i1 %i.hj, i1 true, i1 %i.hk
  %i.hl = call i32 @llvm.umax.i32(i32 %i.hg, i32 1)
  %spec.store.select283.i = select i1 %or.cond.i, i32 %i.hl, i32 64 ; 2 uses
  %i.hm = trunc i64 %indvars.iv265.i to i8        ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 152 ; 3 uses
  %.val173.us.1.i.pre = load ptr, ptr %i.f, align 8, !tbaa !9 ; 7 uses
  %.pre193 = load i32, ptr %i.hn, align 8, !tbaa !56 ; 3 uses
  br i1 %i.ft, label %.split.us.1.i, label %bb.ae

bb.ae:                                            ; preds = %.split.us.preheader.i
  %i.ho = sext i32 %i.gu to i64
  %i.hp = getelementptr inbounds [12 x i8], ptr %i.fu, i64 %i.ho ; 4 uses
  store i16 40, ptr %i.hp, align 2, !tbaa !82
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  store i8 %i.hm, ptr %i.hq, align 2, !tbaa !89
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store i16 1, ptr %i.hr, align 2, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i8 1, ptr %i.gd, align 2, !tbaa !79
  store i8 0, ptr %i.ge, align 1, !tbaa !79
  store i8 0, ptr %i.c, align 16, !tbaa !79
  switch i32 %i.hi, label %bb.ah [
    i32 12, label %bb.ag
    i32 1, label %find_expected_header.exit.i.us.i
    i32 2, label %find_expected_header.exit.i.us.i
    i32 27, label %find_expected_header.exit.i.us.i
    i32 86017, label %bb.af
    i32 86016, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.hs = icmp eq i32 %i.hi, 86017
  %.neg4.i.us.i = select i1 %i.hs, i32 -393216, i32 -262144
  %i.ht = icmp slt i32 %.pre193, 28000
  %reass.sub.i.i.us.i = select i1 %i.ht, i32 -458752, i32 65536
  %i.hu = add nsw i32 %reass.sub.i.i.us.i, %.neg4.i.us.i
  %i.hv = call i32 @llvm.bswap.i32(i32 %i.hu)
  store i32 %i.hv, ptr %i.c, align 16, !tbaa !79
  br label %find_expected_header.exit.i.us.i

bb.ag:                                            ; preds = %bb.ae
  store i8 -74, ptr %i.gf, align 1, !tbaa !79
  br label %find_expected_header.exit.i.us.i

bb.ah:                                            ; preds = %bb.ae
  br label %find_expected_header.exit.i.us.i

find_expected_header.exit.i.us.i:                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ae, %bb.ae
  %.1.i.i.us.i = phi i32 [ 0, %bb.ah ], [ 3, %bb.ae ], [ 4, %bb.ag ], [ 3, %bb.ae ], [ 3, %bb.ae ], [ 2, %bb.af ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val173.us.1.i.pre, i64 3216
  %i.hx = getelementptr inbounds nuw i8, ptr %.val173.us.1.i.pre, i64 4288
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !78 ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 1
  br i1 %i.hz, label %.lr.ph.i.us.i, label %find_header_idx.exit.us.i

.lr.ph.i.us.i:                                    ; preds = %find_expected_header.exit.i.us.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.val173.us.1.i.pre, i64 3088
  %i.ib = zext nneg i32 %.1.i.i.us.i to i64
  %wide.trip.count.i.us.i = zext nneg i32 %i.hy to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 1, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.ak ] ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv.i.us.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !79
  %i.ie = zext i8 %i.id to i32
  %i.if = icmp eq i32 %.1.i.i.us.i, %i.ie
  br i1 %i.if, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.i.us.i
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !80
  %bcmp.i.us.i = call i32 @bcmp(ptr nonnull %i.c, ptr %i.ih, i64 %i.ib)
  %.not.i.us.i = icmp eq i32 %bcmp.i.us.i, 0
  br i1 %.not.i.us.i, label %._crit_edge.loopexit.split.loop.exit11.i.us.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.i, label %find_header_idx.exit.us.i, label %bb.ai, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit11.i.us.i:    ; preds = %bb.aj
  %i.ii = trunc i64 %indvars.iv.i.us.i to i8
  br label %find_header_idx.exit.us.i

find_header_idx.exit.us.i:                        ; preds = %bb.ak, %._crit_edge.loopexit.split.loop.exit11.i.us.i, %find_expected_header.exit.i.us.i
  %.0.i.us.i = phi i8 [ 0, %find_expected_header.exit.i.us.i ], [ %i.ii, %._crit_edge.loopexit.split.loop.exit11.i.us.i ], [ 0, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 11
  store i8 %.0.i.us.i, ptr %i.ij, align 1, !tbaa !91
  %i.ik = add nsw i32 %i.gu, 1
  br label %.split.us.1.i

.split.us.1.i:                                    ; preds = %find_header_idx.exit.us.i, %.split.us.preheader.i
  %.1162.us.i = phi i32 [ %i.ik, %find_header_idx.exit.us.i ], [ %i.gu, %.split.us.preheader.i ] ; 3 uses
  %i.il = sext i32 %.1162.us.i to i64
  %i.im = getelementptr [12 x i8], ptr %i.fu, i64 %i.il ; 16 uses
  store i16 41, ptr %i.im, align 2, !tbaa !82
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i8 %i.hm, ptr %i.in, align 2, !tbaa !89
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i16 1, ptr %i.io, align 2, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i8 1, ptr %i.gd, align 2, !tbaa !79
  store i8 0, ptr %i.ge, align 1, !tbaa !79
  store i8 0, ptr %i.c, align 16, !tbaa !79
  switch i32 %i.hi, label %bb.am [
    i32 12, label %find_expected_header.exit.i.us.1.i
    i32 1, label %find_expected_header.exit.i.us.1.i
    i32 2, label %find_expected_header.exit.i.us.1.i
    i32 27, label %find_expected_header.exit.i.us.1.i
    i32 86017, label %bb.al
    i32 86016, label %bb.al
  ]

bb.al:                                            ; preds = %.split.us.1.i, %.split.us.1.i
  %i.ip = icmp eq i32 %i.hi, 86017
  %.neg4.i.us.1.i = select i1 %i.ip, i32 -393216, i32 -262144
  %i.iq = icmp slt i32 %.pre193, 28000
  %reass.sub.i.i.us.1.i = select i1 %i.iq, i32 -458752, i32 65536
  %i.ir = add nsw i32 %reass.sub.i.i.us.1.i, %.neg4.i.us.1.i
  %i.is = call i32 @llvm.bswap.i32(i32 %i.ir)
  store i32 %i.is, ptr %i.c, align 16, !tbaa !79
  br label %find_expected_header.exit.i.us.1.i

bb.am:                                            ; preds = %.split.us.1.i
  br label %find_expected_header.exit.i.us.1.i

find_expected_header.exit.i.us.1.i:               ; preds = %bb.am, %bb.al, %.split.us.1.i, %.split.us.1.i, %.split.us.1.i, %.split.us.1.i
  %.1.i.i.us.1.i = phi i32 [ 0, %bb.am ], [ 3, %.split.us.1.i ], [ 3, %.split.us.1.i ], [ 2, %bb.al ], [ 3, %.split.us.1.i ], [ 3, %.split.us.1.i ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.val173.us.1.i.pre, i64 3216
  %i.iu = getelementptr inbounds nuw i8, ptr %.val173.us.1.i.pre, i64 4288
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !78 ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %.lr.ph.i.us.1.i, label %.split222.us.i

.lr.ph.i.us.1.i:                                  ; preds = %find_expected_header.exit.i.us.1.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.val173.us.1.i.pre, i64 3088
  %i.iy = zext nneg i32 %.1.i.i.us.1.i to i64
  %wide.trip.count.i.us.1.i = zext nneg i32 %i.iv to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i.us.1.i
  %indvars.iv.i.us.1.i = phi i64 [ 1, %.lr.ph.i.us.1.i ], [ %indvars.iv.next.i.us.1.i, %bb.ap ] ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %indvars.iv.i.us.1.i
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !79
  %i.jb = zext i8 %i.ja to i32
  %i.jc = icmp eq i32 %.1.i.i.us.1.i, %i.jb
  br i1 %i.jc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i.us.1.i
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !80
  %bcmp.i.us.1.i = call i32 @bcmp(ptr nonnull %i.c, ptr %i.je, i64 %i.iy)
  %.not.i.us.1.i = icmp eq i32 %bcmp.i.us.1.i, 0
  br i1 %.not.i.us.1.i, label %._crit_edge.loopexit.split.loop.exit11.i.us.1.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv.next.i.us.1.i = add nuw nsw i64 %indvars.iv.i.us.1.i, 1 ; 2 uses
  %exitcond.not.i.us.1.i = icmp eq i64 %indvars.iv.next.i.us.1.i, %wide.trip.count.i.us.1.i
  br i1 %exitcond.not.i.us.1.i, label %.split222.us.i, label %bb.an, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit11.i.us.1.i:  ; preds = %bb.ao
  %i.jf = trunc i64 %indvars.iv.i.us.1.i to i8
  br label %.split222.us.i

.split222.us.thread.i:                            ; preds = %bb.ad
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  %i.jh = load i64, ptr %i.jg, align 8            ; 2 uses
  %.sroa.01.0.insert.insert.i.i = call i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 32)
  %i.ji = load ptr, ptr %i.gc, align 8, !tbaa !38
  %i.jj = getelementptr inbounds nuw [56 x i8], ptr %i.ji, i64 %indvars.iv265.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !62
  %i.jm = load i64, ptr %i.jl, align 4
  %i.jn = call i64 @av_div_q(i64 %.sroa.01.0.insert.insert.i.i, i64 %i.jm) #13 ; 2 uses
  %.sroa.042.0.extract.trunc.i = trunc i64 %i.jn to i32
  %.sroa.5.0.extract.shift.mask.i = and i64 %i.jn, -4294967296
  %i.jo = icmp eq i64 %.sroa.5.0.extract.shift.mask.i, 4294967296
  %i.jp = call i32 @llvm.smax.i32(i32 %.sroa.042.0.extract.trunc.i, i32 1)
  %spec.store.select.i = select i1 %i.jo, i32 %i.jp, i32 1 ; 2 uses
  %i.jq = trunc i64 %indvars.iv265.i to i8        ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hd, i64 152
  %i.js = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.jt = sext i32 %i.gu to i64
  %i.ju = getelementptr [12 x i8], ptr %i.fu, i64 %i.jt ; 10 uses
  store i16 40, ptr %i.ju, align 2, !tbaa !82
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  store i8 %i.jq, ptr %i.jv, align 2, !tbaa !89
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  store i16 1, ptr %i.jw, align 2, !tbaa !85
  %i.jx = getelementptr i8, ptr %i.ju, i64 12
  store i16 41, ptr %i.jx, align 2, !tbaa !82
  %i.jy = getelementptr i8, ptr %i.ju, i64 14
  store i8 %i.jq, ptr %i.jy, align 2, !tbaa !89
  %i.jz = getelementptr i8, ptr %i.ju, i64 16
  store i16 1, ptr %i.jz, align 2, !tbaa !85
  %i.ka = add nsw i32 %i.gu, 3
  %i.kb = getelementptr i8, ptr %i.ju, i64 24
  store i16 33, ptr %i.kb, align 2, !tbaa !82
  %i.kc = getelementptr i8, ptr %i.ju, i64 26
  store i8 %i.jq, ptr %i.kc, align 2, !tbaa !89
  %i.kd = getelementptr i8, ptr %i.ju, i64 28
  store i16 1, ptr %i.kd, align 2, !tbaa !85
  %i.ke = trunc i32 %spec.store.select.i to i16
  %i.kf = getelementptr i8, ptr %i.ju, i64 32
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !86
  br label %.loopexit215.i

.split222.us.i:                                   ; preds = %bb.ap, %._crit_edge.loopexit.split.loop.exit11.i.us.1.i, %find_expected_header.exit.i.us.1.i
  %.0.i.us.1.i = phi i8 [ 0, %find_expected_header.exit.i.us.1.i ], [ %i.jf, %._crit_edge.loopexit.split.loop.exit11.i.us.1.i ], [ 0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.kg = getelementptr inbounds nuw i8, ptr %i.im, i64 11
  store i8 %.0.i.us.1.i, ptr %i.kg, align 1, !tbaa !91
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hd, i64 156
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !92 ; 2 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  br i1 %i.kj, label %.preheader.i, label %bb.aq

bb.aq:                                            ; preds = %.split222.us.i
  %i.kk = call i32 @av_get_audio_frame_duration2(ptr noundef nonnull %i.hd, i32 noundef 0) #12
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !93
  %i.ko = mul nsw i64 %i.kn, %i.kl
  %i.kp = load i32, ptr %i.hn, align 8, !tbaa !56 ; 2 uses
  %i.kq = shl nsw i32 %i.kp, 3
  %i.kr = sext i32 %i.kq to i64
  %i.ks = sdiv i64 %i.ko, %i.kr
  %i.kt = trunc i64 %i.ks to i32
  %.val172.i.pre = load ptr, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val172.i.pre, i64 4288
  %.pre195 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !78
  br label %.preheader.i

.preheader.i:                                     ; preds = %.split222.us.i, %bb.aq
  %i.ku = phi i32 [ %.pre195, %bb.aq ], [ %i.iv, %.split222.us.i ] ; 2 uses
  %.val172.i = phi ptr [ %.val172.i.pre, %bb.aq ], [ %.val173.us.1.i.pre, %.split222.us.i ] ; 3 uses
  %i.kv = phi i32 [ %i.kp, %bb.aq ], [ %.pre193, %.split222.us.i ] ; 3 uses
  %.0164.i = phi i32 [ %i.kt, %bb.aq ], [ %i.ki, %.split222.us.i ] ; 14 uses
  %i.kw = trunc i32 %.0164.i to i16               ; 3 uses
  %i.kx = add i16 %i.kw, 2                        ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.val172.i, i64 3216 ; 4 uses
  %i.kz = icmp sgt i32 %i.ku, 1                   ; 4 uses
  %i.la = icmp slt i32 %i.kv, 28000               ; 3 uses
  %i.lb = zext i1 %i.la to i32                    ; 5 uses
  %i.lc = icmp slt i32 %i.kv, 14000
  %i.ld = zext i1 %i.lc to i32
  %i.le = add nuw nsw i32 %i.lb, %i.ld            ; 5 uses
  %i.lf = shl i32 %i.kv, %i.le                    ; 2 uses
  %i.lg = icmp slt i32 %i.lf, 38050
  %i.lh = icmp sgt i32 %i.lf, 46049
  %..i.i175.i = zext i1 %i.lh to i64
  %.051.i.i176.i = select i1 %i.lg, i64 2, i64 %..i.i175.i
  %i.li = getelementptr inbounds nuw [2 x i8], ptr @ff_mpa_freq_tab, i64 %.051.i.i176.i ; 4 uses
  %i.lj = zext i1 %i.la to i64
  %i.lk = getelementptr inbounds nuw [90 x i8], ptr @ff_mpa_bitrate_tab, i64 %i.lj ; 4 uses
  %reass.sub.i.i179.i = select i1 %i.la, i32 -458752, i32 65536 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val172.i, i64 3088 ; 4 uses
  %wide.trip.count.i184.i = zext nneg i32 %i.ku to i64 ; 4 uses
  %i.lm = getelementptr i8, ptr %i.im, i64 12
  store i16 1, ptr %i.lm, align 2, !tbaa !82
  %i.ln = getelementptr i8, ptr %i.im, i64 14
  store i8 %i.hm, ptr %i.ln, align 2, !tbaa !89
  %i.lo = getelementptr i8, ptr %i.im, i64 16
  store i16 %i.kx, ptr %i.lo, align 2, !tbaa !85
  %i.lp = getelementptr i8, ptr %i.im, i64 18
  store i16 %i.kw, ptr %i.lp, align 2, !tbaa !94
  %i.lq = getelementptr i8, ptr %i.im, i64 20
  store i16 0, ptr %i.lq, align 2, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lr = icmp sgt i32 %.0164.i, 4096             ; 2 uses
  br i1 %i.lr, label %find_expected_header.exit.i180.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader.i
  store i8 1, ptr %i.gg, align 2, !tbaa !79
  store i8 0, ptr %i.gh, align 1, !tbaa !79
  store i8 0, ptr %i.b, align 16, !tbaa !79
  %i.ls = load i32, ptr %i.hh, align 4, !tbaa !88 ; 2 uses
  switch i32 %i.ls, label %bb.aw [
    i32 12, label %find_expected_header.exit.i180.i
    i32 1, label %find_expected_header.exit.i180.i
    i32 2, label %find_expected_header.exit.i180.i
    i32 27, label %find_expected_header.exit.i180.i
    i32 86017, label %bb.as
    i32 86016, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.lt = icmp eq i32 %i.ls, 86017                ; 2 uses
  %.neg4.i174.i = select i1 %i.lt, i32 -393216, i32 -262144
  %i.lu = select i1 %i.lt, i64 3, i64 2
  %i.lv = load i16, ptr %i.li, align 2, !tbaa !95
  %i.lw = zext i16 %i.lv to i32
  %i.lx = lshr i32 %i.lw, %i.le
  %i.ly = getelementptr [30 x i8], ptr %i.lk, i64 %i.lu
  %i.lz = getelementptr i8, ptr %i.ly, i64 -30
end_hunk_0
begin_hunk_1_@nut_write_header:bb.a
  %.05056.i.i177.i = phi i32 [ 2, %bb.as ], [ %i.mo, %bb.av ] ; 4 uses
  %i.mb = lshr exact i32 %.05056.i.i177.i, 1
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !95 ; 2 uses
  %i.mf = zext i16 %i.me to i32
  %i.mg = mul nuw nsw i32 %i.mf, 144000
  %i.mh = udiv i32 %i.mg, %i.ma
  %i.mi = icmp eq i32 %i.mh, %.0164.i
  br i1 %i.mi, label %.split.loop.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mj = zext i16 %i.me to i32
  %i.mk = mul nuw nsw i32 %i.mj, 144000
  %i.ml = udiv i32 %i.mk, %i.ma
  %i.mm = add nuw nsw i32 %i.ml, 1
  %i.mn = icmp eq i32 %i.mm, %.0164.i
  br i1 %i.mn, label %.split.loop.exit324, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mo = add nuw nsw i32 %.05056.i.i177.i, 2     ; 2 uses
  %exitcond.not.i.i178.i.1 = icmp eq i32 %i.mo, 30
  br i1 %exitcond.not.i.i178.i.1, label %.split.loop.exit, label %bb.at, !llvm.loop !96

.split.loop.exit324:                              ; preds = %bb.au
  %i.mp = or disjoint i32 %.05056.i.i177.i, 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.at, %bb.av, %.split.loop.exit324
  %.050.lcssa.i.i.i = phi i32 [ %i.mp, %.split.loop.exit324 ], [ 30, %bb.av ], [ %.05056.i.i177.i, %bb.at ]
  %i.mq = add nsw i32 %.neg4.i174.i, %reass.sub.i.i179.i
  %i.mr = call i32 @llvm.bswap.i32(i32 %i.mq)
  store i32 %i.mr, ptr %i.b, align 16, !tbaa !79
  %i.ms = icmp slt i32 %.0164.i, 1
  %i.mt = icmp ne i32 %.050.lcssa.i.i.i, 30
  %i.mu = or i1 %i.ms, %i.mt
  %.0.i.i.i = select i1 %i.mu, i32 2, i32 -1
  br label %find_expected_header.exit.i180.i

bb.aw:                                            ; preds = %bb.ar
  br label %find_expected_header.exit.i180.i

find_expected_header.exit.i180.i:                 ; preds = %bb.aw, %.split.loop.exit, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %.preheader.i
  %.1.i.i181.i = phi i32 [ 0, %bb.aw ], [ 0, %.preheader.i ], [ 3, %bb.ar ], [ 3, %bb.ar ], [ 3, %bb.ar ], [ %.0.i.i.i, %.split.loop.exit ], [ 3, %bb.ar ] ; 2 uses
  br i1 %i.kz, label %.lr.ph.i183.i, label %find_header_idx.exit192.i

.lr.ph.i183.i:                                    ; preds = %find_expected_header.exit.i180.i
  %i.mv = zext nneg i32 %.1.i.i181.i to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.lr.ph.i183.i
  %indvars.iv.i185.i = phi i64 [ 1, %.lr.ph.i183.i ], [ %indvars.iv.next.i186.i, %bb.az ] ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i185.i
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !79
  %i.my = zext i8 %i.mx to i32
  %i.mz = icmp eq i32 %.1.i.i181.i, %i.my
  br i1 %i.mz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i185.i
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !80
  %bcmp.i188.i = call i32 @bcmp(ptr nonnull %i.b, ptr %i.nb, i64 %i.mv)
  %.not.i189.i = icmp eq i32 %bcmp.i188.i, 0
  br i1 %.not.i189.i, label %._crit_edge.loopexit.split.loop.exit11.i190.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv.next.i186.i = add nuw nsw i64 %indvars.iv.i185.i, 1 ; 2 uses
  %exitcond.not.i187.i = icmp eq i64 %indvars.iv.next.i186.i, %wide.trip.count.i184.i
  br i1 %exitcond.not.i187.i, label %find_header_idx.exit192.i, label %bb.ax, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit11.i190.i:    ; preds = %bb.ay
  %i.nc = trunc i64 %indvars.iv.i185.i to i8
  br label %find_header_idx.exit192.i

find_header_idx.exit192.i:                        ; preds = %bb.az, %._crit_edge.loopexit.split.loop.exit11.i190.i, %find_expected_header.exit.i180.i
  %.0.i182.i = phi i8 [ 0, %find_expected_header.exit.i180.i ], [ %i.nc, %._crit_edge.loopexit.split.loop.exit11.i190.i ], [ 0, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.nd = getelementptr i8, ptr %i.im, i64 23
  store i8 %.0.i182.i, ptr %i.nd, align 1, !tbaa !91
  %i.ne = getelementptr i8, ptr %i.im, i64 24
  store i16 1, ptr %i.ne, align 2, !tbaa !82
  %i.nf = getelementptr i8, ptr %i.im, i64 26
  store i8 %i.hm, ptr %i.nf, align 2, !tbaa !89
  %i.ng = getelementptr i8, ptr %i.im, i64 28
  store i16 %i.kx, ptr %i.ng, align 2, !tbaa !85
  %i.nh = add nsw i32 %.0164.i, 1                 ; 3 uses
  %i.ni = trunc i32 %i.nh to i16                  ; 2 uses
  %i.nj = getelementptr i8, ptr %i.im, i64 30
  store i16 %i.ni, ptr %i.nj, align 2, !tbaa !94
  %i.nk = getelementptr i8, ptr %i.im, i64 32
  store i16 0, ptr %i.nk, align 2, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.nl = icmp sgt i32 %.0164.i, 4095             ; 2 uses
  br i1 %i.nl, label %find_expected_header.exit.i180.1.i, label %bb.ba

bb.ba:                                            ; preds = %find_header_idx.exit192.i
  store i8 1, ptr %i.gg, align 2, !tbaa !79
  store i8 0, ptr %i.gh, align 1, !tbaa !79
  store i8 0, ptr %i.b, align 16, !tbaa !79
  %i.nm = load i32, ptr %i.hh, align 4, !tbaa !88 ; 2 uses
  switch i32 %i.nm, label %bb.bf [
    i32 12, label %find_expected_header.exit.i180.1.i
    i32 1, label %find_expected_header.exit.i180.1.i
    i32 2, label %find_expected_header.exit.i180.1.i
    i32 27, label %find_expected_header.exit.i180.1.i
    i32 86017, label %bb.bb
    i32 86016, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.nn = icmp eq i32 %i.nm, 86017                ; 2 uses
  %.neg4.i174.1.i = select i1 %i.nn, i32 -393216, i32 -262144
  %i.no = select i1 %i.nn, i64 3, i64 2
  %i.np = load i16, ptr %i.li, align 2, !tbaa !95
  %i.nq = zext i16 %i.np to i32
  %i.nr = lshr i32 %i.nq, %i.le
  %i.ns = getelementptr [30 x i8], ptr %i.lk, i64 %i.no
  %i.nt = getelementptr i8, ptr %i.ns, i64 -30
  %i.nu = shl nuw nsw i32 %i.nr, %i.lb            ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %.05056.i.i177.1.i = phi i32 [ 2, %bb.bb ], [ %i.oh, %bb.be ] ; 4 uses
  %i.nv = lshr exact i32 %.05056.i.i177.1.i, 1
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !95 ; 2 uses
  %i.nz = zext i16 %i.ny to i32
  %i.oa = mul nuw nsw i32 %i.nz, 144000
  %i.ob = udiv i32 %i.oa, %i.nu
  %i.oc = icmp eq i32 %i.ob, %i.nh
  br i1 %i.oc, label %.split.loop.exit328, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.od = zext i16 %i.ny to i32
  %i.oe = mul nuw nsw i32 %i.od, 144000
  %i.of = udiv i32 %i.oe, %i.nu
  %i.og = icmp eq i32 %i.of, %.0164.i
  br i1 %i.og, label %.split.loop.exit329.a, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oh = add nuw nsw i32 %.05056.i.i177.1.i, 2   ; 2 uses
  %exitcond.not.i.i178.1.i.1 = icmp eq i32 %i.oh, 30
  br i1 %exitcond.not.i.i178.1.i.1, label %.split.loop.exit328, label %bb.bc, !llvm.loop !96

.split.loop.exit329.a:                            ; preds = %bb.bd
  %i.oi = or disjoint i32 %.05056.i.i177.1.i, 1
  br label %.split.loop.exit328

.split.loop.exit328:                              ; preds = %bb.bc, %bb.be, %.split.loop.exit329.a
  %.050.lcssa.i.i.1.i = phi i32 [ %i.oi, %.split.loop.exit329.a ], [ 30, %bb.be ], [ %.05056.i.i177.1.i, %bb.bc ]
  %i.oj = add nsw i32 %.neg4.i174.1.i, %reass.sub.i.i179.i
  %i.ok = call i32 @llvm.bswap.i32(i32 %i.oj)
  store i32 %i.ok, ptr %i.b, align 16, !tbaa !79
  %i.ol = icmp slt i32 %.0164.i, 0
  %i.om = icmp ne i32 %.050.lcssa.i.i.1.i, 30
  %i.on = or i1 %i.ol, %i.om
  %.0.i.i.1.i = select i1 %i.on, i32 2, i32 -1
  br label %find_expected_header.exit.i180.1.i

bb.bf:                                            ; preds = %bb.ba
  br label %find_expected_header.exit.i180.1.i

find_expected_header.exit.i180.1.i:               ; preds = %bb.bf, %.split.loop.exit328, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %find_header_idx.exit192.i
  %.1.i.i181.1.i = phi i32 [ 0, %bb.bf ], [ 0, %find_header_idx.exit192.i ], [ 3, %bb.ba ], [ 3, %bb.ba ], [ 3, %bb.ba ], [ %.0.i.i.1.i, %.split.loop.exit328 ], [ 3, %bb.ba ] ; 2 uses
  br i1 %i.kz, label %.lr.ph.i183.1.i, label %find_header_idx.exit192.1.i

.lr.ph.i183.1.i:                                  ; preds = %find_expected_header.exit.i180.1.i
  %i.oo = zext nneg i32 %.1.i.i181.1.i to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.lr.ph.i183.1.i
  %indvars.iv.i185.1.i = phi i64 [ 1, %.lr.ph.i183.1.i ], [ %indvars.iv.next.i186.1.i, %bb.bi ] ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i185.1.i
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !79
  %i.or = zext i8 %i.oq to i32
  %i.os = icmp eq i32 %.1.i.i181.1.i, %i.or
  br i1 %i.os, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i185.1.i
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !80
  %bcmp.i188.1.i = call i32 @bcmp(ptr nonnull %i.b, ptr %i.ou, i64 %i.oo)
  %.not.i189.1.i = icmp eq i32 %bcmp.i188.1.i, 0
  br i1 %.not.i189.1.i, label %._crit_edge.loopexit.split.loop.exit11.i190.1.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %indvars.iv.next.i186.1.i = add nuw nsw i64 %indvars.iv.i185.1.i, 1 ; 2 uses
  %exitcond.not.i187.1.i = icmp eq i64 %indvars.iv.next.i186.1.i, %wide.trip.count.i184.i
  br i1 %exitcond.not.i187.1.i, label %find_header_idx.exit192.1.i, label %bb.bg, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit11.i190.1.i:  ; preds = %bb.bh
  %i.ov = trunc i64 %indvars.iv.i185.1.i to i8
  br label %find_header_idx.exit192.1.i

find_header_idx.exit192.1.i:                      ; preds = %bb.bi, %._crit_edge.loopexit.split.loop.exit11.i190.1.i, %find_expected_header.exit.i180.1.i
  %.0.i182.1.i = phi i8 [ 0, %find_expected_header.exit.i180.1.i ], [ %i.ov, %._crit_edge.loopexit.split.loop.exit11.i190.1.i ], [ 0, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ow = getelementptr i8, ptr %i.im, i64 35
  store i8 %.0.i182.1.i, ptr %i.ow, align 1, !tbaa !91
  %indvars.iv.next.i106 = add i32 %.1162.us.i, 3
  %2 = sext i32 %indvars.iv.next.i106 to i64
  %i.ox = trunc i32 %spec.store.select283.i to i16 ; 2 uses
  %3 = getelementptr inbounds [12 x i8], ptr %i.fu, i64 %2 ; 12 uses
  store i16 1, ptr %3, align 2, !tbaa !82
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.hm, ptr %i.oy, align 2, !tbaa !89
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.kx, ptr %i.oz, align 2, !tbaa !85
  %i.pa = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %i.kw, ptr %i.pa, align 2, !tbaa !94
  %i.pb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.ox, ptr %i.pb, align 2, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br i1 %i.lr, label %find_expected_header.exit.i180.1244.i, label %bb.bj

bb.bj:                                            ; preds = %find_header_idx.exit192.1.i
  store i8 1, ptr %i.gg, align 2, !tbaa !79
  store i8 0, ptr %i.gh, align 1, !tbaa !79
  store i8 0, ptr %i.b, align 16, !tbaa !79
  %i.pc = load i32, ptr %i.hh, align 4, !tbaa !88 ; 2 uses
  switch i32 %i.pc, label %bb.bo [
    i32 12, label %find_expected_header.exit.i180.1244.i
    i32 1, label %find_expected_header.exit.i180.1244.i
    i32 2, label %find_expected_header.exit.i180.1244.i
    i32 27, label %find_expected_header.exit.i180.1244.i
    i32 86017, label %bb.bk
    i32 86016, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  %i.pd = icmp eq i32 %i.pc, 86017                ; 2 uses
  %.neg4.i174.1238.i = select i1 %i.pd, i32 -393216, i32 -262144
  %i.pe = select i1 %i.pd, i64 3, i64 2
  %i.pf = load i16, ptr %i.li, align 2, !tbaa !95
  %i.pg = zext i16 %i.pf to i32
  %i.ph = lshr i32 %i.pg, %i.le
  %i.pi = getelementptr [30 x i8], ptr %i.lk, i64 %i.pe
  %i.pj = getelementptr i8, ptr %i.pi, i64 -30
  %i.pk = shl nuw nsw i32 %i.ph, %i.lb            ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %bb.bk
  %.05056.i.i177.1239.i = phi i32 [ 2, %bb.bk ], [ %i.py, %bb.bn ] ; 4 uses
  %i.pl = lshr exact i32 %.05056.i.i177.1239.i, 1
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.pj, i64 %i.pm
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !95 ; 2 uses
  %i.pp = zext i16 %i.po to i32
  %i.pq = mul nuw nsw i32 %i.pp, 144000
  %i.pr = udiv i32 %i.pq, %i.pk
  %i.ps = icmp eq i32 %i.pr, %.0164.i
  br i1 %i.ps, label %.split.loop.exit333, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pt = zext i16 %i.po to i32
  %i.pu = mul nuw nsw i32 %i.pt, 144000
  %i.pv = udiv i32 %i.pu, %i.pk
  %i.pw = add nuw nsw i32 %i.pv, 1
  %i.px = icmp eq i32 %i.pw, %.0164.i
  br i1 %i.px, label %.split.loop.exit334.a, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.py = add nuw nsw i32 %.05056.i.i177.1239.i, 2 ; 2 uses
  %exitcond.not.i.i178.1240.i.1 = icmp eq i32 %i.py, 30
  br i1 %exitcond.not.i.i178.1240.i.1, label %.split.loop.exit333, label %bb.bl, !llvm.loop !96

.split.loop.exit334.a:                            ; preds = %bb.bm
  %i.pz = or disjoint i32 %.05056.i.i177.1239.i, 1
  br label %.split.loop.exit333

.split.loop.exit333:                              ; preds = %bb.bl, %bb.bn, %.split.loop.exit334.a
  %.050.lcssa.i.i.1241.i = phi i32 [ %i.pz, %.split.loop.exit334.a ], [ 30, %bb.bn ], [ %.05056.i.i177.1239.i, %bb.bl ]
  %i.qa = add nsw i32 %.neg4.i174.1238.i, %reass.sub.i.i179.i
  %i.qb = call i32 @llvm.bswap.i32(i32 %i.qa)
  store i32 %i.qb, ptr %i.b, align 16, !tbaa !79
  %i.qc = icmp slt i32 %.0164.i, 1
  %i.qd = icmp ne i32 %.050.lcssa.i.i.1241.i, 30
  %i.qe = or i1 %i.qc, %i.qd
  %.0.i.i.1242.i = select i1 %i.qe, i32 2, i32 -1
  br label %find_expected_header.exit.i180.1244.i

bb.bo:                                            ; preds = %bb.bj
  br label %find_expected_header.exit.i180.1244.i

find_expected_header.exit.i180.1244.i:            ; preds = %bb.bo, %.split.loop.exit333, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %find_header_idx.exit192.1.i
  %.1.i.i181.1243.i = phi i32 [ 0, %bb.bo ], [ 0, %find_header_idx.exit192.1.i ], [ 3, %bb.bj ], [ 3, %bb.bj ], [ 3, %bb.bj ], [ %.0.i.i.1242.i, %.split.loop.exit333 ], [ 3, %bb.bj ] ; 2 uses
  br i1 %i.kz, label %.lr.ph.i183.1245.i, label %find_header_idx.exit192.1256.i

.lr.ph.i183.1245.i:                               ; preds = %find_expected_header.exit.i180.1244.i
  %i.qf = zext nneg i32 %.1.i.i181.1243.i to i64
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %.lr.ph.i183.1245.i
  %indvars.iv.i185.1246.i = phi i64 [ 1, %.lr.ph.i183.1245.i ], [ %indvars.iv.next.i186.1249.i, %bb.br ] ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i185.1246.i
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !79
  %i.qi = zext i8 %i.qh to i32
  %i.qj = icmp eq i32 %.1.i.i181.1243.i, %i.qi
  br i1 %i.qj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i185.1246.i
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !80
  %bcmp.i188.1247.i = call i32 @bcmp(ptr nonnull %i.b, ptr %i.ql, i64 %i.qf)
  %.not.i189.1248.i = icmp eq i32 %bcmp.i188.1247.i, 0
  br i1 %.not.i189.1248.i, label %._crit_edge.loopexit.split.loop.exit11.i190.1253.i, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i186.1249.i = add nuw nsw i64 %indvars.iv.i185.1246.i, 1 ; 2 uses
  %exitcond.not.i187.1250.i = icmp eq i64 %indvars.iv.next.i186.1249.i, %wide.trip.count.i184.i
  br i1 %exitcond.not.i187.1250.i, label %find_header_idx.exit192.1256.i, label %bb.bp, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit11.i190.1253.i: ; preds = %bb.bq
  %i.qm = trunc i64 %indvars.iv.i185.1246.i to i8
  br label %find_header_idx.exit192.1256.i

find_header_idx.exit192.1256.i:                   ; preds = %bb.br, %._crit_edge.loopexit.split.loop.exit11.i190.1253.i, %find_expected_header.exit.i180.1244.i
  %.0.i182.1254.i = phi i8 [ 0, %find_expected_header.exit.i180.1244.i ], [ %i.qm, %._crit_edge.loopexit.split.loop.exit11.i190.1253.i ], [ 0, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 %.0.i182.1254.i, ptr %i.qn, align 1, !tbaa !91
  %i.qo = getelementptr i8, ptr %3, i64 12
  store i16 1, ptr %i.qo, align 2, !tbaa !82
  %i.qp = getelementptr i8, ptr %3, i64 14
  store i8 %i.hm, ptr %i.qp, align 2, !tbaa !89
  %i.qq = getelementptr i8, ptr %3, i64 16
  store i16 %i.kx, ptr %i.qq, align 2, !tbaa !85
  %i.qr = getelementptr i8, ptr %3, i64 18
  store i16 %i.ni, ptr %i.qr, align 2, !tbaa !94
  %i.qs = getelementptr i8, ptr %3, i64 20
  store i16 %i.ox, ptr %i.qs, align 2, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br i1 %i.nl, label %find_expected_header.exit.i180.1.1.i, label %bb.bs

bb.bs:                                            ; preds = %find_header_idx.exit192.1256.i
  store i8 1, ptr %i.gg, align 2, !tbaa !79
  store i8 0, ptr %i.gh, align 1, !tbaa !79
  store i8 0, ptr %i.b, align 16, !tbaa !79
  %i.qt = load i32, ptr %i.hh, align 4, !tbaa !88 ; 2 uses
  switch i32 %i.qt, label %bb.bx [
    i32 12, label %find_expected_header.exit.i180.1.1.i
    i32 1, label %find_expected_header.exit.i180.1.1.i
    i32 2, label %find_expected_header.exit.i180.1.1.i
    i32 27, label %find_expected_header.exit.i180.1.1.i
    i32 86017, label %bb.bt
    i32 86016, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs, %bb.bs
  %i.qu = icmp eq i32 %i.qt, 86017                ; 2 uses
  %.neg4.i174.1.1.i = select i1 %i.qu, i32 -393216, i32 -262144
  %i.qv = select i1 %i.qu, i64 3, i64 2
  %i.qw = load i16, ptr %i.li, align 2, !tbaa !95
  %i.qx = zext i16 %i.qw to i32
  %i.qy = lshr i32 %i.qx, %i.le
  %i.qz = getelementptr [30 x i8], ptr %i.lk, i64 %i.qv
  %i.ra = getelementptr i8, ptr %i.qz, i64 -30
  %i.rb = shl nuw nsw i32 %i.qy, %i.lb            ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %bb.bt
  %.05056.i.i177.1.1.i = phi i32 [ 2, %bb.bt ], [ %i.ro, %bb.bw ] ; 4 uses
  %i.rc = lshr exact i32 %.05056.i.i177.1.1.i, 1
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %i.rd
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !95 ; 2 uses
  %i.rg = zext i16 %i.rf to i32
  %i.rh = mul nuw nsw i32 %i.rg, 144000
  %i.ri = udiv i32 %i.rh, %i.rb
  %i.rj = icmp eq i32 %i.ri, %i.nh
  br i1 %i.rj, label %.split.loop.exit338, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rk = zext i16 %i.rf to i32
  %i.rl = mul nuw nsw i32 %i.rk, 144000
  %i.rm = udiv i32 %i.rl, %i.rb
  %i.rn = icmp eq i32 %i.rm, %.0164.i
  br i1 %i.rn, label %.split.loop.exit339.a, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ro = add nuw nsw i32 %.05056.i.i177.1.1.i, 2 ; 2 uses
  %exitcond.not.i.i178.1.1.i.1 = icmp eq i32 %i.ro, 30
  br i1 %exitcond.not.i.i178.1.1.i.1, label %.split.loop.exit338, label %bb.bu, !llvm.loop !96

.split.loop.exit339.a:                            ; preds = %bb.bv
  %i.rp = or disjoint i32 %.05056.i.i177.1.1.i, 1
  br label %.split.loop.exit338

.split.loop.exit338:                              ; preds = %bb.bu, %bb.bw, %.split.loop.exit339.a
  %.050.lcssa.i.i.1.1.i = phi i32 [ %i.rp, %.split.loop.exit339.a ], [ 30, %bb.bw ], [ %.05056.i.i177.1.1.i, %bb.bu ]
  %i.rq = add nsw i32 %.neg4.i174.1.1.i, %reass.sub.i.i179.i
  %i.rr = call i32 @llvm.bswap.i32(i32 %i.rq)
  store i32 %i.rr, ptr %i.b, align 16, !tbaa !79
  %i.rs = icmp slt i32 %.0164.i, 0
  %i.rt = icmp ne i32 %.050.lcssa.i.i.1.1.i, 30
  %i.ru = or i1 %i.rs, %i.rt
  %.0.i.i.1.1.i = select i1 %i.ru, i32 2, i32 -1
  br label %find_expected_header.exit.i180.1.1.i

bb.bx:                                            ; preds = %bb.bs
  br label %find_expected_header.exit.i180.1.1.i

find_expected_header.exit.i180.1.1.i:             ; preds = %bb.bx, %.split.loop.exit338, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %find_header_idx.exit192.1256.i
  %.1.i.i181.1.1.i = phi i32 [ 0, %bb.bx ], [ 0, %find_header_idx.exit192.1256.i ], [ 3, %bb.bs ], [ 3, %bb.bs ], [ 3, %bb.bs ], [ %.0.i.i.1.1.i, %.split.loop.exit338 ], [ 3, %bb.bs ] ; 2 uses
  br i1 %i.kz, label %.lr.ph.i183.1.1.i, label %find_header_idx.exit192.1.1.i

.lr.ph.i183.1.1.i:                                ; preds = %find_expected_header.exit.i180.1.1.i
  %i.rv = zext nneg i32 %.1.i.i181.1.1.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph.i183.1.1.i
  %indvars.iv.i185.1.1.i = phi i64 [ 1, %.lr.ph.i183.1.1.i ], [ %indvars.iv.next.i186.1.1.i, %bb.ca ] ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i185.1.1.i
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !79
  %i.ry = zext i8 %i.rx to i32
  %i.rz = icmp eq i32 %.1.i.i181.1.1.i, %i.ry
  br i1 %i.rz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.i185.1.1.i
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !80
  %bcmp.i188.1.1.i = call i32 @bcmp(ptr nonnull %i.b, ptr %i.sb, i64 %i.rv)
  %.not.i189.1.1.i = icmp eq i32 %bcmp.i188.1.1.i, 0
  br i1 %.not.i189.1.1.i, label %._crit_edge.loopexit.split.loop.exit11.i190.1.1.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %indvars.iv.next.i186.1.1.i = add nuw nsw i64 %indvars.iv.i185.1.1.i, 1 ; 2 uses
  %exitcond.not.i187.1.1.i = icmp eq i64 %indvars.iv.next.i186.1.1.i, %wide.trip.count.i184.i
  br i1 %exitcond.not.i187.1.1.i, label %find_header_idx.exit192.1.1.i, label %bb.by, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit11.i190.1.1.i: ; preds = %bb.bz
  %i.sc = trunc i64 %indvars.iv.i185.1.1.i to i8
  br label %find_header_idx.exit192.1.1.i

find_header_idx.exit192.1.1.i:                    ; preds = %bb.ca, %._crit_edge.loopexit.split.loop.exit11.i190.1.1.i, %find_expected_header.exit.i180.1.1.i
  %.0.i182.1.1.i = phi i8 [ 0, %find_expected_header.exit.i180.1.1.i ], [ %i.sc, %._crit_edge.loopexit.split.loop.exit11.i190.1.1.i ], [ 0, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.sd = getelementptr i8, ptr %3, i64 23
  store i8 %.0.i182.1.1.i, ptr %i.sd, align 1, !tbaa !91
  %indvars.iv.next.1.1.i = add i32 %.1162.us.i, 5
  br label %.loopexit215.i

.loopexit215.i:                                   ; preds = %.split222.us.thread.i, %find_header_idx.exit192.1.1.i
  %.val.us.i = phi ptr [ %.val.us.i196, %.split222.us.thread.i ], [ %.val172.i, %find_header_idx.exit192.1.1.i ] ; 4 uses
  %spec.store.select285292.i = phi i32 [ %spec.store.select.i, %.split222.us.thread.i ], [ %spec.store.select283.i, %find_header_idx.exit192.1.1.i ]
  %i.se = phi i8 [ %i.jq, %.split222.us.thread.i ], [ %i.hm, %find_header_idx.exit192.1.1.i ] ; 3 uses
  %i.sf = phi ptr [ %i.js, %.split222.us.thread.i ], [ %i.hh, %find_header_idx.exit192.1.1.i ] ; 2 uses
  %i.sg = phi ptr [ %i.jr, %.split222.us.thread.i ], [ %i.hn, %find_header_idx.exit192.1.1.i ]
  %.4.i = phi i32 [ %i.ka, %.split222.us.thread.i ], [ %indvars.iv.next.1.1.i, %find_header_idx.exit192.1.1.i ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.hd, i64 120
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !97
  %.not.i = icmp eq i32 %i.si, 0
  br i1 %.not.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.loopexit215.i
  store <4 x i32> <i32 -2, i32 -1, i32 1, i32 3>, ptr %i.d, align 16, !tbaa !57
  store i32 4, ptr %i.gk, align 16, !tbaa !57
  br label %bb.cf

bb.cc:                                            ; preds = %.loopexit215.i
  %i.sj = load i32, ptr %i.sf, align 4, !tbaa !88
  %i.sk = icmp eq i32 %i.sj, 86021
  br i1 %i.sk, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 2, ptr %i.d, align 16, !tbaa !57
  store i32 9, ptr %i.gi, align 4, !tbaa !57
  store i32 16, ptr %i.gj, align 8, !tbaa !57
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  store i32 1, ptr %i.d, align 16, !tbaa !57
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cb
  %.0165.i = phi i32 [ 5, %bb.cb ], [ 3, %bb.cd ], [ 1, %bb.ce ] ; 3 uses
  %i.sl = sub i32 %i.gy, %.4.i                    ; 2 uses
  %i.sm = zext i1 %i.hf to i16
  %i.sn = or disjoint i16 %i.sm, 32               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.0165.i to i64
  %i.so = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 3216
  %i.sp = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 4288
  %i.sq = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 3088
  br label %bb.cg

.loopexit.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i.split, %find_header_idx.exit213.us.i.us, %bb.cg
  %exitcond.not.i = icmp eq i64 %indvars.iv.next263.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit214.i, label %bb.cg, !llvm.loop !98

bb.cg:                                            ; preds = %.loopexit.i, %bb.cf
  %indvars.iv262.i = phi i64 [ 0, %bb.cf ], [ %indvars.iv.next263.i, %.loopexit.i ] ; 3 uses
  %i.sr = trunc i64 %indvars.iv262.i to i32
  %i.ss = mul i32 %i.sl, %i.sr
  %i.st = sdiv i32 %i.ss, %.0165.i                ; 3 uses
  %i.su = add i32 %i.st, %.4.i                    ; 5 uses
  %indvars.iv.next263.i = add nuw nsw i64 %indvars.iv262.i, 1 ; 3 uses
  %i.sv = trunc i64 %indvars.iv.next263.i to i32
  %i.sw = mul i32 %i.sl, %i.sv
  %i.sx = sdiv i32 %i.sw, %.0165.i                ; 3 uses
  %i.sy = add nsw i32 %i.sx, %.4.i                ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv262.i ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !57
  %i.tb = mul nsw i32 %i.ta, %spec.store.select285292.i ; 2 uses
  store i32 %i.tb, ptr %i.sz, align 4, !tbaa !57
  %i.tc = icmp slt i32 %i.st, %i.sx
  br i1 %i.tc, label %.lr.ph.i104, label %.loopexit.i

.lr.ph.i104:                                      ; preds = %bb.cg
  %i.td = sub nsw i32 %i.sx, %i.st
  %i.te = trunc i32 %i.td to i16                  ; 3 uses
  %i.tf = trunc i32 %i.tb to i16                  ; 3 uses
  br i1 %i.hf, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i104
  %i.tg = sext i32 %i.su to i64
  %i.th = sext i32 %i.sy to i64
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i104
  %i.ti = load i32, ptr %i.sg, align 8, !tbaa !56
  %i.tj = load i32, ptr %i.sf, align 4, !tbaa !88 ; 2 uses
  %i.tk = load i32, ptr %i.sp, align 8, !tbaa !78 ; 2 uses
  %i.tl = icmp sgt i32 %i.tk, 1
  %i.tm = icmp eq i32 %i.tj, 86017
  %.neg4.i193.us.i = select i1 %i.tm, i32 -393216, i32 -262144
  %i.tn = icmp slt i32 %i.ti, 28000
  %reass.sub.i.i199.us.i = select i1 %i.tn, i32 -458752, i32 65536
  %i.to = add nsw i32 %.neg4.i193.us.i, %reass.sub.i.i199.us.i
  %i.tp = call i32 @llvm.bswap.i32(i32 %i.to)
  %wide.trip.count.i205.us.i = zext nneg i32 %i.tk to i64
  %i.tq = sext i32 %i.su to i64                   ; 2 uses
  %i.tr = sext i32 %i.sy to i64                   ; 2 uses
  br i1 %i.tl, label %.lr.ph.split.us.i.split.us, label %.lr.ph.split.us.i.split

.lr.ph.split.us.i.split.us:                       ; preds = %.lr.ph.split.us.i, %find_header_idx.exit213.us.i.us
  %indvars.iv259.i.us = phi i64 [ %indvars.iv.next260.i.us, %find_header_idx.exit213.us.i.us ], [ %i.tq, %.lr.ph.split.us.i ] ; 3 uses
  %i.ts = getelementptr inbounds [12 x i8], ptr %i.fu, i64 %indvars.iv259.i.us ; 6 uses
  store i16 %i.sn, ptr %i.ts, align 2, !tbaa !82
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  store i8 %i.se, ptr %i.tt, align 2, !tbaa !89
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  store i16 %i.te, ptr %i.tu, align 2, !tbaa !85
  %i.tv = trunc i64 %indvars.iv259.i.us to i32
  %i.tw = sub i32 %i.tv, %i.su
  %i.tx = trunc i32 %i.tw to i16
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 6
  store i16 %i.tx, ptr %i.ty, align 2, !tbaa !94
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store i16 %i.tf, ptr %i.tz, align 2, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 1, ptr %i.gl, align 2, !tbaa !79
  store i8 0, ptr %i.gm, align 1, !tbaa !79
  store i8 0, ptr %i.a, align 16, !tbaa !79
  switch i32 %i.tj, label %bb.ci [
    i32 12, label %find_expected_header.exit.i201.us.i.us
    i32 1, label %find_expected_header.exit.i201.us.i.us
    i32 2, label %find_expected_header.exit.i201.us.i.us
    i32 27, label %find_expected_header.exit.i201.us.i.us
    i32 86017, label %bb.ch
    i32 86016, label %bb.ch
  ]

bb.ch:                                            ; preds = %.lr.ph.split.us.i.split.us, %.lr.ph.split.us.i.split.us
  store i32 %i.tp, ptr %i.a, align 16, !tbaa !79
  br label %find_expected_header.exit.i201.us.i.us

bb.ci:                                            ; preds = %.lr.ph.split.us.i.split.us
  br label %find_expected_header.exit.i201.us.i.us

find_expected_header.exit.i201.us.i.us:           ; preds = %bb.ci, %bb.ch, %.lr.ph.split.us.i.split.us, %.lr.ph.split.us.i.split.us, %.lr.ph.split.us.i.split.us, %.lr.ph.split.us.i.split.us
  %.1.i.i202.us.i.us = phi i32 [ 0, %bb.ci ], [ 3, %.lr.ph.split.us.i.split.us ], [ 3, %.lr.ph.split.us.i.split.us ], [ 3, %.lr.ph.split.us.i.split.us ], [ 3, %.lr.ph.split.us.i.split.us ], [ 2, %bb.ch ] ; 2 uses
  %i.ua = zext nneg i32 %.1.i.i202.us.i.us to i64
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %find_expected_header.exit.i201.us.i.us
  %indvars.iv.i206.us.i.us = phi i64 [ 1, %find_expected_header.exit.i201.us.i.us ], [ %indvars.iv.next.i207.us.i.us, %bb.cl ] ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sq, i64 %indvars.iv.i206.us.i.us
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !79
  %i.ud = zext i8 %i.uc to i32
  %i.ue = icmp eq i32 %.1.i.i202.us.i.us, %i.ud
  br i1 %i.ue, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv.i206.us.i.us
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !80
  %bcmp.i209.us.i.us = call i32 @bcmp(ptr nonnull %i.a, ptr %i.ug, i64 %i.ua)
  %.not.i210.us.i.us = icmp eq i32 %bcmp.i209.us.i.us, 0
  br i1 %.not.i210.us.i.us, label %._crit_edge.loopexit.split.loop.exit11.i211.us.i.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %indvars.iv.next.i207.us.i.us = add nuw nsw i64 %indvars.iv.i206.us.i.us, 1 ; 2 uses
  %exitcond.not.i208.us.i.us = icmp eq i64 %indvars.iv.next.i207.us.i.us, %wide.trip.count.i205.us.i
  br i1 %exitcond.not.i208.us.i.us, label %find_header_idx.exit213.us.i.us, label %bb.cj, !llvm.loop !90

._crit_edge.loopexit.split.loop.exit11.i211.us.i.us: ; preds = %bb.ck
  %i.uh = trunc i64 %indvars.iv.i206.us.i.us to i8
  br label %find_header_idx.exit213.us.i.us

find_header_idx.exit213.us.i.us:                  ; preds = %bb.cl, %._crit_edge.loopexit.split.loop.exit11.i211.us.i.us
  %.0.i203.us.i.us = phi i8 [ %i.uh, %._crit_edge.loopexit.split.loop.exit11.i211.us.i.us ], [ 0, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ts, i64 11
  store i8 %.0.i203.us.i.us, ptr %i.ui, align 1, !tbaa !91
  %indvars.iv.next260.i.us = add nsw i64 %indvars.iv259.i.us, 1 ; 2 uses
  %i.uj = icmp slt i64 %indvars.iv.next260.i.us, %i.tr
  br i1 %i.uj, label %.lr.ph.split.us.i.split.us, label %.loopexit.i, !llvm.loop !99

.lr.ph.split.us.i.split:                          ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.split
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %.lr.ph.split.us.i.split ], [ %i.tq, %.lr.ph.split.us.i ] ; 3 uses
  %i.uk = getelementptr inbounds [12 x i8], ptr %i.fu, i64 %indvars.iv259.i ; 6 uses
  store i16 %i.sn, ptr %i.uk, align 2, !tbaa !82
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 2
  store i8 %i.se, ptr %i.ul, align 2, !tbaa !89
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  store i16 %i.te, ptr %i.um, align 2, !tbaa !85
  %i.un = trunc i64 %indvars.iv259.i to i32
  %i.uo = sub i32 %i.un, %i.su
  %i.up = trunc i32 %i.uo to i16
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 6
  store i16 %i.up, ptr %i.uq, align 2, !tbaa !94
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store i16 %i.tf, ptr %i.ur, align 2, !tbaa !86
  %i.us = getelementptr inbounds nuw i8, ptr %i.uk, i64 11
  store i8 0, ptr %i.us, align 1, !tbaa !91
  %indvars.iv.next260.i = add nsw i64 %indvars.iv259.i, 1 ; 2 uses
  %i.ut = icmp slt i64 %indvars.iv.next260.i, %i.tr
  br i1 %i.ut, label %.lr.ph.split.us.i.split, label %.loopexit.i, !llvm.loop !99

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.i
  %indvars.iv.i105 = phi i64 [ %i.tg, %.lr.ph.split.preheader.i ], [ %indvars.iv.next257.i, %.lr.ph.split.i ] ; 3 uses
  %i.uu = getelementptr inbounds [12 x i8], ptr %i.fu, i64 %indvars.iv.i105 ; 5 uses
  store i16 %i.sn, ptr %i.uu, align 2, !tbaa !82
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 2
  store i8 %i.se, ptr %i.uv, align 2, !tbaa !89
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  store i16 %i.te, ptr %i.uw, align 2, !tbaa !85
  %i.ux = trunc i64 %indvars.iv.i105 to i32
  %i.uy = sub i32 %i.ux, %i.su
end_hunk_1
