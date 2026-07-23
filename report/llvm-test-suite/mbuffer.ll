inline.NumInlined: 130
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@store_picture_in_dpb:bb.a
  %i.xp = icmp eq i32 %i.xn, %i.xo
  br i1 %i.xp, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  tail call void @error(ptr noundef nonnull @.str.14, i32 noundef 500) #16
  %.pre186 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %.pre188 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %i.xq = phi i32 [ %i.xi, %bb.gi ], [ %.pre188, %bb.gj ] ; 2 uses
  %i.xr = phi ptr [ %i.xj, %bb.gi ], [ %.pre186, %bb.gj ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xs = zext i32 %i.xq to i64
  %i.xt = icmp samesign ult i64 %indvars.iv.next, %i.xs
  br i1 %i.xt, label %bb.gi, label %.loopexit.loopexit, !llvm.loop !211

.loopexit.loopexit:                               ; preds = %bb.gk
  %.pre189 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.gh, %._crit_edge
  %i.xu = phi i32 [ %.pre189, %.loopexit.loopexit ], [ %i.xb, %bb.gh ], [ %i.xb, %._crit_edge ]
  %i.xv = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.xw = zext i32 %i.xu to i64
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.xw
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !55
  tail call fastcc void @insert_picture_in_dpb(ptr noundef %i.xy, ptr noundef nonnull %0)
  %i.xz = load i32, ptr %0, align 8, !tbaa !77
  %.not36 = icmp eq i32 %i.xz, 0
  %.pre190 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 2 uses
  br i1 %.not36, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %.loopexit
  %i.ya = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.yb = zext i32 %.pre190 to i64
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.yb
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !55
  br label %bb.gm

bb.gm:                                            ; preds = %.loopexit, %bb.gl
  %storemerge = phi ptr [ %i.yd, %bb.gl ], [ null, %.loopexit ]
  store ptr %storemerge, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 56), align 8, !tbaa !49
  %i.ye = add i32 %.pre190, 1
  store i32 %i.ye, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48
  tail call void @update_ref_list()
  tail call void @update_ltref_list()
  %i.yf = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19
  %i.yg = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24
  %i.yh = add i32 %i.yg, %i.yf
  %i.yi = load ptr, ptr @img, align 8, !tbaa !8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 28
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !25
  %i.yl = tail call noundef i32 @llvm.smax.i32(i32 %i.yk, i32 1)
  %i.ym = icmp sgt i32 %i.yh, %i.yl
  br i1 %i.ym, label %bb.gn, label %check_num_ref.exit

bb.gn:                                            ; preds = %bb.gm
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #16
  br label %check_num_ref.exit

check_num_ref.exit:                               ; preds = %bb.gn, %bb.gm, %get_smallest_poc.exit.thread, %bb.fd
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_picture_in_dpb(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6380 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @UnifiedOneForthPix(ptr noundef nonnull %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !77
  switch i32 %i.c, label %gen_field_ref_ids.exit [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !62
  store i32 3, ptr %0, align 8, !tbaa !103
  %i.e = load i32, ptr %i.a, align 4, !tbaa !101
  %.not52 = icmp eq i32 %i.e, 0
  br i1 %.not52, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %i.f, align 4, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.g, align 4, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6376
  %i.i = load i32, ptr %i.h, align 8, !tbaa !102
  %.not53 = icmp eq i32 %i.i, 0
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.j, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6372
  %i.l = load i32, ptr %i.k, align 4, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.l, ptr %i.m, align 4, !tbaa !155
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  tail call void @dpb_split_field(ptr noundef nonnull %0)
  br label %gen_field_ref_ids.exit

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.n, align 8, !tbaa !64
  %i.o = load i32, ptr %0, align 8, !tbaa !103
  %i.p = or i32 %i.o, 1                           ; 2 uses
  store i32 %i.p, ptr %0, align 8, !tbaa !103
  %i.q = load i32, ptr %i.a, align 4, !tbaa !101
  %.not50 = icmp eq i32 %i.q, 0
  br i1 %.not50, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !112
  %i.t = or i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !204
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !204
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6376
  %i.y = load i32, ptr %i.x, align 8, !tbaa !102
  %.not51 = icmp eq i32 %i.y, 0
  br i1 %.not51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !114
  %i.ab = or i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 6372
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !155
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.af = icmp eq i32 %i.p, 3
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @dpb_combine_field(ptr noundef nonnull %0)
  br label %gen_field_ref_ids.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !143
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6392 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !78 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 3
  br i1 %i.al, label %.preheader.lr.ph.i, label %gen_field_ref_ids.exit

.preheader.lr.ph.i:                               ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 6396 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 6488
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 6504
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 6528
  %.pre.i = load i32, ptr %i.am, align 4, !tbaa !79
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.as = phi i32 [ %i.ak, %.preheader.lr.ph.i ], [ %i.ci, %._crit_edge.i ]
  %i.at = phi i32 [ %.pre.i, %.preheader.lr.ph.i ], [ %i.cj, %._crit_edge.i ] ; 2 uses
  %indvars.iv33.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next34.i, %._crit_edge.i ] ; 6 uses
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %.preheader.i ] ; 6 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !90 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !212
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !213
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv33.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !214 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !212
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !213
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv33.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !214 ; 2 uses
  %2 = zext nneg i8 %i.bg to i64
  %i.bh = icmp sgt i8 %i.ba, -1
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.bi = zext nneg i8 %i.ba to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !215
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.bl = phi i64 [ %i.bk, %bb.n ], [ 0, %.lr.ph.i ]
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !92 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !217
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !219
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv33.i
  store i64 %i.bl, ptr %i.bq, align 8, !tbaa !215
  %i.br = icmp sgt i8 %i.bg, -1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %2
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !215
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = phi i64 [ %i.bt, %bb.p ], [ 0, %bb.o ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !217
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !219
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv33.i
  store i64 %i.bu, ptr %i.bz, align 8, !tbaa !215
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !95
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !213
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv33.i
  store i8 1, ptr %i.cd, align 1, !tbaa !214
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = load i32, ptr %i.am, align 4, !tbaa !79 ; 2 uses
  %i.cf = sdiv i32 %i.ce, 4
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !221

._crit_edge.loopexit.i:                           ; preds = %bb.q
  %.pre36.i = load i32, ptr %i.aj, align 8, !tbaa !78
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ci = phi i32 [ %.pre36.i, %._crit_edge.loopexit.i ], [ %i.as, %.preheader.i ] ; 2 uses
  %i.cj = phi i32 [ %i.ce, %._crit_edge.loopexit.i ], [ %i.at, %.preheader.i ]
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ck = sdiv i32 %i.ci, 4
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next34.i, %i.cl
  br i1 %i.cm, label %.preheader.i, label %gen_field_ref_ids.exit, !llvm.loop !222

bb.r:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.cn, align 8, !tbaa !65
  %i.co = load i32, ptr %0, align 8, !tbaa !103
  %i.cp = or i32 %i.co, 2                         ; 2 uses
  store i32 %i.cp, ptr %0, align 8, !tbaa !103
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !101
  %.not48 = icmp eq i32 %i.cq, 0
  br i1 %.not48, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !112
  %i.ct = or i32 %i.cs, 2
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !112
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !204
  %i.cw = or i32 %i.cv, 2
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !204
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 6376
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !102
  %.not49 = icmp eq i32 %i.cy, 0
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !114
  %i.db = or i32 %i.da, 2
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !114
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 6372
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !109
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !155
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %i.df = icmp eq i32 %i.cp, 3
  br i1 %i.df, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @dpb_combine_field(ptr noundef nonnull %0)
  br label %gen_field_ref_ids.exit

bb.w:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !132
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !143
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 6392 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !78 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 3
  br i1 %i.dl, label %.preheader.lr.ph.i54, label %gen_field_ref_ids.exit

.preheader.lr.ph.i54:                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 6396 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 6488
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 6504
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 6528
  %.pre.i55 = load i32, ptr %i.dm, align 4, !tbaa !79
  br label %.preheader.i56

.preheader.i56:                                   ; preds = %._crit_edge.i58, %.preheader.lr.ph.i54
  %i.ds = phi i32 [ %i.dk, %.preheader.lr.ph.i54 ], [ %i.fi, %._crit_edge.i58 ]
  %i.dt = phi i32 [ %.pre.i55, %.preheader.lr.ph.i54 ], [ %i.fj, %._crit_edge.i58 ] ; 2 uses
  %indvars.iv33.i57 = phi i64 [ 0, %.preheader.lr.ph.i54 ], [ %indvars.iv.next34.i59, %._crit_edge.i58 ] ; 6 uses
  %i.du = icmp sgt i32 %i.dt, 3
  br i1 %i.du, label %.lr.ph.i60, label %._crit_edge.i58

.lr.ph.i60:                                       ; preds = %.preheader.i56, %bb.aa
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i62, %bb.aa ], [ 0, %.preheader.i56 ] ; 6 uses
  %i.dv = load ptr, ptr %i.dn, align 8, !tbaa !90 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !212
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i61
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !213
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv33.i57
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !214 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !212
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i61
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !213
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv33.i57
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !214 ; 2 uses
  %3 = zext nneg i8 %i.eg to i64
  %i.eh = icmp sgt i8 %i.ea, -1
  br i1 %i.eh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i60
  %i.ei = zext nneg i8 %i.ea to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !215
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i60
  %i.el = phi i64 [ %i.ek, %bb.x ], [ 0, %.lr.ph.i60 ]
  %i.em = load ptr, ptr %i.dp, align 8, !tbaa !92 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !217
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i61
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !219
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv33.i57
  store i64 %i.el, ptr %i.eq, align 8, !tbaa !215
  %i.er = icmp sgt i8 %i.eg, -1
  br i1 %i.er, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %3
  %i.et = load i64, ptr %i.es, align 8, !tbaa !215
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eu = phi i64 [ %i.et, %bb.z ], [ 0, %bb.y ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !217
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i61
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !219
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv33.i57
  store i64 %i.eu, ptr %i.ez, align 8, !tbaa !215
  %i.fa = load ptr, ptr %i.dr, align 8, !tbaa !95
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i61
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !213
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv33.i57
  store i8 1, ptr %i.fd, align 1, !tbaa !214
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %i.fe = load i32, ptr %i.dm, align 4, !tbaa !79 ; 2 uses
  %i.ff = sdiv i32 %i.fe, 4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next.i62, %i.fg
  br i1 %i.fh, label %.lr.ph.i60, label %._crit_edge.loopexit.i63, !llvm.loop !221

._crit_edge.loopexit.i63:                         ; preds = %bb.aa
  %.pre36.i64 = load i32, ptr %i.dj, align 8, !tbaa !78
  br label %._crit_edge.i58

._crit_edge.i58:                                  ; preds = %._crit_edge.loopexit.i63, %.preheader.i56
  %i.fi = phi i32 [ %.pre36.i64, %._crit_edge.loopexit.i63 ], [ %i.ds, %.preheader.i56 ] ; 2 uses
  %i.fj = phi i32 [ %i.fe, %._crit_edge.loopexit.i63 ], [ %i.dt, %.preheader.i56 ]
  %indvars.iv.next34.i59 = add nuw nsw i64 %indvars.iv33.i57, 1 ; 2 uses
  %i.fk = sdiv i32 %i.fi, 4
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next34.i59, %i.fl
  br i1 %i.fm, label %.preheader.i56, label %gen_field_ref_ids.exit, !llvm.loop !222

gen_field_ref_ids.exit:                           ; preds = %._crit_edge.i58, %._crit_edge.i, %bb.w, %bb.m, %bb.v, %bb.l, %bb.g, %bb.c
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 6364
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !107
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !104
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 6384
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !223
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.fr, ptr %i.fs, align 8, !tbaa !207
  ret void
}

declare void @direct_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @output_one_frame_from_dpb() unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef 150) #16
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 2 uses
  %i.c = icmp eq i32 %.pr, 0
  br i1 %i.c, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 150) #16
  %.pr13 = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 2 uses
  %.not12.i = icmp eq i32 %.pr13, 0
  br i1 %.not12.i, label %get_smallest_poc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b, %bb.c
  %i.d = phi i32 [ %.pr13, %bb.c ], [ %.pr, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr @dpb, align 8, !tbaa !50   ; 4 uses
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %i.d, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.f, 4294967294
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.new
  %.010 = phi i32 [ 2147483647, %.lr.ph.i.new ], [ %.111.1, %bb.h ] ; 3 uses
  %.0 = phi i32 [ -1, %.lr.ph.i.new ], [ %.1.1, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.h ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !143  ; 2 uses
  %i.l = icmp sgt i32 %.010, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !207
  %.not.i = icmp eq i32 %i.n, 0                   ; 2 uses
  %i.o = trunc nuw i64 %indvars.iv.i to i32
  %spec.select = select i1 %.not.i, i32 %i.k, i32 %.010
  %spec.select24 = select i1 %.not.i, i32 %i.o, i32 %.0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.111 = phi i32 [ %.010, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.d ], [ %spec.select24, %bb.e ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !143  ; 2 uses
  %i.t = icmp sgt i32 %.111, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !207
  %.not.i.1 = icmp eq i32 %i.v, 0                 ; 2 uses
  %i.w = trunc nuw i64 %indvars.iv.next.i to i32
  %spec.select.1 = select i1 %.not.i.1, i32 %i.s, i32 %.111
  %spec.select24.1 = select i1 %.not.i.1, i32 %i.w, i32 %.1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.111.1 = phi i32 [ %.111, %bb.f ], [ %spec.select.1, %bb.g ] ; 3 uses
  %.1.1 = phi i32 [ %.1, %bb.f ], [ %spec.select24.1, %bb.g ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %get_smallest_poc.exit.unr-lcssa, label %bb.d, !llvm.loop !209

get_smallest_poc.exit.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_smallest_poc.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %get_smallest_poc.exit.unr-lcssa, %.lr.ph.i
  %.010.epil.init = phi i32 [ 2147483647, %.lr.ph.i ], [ %.111.1, %get_smallest_poc.exit.unr-lcssa ] ; 3 uses
  %.0.epil.init = phi i32 [ -1, %.lr.ph.i ], [ %.1.1, %get_smallest_poc.exit.unr-lcssa ] ; 2 uses
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %get_smallest_poc.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.epil.init
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !143 ; 2 uses
  %i.ab = icmp sgt i32 %.010.epil.init, %i.aa
  br i1 %i.ab, label %bb.i, label %get_smallest_poc.exit

bb.i:                                             ; preds = %.epil.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !207
  %.not.i.epil = icmp eq i32 %i.ad, 0             ; 2 uses
  %i.ae = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %spec.select.epil = select i1 %.not.i.epil, i32 %i.aa, i32 %.010.epil.init
  %spec.select24.epil = select i1 %.not.i.epil, i32 %i.ae, i32 %.0.epil.init
  br label %get_smallest_poc.exit

get_smallest_poc.exit:                            ; preds = %.epil.preheader, %bb.i, %get_smallest_poc.exit.unr-lcssa
  %.111.lcssa = phi i32 [ %.111.1, %get_smallest_poc.exit.unr-lcssa ], [ %.010.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.i ] ; 2 uses
  %.1.lcssa = phi i32 [ %.1.1, %get_smallest_poc.exit.unr-lcssa ], [ %.0.epil.init, %.epil.preheader ], [ %spec.select24.epil, %bb.i ] ; 2 uses
  %i.af = icmp eq i32 %.1.lcssa, -1
  br i1 %i.af, label %get_smallest_poc.exit.thread, label %bb.j

get_smallest_poc.exit.thread:                     ; preds = %bb.c, %get_smallest_poc.exit
  %.21219 = phi i32 [ %.111.lcssa, %get_smallest_poc.exit ], [ 2147483647, %bb.c ]
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 150) #16
  %.pre = load ptr, ptr @dpb, align 8, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %get_smallest_poc.exit.thread, %get_smallest_poc.exit
  %i.ag = phi ptr [ %.pre, %get_smallest_poc.exit.thread ], [ %i.e, %get_smallest_poc.exit ]
  %.220 = phi i32 [ -1, %get_smallest_poc.exit.thread ], [ %.1.lcssa, %get_smallest_poc.exit ] ; 2 uses
  %.21218 = phi i32 [ %.21219, %get_smallest_poc.exit.thread ], [ %.111.lcssa, %get_smallest_poc.exit ] ; 2 uses
  %i.ah = sext i32 %.220 to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.ak = load i32, ptr @p_dec, align 4, !tbaa !4
  tail call void @write_stored_frame(ptr noundef %i.aj, i32 noundef %i.ak) #16
  %i.al = load ptr, ptr @input, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@dpb_split_field:bb.a
  %i.ev = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6472
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !100
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !229
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv514
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !226
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 6472
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !100
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !229
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.eo
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !226
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 6400
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !82
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl nsw i64 %i.fl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fb, ptr align 2 %i.fi, i64 %i.fm, i1 false)
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 6404
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83
  %i.fq = sdiv i32 %i.fp, 2
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next515, %i.fr
  br i1 %i.fs, label %.lr.ph479, label %._crit_edge, !llvm.loop !232

._crit_edge:                                      ; preds = %.lr.ph479, %.preheader470
  %i.ft = load ptr, ptr %i.v, align 8, !tbaa !64
  tail call void @UnifiedOneForthPix(ptr noundef %i.ft) #16
  %i.fu = load ptr, ptr %i.ai, align 8, !tbaa !65
  tail call void @UnifiedOneForthPix(ptr noundef %i.fu) #16
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !62  ; 13 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !201 ; 3 uses
  %i.fy = load ptr, ptr %i.v, align 8, !tbaa !64  ; 15 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !132
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !203 ; 3 uses
  %i.gc = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 14 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.gb, ptr %i.gd, align 4, !tbaa !132
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !233 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !233
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 %i.gb, ptr %i.gh, align 4, !tbaa !203
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 %i.gb, ptr %i.gi, align 4, !tbaa !203
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 %i.fx, ptr %i.gj, align 8, !tbaa !201
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 %i.fx, ptr %i.gk, align 8, !tbaa !201
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %i.gf, ptr %i.gl, align 8, !tbaa !233
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 6380
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !101 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 6380
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !101
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 6380
  store i32 %i.gn, ptr %i.gp, align 4, !tbaa !101
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 6376
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !102 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 6376
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !102
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 6376
  store i32 %i.gr, ptr %i.gt, align 8, !tbaa !102
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 6372
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !109 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 6372
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !109
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 6372
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !109
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !155
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 6428
  store i32 1, ptr %i.gz, align 4, !tbaa !88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 6428
  store i32 1, ptr %i.ha, align 4, !tbaa !88
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fv, i64 6432
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !89 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 6432
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !89
  %i.he = getelementptr inbounds nuw i8, ptr %i.fy, i64 6432
  store i32 %i.hc, ptr %i.he, align 8, !tbaa !89
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fv, i64 6536
  store ptr %i.fy, ptr %i.hf, align 8, !tbaa !156
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fv, i64 6544
  store ptr %i.gc, ptr %i.hg, align 8, !tbaa !157
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fy, i64 6544
  store ptr %i.gc, ptr %i.hh, align 8, !tbaa !157
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fy, i64 6552
  store ptr %i.fv, ptr %i.hi, align 8, !tbaa !234
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 6536
  store ptr %i.fy, ptr %i.hj, align 8, !tbaa !156
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gc, i64 6552
  store ptr %i.fv, ptr %i.hk, align 8, !tbaa !234
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fv, i64 6560
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !235 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gc, i64 6560
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !235
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fy, i64 6560
  store i32 %i.hm, ptr %i.ho, align 8, !tbaa !235
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fv, i64 816
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  %i.hs = shl nsw i32 %i.hr, 1
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.hq, i64 %i.hu, i1 false)
  %i.hv = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 288
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull align 8 %i.hy, i64 %i.hu, i1 false)
  %i.hz = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 552
  %i.id = load i32, ptr @listXsize, align 16, !tbaa !4
  %i.ie = shl nsw i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = shl nsw i64 %i.if, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.ic, i64 %i.ig, i1 false)
  %i.ih = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr nonnull align 8 %i.ik, i64 %i.ig, i1 false)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 6536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.in = phi ptr [ %i.b, %bb.c ], [ %.pre, %._crit_edge ] ; 14 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 6396
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !79 ; 5 uses
  %i.iq = sdiv i32 %i.ip, 4                       ; 2 uses
  %i.ir = icmp sgt i32 %i.ip, 3
  br i1 %i.ir, label %.lr.ph486, label %._crit_edge487.split

.lr.ph486:                                        ; preds = %bb.d
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 6392
  %i.it = load i32, ptr %i.is, align 8, !tbaa !78 ; 2 uses
  %i.iu = sdiv i32 %i.it, 4                       ; 2 uses
  %i.iv = icmp sgt i32 %i.it, 3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 6480
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 6488 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 6504 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 1608 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.in, i64 288 ; 2 uses
  br i1 %i.iv, label %.lr.ph486.split, label %._crit_edge487.split

.lr.ph486.split:                                  ; preds = %.lr.ph486
  %i.jc = getelementptr inbounds nuw i8, ptr %i.in, i64 6432
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !89
  %.not462 = icmp eq i32 %i.jd, 0
  br i1 %.not462, label %.lr.ph486.split.split.us, label %.lr.ph486.split.split

.lr.ph486.split.split.us:                         ; preds = %.lr.ph486.split
  %i.je = load ptr, ptr %i.ix, align 8, !tbaa !90 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !212
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !212
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !92 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !217
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !217
  %wide.trip.count533 = zext nneg i32 %i.iq to i64
  %wide.trip.count528 = zext nneg i32 %i.iu to i64
  br label %.lr.ph482.us

.lr.ph482.us:                                     ; preds = %._crit_edge483.split.us.us, %.lr.ph486.split.split.us
  %indvars.iv530 = phi i64 [ %indvars.iv.next531, %._crit_edge483.split.us.us ], [ 0, %.lr.ph486.split.split.us ] ; 5 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv530
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !213
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv530
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !213
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv530
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !219
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv530
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !219
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph482.us
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %bb.i ], [ 0, %.lr.ph482.us ] ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv525
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !214 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv525
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !214 ; 2 uses
  %1 = zext nneg i8 %i.jx to i64
  %i.jy = icmp sgt i8 %i.jv, -1
  br i1 %i.jy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.jz = zext nneg i8 %i.jv to i64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jz
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !215
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.kc = phi i64 [ %i.kb, %bb.f ], [ -1, %bb.e ]
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv525
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !215
  %i.ke = icmp sgt i8 %i.jx, -1
  br i1 %i.ke, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %1
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !215
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.kh = phi i64 [ %i.kg, %bb.h ], [ -1, %bb.g ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv525
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !215
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count528
  br i1 %exitcond529.not, label %._crit_edge483.split.us.us, label %bb.e, !llvm.loop !236

._crit_edge483.split.us.us:                       ; preds = %bb.i
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count533
  br i1 %exitcond534.not, label %._crit_edge487.split, label %.lr.ph482.us, !llvm.loop !237

.lr.ph486.split.split:                            ; preds = %.lr.ph486.split
  %i.kj = load ptr, ptr %i.iw, align 8, !tbaa !69
  %wide.trip.count523 = zext nneg i32 %i.iq to i64
  %wide.trip.count = zext nneg i32 %i.iu to i64
  %i.kk = load ptr, ptr %i.ix, align 8, !tbaa !90 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !212
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  br label %.lr.ph482

.lr.ph482:                                        ; preds = %.lr.ph486.split.split, %._crit_edge483.split
  %indvars.iv520 = phi i64 [ 0, %.lr.ph486.split.split ], [ %indvars.iv.next521, %._crit_edge483.split ] ; 10 uses
  %i.ko = trunc nuw nsw i64 %indvars.iv520 to i32 ; 2 uses
  %i.kp = lshr i32 %i.ko, 2
  %i.kq = and i32 %i.kp, 1                        ; 2 uses
  %i.kr = lshr i32 %i.ko, 3
  %i.ks = mul nsw i32 %i.kr, %i.f
  %invariant.op = or disjoint i32 %i.ks, %i.kq
  %.not464 = icmp eq i32 %i.kq, 0
  %i.kt = select i1 %.not464, i32 2, i32 4        ; 2 uses
  %i.ku = zext nneg i32 %i.kt to i64              ; 4 uses
  %i.kv = getelementptr inbounds nuw [264 x i8], ptr %i.iy, i64 %i.ku
  %i.kw = getelementptr inbounds nuw [264 x i8], ptr %i.in, i64 %i.ku
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 288
  %i.ky = or disjoint i32 %i.kt, 1
  %i.kz = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw [264 x i8], ptr %i.ja, i64 %i.ku
  %i.lb = getelementptr inbounds nuw [264 x i8], ptr %i.ja, i64 %i.kz
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv520
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !213
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph482, %bb.w
  %indvars.iv517 = phi i64 [ 0, %.lr.ph482 ], [ %indvars.iv.next518, %bb.w ] ; 10 uses
  %i.le = trunc nuw nsw i64 %indvars.iv517 to i32
  %i.lf = lshr i32 %i.le, 1
  %i.lg = and i32 %i.lf, 1073741822
  %.reass = add i32 %i.lg, %invariant.op
  %i.lh = sext i32 %.reass to i64
  %i.li = getelementptr inbounds i8, ptr %i.kj, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !214
  %.not463 = icmp eq i8 %i.lj, 0
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 %indvars.iv517
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !214 ; 4 uses
  br i1 %.not463, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lm = sext i8 %i.ll to i32                    ; 2 uses
  %i.ln = load ptr, ptr %i.km, align 8, !tbaa !212
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv520
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !213
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv517
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !214 ; 2 uses
  %i.ls = sext i8 %i.lr to i32                    ; 2 uses
  %i.lt = icmp sgt i8 %i.ll, -1                   ; 2 uses
  br i1 %i.lt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.lu = zext nneg i32 %i.lm to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.lu
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !215
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.lx = phi i64 [ %i.lw, %bb.l ], [ 0, %bb.k ]
  %i.ly = load ptr, ptr %i.iz, align 8, !tbaa !92 ; 5 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.ku
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !217
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv520
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !219
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv517
  store i64 %i.lx, ptr %i.md, align 8, !tbaa !215
  %i.me = icmp sgt i8 %i.lr, -1                   ; 2 uses
  br i1 %i.me, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mf = zext nneg i32 %i.ls to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.mf
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !215
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.mi = phi i64 [ %i.mh, %bb.n ], [ 0, %bb.m ]
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.kz
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !217
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv520
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !219
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv517
  store i64 %i.mi, ptr %i.mn, align 8, !tbaa !215
  br i1 %i.lt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.mo = zext nneg i32 %i.lm to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.mo
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !215
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.mr = phi i64 [ %i.mq, %bb.p ], [ 0, %bb.o ]
  %i.ms = load ptr, ptr %i.ly, align 8, !tbaa !217
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv520
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !219
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %indvars.iv517
  store i64 %i.mr, ptr %i.mv, align 8, !tbaa !215
  br i1 %i.me, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.mw = zext nneg i32 %i.ls to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !215
  br label %bb.w

bb.s:                                             ; preds = %bb.j
  %i.mz = load ptr, ptr %i.kn, align 8, !tbaa !212
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv520
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !213
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %indvars.iv517
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !214 ; 2 uses
  %2 = zext nneg i8 %i.nd to i64
  %i.ne = icmp sgt i8 %i.ll, -1
  br i1 %i.ne, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.nf = zext nneg i8 %i.ll to i64
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.nf
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !215
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ni = phi i64 [ %i.nh, %bb.t ], [ -1, %bb.s ]
  %i.nj = load ptr, ptr %i.iz, align 8, !tbaa !92 ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !217
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv520
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !219
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv517
  store i64 %i.ni, ptr %i.nn, align 8, !tbaa !215
  %i.no = icmp sgt i8 %i.nd, -1
  br i1 %i.no, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %2
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !215
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  %.sink571 = phi ptr [ %i.ly, %bb.r ], [ %i.ly, %bb.q ], [ %i.nj, %bb.u ], [ %i.nj, %bb.v ]
  %.sink = phi i64 [ %i.my, %bb.r ], [ 0, %bb.q ], [ -1, %bb.u ], [ %i.nq, %bb.v ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.sink571, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !217
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv520
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !219
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv517
  store i64 %.sink, ptr %i.nv, align 8, !tbaa !215
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge483.split, label %bb.j, !llvm.loop !236

._crit_edge483.split:                             ; preds = %bb.w
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %._crit_edge487.split, label %.lr.ph482, !llvm.loop !237

._crit_edge487.split:                             ; preds = %._crit_edge483.split, %._crit_edge483.split.us.us, %.lr.ph486, %bb.d
  %i.nw = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1148
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !15
  %.not456 = icmp eq i32 %i.ny, 0
  br i1 %.not456, label %bb.x, label %.loopexit469.thread557

bb.x:                                             ; preds = %._crit_edge487.split
  %i.nz = getelementptr inbounds nuw i8, ptr %i.in, i64 6432
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !89
  %.not457 = icmp eq i32 %i.oa, 0
  br i1 %.not457, label %.preheader, label %.preheader468

.preheader468:                                    ; preds = %bb.x
  %i.ob = icmp sgt i32 %i.ip, 7
  br i1 %i.ob, label %.lr.ph497, label %.loopexit

.lr.ph497:                                        ; preds = %.preheader468
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph497, %._crit_edge493
  %i.oe = phi ptr [ %i.in, %.lr.ph497 ], [ %i.xo, %._crit_edge493 ] ; 4 uses
  %indvars.iv538 = phi i64 [ 0, %.lr.ph497 ], [ %indvars.iv.next539, %._crit_edge493 ] ; 17 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 6392
  %i.og = load i32, ptr %i.of, align 8, !tbaa !78
  %i.oh = icmp sgt i32 %i.og, 3
  br i1 %i.oh, label %.lr.ph492, label %._crit_edge493

.lr.ph492:                                        ; preds = %bb.y
  %i.oi = trunc nuw nsw i64 %indvars.iv538 to i32 ; 3 uses
  %i.oj = lshr i32 %i.oi, 1
  %i.ok = shl nuw nsw i64 %indvars.iv538, 1       ; 3 uses
  %i.ol = trunc nuw nsw i64 %i.ok to i32
  %i.om = and i32 %i.ol, 2147483640
  %i.on = and i32 %i.oi, 3
  %i.oo = or disjoint i32 %i.om, %i.on            ; 2 uses
  %i.op = or disjoint i32 %i.oo, 4
  %i.oq = lshr i32 %i.oi, 2
  %i.or = mul nsw i32 %i.oq, %i.f
  %i.os = and i32 %i.oj, 1
  %invariant.op494 = or disjoint i32 %i.or, %i.os
  %i.ot = zext nneg i32 %i.op to i64              ; 6 uses
  %i.ou = zext nneg i32 %i.oo to i64              ; 6 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph492, %bb.ab
  %i.ov = phi ptr [ %i.oe, %.lr.ph492 ], [ %i.xh, %bb.ab ]
  %i.ow = phi ptr [ %i.oe, %.lr.ph492 ], [ %i.xi, %bb.ab ] ; 2 uses
  %indvars.iv535 = phi i64 [ 0, %.lr.ph492 ], [ %indvars.iv.next536, %bb.ab ] ; 30 uses
  %i.ox = trunc nuw nsw i64 %indvars.iv535 to i32
  %i.oy = lshr i32 %i.ox, 1
  %i.oz = and i32 %i.oy, 1073741822
  %.reass495 = add i32 %i.oz, %invariant.op494
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 6480
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !69
  %i.pc = sext i32 %.reass495 to i64
  %i.pd = getelementptr inbounds i8, ptr %i.pb, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !214
  %.not458 = icmp eq i8 %i.pe, 0
  br i1 %.not458, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.pf = load ptr, ptr %i.oc, align 8, !tbaa !64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 6528
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !95
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv538
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !213
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %indvars.iv535
  store i8 1, ptr %i.pk, align 1, !tbaa !214
  %i.pl = load ptr, ptr %i.od, align 8, !tbaa !65
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 6528
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !95
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv538
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !213
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %indvars.iv535
  store i8 1, ptr %i.pq, align 1, !tbaa !214
  %i.pr = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 6528
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !95
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.ok
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !213
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %indvars.iv535
  store i8 1, ptr %i.px, align 1, !tbaa !214
  %i.py = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 6528
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !95
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.ok
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !213
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %indvars.iv535
  store i8 1, ptr %i.qd, align 1, !tbaa !214
  %i.qe = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 6512
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !93 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !238
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.ot
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !229
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %indvars.iv535
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !226 ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !239
  %i.qn = load ptr, ptr %i.od, align 8, !tbaa !65 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 6512
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !93 ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !238
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv538
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !229
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv535
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !226 ; 2 uses
  store i16 %i.qm, ptr %i.qu, align 2, !tbaa !239
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !239
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  store i16 %i.qw, ptr %i.qx, align 2, !tbaa !239
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !238
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.ot
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !229
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv535
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !226 ; 2 uses
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !239
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !238
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv538
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !229
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv535
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !226 ; 2 uses
  store i16 %i.re, ptr %i.rk, align 2, !tbaa !239
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !239
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 2
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !239
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qe, i64 6488
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !90
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !212
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.ot
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !213
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %indvars.iv535
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !214
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qn, i64 6488
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !90
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !212
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %indvars.iv538
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !213
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 %indvars.iv535
  store i8 %i.ru, ptr %i.sa, align 1, !tbaa !214
  %i.sb = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 6488
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !90
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !212
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.ot
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !213
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 %indvars.iv535
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !214
  %i.sk = load ptr, ptr %i.od, align 8, !tbaa !65
end_hunk_1
begin_hunk_2_@dpb_split_field:bb.a
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv538
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !219
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv535
  store i64 %i.wo, ptr %i.wv, align 8, !tbaa !215
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !217
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.ou
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !219
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv535
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !215
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !217
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv538
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !219
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv535
  store i64 %i.xb, ptr %i.xg, align 8, !tbaa !215
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.xh = phi ptr [ %i.ov, %bb.z ], [ %i.wg, %bb.aa ] ; 2 uses
  %i.xi = phi ptr [ %i.ow, %bb.z ], [ %i.wg, %bb.aa ] ; 2 uses
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 6392
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !78
  %i.xl = sdiv i32 %i.xk, 4
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next536, %i.xm
  br i1 %i.xn, label %bb.z, label %._crit_edge493, !llvm.loop !240

._crit_edge493:                                   ; preds = %bb.ab, %bb.y
  %i.xo = phi ptr [ %i.oe, %bb.y ], [ %i.xh, %bb.ab ] ; 4 uses
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 6396
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !79 ; 3 uses
  %i.xr = sdiv i32 %i.xq, 8
  %i.xs = sext i32 %i.xr to i64
  %i.xt = icmp slt i64 %indvars.iv.next539, %i.xs
  br i1 %i.xt, label %bb.y, label %.loopexit469, !llvm.loop !241

.loopexit469:                                     ; preds = %._crit_edge493
  %.pre547 = load ptr, ptr @active_sps, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre547, i64 1148
  %.pre548 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !15
  %i.xu = icmp eq i32 %.pre548, 0
  br i1 %i.xu, label %.preheader, label %.loopexit469.thread557

.preheader:                                       ; preds = %bb.x, %.loopexit469
  %i.xv = phi ptr [ %i.xo, %.loopexit469 ], [ %i.in, %bb.x ]
  %i.xw = phi i32 [ %i.xq, %.loopexit469 ], [ %i.ip, %bb.x ]
  %i.xx = icmp sgt i32 %i.xw, 7
  br i1 %i.xx, label %.lr.ph505, label %.loopexit

.lr.ph505:                                        ; preds = %.preheader
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph505, %._crit_edge501
  %i.ya = phi ptr [ %i.xv, %.lr.ph505 ], [ %i.ahm, %._crit_edge501 ] ; 3 uses
  %indvars.iv544 = phi i64 [ 0, %.lr.ph505 ], [ %indvars.iv.next545, %._crit_edge501 ] ; 21 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 6392
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !78
  %i.yd = icmp sgt i32 %i.yc, 3
  br i1 %i.yd, label %.lr.ph500, label %._crit_edge501

.lr.ph500:                                        ; preds = %bb.ac
  %i.ye = trunc nuw nsw i64 %indvars.iv544 to i32 ; 3 uses
  %i.yf = lshr i32 %i.ye, 1
  %.lobit.i = and i32 %i.yf, 1                    ; 2 uses
  %i.yg = and i32 %i.ye, 2147483646
  %i.yh = or disjoint i32 %.lobit.i, %i.yg
  %i.yi = shl nuw nsw i32 %i.yh, 1
  %i.yj = lshr i32 %i.ye, 2
  %i.yk = mul nsw i32 %i.yj, %i.f
  %invariant.op502 = or disjoint i32 %i.yk, %.lobit.i
  %i.yl = shl nuw nsw i64 %indvars.iv544, 1       ; 4 uses
  %i.ym = zext nneg i32 %i.yi to i64              ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph500, %bb.aq
  %indvars.iv541 = phi i64 [ 0, %.lr.ph500 ], [ %indvars.iv.next542, %bb.aq ] ; 24 uses
  %i.yn = phi ptr [ %i.ya, %.lr.ph500 ], [ %i.ahg, %bb.aq ] ; 4 uses
  %i.yo = trunc nuw nsw i64 %indvars.iv541 to i32 ; 2 uses
  %i.yp = and i32 %i.yo, 2147483646
  %i.yq = lshr i32 %i.yo, 1                       ; 2 uses
  %.lobit.i467 = and i32 %i.yq, 1
  %i.yr = or disjoint i32 %.lobit.i467, %i.yp
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 6432
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !89
  %.not460 = icmp eq i32 %i.yt, 0
  br i1 %.not460, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.yu = and i32 %i.yq, 1073741822
  %.reass503 = add i32 %i.yu, %invariant.op502
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yn, i64 6480
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !69
  %i.yx = sext i32 %.reass503 to i64
  %i.yy = getelementptr inbounds i8, ptr %i.yw, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !214 ; 3 uses
  %.not461 = icmp eq i8 %i.yz, 0
  br i1 %.not461, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 6528
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !95
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %i.yl
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !213
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %indvars.iv541
  store i8 0, ptr %i.ze, align 1, !tbaa !214
  %i.zf = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 6528
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !95
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.yl
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !213
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 %indvars.iv541
  store i8 0, ptr %i.zl, align 1, !tbaa !214
  %i.zm = load ptr, ptr %i.xy, align 8, !tbaa !65
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 6528
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !95
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv544
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !213
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 %indvars.iv541
  store i8 0, ptr %i.zr, align 1, !tbaa !214
  %i.zs = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 6528
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !95
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %indvars.iv544
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !213
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %indvars.iv541
  store i8 0, ptr %i.zx, align 1, !tbaa !214
  %i.zy = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 6512
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !93 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !238
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.ym
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !229
  %i.aae = zext nneg i32 %i.yr to i64             ; 4 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.aae
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !226 ; 2 uses
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !239 ; 2 uses
  %i.aai = load ptr, ptr %i.xy, align 8, !tbaa !65 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 6512
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !93 ; 2 uses
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !238
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.aal, i64 %indvars.iv544
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !229
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %indvars.iv541
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !226 ; 2 uses
  store i16 %i.aah, ptr %i.aap, align 2, !tbaa !239
  %i.aaq = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 6512
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !93 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !238
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aat, i64 %indvars.iv544
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !229
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %indvars.iv541
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !226 ; 2 uses
  store i16 %i.aah, ptr %i.aax, align 2, !tbaa !239
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aag, i64 2
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !239 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  store i16 %i.aaz, ptr %i.aba, align 2, !tbaa !239
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 2
  store i16 %i.aaz, ptr %i.abb, align 2, !tbaa !239
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !238
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %i.ym
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !229
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.aae
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !226 ; 2 uses
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !239 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !238
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv544
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !229
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv541
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !226 ; 2 uses
  store i16 %i.abi, ptr %i.abo, align 2, !tbaa !239
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !238
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %indvars.iv544
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !229
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv541
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !226 ; 2 uses
  store i16 %i.abi, ptr %i.abu, align 2, !tbaa !239
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abh, i64 2
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !239 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  store i16 %i.abw, ptr %i.abx, align 2, !tbaa !239
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abu, i64 2
  store i16 %i.abw, ptr %i.aby, align 2, !tbaa !239
  %i.abz = getelementptr inbounds nuw i8, ptr %i.zy, i64 6488
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !90
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !212
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %i.ym
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !213
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.aae
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !214 ; 5 uses
  %i.acg = icmp eq i8 %i.acf, -1
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aai, i64 6488
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !90
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !212
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %indvars.iv544
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !213
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 %indvars.iv541 ; 2 uses
  br i1 %i.acg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 -1, ptr %i.acm, align 1, !tbaa !214
  %i.acn = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 6488
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !90
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !212
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv544
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !213
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %indvars.iv541
  store i8 -1, ptr %i.act, align 1, !tbaa !214
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  store i8 %i.acf, ptr %i.acm, align 1, !tbaa !214
  %i.acu = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 6488
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !90
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !212
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acx, i64 %indvars.iv544
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !213
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %indvars.iv541
  store i8 %i.acf, ptr %i.ada, align 1, !tbaa !214
  %i.adb = icmp sgt i8 %i.acf, -1
  br i1 %i.adb, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.adc = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 3192
  %3 = zext nneg i8 %i.acf to i64                 ; 2 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %3
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !215
  %i.adg = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 6504
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !92
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !217
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %indvars.iv544
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !219
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %indvars.iv541
  store i64 %i.adf, ptr %i.adm, align 8, !tbaa !215
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adc, i64 4776
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %3
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !215
  br label %bb.aj

.critedge:                                        ; preds = %bb.ah
  %i.adq = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 6504
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !92
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !217
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %indvars.iv544
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !219
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.adv, i64 %indvars.iv541
  store i64 0, ptr %i.adw, align 8, !tbaa !215
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge, %bb.ai
  %i.adx = phi i64 [ %i.adp, %bb.ai ], [ 0, %.critedge ]
  %i.ady = load ptr, ptr %i.xy, align 8, !tbaa !65
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 6504
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !92
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !217
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %indvars.iv544
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !219
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %indvars.iv541
  store i64 %i.adx, ptr %i.aee, align 8, !tbaa !215
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.aef = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 6488
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !90
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !212
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.aej, i64 %i.ym
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !213
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aae
  %i.aen = load i8, ptr %i.aem, align 1, !tbaa !214 ; 5 uses
  %i.aeo = icmp eq i8 %i.aen, -1
  %i.aep = load ptr, ptr %i.xy, align 8, !tbaa !65
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 6488
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !90
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !212
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.aet, i64 %indvars.iv544
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !213
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %indvars.iv541 ; 2 uses
  br i1 %i.aeo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 -1, ptr %i.aew, align 1, !tbaa !214
  %i.aex = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 6488
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !90
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !212
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %indvars.iv544
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !213
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %indvars.iv541
  store i8 -1, ptr %i.afe, align 1, !tbaa !214
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  store i8 %i.aen, ptr %i.aew, align 1, !tbaa !214
  %i.aff = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 6488
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !90
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !212
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %indvars.iv544
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !213
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 %indvars.iv541
  store i8 %i.aen, ptr %i.afm, align 1, !tbaa !214
  %i.afn = icmp sgt i8 %i.aen, -1
  br i1 %i.afn, label %bb.an, label %.critedge466

bb.an:                                            ; preds = %bb.am
  %i.afo = load ptr, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 3456
  %4 = zext nneg i8 %i.aen to i64                 ; 2 uses
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %4
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !215
  %i.afs = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 6504
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !92
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !217
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %indvars.iv544
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !219
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.afy, i64 %indvars.iv541
  store i64 %i.afr, ptr %i.afz, align 8, !tbaa !215
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afo, i64 5040
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.aga, i64 %4
  %i.agc = load i64, ptr %i.agb, align 8, !tbaa !215
  br label %bb.ao

.critedge466:                                     ; preds = %bb.am
  %i.agd = load ptr, ptr %i.xz, align 8, !tbaa !64
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 6504
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !92
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !217
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.agh, i64 %indvars.iv544
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !219
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.agj, i64 %indvars.iv541
  store i64 0, ptr %i.agk, align 8, !tbaa !215
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge466, %bb.an
  %i.agl = phi i64 [ %i.agc, %bb.an ], [ 0, %.critedge466 ]
  %i.agm = load ptr, ptr %i.xy, align 8, !tbaa !65
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 6504
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !92
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !217
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.agq, i64 %indvars.iv544
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !219
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %indvars.iv541
  store i64 %i.agl, ptr %i.agt, align 8, !tbaa !215
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ae
  %i.agu = getelementptr inbounds nuw i8, ptr %i.yn, i64 6528
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !95
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %i.yl
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !213
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 %indvars.iv541
  store i8 %i.yz, ptr %i.agy, align 1, !tbaa !214
  %i.agz = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 6528
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !95
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.ahb, i64 %i.yl
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !213
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %indvars.iv541
  store i8 %i.yz, ptr %i.ahf, align 1, !tbaa !214
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.ahg = load ptr, ptr %i.a, align 8, !tbaa !62 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 6392
  %i.ahi = load i32, ptr %i.ahh, align 8, !tbaa !78
  %i.ahj = sdiv i32 %i.ahi, 4
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = icmp slt i64 %indvars.iv.next542, %i.ahk
  br i1 %i.ahl, label %bb.ad, label %._crit_edge501, !llvm.loop !242

._crit_edge501:                                   ; preds = %bb.aq, %bb.ac
  %i.ahm = phi ptr [ %i.ya, %bb.ac ], [ %i.ahg, %bb.aq ] ; 2 uses
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 6396
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !79
  %i.ahp = sdiv i32 %i.aho, 8
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = icmp slt i64 %indvars.iv.next545, %i.ahq
  br i1 %i.ahr, label %bb.ac, label %.loopexit, !llvm.loop !243

.loopexit469.thread557:                           ; preds = %._crit_edge487.split, %.loopexit469
  %i.ahs = phi ptr [ %i.xo, %.loopexit469 ], [ %i.in, %._crit_edge487.split ] ; 2 uses
  %i.aht = phi i32 [ %i.xq, %.loopexit469 ], [ %i.ip, %._crit_edge487.split ]
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 6528
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !95
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !213
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahs, i64 6392
  %i.ahy = load i32, ptr %i.ahx, align 8, !tbaa !78
  %i.ahz = ashr i32 %i.ahy, 4
  %i.aia = mul nsw i32 %i.ahz, %i.aht
  %i.aib = sext i32 %i.aia to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ahw, i8 0, i64 %i.aib, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge501, %.preheader468, %.preheader, %.loopexit469.thread557
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @flush_dpb() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.not12.i9 = icmp eq i32 %i.e, 0
  br i1 %.not12.i9, label %._crit_edge, label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr @dpb, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  tail call fastcc void @unmark_for_reference(ptr noundef %i.d)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %.lr.ph, label %.preheader, !llvm.loop !244

thread-pre-split:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.h = trunc nuw i64 %indvars.iv.i to i32
  tail call fastcc void @remove_frame_from_dpb(i32 noundef %i.h)
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !48 ; 2 uses
  %.not12.i = icmp eq i32 %.pr, 0
  br i1 %.not12.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %thread-pre-split
  %i.i = phi i32 [ %.pr, %thread-pre-split ], [ %i.e, %.preheader ]
  %i.j = load ptr, ptr @dpb, align 8, !tbaa !50
  %wide.trip.count.i = zext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %is_used_for_reference.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %is_used_for_reference.exit.thread.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !207
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %is_used_for_reference.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !112
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.d, label %is_used_for_reference.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.l, align 8, !tbaa !103  ; 3 uses
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6380
  %i.v = load i32, ptr %i.u, align 4, !tbaa !101
  %.not11.i.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i.i, label %.thread.i.i, label %is_used_for_reference.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.w = and i32 %i.q, 1
  %.not12.i.i = icmp eq i32 %i.w, 0
  br i1 %.not12.i.i, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64   ; 2 uses
  %.not13.i.i = icmp eq ptr %i.y, null
  br i1 %.not13.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6380
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101
  %.not14.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not14.i.i, label %bb.h, label %is_used_for_reference.exit.thread.i

bb.h:                                             ; preds = %bb.g, %.thread.i.i, %bb.f
  %i.ab = and i32 %i.q, 2
  %.not15.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not15.i.i, label %thread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ad, null
  br i1 %.not16.i.i, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 6380
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %.not17.i.i = icmp eq i32 %i.af, 0
  br i1 %.not17.i.i, label %thread-pre-split, label %is_used_for_reference.exit.thread.i

is_used_for_reference.exit.thread.i:              ; preds = %bb.j, %bb.g, %bb.e, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph11, label %bb.b, !llvm.loop !208

.lr.ph11:                                         ; preds = %is_used_for_reference.exit.thread.i, %.lr.ph11
end_hunk_2
begin_hunk_3_@unmark_for_reference:bb.a
  store i32 0, ptr %i.p, align 4, !tbaa !101
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6380
  store i32 0, ptr %i.s, align 4, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !112
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !62 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !112
  %.not62 = icmp eq ptr %.pre, null
  br i1 %.not62, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.v = phi ptr [ %i.r, %.thread ], [ %.pre, %bb.k ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 6448
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97   ; 2 uses
  %.not63 = icmp eq ptr %i.y, null
  br i1 %.not63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free_mem4Dpel(ptr noundef nonnull %i.y, i32 noundef 4, i32 noundef 4) #16
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !62   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6448
  store ptr null, ptr %i.aa, align 8, !tbaa !97
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = phi ptr [ %i.z, %bb.m ], [ %i.v, %bb.l ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6496
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !91 ; 2 uses
  %.not64 = icmp eq ptr %i.ad, null
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free_mem3Dint64(ptr noundef nonnull %i.ad, i32 noundef 6) #16
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !62  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6496
  store ptr null, ptr %i.af, align 8, !tbaa !91
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = phi ptr [ %i.ae, %bb.o ], [ %i.ab, %bb.n ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6504
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 2 uses
  %.not65 = icmp eq ptr %i.ai, null
  br i1 %.not65, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free_mem3Dint64(ptr noundef nonnull %i.ai, i32 noundef 6) #16
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6504
  store ptr null, ptr %i.ak, align 8, !tbaa !92
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !64 ; 3 uses
  %.not66 = icmp eq ptr %i.am, null
  br i1 %.not66, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 6448
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !97 ; 2 uses
  %.not67 = icmp eq ptr %i.ao, null
  br i1 %.not67, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free_mem4Dpel(ptr noundef nonnull %i.ao, i32 noundef 4, i32 noundef 4) #16
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 6448
  store ptr null, ptr %i.aq, align 8, !tbaa !97
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = phi ptr [ %i.ap, %bb.t ], [ %i.am, %bb.s ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 6496
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !91 ; 2 uses
  %.not68 = icmp eq ptr %i.at, null
  br i1 %.not68, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free_mem3Dint64(ptr noundef nonnull %i.at, i32 noundef 6) #16
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 6496
  store ptr null, ptr %i.av, align 8, !tbaa !91
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aw = phi ptr [ %i.au, %bb.v ], [ %i.ar, %bb.u ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 6504
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92 ; 2 uses
  %.not69 = icmp eq ptr %i.ay, null
  br i1 %.not69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free_mem3Dint64(ptr noundef nonnull %i.ay, i32 noundef 6) #16
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 6504
  store ptr null, ptr %i.ba, align 8, !tbaa !92
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 3 uses
  %.not70 = icmp eq ptr %i.bc, null
  br i1 %.not70, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6448
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 2 uses
  %.not71 = icmp eq ptr %i.be, null
  br i1 %.not71, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free_mem4Dpel(ptr noundef nonnull %i.be, i32 noundef 4, i32 noundef 4) #16
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 6448
  store ptr null, ptr %i.bg, align 8, !tbaa !97
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bh = phi ptr [ %i.bf, %bb.aa ], [ %i.bc, %bb.z ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6496
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !91 ; 2 uses
  %.not72 = icmp eq ptr %i.bj, null
  br i1 %.not72, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @free_mem3Dint64(ptr noundef nonnull %i.bj, i32 noundef 6) #16
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 6496
  store ptr null, ptr %i.bl, align 8, !tbaa !91
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bm = phi ptr [ %i.bk, %bb.ac ], [ %i.bh, %bb.ab ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 6504
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 2 uses
  %.not73 = icmp eq ptr %i.bo, null
  br i1 %.not73, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free_mem3Dint64(ptr noundef nonnull %i.bo, i32 noundef 6) #16
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6504
  store ptr null, ptr %i.bq, align 8, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.y
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gen_field_ref_ids(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6392 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 3
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge31

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6396 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6488
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6504
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6528
  %.pre = load i32, ptr %i.d, align 4, !tbaa !79
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.j = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %i.k = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv33 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next34, %._crit_edge ] ; 6 uses
  %i.l = icmp sgt i32 %i.k, 3
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 6 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !212
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv33
  %i.r = load i8, ptr %i.q, align 1, !tbaa !214   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !212
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv33
  %i.x = load i8, ptr %i.w, align 1, !tbaa !214   ; 2 uses
  %1 = zext nneg i8 %i.x to i64
  %i.y = icmp sgt i8 %i.r, -1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.z = zext nneg i8 %i.r to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !215
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.ac = phi i64 [ %i.ab, %bb.b ], [ 0, %.lr.ph ]
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !92  ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !217
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !219
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv33
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !215
  %i.ai = icmp sgt i8 %i.x, -1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !215
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.al = phi i64 [ %i.ak, %bb.d ], [ 0, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !217
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !219
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv33
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !215
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !213
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv33
  store i8 1, ptr %i.au, align 1, !tbaa !214
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.d, align 4, !tbaa !79  ; 2 uses
  %i.aw = sdiv i32 %i.av, 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !221

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre36 = load i32, ptr %i.a, align 8, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i32 [ %.pre36, %._crit_edge.loopexit ], [ %i.j, %.preheader ] ; 2 uses
  %i.ba = phi i32 [ %i.av, %._crit_edge.loopexit ], [ %i.k, %.preheader ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.bb = sdiv i32 %i.az, 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next34, %i.bc
  br i1 %i.bd, label %.preheader, label %._crit_edge31, !llvm.loop !222

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local void @dpb_combine_field_yuv(ptr nofree noundef captures(none) initializes((40, 48)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6392
  %i.d = load i32, ptr %i.c, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6396
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = shl nsw i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 6400
  %i.i = load i32, ptr %i.h, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 6404
  %i.k = load i32, ptr %i.j, align 4, !tbaa !83
  %i.l = shl nsw i32 %i.k, 1
  %i.m = tail call ptr @alloc_storable_picture(i32 noundef 0, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !62
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6396
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %i.o, %bb.a ], [ %i.bc, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6404
  %i.v = load i32, ptr %i.u, align 4, !tbaa !83
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph90, label %._crit_edge

.lr.ph90:                                         ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.y = phi ptr [ %i.o, %.lr.ph ], [ %i.bc, %bb.b ] ; 2 uses
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6440
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96
  %i.ac = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !226
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 6440
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !226
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 6392
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !78
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ae, ptr align 2 %i.ai, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6440
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ac
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !226
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !65  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6440
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !96
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !226
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 6392
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !78
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.as, ptr align 2 %i.ax, i64 %i.bb, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6396
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !79
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.b, label %.preheader, !llvm.loop !246

bb.c:                                             ; preds = %.lr.ph90, %bb.c
  %indvars.iv93 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next94, %bb.c ] ; 6 uses
  %i.bh = phi ptr [ %i.t, %.lr.ph90 ], [ %i.dz, %bb.c ] ; 2 uses
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6472
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !100
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !229
  %i.bm = shl nuw nsw i64 %indvars.iv93, 1        ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !226
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 6472
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !100
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !229
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv93
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !226
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 6400
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !82
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bo, ptr align 2 %i.bt, i64 %i.bx, i1 false)
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6472
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !229
  %i.cc = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !226
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !65  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6472
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !100
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !229
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv93
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !226
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 6400
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !82
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ce, ptr align 2 %i.ck, i64 %i.co, i1 false)
  %i.cp = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 6472
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !100
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !229
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.bm
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !226
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6472
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !100
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !229
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv93
end_hunk_3
