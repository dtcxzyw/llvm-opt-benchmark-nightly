inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@start_input_gif:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  store i32 -1, ptr %i.fc, align 8, !tbaa !62
  br label %bb.ag

ReadByte.exit188:                                 ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  store i32 %i.ew, ptr %i.fd, align 8, !tbaa !62
  %i.fe = add i32 %i.ew, -9
  %or.cond187 = icmp ult i32 %i.fe, -7
  br i1 %or.cond187, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %ReadByte.exit188.thread, %ReadByte.exit188
  %i.ff = phi ptr [ %i.fc, %ReadByte.exit188.thread ], [ %i.fd, %ReadByte.exit188 ]
  %i.fg = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store i32 1015, ptr %i.fh, align 8, !tbaa !28
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 44
  store i32 %i.ew, ptr %i.fi, align 4, !tbaa !33
  %i.fj = load ptr, ptr %0, align 8, !tbaa !27
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !34
  tail call void %i.fk(ptr noundef nonnull %0) #4
  br label %bb.ah

bb.ah:                                            ; preds = %ReadByte.exit188, %bb.ag
  %i.fl = phi ptr [ %i.fd, %ReadByte.exit188 ], [ %i.ff, %bb.ag ]
  %i.fm = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !63
  %i.fp = tail call ptr %i.fo(ptr noundef %0, i32 noundef 1, i64 noundef 8192) #4
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !64
  %i.fr = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !63
  %i.fu = tail call ptr %i.ft(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #4
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !65
  %i.fw = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !63
  %i.fz = tail call ptr %i.fy(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !66
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %i.gc, align 8, !tbaa !33
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 0, ptr %i.gd, align 1, !tbaa !33
  store <4 x i32> <i32 2, i32 0, i32 0, i32 1>, ptr %i.gb, align 4, !tbaa !4
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 356
  store i32 0, ptr %i.ge, align 4, !tbaa !67
  %i.gf = load i32, ptr %i.fl, align 8, !tbaa !62 ; 3 uses
  %i.gg = shl nuw i32 1, %i.gf                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 3 uses
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !68
  %i.gi = add nuw nsw i32 %i.gg, 1
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i32 %i.gi, ptr %i.gj, align 8, !tbaa !69
  %i.gk = add nsw i32 %i.gf, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 372
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !70
  %i.gm = shl i32 2, %i.gf
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 %i.gm, ptr %i.gn, align 8, !tbaa !71
  %i.go = add nuw nsw i32 %i.gg, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 380
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !72
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 416
  store ptr %i.fz, ptr %i.gq, align 8, !tbaa !73
  %i.gr = load i32, ptr %i.eq, align 8, !tbaa !60
  %.not182 = icmp eq i32 %i.gr, 0
  br i1 %.not182, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gs = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !74
  %i.gv = tail call ptr %i.gu(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef 1) #4
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !75
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !76 ; 2 uses
  %.not183 = icmp eq ptr %i.gy, null
  br i1 %.not183, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 36 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !77
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj
  %get_pixel_rows.sink = phi ptr [ @load_interlaced_image, %bb.ai ], [ @load_interlaced_image, %bb.aj ], [ @get_pixel_rows, %bb.ah ]
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %get_pixel_rows.sink, ptr %i.hc, align 8, !tbaa !80
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !81
  %.not184 = icmp eq i32 %i.he, 1
  br i1 %.not184, label %._crit_edge192, label %bb.al

._crit_edge192:                                   ; preds = %bb.ak
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 2, ptr %i.hd, align 4, !tbaa !81
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %i.hf, align 8, !tbaa !82
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge192, %bb.al
  %i.hg = phi i32 [ %.pre, %._crit_edge192 ], [ 3, %bb.al ]
  %i.hh = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !53
  %i.hk = mul i32 %i.hg, %i.dx
  %i.hl = tail call ptr %i.hj(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.hk, i32 noundef 1) #4
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !83
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.hn, align 8, !tbaa !84
  %i.ho = load i32, ptr %i.gh, align 4, !tbaa !68
  %i.hp = icmp slt i32 %.1, %i.ho
  br i1 %i.hp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.am
  %i.hq = zext nneg i32 %.1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.hq, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.hr = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !85
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv
  store i8 -128, ptr %i.hu, align 1, !tbaa !33
  %i.hv = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !85
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv
  store i8 -128, ptr %i.hy, align 1, !tbaa !33
  %i.hz = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !85
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv
  store i8 -128, ptr %i.ib, align 1, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ic = load i32, ptr %i.gh, align 4, !tbaa !68
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next, %i.id
  br i1 %i.ie, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %bb.am
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 8, ptr %i.if, align 8, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.dx, ptr %i.ig, align 8, !tbaa !87
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.dz, ptr %i.ih, align 4, !tbaa !88
  %i.ii = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 44
  store i32 %i.dx, ptr %i.ij, align 4, !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  store i32 %i.dz, ptr %i.ik, align 4, !tbaa !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 52
  store i32 %.1, ptr %i.il, align 4, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  store i32 1020, ptr %i.im, align 8, !tbaa !28
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !51
  tail call void %i.io(ptr noundef nonnull %0, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_gif(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @ReadColorMap(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 2, 257) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.h ] ; 7 uses
  %.030 = phi i32 [ 1, %bb.a ], [ %.1, %bb.h ]
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.f = tail call i32 @getc(ptr noundef %i.e)    ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %ReadByte.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 44, ptr %i.j, align 8, !tbaa !28
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !34
  tail call void %i.k(ptr noundef nonnull %i.h) #4, !inline_history !61
  br label %ReadByte.exit

ReadByte.exit:                                    ; preds = %bb.b, %bb.c
  %i.l = trunc i32 %i.f to i8
  %i.m = load ptr, ptr %2, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 %i.l, ptr %i.n, align 1, !tbaa !33
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.p = tail call i32 @getc(ptr noundef %i.o)    ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.d, label %ReadByte.exit27

bb.d:                                             ; preds = %ReadByte.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i32 44, ptr %i.t, align 8, !tbaa !28
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !34
  tail call void %i.u(ptr noundef nonnull %i.r) #4, !inline_history !61
  br label %ReadByte.exit27

ReadByte.exit27:                                  ; preds = %ReadByte.exit, %bb.d
  %i.v = trunc i32 %i.p to i8
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  store i8 %i.v, ptr %i.x, align 1, !tbaa !33
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.z = tail call i32 @getc(ptr noundef %i.y)    ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.e, label %ReadByte.exit28

bb.e:                                             ; preds = %ReadByte.exit27
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 44, ptr %i.ad, align 8, !tbaa !28
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !34
  tail call void %i.ae(ptr noundef nonnull %i.ab) #4, !inline_history !61
  br label %ReadByte.exit28

ReadByte.exit28:                                  ; preds = %ReadByte.exit27, %bb.e
  %i.af = trunc i32 %i.z to i8
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !33
  %i.ai = load ptr, ptr %2, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !33  ; 2 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %.not = icmp eq i8 %i.ak, %i.an
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %ReadByte.exit28
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !33
  %.not26 = icmp eq i8 %i.ak, %i.aq
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %ReadByte.exit28
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ %.030, %bb.f ]    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !89

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 60 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !81
  %i.au = icmp eq i32 %i.at, 2
  %3 = icmp ne i32 %.1, 0
  %or.cond = select i1 %i.au, i1 %3, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.as, align 4, !tbaa !81
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 1, ptr %i.av, align 8, !tbaa !82
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @load_interlaced_image(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %.not46 = icmp eq i32 %i.d, 0
  br i1 %.not46, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.a
  %.not37 = icmp eq ptr %i.b, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not37, label %.lr.ph44.split.us, label %.lr.ph44.split

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %._crit_edge.us
  %.03442.us = phi i32 [ %i.u, %._crit_edge.us ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.n = tail call ptr %i.l(ptr noundef nonnull %0, ptr noundef %i.m, i32 noundef %.03442.us, i32 noundef 1, i32 noundef 1) #4
  %i.o = load i32, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %.not3839.us = icmp eq i32 %i.o, 0
  br i1 %.not3839.us, label %._crit_edge.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph44.split.us
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !85
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.041.us = phi ptr [ %i.s, %.lr.ph.us ], [ %i.p, %.lr.ph.us.preheader ] ; 2 uses
  %.03540.us = phi i32 [ %i.t, %.lr.ph.us ], [ %i.o, %.lr.ph.us.preheader ]
  %i.q = tail call fastcc i32 @LZWReadByte(ptr noundef nonnull %1)
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.041.us, i64 1
  store i8 %i.r, ptr %.041.us, align 1, !tbaa !33
  %i.t = add i32 %.03540.us, -1                   ; 2 uses
  %.not38.us = icmp eq i32 %i.t, 0
  br i1 %.not38.us, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !91

._crit_edge.us:                                   ; preds = %.lr.ph.us, %.lr.ph44.split.us
  %i.u = add nuw i32 %.03442.us, 1                ; 2 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph44.split.us, label %._crit_edge45, !llvm.loop !92

.lr.ph44.split:                                   ; preds = %.lr.ph44, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph44 ] ; 3 uses
  %i.x = phi i32 [ %i.am, %._crit_edge ], [ %i.d, %.lr.ph44 ]
  store i64 %indvars.iv, ptr %i.e, align 8, !tbaa !93
  %i.y = zext i32 %i.x to i64
  store i64 %i.y, ptr %i.f, align 8, !tbaa !94
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !95
  tail call void %i.z(ptr noundef nonnull %0) #4
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.ae = trunc nuw i64 %indvars.iv to i32
  %i.af = tail call ptr %i.ac(ptr noundef nonnull %0, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef 1, i32 noundef 1) #4
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !87  ; 2 uses
  %.not3839 = icmp eq i32 %i.ag, 0
  br i1 %.not3839, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph44.split
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !85
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.041 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.03540 = phi i32 [ %i.al, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ]
  %i.ai = tail call fastcc i32 @LZWReadByte(ptr noundef nonnull %1)
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %.041, i64 1
  store i8 %i.aj, ptr %.041, align 1, !tbaa !33
  %i.al = add i32 %.03540, -1                     ; 2 uses
  %.not38 = icmp eq i32 %i.al, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph44.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.c, align 4, !tbaa !88  ; 3 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph44.split, label %._crit_edge45.thread, !llvm.loop !92

._crit_edge45:                                    ; preds = %._crit_edge.us, %bb.a
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %._crit_edge.us ] ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %._crit_edge45.thread

._crit_edge45.thread:                             ; preds = %._crit_edge, %._crit_edge45
  %.lcssa58 = phi i32 [ %.lcssa, %._crit_edge45 ], [ %i.am, %._crit_edge ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !96
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !96
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge45.thread, %._crit_edge45
  %.lcssa59 = phi i32 [ %.lcssa58, %._crit_edge45.thread ], [ %.lcssa, %._crit_edge45 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_interlaced_row, ptr %i.as, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i32 0, ptr %i.at, align 8, !tbaa !97
  %i.au = add i32 %.lcssa59, 7
  %i.av = lshr i32 %i.au, 3                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 444
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !98
  %i.ax = add i32 %.lcssa59, 3
  %i.ay = lshr i32 %i.ax, 3
  %i.az = add nuw nsw i32 %i.av, %i.ay            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !99
  %i.bb = add i32 %.lcssa59, 1
  %i.bc = lshr i32 %i.bb, 2
  %i.bd = add nuw nsw i32 %i.az, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 452
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !100
  %i.bf = tail call i32 @get_interlaced_row(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_pixel_rows(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87   ; 3 uses
  %.not2530 = icmp eq i32 %i.j, 0                 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not2530, label %.loopexit, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.b, %.lr.ph33
  %.032 = phi i32 [ %i.q, %.lr.ph33 ], [ %i.j, %bb.b ]
  %.02331 = phi ptr [ %i.p, %.lr.ph33 ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = tail call fastcc i32 @LZWReadByte(ptr noundef nonnull %1)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %.02331, i64 1
  store i8 %i.o, ptr %.02331, align 1, !tbaa !33
  %i.q = add i32 %.032, -1                        ; 2 uses
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph33, !llvm.loop !101

bb.c:                                             ; preds = %bb.a
  br i1 %.not2530, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.129 = phi i32 [ %i.j, %.lr.ph ], [ %i.ah, %bb.d ]
  %.12428 = phi ptr [ %i.e, %.lr.ph ], [ %i.ag, %bb.d ] ; 4 uses
  %i.t = tail call fastcc i32 @LZWReadByte(ptr noundef nonnull %1)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.v = sext i32 %i.t to i64                     ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %.12428, i64 1
  store i8 %i.x, ptr %.12428, align 1, !tbaa !33
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.v
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %.12428, i64 2
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !33
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %.12428, i64 3
end_hunk_0
