inline.NumInlined: 62
inline.NumDeleted: 7
begin_hunk_0_@internal_exr_calc_header_version_flags:bb.a
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !45
  %.not46 = icmp eq i8 %i.as, 0
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = or i32 %i.aq, 512
  store i32 %i.at, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_write_header(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.d, 0
  %spec.store.select.i = select i1 %.not.i, i32 2, i32 4098 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !23
  %i.g = icmp ugt i8 %i.f, 31
  br i1 %i.g, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %.not4462.i = icmp sgt i32 %i.i, 0
  br i1 %.not4462.i, label %.lr.ph64.i, label %.critedge.i

.lr.ph64.i:                                       ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %wide.trip.count75.i = zext nneg i32 %i.i to i64
  br label %bb.b

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %.critedge.i, label %bb.b, !llvm.loop !26

bb.b:                                             ; preds = %._crit_edge.thread.i, %.lr.ph64.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next73.i, %._crit_edge.thread.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv72.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph61.i, label %._crit_edge.thread.i

.lr.ph61.i:                                       ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %wide.trip.count70.i = zext nneg i32 %i.o to i64 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.loopexit.thread.i, %.lr.ph61.i
  %indvars.iv67.ph.i = phi i64 [ %indvars.iv.next6881.i, %.loopexit.thread.i ], [ 0, %.lr.ph61.i ]
  %i.s = phi i1 [ false, %.loopexit.thread.i ], [ true, %.lr.ph61.i ]
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.outer.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %.loopexit.i ], [ %indvars.iv67.ph.i, %.outer.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv67.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp ugt i8 %i.w, 31
  br i1 %i.x, label %.thread51.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = icmp ugt i8 %i.z, 31
  br i1 %i.aa, label %.thread51.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  %i.ad = icmp eq i32 %i.ac, 3
  br i1 %i.ad, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.h, !llvm.loop !40

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.am = icmp slt i32 %i.al, 32
  br i1 %i.am, label %bb.g, label %.loopexit.thread.i

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count70.i
  br i1 %exitcond71.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !43

.loopexit.thread.i:                               ; preds = %bb.h
  %indvars.iv.next6881.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond71.not82.i = icmp eq i64 %indvars.iv.next6881.i, %wide.trip.count70.i
  br i1 %exitcond71.not82.i, label %.thread51.i, label %.outer.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.loopexit.i
  br i1 %i.s, label %._crit_edge.thread.i, label %.thread51.i

.thread51.i:                                      ; preds = %._crit_edge.i, %.loopexit.thread.i, %bb.d, %bb.c
  %i.an = or disjoint i32 %spec.store.select.i, 1024
  br label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge.thread.i, %.thread51.i, %.preheader.i, %bb.a
  %.060 = phi i32 [ %i.an, %.thread51.i ], [ %spec.store.select.i, %bb.a ], [ %spec.store.select.i, %.preheader.i ], [ %spec.store.select.i, %._crit_edge.thread.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !44
  %.not45.i = icmp eq i8 %i.ap, 0
  %i.aq = or i32 %.060, 2048
  %spec.select = select i1 %.not45.i, i32 %.060, i32 %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !45
  %.not46.i = icmp eq i8 %i.as, 0
  %i.at = or i32 %spec.select, 512
  %.262 = select i1 %.not46.i, i32 %spec.select, i32 %i.at
  %.262.fr = freeze i32 %.262                     ; 2 uses
  store i32 20000630, ptr %i.a, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.262.fr, ptr %i.au, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ay = call i32 %i.aw(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull %i.ax) #7 ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.preheader72.a, label %.critedge57

.preheader72.a:                                   ; preds = %.critedge.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 545 ; 2 uses
  %i.bc = and i32 %.262.fr, 6144
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.preheader72.split.us, label %.preheader72.split

.preheader72.split.us:                            ; preds = %.preheader72.a, %.thread68.us
  %indvars.iv117.a = phi i64 [ %indvars.iv.next118.a, %.thread68.us ], [ 0, %.preheader72.a ] ; 3 uses
  %i.be = load i32, ptr %i.az, align 4, !tbaa !24
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv117.a, %i.bf
  br i1 %i.bg, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.preheader72.split.us
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv117.a
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !28 ; 3 uses
  %i.bk = load i8, ptr %i.bb, align 1, !tbaa !47
  %.not54.us = icmp eq i8 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !29 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0                   ; 2 uses
  br i1 %.not54.us, label %.preheader.us, label %.preheader71.us

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next115.a = add nuw nsw i64 %indvars.iv114.a, 1 ; 2 uses
  %i.bo = load i32, ptr %i.bl, align 8, !tbaa !29
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next115.a, %i.bp
  br i1 %i.bq, label %bb.k, label %.thread68.us, !llvm.loop !48

bb.k:                                             ; preds = %.lr.ph87.us, %bb.j
  %indvars.iv114.a = phi i64 [ 0, %.lr.ph87.us ], [ %indvars.iv.next115.a, %bb.j ] ; 2 uses
  %i.br = load ptr, ptr %i.co, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv114.a
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.bu = call fastcc i32 @save_attr(ptr noundef nonnull %0, ptr noundef %i.bt) ; 2 uses
  %.not55.us = icmp eq i32 %i.bu, 0
  br i1 %.not55.us, label %bb.j, label %.critedge57

.thread68.us:                                     ; preds = %select.unfold.us.us, %bb.j, %.preheader71.us, %.preheader.us
  store i8 0, ptr %i.b, align 1, !tbaa !36
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.bw = call i32 %i.bv(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.ax) #7 ; 2 uses
  %indvars.iv.next118.a = add nuw nsw i64 %indvars.iv117.a, 1
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.preheader72.split.us, label %.critedge57, !llvm.loop !49

.preheader.us:                                    ; preds = %bb.i
  br i1 %i.bn, label %.lr.ph87.us, label %.thread68.us

.preheader71.us:                                  ; preds = %bb.i
  br i1 %i.bn, label %.lr.ph.us, label %.thread68.us

.lr.ph.us:                                        ; preds = %.preheader71.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  br label %bb.l

bb.l:                                             ; preds = %select.unfold.us.us, %.lr.ph.us
  %i.bz = phi i32 [ %i.cl, %select.unfold.us.us ], [ %i.bm, %.lr.ph.us ] ; 2 uses
  %indvars.iv111.a = phi i64 [ %indvars.iv.next112.a, %select.unfold.us.us ], [ 0, %.lr.ph.us ] ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !50
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv111.a
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !31 ; 2 uses
  %i.cd = load i32, ptr %i.az, align 4, !tbaa !24
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(5) @.str) #8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %select.unfold.us.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull dereferenceable(5) @.str.1) #8
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %select.unfold.us.us, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ck = call fastcc i32 @save_attr(ptr noundef nonnull %0, ptr noundef %i.cc)
  %.fr.us.us = freeze i32 %i.ck                   ; 2 uses
  %.not56.us.us = icmp eq i32 %.fr.us.us, 0
  br i1 %.not56.us.us, label %.select.unfold.us.us_crit_edge, label %.critedge57

.select.unfold.us.us_crit_edge:                   ; preds = %bb.o
  %.pre = load i32, ptr %i.bl, align 8, !tbaa !29
  br label %select.unfold.us.us

select.unfold.us.us:                              ; preds = %.select.unfold.us.us_crit_edge, %bb.n, %bb.m
  %i.cl = phi i32 [ %i.bz, %bb.m ], [ %i.bz, %bb.n ], [ %.pre, %.select.unfold.us.us_crit_edge ] ; 2 uses
  %indvars.iv.next112.a = add nuw nsw i64 %indvars.iv111.a, 1 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next112.a, %i.cm
  br i1 %i.cn, label %bb.l, label %.thread68.us, !llvm.loop !52

.lr.ph87.us:                                      ; preds = %.preheader.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  br label %bb.k

.preheader72.split:                               ; preds = %.preheader72.a, %.thread68
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %.thread68 ], [ 0, %.preheader72.a ] ; 3 uses
  %i.cp = load i32, ptr %i.az, align 4, !tbaa !24
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv108, %i.cq
  br i1 %i.cr, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.preheader72.split
  %i.cs = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv108
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28 ; 3 uses
  %i.cv = load i8, ptr %i.bb, align 1, !tbaa !47
  %.not54 = icmp eq i8 %i.cv, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !29
  %i.cy = icmp sgt i32 %i.cx, 0                   ; 2 uses
  br i1 %.not54, label %.preheader, label %.preheader71

.preheader71:                                     ; preds = %bb.p
  br i1 %i.cy, label %.lr.ph, label %.thread68

.lr.ph:                                           ; preds = %.preheader71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  br label %bb.q

.preheader:                                       ; preds = %bb.p
  br i1 %i.cy, label %.lr.ph87, label %.thread68

.lr.ph87:                                         ; preds = %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !31
  %i.de = call fastcc i32 @save_attr(ptr noundef nonnull %0, ptr noundef %i.dd)
  %.fr = freeze i32 %i.de                         ; 2 uses
  %.not56 = icmp eq i32 %.fr, 0
  br i1 %.not56, label %select.unfold, label %.critedge57

select.unfold:                                    ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.cw, align 8, !tbaa !29
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.q, label %.thread68, !llvm.loop !52

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.di = load i32, ptr %i.cw, align 8, !tbaa !29
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next106, %i.dj
  br i1 %i.dk, label %bb.s, label %.thread68, !llvm.loop !48

bb.s:                                             ; preds = %.lr.ph87, %bb.r
  %indvars.iv105 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next106, %bb.r ] ; 2 uses
  %i.dl = load ptr, ptr %i.da, align 8, !tbaa !30
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv105
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !31
  %i.do = call fastcc i32 @save_attr(ptr noundef nonnull %0, ptr noundef %i.dn) ; 2 uses
  %.not55 = icmp eq i32 %i.do, 0
  br i1 %.not55, label %bb.r, label %.critedge57

.thread68:                                        ; preds = %select.unfold, %bb.r, %.preheader71, %.preheader
  store i8 0, ptr %i.b, align 1, !tbaa !36
  %i.dp = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.dq = call i32 %i.dp(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.ax) #7 ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.preheader72.split, label %.critedge57, !llvm.loop !49

.critedge:                                        ; preds = %.preheader72.split, %.preheader72.split.us
  %i.ds = load i8, ptr %i.c, align 1, !tbaa !7
  %.not53 = icmp eq i8 %i.ds, 0
  br i1 %.not53, label %.critedge57, label %bb.t

bb.t:                                             ; preds = %.critedge
  store i8 0, ptr %i.b, align 1, !tbaa !36
  %i.dt = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.du = call i32 %i.dt(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.ax) #7
  br label %.critedge57

.critedge57:                                      ; preds = %.thread68, %bb.q, %bb.s, %.thread68.us, %bb.o, %bb.k, %.critedge, %bb.t, %.critedge.i
  %.042 = phi i32 [ %i.ay, %.critedge.i ], [ %i.du, %bb.t ], [ 0, %.critedge ], [ %.fr.us.us, %bb.o ], [ %.fr, %bb.q ], [ %i.bu, %bb.k ], [ %i.do, %bb.s ], [ %i.bw, %.thread68.us ], [ %i.dq, %.thread68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.042
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @save_attr(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = load ptr, ptr %1, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !32
  %i.i = zext i8 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.l = tail call i32 %i.e(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.j, ptr noundef nonnull %i.k) #7 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %save_attr_uint8.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.q = load i8, ptr %i.p, align 1, !tbaa !34
  %i.r = zext i8 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1
  %i.t = tail call i32 %i.m(ptr noundef nonnull %0, ptr noundef %i.o, i64 noundef %i.s, ptr noundef nonnull %i.k) #7 ; 2 uses
  %.not79 = icmp eq i32 %i.t, 0
  br i1 %.not79, label %bb.c, label %save_attr_uint8.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  switch i32 %i.v, label %bb.aj [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.p
    i32 12, label %bb.q
    i32 13, label %bb.s
    i32 14, label %bb.t
    i32 15, label %bb.u
    i32 16, label %bb.v
    i32 17, label %bb.w
    i32 18, label %bb.x
    i32 19, label %bb.y
    i32 20, label %bb.z
    i32 21, label %bb.aa
    i32 22, label %bb.ab
    i32 23, label %bb.ac
    i32 24, label %bb.ad
    i32 25, label %bb.ae
    i32 26, label %bb.af
    i32 27, label %bb.ag
    i32 28, label %bb.ah
    i32 30, label %bb.ai
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.x = tail call fastcc i32 @save_box2i(ptr noundef nonnull %0, ptr %.val)
  br label %save_attr_uint8.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %1, i64 24
  %.val80 = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.z = tail call fastcc i32 @save_box2f(ptr noundef nonnull %0, ptr %.val80)
  br label %save_attr_uint8.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = tail call fastcc i32 @save_chlist(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %save_attr_uint8.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %1, i64 24
  %.val81 = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ac = tail call fastcc i32 @save_chromaticities(ptr noundef nonnull %0, ptr %.val81)
  br label %save_attr_uint8.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !3
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.ae = call i32 %i.ad(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4, ptr noundef nonnull %i.k) #7, !inline_history !54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %save_attr_uint8.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = call i32 %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, i64 noundef 1, ptr noundef nonnull %i.k) #7, !inline_history !55
  br label %save_attr_uint8.exit

bb.j:                                             ; preds = %bb.c
  %i.aj = getelementptr i8, ptr %1, i64 24
  %.val82 = load double, ptr %i.aj, align 8, !tbaa !36
  %i.ak = tail call fastcc i32 @save_attr_double(ptr noundef nonnull %0, double %.val82)
  br label %save_attr_uint8.exit

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 1, ptr %i.b, align 4, !tbaa !3
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.am = call i32 %i.al(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 4, ptr noundef nonnull %i.k) #7, !inline_history !54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %save_attr_uint8.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = call i32 %i.ao(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i64 noundef 1, ptr noundef nonnull %i.k) #7, !inline_history !55
  br label %save_attr_uint8.exit

bb.m:                                             ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %1, i64 24
  %.val83 = load float, ptr %i.ar, align 8, !tbaa !36
  %i.as = tail call fastcc i32 @save_attr_float(ptr noundef nonnull %0, float %.val83)
  br label %save_attr_uint8.exit

bb.n:                                             ; preds = %bb.c
  %i.at = tail call fastcc i32 @save_float_vector(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %save_attr_uint8.exit

bb.o:                                             ; preds = %bb.c
  %i.au = getelementptr i8, ptr %1, i64 24
  %.val84 = load i32, ptr %i.au, align 8, !tbaa !36
  %i.av = tail call fastcc i32 @save_attr_int(ptr noundef nonnull %0, i32 %.val84)
  br label %save_attr_uint8.exit

bb.p:                                             ; preds = %bb.c
  %i.aw = getelementptr i8, ptr %1, i64 24
  %.val85 = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.ax = tail call fastcc i32 @save_keycode(ptr noundef nonnull %0, ptr %.val85)
  br label %save_attr_uint8.exit

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 1, ptr %i.a, align 4, !tbaa !3
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.az = call i32 %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef nonnull %i.k) #7, !inline_history !54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %save_attr_uint8.exit

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = call i32 %i.bb(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, i64 noundef 1, ptr noundef nonnull %i.k) #7, !inline_history !55
  br label %save_attr_uint8.exit

bb.s:                                             ; preds = %bb.c
  %i.be = getelementptr i8, ptr %1, i64 24
  %.val86 = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.bf = tail call fastcc i32 @save_m33f(ptr noundef nonnull %0, ptr %.val86)
  br label %save_attr_uint8.exit

bb.t:                                             ; preds = %bb.c
  %i.bg = getelementptr i8, ptr %1, i64 24
  %.val87 = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.bh = tail call fastcc i32 @save_m33d(ptr noundef nonnull %0, ptr %.val87)
  br label %save_attr_uint8.exit

bb.u:                                             ; preds = %bb.c
  %i.bi = getelementptr i8, ptr %1, i64 24
  %.val88 = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.bj = tail call fastcc i32 @save_m44f(ptr noundef nonnull %0, ptr %.val88)
  br label %save_attr_uint8.exit

bb.v:                                             ; preds = %bb.c
  %i.bk = getelementptr i8, ptr %1, i64 24
  %.val89 = load ptr, ptr %i.bk, align 8, !tbaa !36
  %i.bl = tail call fastcc i32 @save_m44d(ptr noundef nonnull %0, ptr %.val89)
  br label %save_attr_uint8.exit

bb.w:                                             ; preds = %bb.c
  %i.bm = tail call fastcc i32 @save_preview(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %save_attr_uint8.exit

bb.x:                                             ; preds = %bb.c
  %i.bn = getelementptr i8, ptr %1, i64 24
  %.val90 = load ptr, ptr %i.bn, align 8, !tbaa !36
  %.val90.val = load i64, ptr %.val90, align 1
end_hunk_0
