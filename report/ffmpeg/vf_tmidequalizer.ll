inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@filter_frame:bb.a
  %i.db = phi i32 [ %.pre318, %._crit_edge255.loopexit ], [ %i.cw, %.preheader ]
  %i.dc = add nsw i32 %i.db, 1                    ; 2 uses
  store i32 %i.dc, ptr %i.ad, align 4, !tbaa !39
  %i.dd = load i32, ptr %i.af, align 4, !tbaa !20
  %i.de = icmp slt i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.l, label %._crit_edge258.loopexit, !llvm.loop !55

.lr.ph254:                                        ; preds = %.preheader, %.lr.ph254
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.lr.ph254 ], [ 0, %.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [2048 x i8], ptr %i.cs, i64 %indvars.iv309
  %i.dg = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dh ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !49
  %i.dk = getelementptr i8, ptr %i.di, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !49
  %i.dm = load i32, ptr %i.ct, align 8, !tbaa !51
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dj, ptr align 4 %i.dl, i64 %i.do, i1 false)
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.dp = load i32, ptr %i.am, align 4, !tbaa !45
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next310, %i.dq
  br i1 %i.dr, label %.lr.ph254, label %._crit_edge255.loopexit, !llvm.loop !56

._crit_edge258.loopexit:                          ; preds = %._crit_edge255
  %.pre319 = load i32, ptr %i.av, align 4, !tbaa !42
  br label %._crit_edge258

._crit_edge258:                                   ; preds = %._crit_edge258.loopexit, %bb.k
  %i.ds = phi i32 [ %.pre319, %._crit_edge258.loopexit ], [ %i.co, %bb.k ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !57
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store i32 0, ptr %i.du, align 4, !tbaa !40
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 5 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dx
  tail call void @av_frame_free(ptr noundef %i.dy) #8
  %i.dz = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.ea = load i32, ptr %i.dv, align 4, !tbaa !40 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb
  store ptr %.1189, ptr %i.ec, align 8, !tbaa !43
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !45
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 8824
  %i.eh = getelementptr inbounds nuw i8, ptr %.1189, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  br label %bb.n

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre = load i32, ptr %i.dv, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %i.em = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ea, %bb.m ]
  %i.en = add nsw i32 %i.em, 1                    ; 2 uses
  %i.eo = load i32, ptr %i.af, align 4, !tbaa !20
  %.not208 = icmp slt i32 %i.en, %i.eo
  %spec.store.select = select i1 %.not208, i32 %i.en, i32 0
  store i32 %spec.store.select, ptr %i.dv, align 4
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 6 uses
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.1189, i64 %indvars.iv
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv
  %i.et = load i32, ptr %i.es, align 4, !tbaa !48
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !48
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !48
  %i.ez = getelementptr inbounds nuw [2048 x i8], ptr %i.ek, i64 %indvars.iv
  %i.fa = load i32, ptr %i.dv, align 4, !tbaa !40
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !49
  %i.fe = load i32, ptr %i.el, align 8, !tbaa !51
  %i.ff = sext i32 %i.fe to i64
  tail call void %i.ep(ptr noundef %i.er, i64 noundef %i.eu, i32 noundef %i.ew, i32 noundef %i.ey, ptr noundef %i.fd, i64 noundef %i.ff) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fg = load i32, ptr %i.ed, align 4, !tbaa !45
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next, %i.fh
  br i1 %i.fi, label %bb.n, label %._crit_edge.loopexit, !llvm.loop !58

bb.o:                                             ; preds = %._crit_edge, %._crit_edge258
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !59
  %.not211 = icmp eq i32 %i.fk, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !57 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 8816
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !24
  %i.fp = sext i32 %i.fm to i64                   ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !43 ; 5 uses
  br i1 %.not211, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fs = tail call ptr @av_frame_clone(ptr noundef %i.fr) #8 ; 2 uses
  %.not214.not = icmp eq ptr %i.fs, null
  br i1 %.not214.not, label %.thread222, label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !60
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !61
  %i.fx = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.fu, i32 noundef %i.fw) #8 ; 7 uses
  %.not212.not = icmp eq ptr %i.fx, null
  br i1 %.not212.not, label %.thread222, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fy = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.fx, ptr noundef %i.fr) #8 ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !45
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph289, label %.loopexit

.lr.ph289:                                        ; preds = %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 8784
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 8832
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 64 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph289, %bb.ah
  %indvars.iv312 = phi i64 [ 0, %.lr.ph289 ], [ %indvars.iv.next313, %bb.ah ] ; 16 uses
  %i.go = trunc nuw nsw i64 %indvars.iv312 to i32
  %i.gp = shl nuw i32 1, %i.go
  %i.gq = load i32, ptr %i.gc, align 8, !tbaa !62
  %i.gr = and i32 %i.gq, %i.gp
  %.not213 = icmp eq i32 %i.gr, 0
  br i1 %.not213, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv312
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !47
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv312
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !48
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv312
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !47
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv312
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !48
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv312
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !48
  %i.hc = load i32, ptr %i.gn, align 8, !tbaa !63
  %i.hd = icmp sgt i32 %i.hc, 8
  %i.he = zext i1 %i.hd to i32
  %i.hf = shl i32 %i.hb, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv312
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !48
  tail call void @av_image_copy_plane(ptr noundef %i.gt, i32 noundef %i.gv, ptr noundef %i.gx, i32 noundef %i.gz, i32 noundef %i.hf, i32 noundef %i.hh) #8
  br label %bb.ah

bb.u:                                             ; preds = %bb.s
  %i.hi = getelementptr inbounds nuw [2048 x i8], ptr %i.gd, i64 %indvars.iv312 ; 4 uses
  %i.hj = load i32, ptr %i.af, align 4, !tbaa !20 ; 8 uses
  %i.hk = load i32, ptr %i.gf, align 4, !tbaa !42 ; 6 uses
  %i.hl = load i32, ptr %i.gg, align 8, !tbaa !51 ; 13 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv312
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !49 ; 5 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.fp
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.hq = icmp sgt i32 %i.hl, 0
  br i1 %i.hq, label %.lr.ph127.i, label %compute_contrast_function.exit

.lr.ph127.i:                                      ; preds = %bb.u
  %i.hr = icmp sgt i32 %i.hk, 0                   ; 2 uses
  %i.hs = sub i32 %i.fm, %i.hk                    ; 3 uses
  %.0117.i = add i32 %i.hk, 1                     ; 2 uses
  %i.ht = icmp slt i32 %.0117.i, %i.hj
  %i.hu = sext i32 %.0117.i to i64
  %wide.trip.count151.i = zext nneg i32 %i.hl to i64 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.hk to i64 ; 2 uses
  %i.hv = add nsw i32 %i.hl, -1                   ; 3 uses
  br i1 %i.ht, label %.lr.ph127.i.split.us, label %.lr.ph127.i.split

.lr.ph127.i.split.us:                             ; preds = %.lr.ph127.i, %._crit_edge.i.loopexit.us
  %indvars.iv148.i.us = phi i64 [ %indvars.iv.next149.i.us, %._crit_edge.i.loopexit.us ], [ 0, %.lr.ph127.i ] ; 5 uses
  %i.hw = trunc nuw nsw i64 %indvars.iv148.i.us to i32
  %i.hx = uitofp nneg i32 %i.hw to float          ; 2 uses
  br i1 %i.hr, label %.lr.ph104.i.us, label %.preheader.i.us

.lr.ph104.i.us:                                   ; preds = %.lr.ph127.i.split.us
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv148.i.us
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph104.i.us
  %indvars.iv134.i.us = phi i64 [ 0, %.lr.ph104.i.us ], [ %indvars.iv.next135.i.us, %bb.y ] ; 4 uses
  %.076102.i.us = phi float [ %i.hx, %.lr.ph104.i.us ], [ %i.iv, %bb.y ]
  %.077101.i.us = phi float [ 1.000000e+00, %.lr.ph104.i.us ], [ %i.it, %bb.y ]
  %i.hz = trunc i64 %indvars.iv134.i.us to i32
  %i.ia = add i32 %i.hs, %i.hz
  %i.ib = srem i32 %i.ia, %i.hj                   ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 0
  %i.id = select i1 %i.ic, i32 %i.hj, i32 0
  %i.ie = add nsw i32 %i.id, %i.ib
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !49
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134.i.us ; 2 uses
  %.promoted.i.us = load i32, ptr %i.ii, align 4, !tbaa !48 ; 3 uses
  %i.ij = icmp slt i32 %.promoted.i.us, %i.hl
  br i1 %i.ij, label %.lr.ph.i.us, label %.critedge.i.us

.lr.ph.i.us:                                      ; preds = %bb.v
  %i.ik = load float, ptr %i.hy, align 4, !tbaa !64
  %i.il = sext i32 %.promoted.i.us to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %i.il, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.x ] ; 3 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %indvars.iv.i.us
  %i.in = load float, ptr %i.im, align 4, !tbaa !64
  %i.io = fcmp nsz olt float %i.in, %i.ik
  br i1 %i.io, label %bb.x, label %.critedge.loopexit.i.us

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %lftr.wideiv.i.us = trunc i64 %indvars.iv.next.i.us to i32
  %exitcond.not.i.us = icmp eq i32 %i.hl, %lftr.wideiv.i.us
  br i1 %exitcond.not.i.us, label %.critedge.thread.i.us, label %bb.w, !llvm.loop !65

.critedge.loopexit.i.us:                          ; preds = %bb.w
  %i.ip = trunc nsw i64 %indvars.iv.i.us to i32
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.loopexit.i.us, %bb.v
  %.lcssa92.i.us = phi i32 [ %.promoted.i.us, %bb.v ], [ %i.ip, %.critedge.loopexit.i.us ] ; 2 uses
  %i.iq = icmp eq i32 %.lcssa92.i.us, %i.hl
  br i1 %i.iq, label %.critedge.thread.i.us, label %bb.y

.critedge.thread.i.us:                            ; preds = %bb.x, %.critedge.i.us
  br label %bb.y

bb.y:                                             ; preds = %.critedge.thread.i.us, %.critedge.i.us
  %storemerge.i.us = phi i32 [ %i.hv, %.critedge.thread.i.us ], [ %.lcssa92.i.us, %.critedge.i.us ] ; 2 uses
  store i32 %storemerge.i.us, ptr %i.ii, align 4
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv134.i.us
  %i.is = load float, ptr %i.ir, align 4, !tbaa !64 ; 2 uses
  %i.it = fadd nsz float %.077101.i.us, %i.is     ; 2 uses
  %i.iu = sitofp nsz i32 %storemerge.i.us to float
  %i.iv = tail call nsz float @llvm.fmuladd.f32(float %i.is, float %i.iu, float %.076102.i.us) ; 2 uses
  %indvars.iv.next135.i.us = add nuw nsw i64 %indvars.iv134.i.us, 1 ; 2 uses
  %exitcond137.not.i.us = icmp eq i64 %indvars.iv.next135.i.us, %wide.trip.count.i
  br i1 %exitcond137.not.i.us, label %.preheader.i.us, label %bb.v, !llvm.loop !66

.preheader.i.us:                                  ; preds = %bb.y, %.lr.ph127.i.split.us
  %.077.lcssa.i.us = phi float [ 1.000000e+00, %.lr.ph127.i.split.us ], [ %i.it, %bb.y ]
  %.076.lcssa.i.us = phi float [ %i.hx, %.lr.ph127.i.split.us ], [ %i.iv, %bb.y ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv148.i.us
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.preheader.i.us
  %indvars.iv143.i.us = phi i64 [ %i.hu, %.preheader.i.us ], [ %indvars.iv.next144.i.us, %bb.ac ] ; 3 uses
  %.0.in120.i.us = phi i32 [ %i.hk, %.preheader.i.us ], [ %i.ix, %bb.ac ]
  %.1119.i.us = phi float [ %.076.lcssa.i.us, %.preheader.i.us ], [ %i.jv, %bb.ac ]
  %.178118.i.us = phi float [ %.077.lcssa.i.us, %.preheader.i.us ], [ %i.jt, %bb.ac ]
  %i.ix = trunc i64 %indvars.iv143.i.us to i32    ; 2 uses
  %i.iy = add i32 %i.hs, %i.ix
  %i.iz = srem i32 %i.iy, %i.hj                   ; 2 uses
  %i.ja = icmp slt i32 %i.iz, 0
  %i.jb = select i1 %i.ja, i32 %i.hj, i32 0
  %i.jc = add nsw i32 %i.jb, %i.iz
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !49
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv143.i.us ; 2 uses
  %.promoted107.i.us = load i32, ptr %i.jg, align 4, !tbaa !48 ; 3 uses
  %i.jh = icmp slt i32 %.promoted107.i.us, %i.hl
  br i1 %i.jh, label %.lr.ph109.i.us, label %.critedge2.i.us

.lr.ph109.i.us:                                   ; preds = %bb.z
  %i.ji = load float, ptr %i.iw, align 4, !tbaa !64
  %i.jj = sext i32 %.promoted107.i.us to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph109.i.us
  %indvars.iv138.i.us = phi i64 [ %i.jj, %.lr.ph109.i.us ], [ %indvars.iv.next139.i.us, %bb.ab ] ; 3 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %indvars.iv138.i.us
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !64
  %i.jm = fcmp nsz olt float %i.jl, %i.ji
  br i1 %i.jm, label %bb.ab, label %.critedge2.loopexit.i.us

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next139.i.us = add nsw i64 %indvars.iv138.i.us, 1 ; 2 uses
  %lftr.wideiv141.i.us = trunc i64 %indvars.iv.next139.i.us to i32
  %exitcond142.not.i.us = icmp eq i32 %i.hl, %lftr.wideiv141.i.us
  br i1 %exitcond142.not.i.us, label %.critedge2.thread.i.us, label %bb.aa, !llvm.loop !67

.critedge2.loopexit.i.us:                         ; preds = %bb.aa
  %i.jn = trunc nsw i64 %indvars.iv138.i.us to i32
  br label %.critedge2.i.us

.critedge2.i.us:                                  ; preds = %.critedge2.loopexit.i.us, %bb.z
  %.lcssa108.i.us = phi i32 [ %.promoted107.i.us, %bb.z ], [ %i.jn, %.critedge2.loopexit.i.us ] ; 2 uses
  %i.jo = icmp eq i32 %.lcssa108.i.us, %i.hl
  br i1 %i.jo, label %.critedge2.thread.i.us, label %bb.ac

.critedge2.thread.i.us:                           ; preds = %bb.ab, %.critedge2.i.us
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge2.thread.i.us, %.critedge2.i.us
  %storemerge129.i.us = phi i32 [ %i.hv, %.critedge2.thread.i.us ], [ %.lcssa108.i.us, %.critedge2.i.us ] ; 2 uses
  store i32 %storemerge129.i.us, ptr %i.jg, align 4
  %i.jp = sub i32 %.0.in120.i.us, %i.hk
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !64 ; 2 uses
  %i.jt = fadd nsz float %.178118.i.us, %i.js     ; 2 uses
  %i.ju = sitofp nsz i32 %storemerge129.i.us to float
  %i.jv = tail call nsz float @llvm.fmuladd.f32(float %i.js, float %i.ju, float %.1119.i.us) ; 2 uses
  %indvars.iv.next144.i.us = add nsw i64 %indvars.iv143.i.us, 1 ; 2 uses
  %lftr.wideiv146.i.us = trunc i64 %indvars.iv.next144.i.us to i32
  %exitcond147.not.i.us = icmp eq i32 %i.hj, %lftr.wideiv146.i.us
  br i1 %exitcond147.not.i.us, label %._crit_edge.i.loopexit.us, label %bb.z, !llvm.loop !68

._crit_edge.i.loopexit.us:                        ; preds = %bb.ac
  %i.jw = fdiv nsz float %i.jv, %i.jt
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv148.i.us
  store float %i.jw, ptr %i.jx, align 4, !tbaa !64
  %indvars.iv.next149.i.us = add nuw nsw i64 %indvars.iv148.i.us, 1 ; 2 uses
  %exitcond152.not.i.us = icmp eq i64 %indvars.iv.next149.i.us, %wide.trip.count151.i
  br i1 %exitcond152.not.i.us, label %compute_contrast_function.exit, label %.lr.ph127.i.split.us, !llvm.loop !69

.lr.ph127.i.split:                                ; preds = %.lr.ph127.i
  br i1 %i.hr, label %.lr.ph104.i.us260, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph127.i.split
  %min.iters.check = icmp ult i32 %i.hl, 8
  br i1 %min.iters.check, label %.preheader.i.preheader357, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %wide.trip.count151.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.jy = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.jz = uitofp nneg <4 x i32> %step.add to <4 x float>
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store <4 x float> %i.jy, ptr %i.ka, align 4, !tbaa !64
  store <4 x float> %i.jz, ptr %i.kb, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count151.i
  br i1 %cmp.n, label %compute_contrast_function.exit, label %.preheader.i.preheader357

.preheader.i.preheader357:                        ; preds = %.preheader.i.preheader, %middle.block
  %indvars.iv148.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.i

.lr.ph104.i.us260:                                ; preds = %.lr.ph127.i.split, %.preheader.i.loopexit.us284
  %indvars.iv148.i.us259 = phi i64 [ %indvars.iv.next149.i.us281, %.preheader.i.loopexit.us284 ], [ 0, %.lr.ph127.i.split ] ; 4 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv148.i.us259 to i32
  %i.ke = uitofp nneg i32 %i.kd to float
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv148.i.us259
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %.lr.ph104.i.us260
  %indvars.iv134.i.us261 = phi i64 [ 0, %.lr.ph104.i.us260 ], [ %indvars.iv.next135.i.us276, %bb.ag ] ; 4 uses
  %.076102.i.us262 = phi float [ %i.ke, %.lr.ph104.i.us260 ], [ %i.lc, %bb.ag ]
  %.077101.i.us263 = phi float [ 1.000000e+00, %.lr.ph104.i.us260 ], [ %i.la, %bb.ag ]
  %i.kg = trunc i64 %indvars.iv134.i.us261 to i32
  %i.kh = add i32 %i.hs, %i.kg
  %i.ki = srem i32 %i.kh, %i.hj                   ; 2 uses
  %i.kj = icmp slt i32 %i.ki, 0
  %i.kk = select i1 %i.kj, i32 %i.hj, i32 0
  %i.kl = add nsw i32 %i.kk, %i.ki
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !49
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134.i.us261 ; 2 uses
  %.promoted.i.us264 = load i32, ptr %i.kp, align 4, !tbaa !48 ; 3 uses
  %i.kq = icmp slt i32 %.promoted.i.us264, %i.hl
  br i1 %i.kq, label %.lr.ph.i.us265, label %.critedge.i.us272

.lr.ph.i.us265:                                   ; preds = %bb.ad
  %i.kr = load float, ptr %i.kf, align 4, !tbaa !64
  %i.ks = sext i32 %.promoted.i.us264 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.us265
  %indvars.iv.i.us266 = phi i64 [ %i.ks, %.lr.ph.i.us265 ], [ %indvars.iv.next.i.us267, %bb.af ] ; 3 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %indvars.iv.i.us266
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !64
  %i.kv = fcmp nsz olt float %i.ku, %i.kr
  br i1 %i.kv, label %bb.af, label %.critedge.loopexit.i.us270

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next.i.us267 = add nsw i64 %indvars.iv.i.us266, 1 ; 2 uses
  %lftr.wideiv.i.us268 = trunc i64 %indvars.iv.next.i.us267 to i32
  %exitcond.not.i.us269 = icmp eq i32 %i.hl, %lftr.wideiv.i.us268
  br i1 %exitcond.not.i.us269, label %.critedge.thread.i.us274, label %bb.ae, !llvm.loop !65

.critedge.loopexit.i.us270:                       ; preds = %bb.ae
  %i.kw = trunc nsw i64 %indvars.iv.i.us266 to i32
  br label %.critedge.i.us272

.critedge.i.us272:                                ; preds = %.critedge.loopexit.i.us270, %bb.ad
  %.lcssa92.i.us273 = phi i32 [ %.promoted.i.us264, %bb.ad ], [ %i.kw, %.critedge.loopexit.i.us270 ] ; 2 uses
  %i.kx = icmp eq i32 %.lcssa92.i.us273, %i.hl
  br i1 %i.kx, label %.critedge.thread.i.us274, label %bb.ag

.critedge.thread.i.us274:                         ; preds = %bb.af, %.critedge.i.us272
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.thread.i.us274, %.critedge.i.us272
  %storemerge.i.us275 = phi i32 [ %i.hv, %.critedge.thread.i.us274 ], [ %.lcssa92.i.us273, %.critedge.i.us272 ] ; 2 uses
  store i32 %storemerge.i.us275, ptr %i.kp, align 4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv134.i.us261
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !64 ; 2 uses
  %i.la = fadd nsz float %.077101.i.us263, %i.kz  ; 2 uses
  %i.lb = sitofp nsz i32 %storemerge.i.us275 to float
  %i.lc = tail call nsz float @llvm.fmuladd.f32(float %i.kz, float %i.lb, float %.076102.i.us262) ; 2 uses
  %indvars.iv.next135.i.us276 = add nuw nsw i64 %indvars.iv134.i.us261, 1 ; 2 uses
  %exitcond137.not.i.us277 = icmp eq i64 %indvars.iv.next135.i.us276, %wide.trip.count.i
  br i1 %exitcond137.not.i.us277, label %.preheader.i.loopexit.us284, label %bb.ad, !llvm.loop !66

.preheader.i.loopexit.us284:                      ; preds = %bb.ag
  %i.ld = fdiv nsz float %i.lc, %i.la
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv148.i.us259
  store float %i.ld, ptr %i.le, align 4, !tbaa !64
  %indvars.iv.next149.i.us281 = add nuw nsw i64 %indvars.iv148.i.us259, 1 ; 2 uses
  %exitcond152.not.i.us282 = icmp eq i64 %indvars.iv.next149.i.us281, %wide.trip.count151.i
  br i1 %exitcond152.not.i.us282, label %compute_contrast_function.exit, label %.lr.ph104.i.us260, !llvm.loop !69

.preheader.i:                                     ; preds = %.preheader.i.preheader357, %.preheader.i
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %.preheader.i ], [ %indvars.iv148.i.ph, %.preheader.i.preheader357 ] ; 3 uses
  %i.lf = trunc nuw nsw i64 %indvars.iv148.i to i32
  %i.lg = uitofp nneg i32 %i.lf to float
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv148.i
  store float %i.lg, ptr %i.lh, align 4, !tbaa !64
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %compute_contrast_function.exit, label %.preheader.i, !llvm.loop !73

compute_contrast_function.exit:                   ; preds = %.preheader.i, %.preheader.i.loopexit.us284, %._crit_edge.i.loopexit.us, %middle.block, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.li = load ptr, ptr %i.gi, align 8, !tbaa !74
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv312
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !47
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv312
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !48
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv312
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !47
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv312
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !48
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv312
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !48
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv312
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !48
  tail call void %i.li(ptr noundef %i.lk, i64 noundef %i.ln, ptr noundef %i.lp, i64 noundef %i.ls, i32 noundef %i.lu, i32 noundef %i.lw, ptr noundef %i.hn, ptr noundef %i.hp) #8
  br label %bb.ah

bb.ah:                                            ; preds = %compute_contrast_function.exit, %bb.t
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.lx = load i32, ptr %i.fz, align 4, !tbaa !45
  %i.ly = sext i32 %i.lx to i64
  %i.lz = icmp slt i64 %indvars.iv.next313, %i.ly
  br i1 %i.lz, label %bb.s, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %bb.ah, %bb.r, %bb.p
  %.0187 = phi ptr [ %i.fs, %bb.p ], [ %i.fx, %bb.r ], [ %i.fx, %bb.ah ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !57
  %i.mc = add nsw i32 %i.mb, 1                    ; 2 uses
  %i.md = load i32, ptr %i.af, align 4, !tbaa !20
  %.not215 = icmp slt i32 %i.mc, %i.md
  %spec.store.select221 = select i1 %.not215, i32 %i.mc, i32 0
  store i32 %spec.store.select221, ptr %i.ma, align 8
  %i.me = tail call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %.0187) #8
  br label %.thread222

.thread222:                                       ; preds = %bb.j, %bb.l, %._crit_edge252, %bb.q, %bb.e, %bb.p, %bb.f, %.loopexit
  %.4 = phi i32 [ -12, %bb.f ], [ 0, %._crit_edge252 ], [ %i.me, %.loopexit ], [ -12, %bb.p ], [ -541478725, %bb.e ], [ -12, %bb.l ], [ -12, %bb.q ], [ -12, %bb.j ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !76
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !42   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !63
  %i.o = shl nsw i32 %i.i, 1
  %i.p = or disjoint i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 4 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !20
  %i.r = load i32, ptr %i.e, align 4, !tbaa !76
  %i.s = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.r) #8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !80
  %i.w = zext nneg i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !61  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.aa, ptr %i.ac, align 8, !tbaa !48
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !48
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !48
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !61
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = zext nneg i8 %i.y to i32
  %i.ak = ashr i32 %i.ai, %i.aj
  %i.al = sub nsw i32 0, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.al, ptr %i.am, align 4, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.al, ptr %i.an, align 8, !tbaa !48
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.ap = sub nsw i32 0, %i.ao
  %i.aq = ashr i32 %i.ap, %i.w
  %i.ar = sub nsw i32 0, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !48
  %i.au = load i32, ptr %i.n, align 8, !tbaa !63
  %i.av = shl nuw i32 1, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !51
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !42  ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.preheader88

.lr.ph:                                           ; preds = %bb.a
  %i.az = sitofp nsz i32 %i.i to float
  %i.ba = fmul nsz float %i.k, %i.az              ; 2 uses
  %i.bb = fmul nsz float %i.ba, %i.ba
  %i.bc = fpext nsz float %i.bb to double         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64   ; 3 uses
  %min.iters.check = icmp eq i32 %i.ax, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.be = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.bf = add <2 x i32> %i.be, splat (i32 1)
  %i.bg = uitofp nneg <2 x i32> %i.bf to <2 x double> ; 2 uses
  %i.bh = fmul nnan nsz <2 x double> %i.bg, splat (double -5.000000e-01)
  %i.bi = fmul nsz <2 x double> %i.bh, %i.bg
  %i.bj = fdiv nsz <2 x double> %i.bi, %broadcast.splat
  %i.bk = fptrunc nsz <2 x double> %i.bj to <2 x float>
  %i.bl = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %i.bk)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index
  store <2 x float> %i.bl, ptr %i.bm, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader88, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader88:                                     ; preds = %scalar.ph, %middle.block, %bb.a
  %.not8294 = icmp sgt i32 %i.s, 0
  br i1 %.not8294, label %.preheader.lr.ph, label %.critedge86

.preheader.lr.ph:                                 ; preds = %.preheader88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8784
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.br = uitofp nneg i32 %i.bq to double         ; 2 uses
  %i.bs = fmul nnan nsz double %i.br, -5.000000e-01
  %i.bt = fmul nsz double %i.bs, %i.br
  %i.bu = fdiv nsz double %i.bt, %i.bc
  %i.bv = fptrunc nsz double %i.bu to float
  %i.bw = tail call nsz float @llvm.exp.f32(float %i.bv)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store float %i.bw, ptr %i.bx, align 4, !tbaa !64
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %scalar.ph, !llvm.loop !85

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.by = load i32, ptr %i.t, align 4, !tbaa !45
  %i.bz = sext i32 %i.by to i64
  %.not82 = icmp slt i64 %indvars.iv.next103, %i.bz
  br i1 %.not82, label %.preheader, label %.critedge86, !llvm.loop !86

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %indvars.iv102 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next103, %bb.b ] ; 3 uses
  %i.ca = load i32, ptr %i.q, align 4, !tbaa !20
  %.not8091 = icmp sgt i32 %i.ca, 0
  br i1 %.not8091, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader
  %i.cb = getelementptr inbounds nuw [2048 x i8], ptr %i.bo, i64 %indvars.iv102
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.cc = load i32, ptr %i.q, align 4, !tbaa !20
end_hunk_0
