inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@start_input_bmp:bb.a
read_byte.exit.i:                                 ; preds = %bb.ah, %bb.ag
  %i.ef = trunc i32 %i.dz to i8
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !50
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !52
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv41.i
  store i8 %i.ef, ptr %i.ej, align 1, !tbaa !45
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.el = tail call i32 @getc(ptr noundef %i.ek)  ; 2 uses
  %i.em = icmp eq i32 %i.el, -1
  br i1 %i.em, label %bb.ai, label %read_byte.exit28.i

bb.ai:                                            ; preds = %read_byte.exit.i
  %i.en = load ptr, ptr %i.dx, align 8, !tbaa !29 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !40 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i32 42, ptr %i.ep, align 8, !tbaa !41
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !43
  tail call void %i.eq(ptr noundef nonnull %i.en) #4, !inline_history !51
  br label %read_byte.exit28.i

read_byte.exit28.i:                               ; preds = %bb.ai, %read_byte.exit.i
  %i.er = trunc i32 %i.el to i8
  %i.es = load ptr, ptr %i.dt, align 8, !tbaa !50
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv41.i
  store i8 %i.er, ptr %i.ev, align 1, !tbaa !45
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.ex = tail call i32 @getc(ptr noundef %i.ew)  ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %bb.aj, label %read_byte.exit29.i

bb.aj:                                            ; preds = %read_byte.exit28.i
  %i.ez = load ptr, ptr %i.dx, align 8, !tbaa !29 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !40 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store i32 42, ptr %i.fb, align 8, !tbaa !41
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !43
  tail call void %i.fc(ptr noundef nonnull %i.ez) #4, !inline_history !51
  br label %read_byte.exit29.i

read_byte.exit29.i:                               ; preds = %bb.aj, %read_byte.exit28.i
  %i.fd = trunc i32 %i.ex to i8
  %i.fe = load ptr, ptr %i.dt, align 8, !tbaa !50
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %indvars.iv41.i
  store i8 %i.fd, ptr %i.fg, align 1, !tbaa !45
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %.1144
  br i1 %exitcond45.not.i, label %read_colormap.exit, label %bb.ag, !llvm.loop !54

bb.ak:                                            ; preds = %read_byte.exit33.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %read_byte.exit33.i ] ; 4 uses
  %i.fh = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.fi = tail call i32 @getc(ptr noundef %i.fh)  ; 2 uses
  %i.fj = icmp eq i32 %i.fi, -1
  br i1 %i.fj, label %bb.al, label %read_byte.exit30.i

bb.al:                                            ; preds = %bb.ak
  %i.fk = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !40 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i32 42, ptr %i.fm, align 8, !tbaa !41
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !43
  tail call void %i.fn(ptr noundef nonnull %i.fk) #4, !inline_history !51
  br label %read_byte.exit30.i

read_byte.exit30.i:                               ; preds = %bb.al, %bb.ak
  %i.fo = trunc i32 %i.fi to i8
  %i.fp = load ptr, ptr %i.dt, align 8, !tbaa !50
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !52
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i
  store i8 %i.fo, ptr %i.fs, align 1, !tbaa !45
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.fu = tail call i32 @getc(ptr noundef %i.ft)  ; 2 uses
  %i.fv = icmp eq i32 %i.fu, -1
  br i1 %i.fv, label %bb.am, label %read_byte.exit31.i

bb.am:                                            ; preds = %read_byte.exit30.i
  %i.fw = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !40 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  store i32 42, ptr %i.fy, align 8, !tbaa !41
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !43
  tail call void %i.fz(ptr noundef nonnull %i.fw) #4, !inline_history !51
  br label %read_byte.exit31.i

read_byte.exit31.i:                               ; preds = %bb.am, %read_byte.exit30.i
  %i.ga = trunc i32 %i.fu to i8
  %i.gb = load ptr, ptr %i.dt, align 8, !tbaa !50
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !52
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv.i
  store i8 %i.ga, ptr %i.ge, align 1, !tbaa !45
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.gg = tail call i32 @getc(ptr noundef %i.gf)  ; 2 uses
  %i.gh = icmp eq i32 %i.gg, -1
  br i1 %i.gh, label %bb.an, label %read_byte.exit32.i

bb.an:                                            ; preds = %read_byte.exit31.i
  %i.gi = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !40 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  store i32 42, ptr %i.gk, align 8, !tbaa !41
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !43
  tail call void %i.gl(ptr noundef nonnull %i.gi) #4, !inline_history !51
  br label %read_byte.exit32.i

read_byte.exit32.i:                               ; preds = %bb.an, %read_byte.exit31.i
  %i.gm = trunc i32 %i.gg to i8
  %i.gn = load ptr, ptr %i.dt, align 8, !tbaa !50
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !52
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv.i
  store i8 %i.gm, ptr %i.gp, align 1, !tbaa !45
  %i.gq = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.gr = tail call i32 @getc(ptr noundef %i.gq)
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %bb.ao, label %read_byte.exit33.i

bb.ao:                                            ; preds = %read_byte.exit32.i
  %i.gt = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !40 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store i32 42, ptr %i.gv, align 8, !tbaa !41
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !43
  tail call void %i.gw(ptr noundef nonnull %i.gt) #4, !inline_history !51
  br label %read_byte.exit33.i

read_byte.exit33.i:                               ; preds = %bb.ao, %read_byte.exit32.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.1144
  br i1 %exitcond.not.i, label %read_colormap.exit, label %bb.ak, !llvm.loop !56

bb.ap:                                            ; preds = %bb.af
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !29 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !40 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  store i32 1001, ptr %i.ha, align 8, !tbaa !41
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !43
  tail call void %i.hb(ptr noundef nonnull %i.gy) #4, !inline_history !57
  br label %read_colormap.exit

read_colormap.exit:                               ; preds = %read_byte.exit33.i, %read_byte.exit29.i, %.preheader34.i, %.preheader.i, %bb.ap
  %i.hc = zext nneg i32 %.2 to i64
  %i.hd = mul nuw nsw i64 %.1144, %i.hc
  %i.he = sub nsw i64 %i.di, %i.hd
  br label %bb.aq

bb.aq:                                            ; preds = %.thread, %read_colormap.exit, %bb.ab
  %.0161 = phi i32 [ %.0, %read_colormap.exit ], [ %.0, %bb.ab ], [ 0, %.thread ] ; 3 uses
  %.0145160 = phi i32 [ %.0145, %read_colormap.exit ], [ %.0145, %bb.ab ], [ 0, %.thread ] ; 2 uses
  %.0139 = phi i64 [ %i.he, %read_colormap.exit ], [ %i.di, %bb.ab ], [ %i.dh, %.thread ] ; 3 uses
  %i.hf = icmp slt i64 %.0139, 0
  br i1 %i.hf, label %.thread173, label %bb.ar

.thread173:                                       ; preds = %bb.aq
  %i.hg = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  store i32 1003, ptr %i.hh, align 8, !tbaa !41
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !43
  tail call void %i.hi(ptr noundef %0) #4
  br label %._crit_edge

bb.ar:                                            ; preds = %bb.aq
  %.not175 = icmp eq i64 %.0139, 0
  br i1 %.not175, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ar
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %read_byte.exit
  %.1140168 = phi i64 [ %.0139, %.lr.ph ], [ %i.hk, %read_byte.exit ] ; 2 uses
  %i.hk = add nsw i64 %.1140168, -1
  %i.hl = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.hm = tail call i32 @getc(ptr noundef %i.hl)
  %i.hn = icmp eq i32 %i.hm, -1
  br i1 %i.hn, label %bb.at, label %read_byte.exit

bb.at:                                            ; preds = %bb.as
  %i.ho = load ptr, ptr %i.hj, align 8, !tbaa !29 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !40 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store i32 42, ptr %i.hq, align 8, !tbaa !41
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !43
  tail call void %i.hr(ptr noundef nonnull %i.ho) #4, !inline_history !58
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %bb.as, %bb.at
  %i.hs = icmp samesign ugt i64 %.1140168, 1
  br i1 %i.hs, label %bb.as, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %read_byte.exit, %.thread173, %bb.ar
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !44
  %i.hv = icmp eq i32 %i.hu, 24
  %i.hw = mul i32 %.0161, 3                       ; 2 uses
  %.0138 = select i1 %i.hv, i32 %i.hw, i32 %.0161
  %2 = add i32 %.0138, 3
  %i.hx = and i32 %2, -4                          ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !60
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !61
  %i.id = tail call ptr %i.ic(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %i.hx, i32 noundef %.0145160, i32 noundef 1) #4
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @preload_image, ptr %i.if, align 8, !tbaa !63
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !64 ; 2 uses
  %.not155 = icmp eq ptr %i.ih, null
  br i1 %.not155, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 36 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !65
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !65
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge
  %i.il = load ptr, ptr %i.hz, align 8, !tbaa !8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !49
  %i.io = tail call ptr %i.in(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.hw, i32 noundef 1) #4
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !68
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.iq, align 8, !tbaa !69
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 2, ptr %i.ir, align 4, !tbaa !70
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.is, align 8, !tbaa !71
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 8, ptr %i.it, align 8, !tbaa !72
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0161, ptr %i.iu, align 8, !tbaa !73
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.0145160, ptr %i.iv, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_bmp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74   ; 2 uses
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a
  %.not42 = icmp eq ptr %i.d, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  br i1 %.not42, label %.lr.ph49.split.us, label %.lr.ph49.split

.lr.ph49.split.us:                                ; preds = %.lr.ph49, %._crit_edge.us
  %.04047.us = phi i32 [ %i.aa, %._crit_edge.us ], [ 0, %.lr.ph49 ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.p = tail call ptr %i.n(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef %.04047.us, i32 noundef 1, i32 noundef 1) #4
  %i.q = load i32, ptr %i.k, align 4, !tbaa !60   ; 2 uses
  %.not4344.us = icmp eq i32 %i.q, 0
  br i1 %.not4344.us, label %._crit_edge.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph49.split.us
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !52
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %.046.us = phi ptr [ %i.y, %bb.c ], [ %i.r, %.lr.ph.us.preheader ] ; 2 uses
  %.03945.us = phi i32 [ %i.z, %bb.c ], [ %i.q, %.lr.ph.us.preheader ]
  %i.s = tail call i32 @getc(ptr noundef %i.b)    ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.us
  %i.u = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 42, ptr %i.v, align 8, !tbaa !41
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !43
  tail call void %i.w(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.us
  %i.x = trunc i32 %i.s to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.046.us, i64 1
  store i8 %i.x, ptr %.046.us, align 1, !tbaa !45
  %i.z = add i32 %.03945.us, -1                   ; 2 uses
  %.not43.us = icmp eq i32 %i.z, 0
  br i1 %.not43.us, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !76

._crit_edge.us:                                   ; preds = %bb.c, %.lr.ph49.split.us
  %i.aa = add nuw i32 %.04047.us, 1               ; 2 uses
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !74  ; 2 uses
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph49.split.us, label %._crit_edge50, !llvm.loop !77

.lr.ph49.split:                                   ; preds = %.lr.ph49, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph49 ] ; 3 uses
  %i.ad = phi i32 [ %i.aw, %._crit_edge ], [ %i.f, %.lr.ph49 ]
  store i64 %indvars.iv, ptr %i.g, align 8, !tbaa !78
  %i.ae = zext i32 %i.ad to i64
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !79
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !80
  tail call void %i.af(ptr noundef nonnull %0) #4
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.ak = trunc nuw i64 %indvars.iv to i32
  %i.al = tail call ptr %i.ai(ptr noundef nonnull %0, ptr noundef %i.aj, i32 noundef %i.ak, i32 noundef 1, i32 noundef 1) #4
  %i.am = load i32, ptr %i.k, align 4, !tbaa !60  ; 2 uses
  %.not4344 = icmp eq i32 %i.am, 0
  br i1 %.not4344, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph49.split
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !52
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.046 = phi ptr [ %i.au, %bb.e ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.03945 = phi i32 [ %i.av, %bb.e ], [ %i.am, %.lr.ph.preheader ]
  %i.ao = tail call i32 @getc(ptr noundef %i.b)   ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 42, ptr %i.ar, align 8, !tbaa !41
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !43
  tail call void %i.as(ptr noundef nonnull %0) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.at = trunc i32 %i.ao to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.046, i64 1
  store i8 %i.at, ptr %.046, align 1, !tbaa !45
  %i.av = add i32 %.03945, -1                     ; 2 uses
  %.not43 = icmp eq i32 %i.av, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.e, %.lr.ph49.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !74  ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph49.split, label %._crit_edge50, !llvm.loop !77

._crit_edge50:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  %i.az = phi i32 [ %i.ab, %._crit_edge.us ], [ 0, %bb.a ], [ %i.aw, %._crit_edge ] ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge50
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !44
  switch i32 %i.be, label %bb.j [
    i32 8, label %bb.h
    i32 24, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_8bit_row, ptr %i.bf, align 8, !tbaa !63
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_24bit_row, ptr %i.bg, align 8, !tbaa !63
  br label %bb.k

bb.j:                                             ; preds = %bb.g
end_hunk_0
