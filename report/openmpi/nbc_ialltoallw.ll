inline.NumInlined: 31
inline.NumDeleted: 14
begin_hunk_0_@ompi_coll_libnbc_ialltoallw:bb.a
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %9, align 8, !tbaa !9
  tail call void @NBC_Return_handle(ptr noundef %i.d) #6
  store ptr @ompi_request_null, ptr %9, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nbc_alltoallw_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, %0
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.c, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %.0108.ph = phi ptr [ %4, %bb.b ], [ %0, %bb.a ]
  %i.d = getelementptr i8, ptr %8, i64 220
  %.val170 = load i32, ptr %i.d, align 4, !tbaa !14
  %i.e = getelementptr i8, ptr %8, i64 264
  %.val139171 = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr i8, ptr %.val139171, i64 16
  %.val139.val172 = load i32, ptr %i.f, align 8, !tbaa !43
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  %i.g = getelementptr i8, ptr %8, i64 220
  %.val = load i32, ptr %i.g, align 4, !tbaa !14  ; 2 uses
  %i.h = getelementptr i8, ptr %8, i64 264
  %.val139 = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr i8, ptr %.val139, i64 16
  %.val139.val = load i32, ptr %i.i, align 8, !tbaa !43 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread, %bb.c
  %.val139.val182 = phi i32 [ %.val139.val172, %.thread ], [ %.val139.val, %bb.c ] ; 3 uses
  %.val180 = phi i32 [ %.val170, %.thread ], [ %.val, %bb.c ]
  %.0108176 = phi ptr [ %.0108.ph, %.thread ], [ %0, %bb.c ]
  %.0115173 = phi ptr [ %4, %.thread ], [ %0, %bb.c ]
  %i.j = icmp sgt i32 %.val139.val182, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %.val139.val182 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %opal_datatype_span.exit
  %i.k = icmp eq i64 %spec.select133, 0
  br i1 %i.k, label %._crit_edge.thread, label %nbc_get_noop_request.exit, !prof !46

.lr.ph:                                           ; preds = %.lr.ph.preheader, %opal_datatype_span.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %opal_datatype_span.exit ] ; 3 uses
  %.0102199 = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select133, %opal_datatype_span.exit ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50
  %i.r = icmp eq i64 %i.q, 0
  %i.s = icmp eq i32 %i.o, 0
  %or.cond.i = or i1 %i.s, %i.r
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.e, !prof !56

bb.e:                                             ; preds = %.lr.ph
  %i.t = sext i32 %i.o to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !59
  %i.aa = sub nsw i64 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !60
  %i.ad = sub i64 %i.ac, %i.v
  %i.ae = add nsw i64 %i.t, -1
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = add i64 %i.ad, %i.af
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %.lr.ph, %bb.e
  %.0.i = phi i64 [ %i.ag, %bb.e ], [ 0, %.lr.ph ]
  %spec.select133 = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 %.0102199) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  tail call fastcc void @ompi_coll_base_nbc_reserve_tags(ptr noundef %8)
  br i1 %11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.thread
  %i.ah = tail call i32 @ompi_request_persistent_noop_create(ptr noundef %9) #6
  br label %nbc_get_noop_request.exit.thread

bb.g:                                             ; preds = %._crit_edge.thread
  store ptr @ompi_request_empty, ptr %9, align 8, !tbaa !12
  br label %nbc_get_noop_request.exit.thread

nbc_get_noop_request.exit:                        ; preds = %._crit_edge
  %i.ai = tail call noalias ptr @malloc(i64 noundef %spec.select133) #7 ; 2 uses
  %.not193 = icmp eq ptr %i.ai, null
  br i1 %.not193, label %nbc_get_noop_request.exit.thread, label %bb.h

bb.h:                                             ; preds = %nbc_get_noop_request.exit, %bb.c
  %.val139.val183 = phi i32 [ %.val139.val182, %nbc_get_noop_request.exit ], [ %.val139.val, %bb.c ] ; 10 uses
  %.val181 = phi i32 [ %.val180, %nbc_get_noop_request.exit ], [ %.val, %bb.c ] ; 5 uses
  %.not179 = phi i1 [ false, %nbc_get_noop_request.exit ], [ true, %bb.c ]
  %.0108177 = phi ptr [ %.0108176, %nbc_get_noop_request.exit ], [ %0, %bb.c ] ; 2 uses
  %.0115174 = phi ptr [ %.0115173, %nbc_get_noop_request.exit ], [ %4, %bb.c ] ; 5 uses
  %.1114 = phi ptr [ %7, %nbc_get_noop_request.exit ], [ %3, %bb.c ] ; 2 uses
  %.1112 = phi ptr [ %6, %nbc_get_noop_request.exit ], [ %2, %bb.c ] ; 2 uses
  %.1110 = phi ptr [ %5, %nbc_get_noop_request.exit ], [ %1, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.ai, %nbc_get_noop_request.exit ], [ null, %bb.c ] ; 5 uses
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !63
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #7 ; 26 uses
  %i.al = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !49
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !65
  %.not.i = icmp eq i32 %i.al, %i.am
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not9.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @NBC_Schedule_class, ptr %i.ak, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 13 uses
  store volatile i32 1, ptr %i.an, align 8, !tbaa !67
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !68 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ap, null
  br i1 %.not6.i.i, label %.loopexit198, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.aq = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.ap, %bb.k ]
  %.07.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ao, %bb.k ]
  tail call void %i.aq(ptr noundef nonnull %i.ak) #6, !inline_history !70
  %i.ar = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.loopexit198, label %.lr.ph.i.i, !llvm.loop !71

opal_obj_new.exit:                                ; preds = %bb.j
  tail call void @free(ptr noundef %.1) #6
  br label %nbc_get_noop_request.exit.thread

.loopexit198:                                     ; preds = %.lr.ph.i.i, %bb.k
  br i1 %.not179, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.loopexit198
  %i.at = sext i32 %.val181 to i64                ; 6 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %.1110, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !49 ; 2 uses
  %.not127 = icmp eq i32 %i.av, 0
  br i1 %.not127, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds [4 x i8], ptr %6, i64 %i.at
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !49
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %.0115174, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %.1112, i64 %i.at
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !49
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %.0108177, i64 %i.bc
  %i.be = sext i32 %i.av to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.1114, i64 %i.at
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.at
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !49
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %7, i64 %i.at
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.bm = tail call i32 @NBC_Sched_copy(ptr noundef %i.bd, i8 noundef signext 0, i64 noundef %i.be, ptr noundef %i.bg, ptr noundef %i.az, i8 noundef signext 0, i64 noundef %i.bj, ptr noundef %i.bl, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #6 ; 2 uses
  %.not128 = icmp eq i32 %i.bm, 0
  br i1 %.not128, label %bb.ac, label %nbc_get_noop_request.exit.thread, !prof !8

.critedge:                                        ; preds = %.loopexit198
  %.not148171.i = icmp sgt i32 %.val139.val183, 2
  br i1 %.not148171.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.bn = add nuw i32 %.val139.val183, 1
  %12 = sdiv i32 %i.bn, 2
  %i.bo = add nsw i32 %.val181, %.val139.val183
  %smax.i = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %.lr.ph.i
  %.0122173.i = phi i32 [ 1, %.lr.ph.i ], [ %i.dl, %bb.x ] ; 3 uses
  %.0172.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.x ]
  %i.bp = add nsw i32 %.0122173.i, %.val181
  %i.bq = srem i32 %i.bp, %.val139.val183         ; 3 uses
  %i.br = sub i32 %i.bo, %.0122173.i
  %i.bs = srem i32 %i.br, %.val139.val183         ; 3 uses
  %i.bt = sext i32 %i.bq to i64                   ; 4 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !49
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %.0115174, i64 %i.bw ; 2 uses
  %i.by = sext i32 %i.bs to i64                   ; 4 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %6, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !49
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %.0115174, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %5, i64 %i.by ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !49 ; 2 uses
  %.not.i141 = icmp eq i32 %i.ce, 0
  br i1 %.not.i141, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds [8 x i8], ptr %7, i64 %i.by
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47 ; 4 uses
  %i.ch = sext i32 %i.ce to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !50
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %opal_datatype_span.exit.i, label %bb.p, !prof !56

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !57
  br label %opal_datatype_span.exit.i

opal_datatype_span.exit.i:                        ; preds = %bb.p, %bb.o
  %.3158.i = phi i64 [ %i.cm, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.cn = sub nsw i64 0, %.3158.i
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = tail call i32 @NBC_Sched_copy(ptr noundef %i.cc, i8 noundef signext 0, i64 noundef %i.ch, ptr noundef nonnull %i.cg, ptr noundef %i.co, i8 noundef signext 1, i64 noundef %i.ch, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #6 ; 2 uses
  %.not139.i = icmp eq i32 %i.cp, 0
  br i1 %.not139.i, label %bb.q, label %.loopexit, !prof !8

bb.q:                                             ; preds = %opal_datatype_span.exit.i, %bb.n
  %.1.i = phi i64 [ %.0172.i, %bb.n ], [ %.3158.i, %opal_datatype_span.exit.i ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bt ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !49 ; 2 uses
  %.not140.i = icmp eq i32 %i.cr, 0
  br i1 %.not140.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bt
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !47
  %i.cv = tail call i32 @NBC_Sched_send(ptr noundef %i.bx, i8 noundef signext 0, i64 noundef %i.cs, ptr noundef %i.cu, i32 noundef %i.bq, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #6 ; 2 uses
  %.not141.i = icmp eq i32 %i.cv, 0
  br i1 %.not141.i, label %bb.s, label %.loopexit, !prof !8

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cw = load i32, ptr %i.cd, align 4, !tbaa !49 ; 2 uses
  %.not142.i = icmp eq i32 %i.cw, 0
  br i1 %.not142.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %7, i64 %i.by ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !47
  %i.da = tail call i32 @NBC_Sched_recv(ptr noundef %i.cc, i8 noundef signext 0, i64 noundef %i.cx, ptr noundef %i.cz, i32 noundef %i.bs, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #6 ; 2 uses
  %.not143.i = icmp eq i32 %i.da, 0
  br i1 %.not143.i, label %bb.u, label %.loopexit, !prof !8

bb.u:                                             ; preds = %bb.t
  %.pr.i = load i32, ptr %i.cd, align 4, !tbaa !49 ; 2 uses
  %.not144.i = icmp eq i32 %.pr.i, 0
  br i1 %.not144.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = sub nsw i64 0, %.1.i
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = sext i32 %.pr.i to i64
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !47
  %i.df = tail call i32 @NBC_Sched_send(ptr noundef %i.dc, i8 noundef signext 1, i64 noundef %i.dd, ptr noundef %i.de, i32 noundef %i.bs, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #6 ; 2 uses
  %.not145.i = icmp eq i32 %i.df, 0
  br i1 %.not145.i, label %.thread.i, label %.loopexit, !prof !8

.thread.i:                                        ; preds = %bb.v, %bb.u, %bb.s
  %i.dg = load i32, ptr %i.cq, align 4, !tbaa !49 ; 2 uses
  %.not146.i = icmp eq i32 %i.dg, 0
  br i1 %.not146.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bt
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !47
  %i.dk = tail call i32 @NBC_Sched_recv(ptr noundef %i.bx, i8 noundef signext 0, i64 noundef %i.dh, ptr noundef %i.dj, i32 noundef %i.bq, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #6 ; 2 uses
  %.not147.i = icmp eq i32 %i.dk, 0
  br i1 %.not147.i, label %bb.x, label %.loopexit, !prof !8

bb.x:                                             ; preds = %bb.w, %.thread.i
  %i.dl = add nuw nsw i32 %.0122173.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dl, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n, !llvm.loop !72

._crit_edge.i:                                    ; preds = %bb.x, %.critedge
  %i.dm = and i32 %.val139.val183, 1
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.y, label %a2aw_sched_inplace.exit

bb.y:                                             ; preds = %._crit_edge.i
  %i.do = ashr exact i32 %.val139.val183, 1
  %i.dp = add nsw i32 %i.do, %.val181
  %i.dq = srem i32 %i.dp, %.val139.val183         ; 3 uses
  %i.dr = sext i32 %i.dq to i64                   ; 3 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !49
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %.0115174, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %7, i64 %i.dr ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !47 ; 4 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dr ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !49 ; 2 uses
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !50
  %i.ed = icmp eq i64 %i.ec, 0
  %i.ee = icmp eq i32 %i.dz, 0
  %or.cond.i152.i = or i1 %i.ee, %i.ed
  br i1 %or.cond.i152.i, label %opal_datatype_span.exit154.i, label %bb.z, !prof !56

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !57
  br label %opal_datatype_span.exit154.i

opal_datatype_span.exit154.i:                     ; preds = %bb.z, %bb.y
  %.4159.i = phi i64 [ %i.eg, %bb.z ], [ 0, %bb.y ]
  %i.eh = sub nsw i64 0, %.4159.i
  %i.ei = inttoptr i64 %i.eh to ptr               ; 2 uses
  %i.ej = tail call i32 @NBC_Sched_copy(ptr noundef %i.dv, i8 noundef signext 0, i64 noundef %i.ea, ptr noundef nonnull %i.dx, ptr noundef %i.ei, i8 noundef signext 1, i64 noundef %i.ea, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #6 ; 2 uses
  %.not149.i = icmp eq i32 %i.ej, 0
  br i1 %.not149.i, label %bb.aa, label %.loopexit, !prof !8

bb.aa:                                            ; preds = %opal_datatype_span.exit154.i
  %i.ek = load i32, ptr %i.dy, align 4, !tbaa !49
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.dw, align 8, !tbaa !47
  %i.en = tail call i32 @NBC_Sched_send(ptr noundef %i.ei, i8 noundef signext 1, i64 noundef %i.el, ptr noundef %i.em, i32 noundef %i.dq, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #6 ; 2 uses
  %.not150.i = icmp eq i32 %i.en, 0
  br i1 %.not150.i, label %bb.ab, label %.loopexit, !prof !8

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load i32, ptr %i.dy, align 4, !tbaa !49
  %i.ep = sext i32 %i.eo to i64
  %i.eq = load ptr, ptr %i.dw, align 8, !tbaa !47
  %i.er = tail call i32 @NBC_Sched_recv(ptr noundef %i.dv, i8 noundef signext 0, i64 noundef %i.ep, ptr noundef %i.eq, i32 noundef %i.dq, ptr noundef nonnull %i.ak, i1 noundef zeroext true) #6 ; 2 uses
  %.not151.i = icmp eq i32 %i.er, 0
  br i1 %.not151.i, label %a2aw_sched_inplace.exit, label %.loopexit

bb.ac:                                            ; preds = %bb.l, %bb.m
  %.not5364.i = icmp sgt i32 %.val139.val183, 0
  br i1 %.not5364.i, label %.lr.ph.preheader.i, label %a2aw_sched_inplace.exit

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %i.es = zext i32 %.val181 to i64
  %wide.trip.count.i = zext nneg i32 %.val139.val183 to i64
  br label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %opal_datatype_span.exit57.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %opal_datatype_span.exit57.thread.i ] ; 10 uses
  %i.et = icmp eq i64 %indvars.iv.i, %i.es
  br i1 %i.et, label %opal_datatype_span.exit57.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i143
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.1114, i64 %indvars.iv.i
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !47 ; 6 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.1110, i64 %indvars.iv.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !49 ; 2 uses
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !50
  %i.fb = icmp eq i64 %i.fa, 0
  %i.fc = icmp eq i32 %i.ex, 0
  %or.cond.i.i = or i1 %i.fc, %i.fb
  br i1 %or.cond.i.i, label %opal_datatype_span.exit.thread.i, label %opal_datatype_span.exit.i144, !prof !56

opal_datatype_span.exit.i144:                     ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !57
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !59
  %i.fj = sub nsw i64 %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !60
  %i.fm = sub i64 %i.fl, %i.fe
  %i.fn = add nsw i64 %i.ey, -1
  %i.fo = mul i64 %i.fj, %i.fn
  %i.fp = add i64 %i.fm, %i.fo
  %i.fq = icmp sgt i64 %i.fp, 0
  br i1 %i.fq, label %bb.ae, label %opal_datatype_span.exit.thread.i, !prof !73

bb.ae:                                            ; preds = %opal_datatype_span.exit.i144
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.1112, i64 %indvars.iv.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !49
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %.0108177, i64 %i.ft
  %i.fv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.fw = tail call i32 @NBC_Sched_send(ptr noundef %i.fu, i8 noundef signext 0, i64 noundef %i.ey, ptr noundef nonnull %i.ev, i32 noundef %i.fv, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #6 ; 2 uses
  %.not.i146 = icmp eq i32 %i.fw, 0
  br i1 %.not.i146, label %opal_datatype_span.exit.thread.i, label %.loopexit

opal_datatype_span.exit.thread.i:                 ; preds = %bb.ae, %opal_datatype_span.exit.i144, %bb.ad
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !47 ; 6 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !49 ; 2 uses
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !50
  %i.ge = icmp eq i64 %i.gd, 0
  %i.gf = icmp eq i32 %i.ga, 0
  %or.cond.i55.i = or i1 %i.gf, %i.ge
  br i1 %or.cond.i55.i, label %opal_datatype_span.exit57.thread.i, label %opal_datatype_span.exit57.i, !prof !56

opal_datatype_span.exit57.i:                      ; preds = %opal_datatype_span.exit.thread.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !57
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !58
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !59
  %i.gm = sub nsw i64 %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !60
  %i.gp = sub i64 %i.go, %i.gh
  %i.gq = add nsw i64 %i.gb, -1
  %i.gr = mul i64 %i.gm, %i.gq
  %i.gs = add i64 %i.gp, %i.gr
  %i.gt = icmp sgt i64 %i.gs, 0
  br i1 %i.gt, label %bb.af, label %opal_datatype_span.exit57.thread.i, !prof !73

bb.af:                                            ; preds = %opal_datatype_span.exit57.i
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !49
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %.0115174, i64 %i.gw
  %i.gy = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gz = tail call i32 @NBC_Sched_recv(ptr noundef %i.gx, i8 noundef signext 0, i64 noundef %i.gb, ptr noundef nonnull %i.fy, i32 noundef %i.gy, ptr noundef nonnull %i.ak, i1 noundef zeroext false) #6 ; 2 uses
  %.not52.i = icmp eq i32 %i.gz, 0
  br i1 %.not52.i, label %opal_datatype_span.exit57.thread.i, label %.loopexit

opal_datatype_span.exit57.thread.i:               ; preds = %bb.af, %opal_datatype_span.exit57.i, %opal_datatype_span.exit.thread.i, %.lr.ph.i143
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i145, label %a2aw_sched_inplace.exit, label %.lr.ph.i143, !llvm.loop !74

.loopexit:                                        ; preds = %opal_datatype_span.exit.i, %bb.r, %bb.t, %bb.v, %bb.w, %bb.af, %bb.ae, %bb.ab, %bb.aa, %opal_datatype_span.exit154.i
  %.0105.ph = phi i32 [ %i.er, %bb.ab ], [ %i.en, %bb.aa ], [ %i.fw, %bb.ae ], [ %i.ej, %opal_datatype_span.exit154.i ], [ %i.gz, %bb.af ], [ %i.cv, %bb.r ], [ %i.da, %bb.t ], [ %i.df, %bb.v ], [ %i.dk, %bb.w ], [ %i.cp, %opal_datatype_span.exit.i ]
  %i.ha = load i8, ptr @opal_uses_threads, align 1, !tbaa !75, !range !76, !noundef !77
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.ag, label %bb.ah, !prof !78

bb.ag:                                            ; preds = %.loopexit
  %i.hc = atomicrmw volatile add ptr %i.an, i32 -1 monotonic, align 4
  %i.hd = add i32 %i.hc, -1
  br label %opal_thread_add_fetch_32.exit

bb.ah:                                            ; preds = %.loopexit
  %i.he = load volatile i32, ptr %i.an, align 8, !tbaa !49
  %i.hf = add nsw i32 %i.he, -1
  store volatile i32 %i.hf, ptr %i.an, align 8, !tbaa !49
  %i.hg = load volatile i32, ptr %i.an, align 8, !tbaa !49
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.ag, %bb.ah
  %.0.i147 = phi i32 [ %i.hd, %bb.ag ], [ %i.hg, %bb.ah ]
  %i.hh = icmp eq i32 %.0.i147, 0
  br i1 %i.hh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.hi = load ptr, ptr %i.ak, align 8, !tbaa !66
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !79 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !69 ; 2 uses
  %.not6.i = icmp eq ptr %i.hl, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.ai, %.lr.ph.i148
  %i.hm = phi ptr [ %i.ho, %.lr.ph.i148 ], [ %i.hl, %bb.ai ]
  %.07.i = phi ptr [ %i.hn, %.lr.ph.i148 ], [ %i.hk, %bb.ai ]
  tail call void %i.hm(ptr noundef nonnull %i.ak) #6, !inline_history !80
  %i.hn = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !69 ; 2 uses
  %.not.i149 = icmp eq ptr %i.ho, null
  br i1 %.not.i149, label %opal_obj_run_destructors.exit, label %.lr.ph.i148, !llvm.loop !81

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i148, %bb.ai
  tail call void @free(ptr noundef nonnull %i.ak) #6
  br label %bb.aj

end_hunk_0
begin_hunk_1_@nbc_alltoallw_inter_init:bb.a
  tail call void %i.bp(ptr noundef nonnull %i.j) #6, !inline_history !80
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i80, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69 ; 2 uses
  %.not.i81 = icmp eq ptr %i.br, null
  br i1 %.not.i81, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i79, !llvm.loop !81

bb.q:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.q, %opal_obj_new.exit
  %i.bs = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.j) #6 ; 4 uses
  %.not72 = icmp eq i32 %i.bs, 0
  br i1 %.not72, label %bb.v, label %bb.r, !prof !8

bb.r:                                             ; preds = %._crit_edge
  %i.bt = load i8, ptr @opal_uses_threads, align 1, !tbaa !75, !range !76, !noundef !77
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.s, label %bb.t, !prof !78

bb.s:                                             ; preds = %bb.r
  %i.bv = atomicrmw volatile add ptr %i.m, i32 -1 monotonic, align 4
  %i.bw = add i32 %i.bv, -1
  br label %opal_thread_add_fetch_32.exit84

bb.t:                                             ; preds = %bb.r
  %i.bx = load volatile i32, ptr %i.m, align 8, !tbaa !49
  %i.by = add nsw i32 %i.bx, -1
  store volatile i32 %i.by, ptr %i.m, align 8, !tbaa !49
  %i.bz = load volatile i32, ptr %i.m, align 8, !tbaa !49
  br label %opal_thread_add_fetch_32.exit84

opal_thread_add_fetch_32.exit84:                  ; preds = %bb.s, %bb.t
  %.0.i83 = phi i32 [ %i.bw, %bb.s ], [ %i.bz, %bb.t ]
  %i.ca = icmp eq i32 %.0.i83, 0
  br i1 %i.ca, label %bb.u, label %opal_obj_new.exit.thread

bb.u:                                             ; preds = %opal_thread_add_fetch_32.exit84
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !79 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !69 ; 2 uses
  %.not6.i85 = icmp eq ptr %i.ce, null
  br i1 %.not6.i85, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.u, %.lr.ph.i86
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i86 ], [ %i.ce, %bb.u ]
  %.07.i87 = phi ptr [ %i.cg, %.lr.ph.i86 ], [ %i.cd, %bb.u ]
  tail call void %i.cf(ptr noundef nonnull %i.j) #6, !inline_history !80
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.i87, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !69 ; 2 uses
  %.not.i88 = icmp eq ptr %i.ch, null
  br i1 %.not.i88, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i86, !llvm.loop !81

bb.v:                                             ; preds = %._crit_edge
  %i.ci = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.j, ptr noundef %8, ptr noundef %10, i1 noundef zeroext %11, ptr noundef %9, ptr noundef null) #6 ; 4 uses
  %.not73 = icmp eq i32 %i.ci, 0
  br i1 %.not73, label %opal_obj_new.exit.thread, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.cj = load i8, ptr @opal_uses_threads, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.x, label %bb.y, !prof !78

bb.x:                                             ; preds = %bb.w
  %i.cl = atomicrmw volatile add ptr %i.m, i32 -1 monotonic, align 4
  %i.cm = add i32 %i.cl, -1
  br label %opal_thread_add_fetch_32.exit91

bb.y:                                             ; preds = %bb.w
  %i.cn = load volatile i32, ptr %i.m, align 8, !tbaa !49
  %i.co = add nsw i32 %i.cn, -1
  store volatile i32 %i.co, ptr %i.m, align 8, !tbaa !49
  %i.cp = load volatile i32, ptr %i.m, align 8, !tbaa !49
  br label %opal_thread_add_fetch_32.exit91

opal_thread_add_fetch_32.exit91:                  ; preds = %bb.x, %bb.y
  %.0.i90 = phi i32 [ %i.cm, %bb.x ], [ %i.cp, %bb.y ]
  %i.cq = icmp eq i32 %.0.i90, 0
  br i1 %i.cq, label %bb.z, label %opal_obj_new.exit.thread

bb.z:                                             ; preds = %opal_thread_add_fetch_32.exit91
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !79 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !69 ; 2 uses
  %.not6.i92 = icmp eq ptr %i.cu, null
  br i1 %.not6.i92, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.z, %.lr.ph.i93
  %i.cv = phi ptr [ %i.cx, %.lr.ph.i93 ], [ %i.cu, %bb.z ]
  %.07.i94 = phi ptr [ %i.cw, %.lr.ph.i93 ], [ %i.ct, %bb.z ]
  tail call void %i.cv(ptr noundef nonnull %i.j) #6, !inline_history !80
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i94, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !69 ; 2 uses
  %.not.i95 = icmp eq ptr %i.cx, null
  br i1 %.not.i95, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i93, !llvm.loop !81

opal_obj_new.exit.thread.sink.split:              ; preds = %.lr.ph.i, %.lr.ph.i79, %.lr.ph.i86, %.lr.ph.i93, %bb.z, %bb.u, %bb.p, %bb.j
  %.160.ph = phi i32 [ %i.bc, %bb.p ], [ %i.ac, %bb.j ], [ %i.bs, %bb.u ], [ %i.bc, %.lr.ph.i79 ], [ %i.bs, %.lr.ph.i86 ], [ %i.ci, %.lr.ph.i93 ], [ %i.ci, %bb.z ], [ %i.ac, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.j) #6
  br label %opal_obj_new.exit.thread

opal_obj_new.exit.thread:                         ; preds = %opal_obj_new.exit.thread.sink.split, %opal_thread_add_fetch_32.exit, %opal_thread_add_fetch_32.exit77, %bb.d, %bb.v, %opal_thread_add_fetch_32.exit91, %opal_thread_add_fetch_32.exit84
  %.160 = phi i32 [ -2, %bb.d ], [ 0, %bb.v ], [ %i.bs, %opal_thread_add_fetch_32.exit84 ], [ %i.ci, %opal_thread_add_fetch_32.exit91 ], [ %i.bc, %opal_thread_add_fetch_32.exit77 ], [ %i.ac, %opal_thread_add_fetch_32.exit ], [ %.160.ph, %opal_obj_new.exit.thread.sink.split ]
  ret i32 %.160
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallw_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallw_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallw_inter_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallw_inter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @ompi_coll_base_nbc_reserve_tags(ptr nofree noundef captures(address) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.b = load i8, ptr @opal_uses_threads, align 1, !tbaa !75, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.split, label %opal_thread_compare_exchange_strong_32.exit.us, !prof !78

opal_thread_compare_exchange_strong_32.exit.us:   ; preds = %bb.a, %opal_thread_compare_exchange_strong_32.exit.us
  %i.d = load volatile i32, ptr %i.a, align 8, !tbaa !85 ; 3 uses
  %i.e = load volatile i32, ptr %i.a, align 8, !tbaa !49
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %.split14.us, label %opal_thread_compare_exchange_strong_32.exit.us

.split14.us:                                      ; preds = %opal_thread_compare_exchange_strong_32.exit.us
  %i.g = icmp slt i32 %i.d, -1073741821
  %i.h = add nsw i32 %i.d, -1
  %i.i = select i1 %i.g, i32 -34, i32 %i.h
  br label %.split14

.split:                                           ; preds = %bb.a, %.split.backedge
  %.pre23 = phi i8 [ %.pre23.be, %.split.backedge ], [ 1, %bb.a ]
  %i.j = load volatile i32, ptr %i.a, align 8, !tbaa !85 ; 4 uses
  %i.k = icmp slt i32 %i.j, -1073741821
  %i.l = add nsw i32 %i.j, -1
  %i.m = select i1 %i.k, i32 -34, i32 %i.l        ; 2 uses
  %i.n = trunc nuw i8 %.pre23 to i1
  br i1 %i.n, label %bb.b, label %bb.c, !prof !78

bb.b:                                             ; preds = %.split
  %i.o = cmpxchg volatile ptr %i.a, i32 %i.j, i32 %i.m acquire monotonic, align 4
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %.loopexit, label %.opal_thread_compare_exchange_strong_32.exit_crit_edge

.opal_thread_compare_exchange_strong_32.exit_crit_edge: ; preds = %bb.b
  %.pre.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !75, !range !76
  br label %.split.backedge

.split.backedge:                                  ; preds = %.opal_thread_compare_exchange_strong_32.exit_crit_edge, %bb.c
  %.pre23.be = phi i8 [ 0, %bb.c ], [ %.pre.pre, %.opal_thread_compare_exchange_strong_32.exit_crit_edge ]
  br label %.split, !llvm.loop !86

bb.c:                                             ; preds = %.split
  %i.q = load volatile i32, ptr %i.a, align 8, !tbaa !49
  %i.r = icmp eq i32 %i.q, %i.j
  br i1 %i.r, label %.split14, label %.split.backedge

.split14:                                         ; preds = %bb.c, %.split14.us
  %.us-phi16 = phi i32 [ %i.i, %.split14.us ], [ %i.m, %bb.c ]
  store i32 %.us-phi16, ptr %i.a, align 4, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.split14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @NBC_Sched_copy(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_commit(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Schedule_request(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_request_persistent_noop_create(ptr noundef) local_unnamed_addr #1

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Sched_send(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_recv(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS26ompi_coll_libnbc_request_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS14ompi_request_t", !11, i64 0}
!14 = !{!15, !5, i64 220}
!15 = !{!"ompi_communicator_t", !16, i64 0, !24, i64 96, !25, i64 160, !26, i64 168, !27, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !28, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !29, i64 264, !29, i64 272, !30, i64 280, !31, i64 288, !32, i64 296, !33, i64 304, !35, i64 312, !5, i64 320, !36, i64 328, !37, i64 336, !38, i64 344, !39, i64 352, !40, i64 360, !5, i64 368, !5, i64 372, !41, i64 376, !41, i64 377, !41, i64 378}
!16 = !{!"opal_infosubscriber_t", !17, i64 0, !19, i64 16, !23, i64 88}
!17 = !{!"opal_object_t", !18, i64 0, !5, i64 8}
!18 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!19 = !{!"opal_hash_table_t", !17, i64 0, !20, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !22, i64 64}
!20 = !{!"p1 _ZTS19opal_hash_element_t", !11, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!"p1 _ZTS24opal_hash_type_methods_t", !11, i64 0}
!23 = !{!"p1 _ZTS11opal_info_t", !11, i64 0}
!24 = !{!"opal_mutex_t", !17, i64 0, !6, i64 16, !5, i64 56}
!25 = !{!"p1 omnipotent char", !11, i64 0}
!26 = !{!"ompi_comm_extended_cid_t", !21, i64 0, !6, i64 8}
!27 = !{!"ompi_comm_extended_cid_block_t", !26, i64 0, !21, i64 16, !6, i64 24, !6, i64 25}
!28 = !{!"p1 int", !11, i64 0}
!29 = !{!"p1 _ZTS12ompi_group_t", !11, i64 0}
!30 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!31 = !{!"p1 _ZTS17opal_hash_table_t", !11, i64 0}
!32 = !{!"p1 _ZTS22mca_topo_base_module_t", !11, i64 0}
!33 = !{!"p2 _ZTS20ompi_peruse_handle_t", !34, i64 0}
!34 = !{!"any p2 pointer", !11, i64 0}
!35 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!36 = !{!"p1 _ZTS14mca_pml_comm_t", !11, i64 0}
!37 = !{!"p1 _ZTS14mca_mtl_comm_t", !11, i64 0}
!38 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !11, i64 0}
!39 = !{!"p1 _ZTS15ompi_instance_t", !11, i64 0}
!40 = !{!"p1 _ZTS13opal_object_t", !11, i64 0}
!41 = !{!"_Bool", !6, i64 0}
!42 = !{!15, !29, i64 264}
!43 = !{!44, !5, i64 16}
!44 = !{!"ompi_group_t", !17, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !45, i64 32, !5, i64 40, !29, i64 48, !6, i64 56, !39, i64 72}
!45 = !{!"p2 _ZTS11ompi_proc_t", !34, i64 0}
!46 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!49 = !{!5, !5, i64 0}
!50 = !{!51, !21, i64 24}
!51 = !{!"opal_datatype_t", !17, i64 0, !52, i64 16, !52, i64 18, !5, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !5, i64 72, !5, i64 76, !6, i64 80, !53, i64 144, !53, i64 168, !55, i64 192}
!52 = !{!"short", !6, i64 0}
!53 = !{!"dt_type_desc_t", !21, i64 0, !21, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTS12dt_elem_desc", !11, i64 0}
!55 = !{!"p1 long", !11, i64 0}
!56 = !{!"branch_weights", i32 2002, i32 2000}
!57 = !{!51, !21, i64 32}
!58 = !{!51, !21, i64 56}
!59 = !{!51, !21, i64 48}
!60 = !{!51, !21, i64 40}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!64, !21, i64 56}
!64 = !{!"opal_class_t", !25, i64 0, !18, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !5, i64 36, !34, i64 40, !34, i64 48, !21, i64 56}
!65 = !{!64, !5, i64 32}
!66 = !{!17, !18, i64 0}
!67 = !{!17, !5, i64 8}
!68 = !{!64, !34, i64 40}
!69 = !{!11, !11, i64 0}
!70 = distinct !{null, null}
!71 = distinct !{!71, !62}
!72 = distinct !{!72, !62}
!73 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!74 = distinct !{!74, !62}
!75 = !{!41, !41, i64 0}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = !{!64, !34, i64 48}
!80 = distinct !{null}
!81 = distinct !{!81, !62}
!82 = !{!15, !5, i64 224}
!83 = !{!15, !29, i64 272}
!84 = distinct !{!84, !62}
!85 = !{!15, !5, i64 248}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_1
