Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/nbc_ialltoallv?download=true
inline.NumInlined: 40
inline.NumDeleted: 19
begin_hunk_0_@nbc_alltoallv_init:bb.a

opal_datatype_span.exit:                          ; preds = %._crit_edge
  %i.u = zext nneg i32 %spec.select145.lcssa to i64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !79   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = sub i64 %i.y, %i.w
  %i.aa = add nsw i64 %i.u, -1
  %i.ab = mul i64 %i.aa, %i.k
  %i.ac = add i64 %i.z, %i.ab                     ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %opal_datatype_span.exit.thread, label %bb.j, !prof !81

.lr.ph:                                           ; preds = %.lr.ph.preheader305, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader305 ] ; 2 uses
  %.0112227 = phi i32 [ %spec.select145, %.lr.ph ], [ %.0112227.ph, %.lr.ph.preheader305 ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56
  %spec.select145 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %.0112227) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !71

opal_datatype_span.exit.thread:                   ; preds = %.preheader, %._crit_edge, %opal_datatype_span.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 248 ; 4 uses
  br label %opal_thread_compare_exchange_strong_32.exit.i

opal_thread_compare_exchange_strong_32.exit.i:    ; preds = %opal_thread_compare_exchange_strong_32.exit.i.backedge, %opal_datatype_span.exit.thread
  %i.ah = load volatile i32, ptr %i.ag, align 8, !tbaa !82 ; 4 uses
  %i.ai = icmp slt i32 %i.ah, -1073741821
  %i.aj = add nsw i32 %i.ah, -1
  %i.ak = select i1 %i.ai, i32 -34, i32 %i.aj     ; 2 uses
  %i.al = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %opal_thread_compare_exchange_strong_32.exit.i
  %i.an = cmpxchg volatile ptr %i.ag, i32 %i.ah, i32 %i.ak acquire monotonic, align 4
  %i.ao = extractvalue { i32, i1 } %i.an, 1
  br i1 %i.ao, label %ompi_coll_base_nbc_reserve_tags.exit, label %opal_thread_compare_exchange_strong_32.exit.i.backedge

bb.f:                                             ; preds = %opal_thread_compare_exchange_strong_32.exit.i
  %i.ap = load volatile i32, ptr %i.ag, align 8, !tbaa !56
  %i.aq = icmp eq i32 %i.ap, %i.ah
  br i1 %i.aq, label %bb.g, label %opal_thread_compare_exchange_strong_32.exit.i.backedge

opal_thread_compare_exchange_strong_32.exit.i.backedge: ; preds = %bb.f, %bb.e
  br label %opal_thread_compare_exchange_strong_32.exit.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !56
  br label %ompi_coll_base_nbc_reserve_tags.exit

ompi_coll_base_nbc_reserve_tags.exit:             ; preds = %bb.e, %bb.g
  br i1 %11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ompi_coll_base_nbc_reserve_tags.exit
  %i.ar = tail call i32 @ompi_request_persistent_noop_create(ptr noundef %9) #5
  br label %nbc_get_noop_request.exit.thread

bb.i:                                             ; preds = %ompi_coll_base_nbc_reserve_tags.exit
  store ptr @ompi_request_empty, ptr %9, align 8, !tbaa !17
  br label %nbc_get_noop_request.exit.thread

bb.j:                                             ; preds = %opal_datatype_span.exit
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ac) #6 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %nbc_get_noop_request.exit.thread, label %nbc_get_noop_request.exit, !prof !61

bb.k:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %3, i64 24
  %.val147 = load i64, ptr %i.au, align 8, !tbaa !53
  %i.av = getelementptr i8, ptr %3, i64 48
  %.val149 = load i64, ptr %i.av, align 8, !tbaa !54
  %i.aw = getelementptr i8, ptr %3, i64 56
  %.val150 = load i64, ptr %i.aw, align 8, !tbaa !55
  %i.ax = sub nsw i64 %.val150, %.val149
  br label %nbc_get_noop_request.exit

nbc_get_noop_request.exit:                        ; preds = %bb.j, %bb.k
  %.1202 = phi i64 [ %.val147, %bb.k ], [ %.val148, %bb.j ] ; 2 uses
  %.1200 = phi i64 [ %i.ax, %bb.k ], [ %i.k, %bb.j ] ; 3 uses
  %.0198 = phi i64 [ 0, %bb.k ], [ %i.w, %bb.j ]  ; 2 uses
  %.1124 = phi ptr [ %2, %bb.k ], [ %6, %bb.j ]   ; 3 uses
  %.1122 = phi ptr [ %1, %bb.k ], [ %5, %bb.j ]   ; 3 uses
  %.1115 = phi ptr [ null, %bb.k ], [ %i.as, %bb.j ] ; 5 uses
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 56), align 8, !tbaa !63
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #6 ; 31 uses
  %i.ba = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !56
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 32), align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.ba, %i.bb
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %nbc_get_noop_request.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @NBC_Schedule_class) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %nbc_get_noop_request.exit
  %.not9.i = icmp eq ptr %i.az, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @NBC_Schedule_class, ptr %i.az, align 8, !tbaa !65
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 17 uses
  store volatile i32 1, ptr %i.bc, align 8, !tbaa !66
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @NBC_Schedule_class, i64 40), align 8, !tbaa !67 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !68 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.be, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %i.bf = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.be, %bb.n ]
  %.07.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.bd, %bb.n ]
  tail call void %i.bf(ptr noundef nonnull %i.az) #5, !inline_history !0
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %bb.m
  tail call void @free(ptr noundef %.1115) #5
  br label %nbc_get_noop_request.exit.thread

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.n
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.loopexit
  %i.bi = sext i32 %.val to i64                   ; 4 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.1122, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !56 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  %i.bm = icmp ne i64 %.1202, 0
  %or.cond3 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond3, label %bb.p, label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bi
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul nsw i64 %i.k, %i.bp
  %i.br = getelementptr inbounds i8, ptr %.0125, i64 %i.bq
  %i.bs = getelementptr inbounds [4 x i8], ptr %.1124, i64 %i.bi
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !56
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %.1200, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %.0120, i64 %i.bv
  %i.bx = zext nneg i32 %i.bk to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bi
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !56
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call i32 @NBC_Sched_copy(ptr noundef %i.bw, i8 noundef signext 0, i64 noundef %i.bx, ptr noundef %3, ptr noundef %i.br, i8 noundef signext 0, i64 noundef %i.ca, ptr noundef nonnull %7, ptr noundef nonnull %i.az, i1 noundef zeroext false) #5 ; 3 uses
  %.not140 = icmp eq i32 %i.cb, 0
  br i1 %.not140, label %bb.ai, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.cc = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.r, label %bb.s, !prof !61

bb.r:                                             ; preds = %bb.q
  %i.ce = atomicrmw volatile add ptr %i.bc, i32 -1 monotonic, align 4
  %i.cf = add i32 %i.ce, -1
  br label %opal_thread_add_fetch_32.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = load volatile i32, ptr %i.bc, align 8, !tbaa !56
  %i.ch = add nsw i32 %i.cg, -1
  store volatile i32 %i.ch, ptr %i.bc, align 8, !tbaa !56
  %i.ci = load volatile i32, ptr %i.bc, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.r, %bb.s
  %.0.i154 = phi i32 [ %i.cf, %bb.r ], [ %i.ci, %bb.s ]
  %i.cj = icmp eq i32 %.0.i154, 0
  br i1 %i.cj, label %bb.t, label %nbc_get_noop_request.exit.thread

bb.t:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ck = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !68 ; 2 uses
  %.not6.i = icmp eq ptr %i.cn, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %i.co = phi ptr [ %i.cq, %.lr.ph.i ], [ %i.cn, %bb.t ]
  %.07.i = phi ptr [ %i.cp, %.lr.ph.i ], [ %i.cm, %bb.t ]
  tail call void %i.co(ptr noundef nonnull %i.az) #5, !inline_history !2
  %i.cp = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %.not.i155 = icmp eq ptr %i.cq, null
  br i1 %.not.i155, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.t
  tail call void @free(ptr noundef nonnull %i.az) #5
  br label %nbc_get_noop_request.exit.thread

.critedge:                                        ; preds = %.loopexit
  %i.cr = add nuw nsw i32 %.val146.val, 1
  %12 = sdiv i32 %i.cr, 2
  %.not139155.i = icmp sgt i32 %.val146.val, 2
  br i1 %.not139155.i, label %.lr.ph.i156, label %._crit_edge.i

.lr.ph.i156:                                      ; preds = %.critedge
  %i.cs = add nsw i32 %.val146.val, %.val
  %i.ct = icmp eq i64 %.val148, 0
  %i.cu = sub nsw i64 0, %.0198
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  br i1 %i.ct, label %a2av_sched_inplace.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i156
  %smax.i = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.ac, %.lr.ph.split.preheader.i
  %.0116156.i = phi i32 [ %i.eh, %bb.ac ], [ 1, %.lr.ph.split.preheader.i ] ; 3 uses
  %i.cw = add nsw i32 %.0116156.i, %.val
  %i.cx = srem i32 %i.cw, %.val146.val            ; 3 uses
  %i.cy = sub i32 %i.cs, %.0116156.i
  %i.cz = srem i32 %i.cy, %.val146.val            ; 3 uses
  %i.da = sext i32 %i.cx to i64                   ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %6, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !56
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.k, %i.dd
  %i.df = getelementptr inbounds i8, ptr %.0125, i64 %i.de ; 2 uses
  %i.dg = sext i32 %i.cz to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !56
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %i.k, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %.0125, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dg ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !56 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.dp = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dq = tail call i32 @NBC_Sched_copy(ptr noundef %i.dl, i8 noundef signext 0, i64 noundef %i.dp, ptr noundef %7, ptr noundef %i.cv, i8 noundef signext 1, i64 noundef %i.dp, ptr noundef %7, ptr noundef nonnull %i.az, i1 noundef zeroext true) #5 ; 2 uses
  %.not.i157 = icmp eq i32 %i.dq, 0
  br i1 %.not.i157, label %bb.v, label %.thread152.i, !prof !12

bb.v:                                             ; preds = %bb.u, %.lr.ph.split.i
  %i.dr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.da ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.du = zext nneg i32 %i.ds to i64
  %i.dv = tail call i32 @NBC_Sched_send(ptr noundef %i.df, i8 noundef signext 0, i64 noundef %i.du, ptr noundef %7, i32 noundef %i.cx, ptr noundef nonnull %i.az, i1 noundef zeroext false) #5 ; 2 uses
  %.not135.i = icmp eq i32 %i.dv, 0
  br i1 %.not135.i, label %bb.x, label %.thread152.i, !prof !12

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dw = load i32, ptr %i.dm, align 4, !tbaa !56 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.dy = zext nneg i32 %i.dw to i64
  %i.dz = tail call i32 @NBC_Sched_recv(ptr noundef %i.dl, i8 noundef signext 0, i64 noundef %i.dy, ptr noundef %7, i32 noundef %i.cz, ptr noundef nonnull %i.az, i1 noundef zeroext true) #5 ; 2 uses
  %.not136.i = icmp eq i32 %i.dz, 0
  br i1 %.not136.i, label %bb.z, label %.thread152.i, !prof !12

bb.z:                                             ; preds = %bb.y
  %.pr.i = load i32, ptr %i.dm, align 4, !tbaa !56 ; 2 uses
  %i.ea = icmp sgt i32 %.pr.i, 0
  br i1 %i.ea, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.eb = zext nneg i32 %.pr.i to i64
  %i.ec = tail call i32 @NBC_Sched_send(ptr noundef %i.cv, i8 noundef signext 1, i64 noundef %i.eb, ptr noundef %7, i32 noundef %i.cz, ptr noundef nonnull %i.az, i1 noundef zeroext false) #5 ; 2 uses
  %.not137.i = icmp eq i32 %i.ec, 0
  br i1 %.not137.i, label %.thread.i, label %.thread152.i, !prof !12

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.x
  %i.ed = load i32, ptr %i.dr, align 4, !tbaa !56 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread.i
  %i.ef = zext nneg i32 %i.ed to i64
  %i.eg = tail call i32 @NBC_Sched_recv(ptr noundef %i.df, i8 noundef signext 0, i64 noundef %i.ef, ptr noundef %7, i32 noundef %i.cx, ptr noundef nonnull %i.az, i1 noundef zeroext true) #5 ; 2 uses
  %.not138.i = icmp eq i32 %i.eg, 0
  br i1 %.not138.i, label %bb.ac, label %.thread152.i, !prof !12

bb.ac:                                            ; preds = %bb.ab, %.thread.i
  %i.eh = add nuw nsw i32 %.0116156.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.eh, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %bb.ac, %.critedge
  %i.ei = and i32 %.val146.val, 1
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ad, label %a2av_sched_inplace.exit

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ek = ashr exact i32 %.val146.val, 1
  %i.el = add nsw i32 %i.ek, %.val
  %i.em = srem i32 %i.el, %.val146.val            ; 3 uses
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %6, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !56
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul nsw i64 %i.k, %i.eq
  %i.es = getelementptr inbounds i8, ptr %.0125, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %5, i64 %i.en ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !56 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %bb.ae, label %a2av_sched_inplace.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ew = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ex = sub nsw i64 0, %.0198
  %i.ey = inttoptr i64 %i.ex to ptr               ; 2 uses
  %i.ez = tail call i32 @NBC_Sched_copy(ptr noundef %i.es, i8 noundef signext 0, i64 noundef %i.ew, ptr noundef %7, ptr noundef %i.ey, i8 noundef signext 1, i64 noundef %i.ew, ptr noundef %7, ptr noundef nonnull %i.az, i1 noundef zeroext true) #5 ; 2 uses
  %.not140.i = icmp eq i32 %i.ez, 0
  br i1 %.not140.i, label %bb.af, label %.thread152.i, !prof !12

bb.af:                                            ; preds = %bb.ae
  %.pr149.i = load i32, ptr %i.et, align 4, !tbaa !56 ; 2 uses
  %i.fa = icmp sgt i32 %.pr149.i, 0
  br i1 %i.fa, label %bb.ag, label %a2av_sched_inplace.exit

bb.ag:                                            ; preds = %bb.af
  %i.fb = zext nneg i32 %.pr149.i to i64
  %i.fc = tail call i32 @NBC_Sched_send(ptr noundef %i.ey, i8 noundef signext 1, i64 noundef %i.fb, ptr noundef %7, i32 noundef %i.em, ptr noundef nonnull %i.az, i1 noundef zeroext false) #5 ; 2 uses
  %.not141.i = icmp eq i32 %i.fc, 0
  br i1 %.not141.i, label %bb.ah, label %.thread152.i, !prof !12

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i32, ptr %i.et, align 4, !tbaa !56
  %i.fe = sext i32 %i.fd to i64
  %i.ff = tail call i32 @NBC_Sched_recv(ptr noundef %i.es, i8 noundef signext 0, i64 noundef %i.fe, ptr noundef %7, i32 noundef %i.em, ptr noundef nonnull %i.az, i1 noundef zeroext true) #5 ; 2 uses
  %.not142.i = icmp eq i32 %i.ff, 0
  br i1 %.not142.i, label %a2av_sched_inplace.exit, label %.thread152.i, !prof !12

bb.ai:                                            ; preds = %bb.o, %bb.p
  %.not5253.i = icmp sgt i32 %.val146.val, 0
  br i1 %.not5253.i, label %.lr.ph.i159, label %a2av_sched_inplace.exit

.lr.ph.i159:                                      ; preds = %bb.ai
  %.not67.i = icmp eq i64 %.1202, 0
  %.not68.i = icmp eq i64 %.val148, 0             ; 2 uses
  br i1 %.not67.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i160

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i159
  br i1 %.not68.i, label %a2av_sched_inplace.exit, label %.lr.ph.split.us.split.preheader.i

.lr.ph.split.us.split.preheader.i:                ; preds = %.lr.ph.split.us.i
  %i.fg = zext i32 %.val to i64
  %wide.trip.count83.i = zext nneg i32 %.val146.val to i64
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %bb.al, %.lr.ph.split.us.split.preheader.i
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph.split.us.split.preheader.i ], [ %indvars.iv.next81.i, %bb.al ] ; 5 uses
  %i.fh = icmp eq i64 %indvars.iv80.i, %i.fg
  br i1 %i.fh, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split.us.split.i
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv80.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !56 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv80.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !56
  %i.fn = sext i32 %i.fm to i64
  %i.fo = mul nsw i64 %i.k, %i.fn
  %i.fp = getelementptr inbounds i8, ptr %.0125, i64 %i.fo
  %i.fq = zext nneg i32 %i.fj to i64
  %i.fr = trunc nuw nsw i64 %indvars.iv80.i to i32
  %i.fs = tail call i32 @NBC_Sched_recv(ptr noundef %i.fp, i8 noundef signext 0, i64 noundef %i.fq, ptr noundef %7, i32 noundef %i.fr, ptr noundef nonnull %i.az, i1 noundef zeroext false) #5 ; 2 uses
  %.not51.us.i = icmp eq i32 %i.fs, 0
  br i1 %.not51.us.i, label %bb.al, label %.thread152.i

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.lr.ph.split.us.split.i
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %a2av_sched_inplace.exit, label %.lr.ph.split.us.split.i, !llvm.loop !73

.lr.ph.split.i160:                                ; preds = %.lr.ph.i159
  %i.ft = zext i32 %.val to i64                   ; 2 uses
  %wide.trip.count78.i = zext nneg i32 %.val146.val to i64 ; 2 uses
  br i1 %.not68.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i160, %bb.ao
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %bb.ao ], [ 0, %.lr.ph.split.i160 ] ; 5 uses
  %i.fu = icmp eq i64 %indvars.iv75.i, %i.ft
  br i1 %i.fu, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split.split.us.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.1122, i64 %indvars.iv75.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !56 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.1124, i64 %indvars.iv75.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !56
  %i.ga = sext i32 %i.fz to i64
  %i.gb = mul nsw i64 %.1200, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %.0120, i64 %i.gb
  %i.gd = zext nneg i32 %i.fw to i64
  %i.ge = trunc nuw nsw i64 %indvars.iv75.i to i32
  %i.gf = tail call i32 @NBC_Sched_send(ptr noundef %i.gc, i8 noundef signext 0, i64 noundef %i.gd, ptr noundef %3, i32 noundef %i.ge, ptr noundef nonnull %i.az, i1 noundef zeroext false) #5 ; 2 uses
  %.not.us.i = icmp eq i32 %i.gf, 0
  br i1 %.not.us.i, label %bb.ao, label %.thread152.i

end_hunk_0
begin_hunk_1_@nbc_alltoallv_inter_init:bb.a

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %or.cond5 = select i1 %i.be, i1 %i.ab, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !56
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.h, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  %i.bk = zext nneg i32 %i.bd to i64
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = tail call i32 @NBC_Sched_recv(ptr noundef %i.bj, i8 noundef signext 0, i64 noundef %i.bk, ptr noundef %7, i32 noundef %i.bl, ptr noundef nonnull %i.r, i1 noundef zeroext false) #5 ; 4 uses
  %.not92 = icmp eq i32 %i.bm, 0
  br i1 %.not92, label %bb.r, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.bn = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.o, label %bb.p, !prof !61

bb.o:                                             ; preds = %bb.n
  %i.bp = atomicrmw volatile add ptr %i.u, i32 -1 monotonic, align 4
  %i.bq = add i32 %i.bp, -1
  br label %opal_thread_add_fetch_32.exit104

bb.p:                                             ; preds = %bb.n
  %i.br = load volatile i32, ptr %i.u, align 8, !tbaa !56
  %i.bs = add nsw i32 %i.br, -1
  store volatile i32 %i.bs, ptr %i.u, align 8, !tbaa !56
  %i.bt = load volatile i32, ptr %i.u, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit104

opal_thread_add_fetch_32.exit104:                 ; preds = %bb.o, %bb.p
  %.0.i103 = phi i32 [ %i.bq, %bb.o ], [ %i.bt, %bb.p ]
  %i.bu = icmp eq i32 %.0.i103, 0
  br i1 %i.bu, label %bb.q, label %opal_obj_new.exit.thread

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit104
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !68 ; 2 uses
  %.not6.i105 = icmp eq ptr %i.by, null
  br i1 %.not6.i105, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.q, %.lr.ph.i106
  %i.bz = phi ptr [ %i.cb, %.lr.ph.i106 ], [ %i.by, %bb.q ]
  %.07.i107 = phi ptr [ %i.ca, %.lr.ph.i106 ], [ %i.bx, %bb.q ]
  tail call void %i.bz(ptr noundef nonnull %i.r) #5, !inline_history !2
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i107, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i108 = icmp eq ptr %i.cb, null
  br i1 %.not.i108, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i106, !llvm.loop !3

bb.r:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.r, %opal_obj_new.exit
  %i.cc = tail call i32 @NBC_Sched_commit(ptr noundef nonnull %i.r) #5 ; 4 uses
  %.not94 = icmp eq i32 %i.cc, 0
  br i1 %.not94, label %bb.w, label %bb.s, !prof !12

bb.s:                                             ; preds = %._crit_edge
  %i.cd = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.t, label %bb.u, !prof !61

bb.t:                                             ; preds = %bb.s
  %i.cf = atomicrmw volatile add ptr %i.u, i32 -1 monotonic, align 4
  %i.cg = add i32 %i.cf, -1
  br label %opal_thread_add_fetch_32.exit111

bb.u:                                             ; preds = %bb.s
  %i.ch = load volatile i32, ptr %i.u, align 8, !tbaa !56
  %i.ci = add nsw i32 %i.ch, -1
  store volatile i32 %i.ci, ptr %i.u, align 8, !tbaa !56
  %i.cj = load volatile i32, ptr %i.u, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit111

opal_thread_add_fetch_32.exit111:                 ; preds = %bb.t, %bb.u
  %.0.i110 = phi i32 [ %i.cg, %bb.t ], [ %i.cj, %bb.u ]
  %i.ck = icmp eq i32 %.0.i110, 0
  br i1 %i.ck, label %bb.v, label %opal_obj_new.exit.thread

bb.v:                                             ; preds = %opal_thread_add_fetch_32.exit111
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !69 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %.not6.i112 = icmp eq ptr %i.co, null
  br i1 %.not6.i112, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.v, %.lr.ph.i113
  %i.cp = phi ptr [ %i.cr, %.lr.ph.i113 ], [ %i.co, %bb.v ]
  %.07.i114 = phi ptr [ %i.cq, %.lr.ph.i113 ], [ %i.cn, %bb.v ]
  tail call void %i.cp(ptr noundef nonnull %i.r) #5, !inline_history !2
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i114, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !68 ; 2 uses
  %.not.i115 = icmp eq ptr %i.cr, null
  br i1 %.not.i115, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i113, !llvm.loop !3

bb.w:                                             ; preds = %._crit_edge
  %i.cs = tail call i32 @NBC_Schedule_request(ptr noundef nonnull %i.r, ptr noundef %8, ptr noundef %10, i1 noundef zeroext %11, ptr noundef %9, ptr noundef null) #5 ; 4 uses
  %.not95 = icmp eq i32 %i.cs, 0
  br i1 %.not95, label %opal_obj_new.exit.thread, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.ct = load i8, ptr @opal_uses_threads, align 1, !tbaa !58, !range !59, !noundef !60
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.y, label %bb.z, !prof !61

bb.y:                                             ; preds = %bb.x
  %i.cv = atomicrmw volatile add ptr %i.u, i32 -1 monotonic, align 4
  %i.cw = add i32 %i.cv, -1
  br label %opal_thread_add_fetch_32.exit118

bb.z:                                             ; preds = %bb.x
  %i.cx = load volatile i32, ptr %i.u, align 8, !tbaa !56
  %i.cy = add nsw i32 %i.cx, -1
  store volatile i32 %i.cy, ptr %i.u, align 8, !tbaa !56
  %i.cz = load volatile i32, ptr %i.u, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit118

opal_thread_add_fetch_32.exit118:                 ; preds = %bb.y, %bb.z
  %.0.i117 = phi i32 [ %i.cw, %bb.y ], [ %i.cz, %bb.z ]
  %i.da = icmp eq i32 %.0.i117, 0
  br i1 %i.da, label %bb.aa, label %opal_obj_new.exit.thread

bb.aa:                                            ; preds = %opal_thread_add_fetch_32.exit118
  %i.db = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !69 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !68 ; 2 uses
  %.not6.i119 = icmp eq ptr %i.de, null
  br i1 %.not6.i119, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bb.aa, %.lr.ph.i120
  %i.df = phi ptr [ %i.dh, %.lr.ph.i120 ], [ %i.de, %bb.aa ]
  %.07.i121 = phi ptr [ %i.dg, %.lr.ph.i120 ], [ %i.dd, %bb.aa ]
  tail call void %i.df(ptr noundef nonnull %i.r) #5, !inline_history !2
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i121, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !68 ; 2 uses
  %.not.i122 = icmp eq ptr %i.dh, null
  br i1 %.not.i122, label %opal_obj_new.exit.thread.sink.split, label %.lr.ph.i120, !llvm.loop !3

opal_obj_new.exit.thread.sink.split:              ; preds = %.lr.ph.i, %.lr.ph.i106, %.lr.ph.i113, %.lr.ph.i120, %bb.aa, %bb.v, %bb.q, %bb.k
  %.682.ph = phi i32 [ %i.am, %bb.k ], [ %i.bm, %bb.q ], [ %i.cc, %bb.v ], [ %i.bm, %.lr.ph.i106 ], [ %i.cc, %.lr.ph.i113 ], [ %i.cs, %.lr.ph.i120 ], [ %i.cs, %bb.aa ], [ %i.am, %.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.r) #5
  br label %opal_obj_new.exit.thread

opal_obj_new.exit.thread:                         ; preds = %opal_obj_new.exit.thread.sink.split, %opal_thread_add_fetch_32.exit104, %opal_thread_add_fetch_32.exit, %bb.d, %bb.w, %opal_thread_add_fetch_32.exit118, %opal_thread_add_fetch_32.exit111
  %.682 = phi i32 [ -2, %bb.d ], [ %i.cs, %opal_thread_add_fetch_32.exit118 ], [ %i.cc, %opal_thread_add_fetch_32.exit111 ], [ 0, %bb.w ], [ %i.bm, %opal_thread_add_fetch_32.exit104 ], [ %i.am, %opal_thread_add_fetch_32.exit ], [ %.682.ph, %opal_obj_new.exit.thread.sink.split ]
  ret i32 %.682
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallv_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallv_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_libnbc_alltoallv_inter_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @nbc_alltoallv_inter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %11, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @NBC_Sched_copy(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_commit(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Schedule_request(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ompi_request_persistent_noop_create(ptr noundef) local_unnamed_addr #1

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #1

declare i32 @NBC_Sched_send(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @NBC_Sched_recv(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null}
!1 = distinct !{!1, !57}
!2 = distinct !{null}
!3 = distinct !{!3, !57}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS26ompi_coll_libnbc_request_t", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS14ompi_request_t", !13, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!19 = !{!"opal_object_t", !18, i64 0, !9, i64 8}
!20 = !{!"p1 _ZTS19opal_hash_element_t", !13, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!"p1 _ZTS24opal_hash_type_methods_t", !13, i64 0}
!23 = !{!"opal_hash_table_t", !19, i64 0, !20, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !22, i64 64}
!24 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!25 = !{!"opal_infosubscriber_t", !19, i64 0, !23, i64 16, !24, i64 88}
!26 = !{!"opal_mutex_t", !19, i64 0, !8, i64 16, !9, i64 56}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"ompi_comm_extended_cid_t", !21, i64 0, !8, i64 8}
!29 = !{!"ompi_comm_extended_cid_block_t", !28, i64 0, !21, i64 16, !8, i64 24, !8, i64 25}
!30 = !{!"p1 int", !13, i64 0}
!31 = !{!"p1 _ZTS12ompi_group_t", !13, i64 0}
!32 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!33 = !{!"p1 _ZTS17opal_hash_table_t", !13, i64 0}
!34 = !{!"p1 _ZTS22mca_topo_base_module_t", !13, i64 0}
!35 = !{!"any p2 pointer", !13, i64 0}
!36 = !{!"p2 _ZTS20ompi_peruse_handle_t", !35, i64 0}
!37 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!38 = !{!"p1 _ZTS14mca_pml_comm_t", !13, i64 0}
!39 = !{!"p1 _ZTS14mca_mtl_comm_t", !13, i64 0}
!40 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !13, i64 0}
!41 = !{!"p1 _ZTS15ompi_instance_t", !13, i64 0}
!42 = !{!"p1 _ZTS13opal_object_t", !13, i64 0}
!43 = !{!"_Bool", !8, i64 0}
!44 = !{!"ompi_communicator_t", !25, i64 0, !26, i64 96, !27, i64 160, !28, i64 168, !29, i64 184, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !30, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !31, i64 264, !31, i64 272, !32, i64 280, !33, i64 288, !34, i64 296, !36, i64 304, !37, i64 312, !9, i64 320, !38, i64 328, !39, i64 336, !40, i64 344, !41, i64 352, !42, i64 360, !9, i64 368, !9, i64 372, !43, i64 376, !43, i64 377, !43, i64 378}
!45 = !{!"p2 _ZTS11ompi_proc_t", !35, i64 0}
!46 = !{!"ompi_group_t", !19, i64 0, !9, i64 16, !9, i64 20, !9, i64 24, !45, i64 32, !9, i64 40, !31, i64 48, !8, i64 56, !41, i64 72}
!47 = !{!46, !9, i64 16}
!48 = !{!"short", !8, i64 0}
!49 = !{!"p1 _ZTS12dt_elem_desc", !13, i64 0}
!50 = !{!"dt_type_desc_t", !21, i64 0, !21, i64 8, !49, i64 16}
!51 = !{!"p1 long", !13, i64 0}
!52 = !{!"opal_datatype_t", !19, i64 0, !48, i64 16, !48, i64 18, !9, i64 20, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !9, i64 72, !9, i64 76, !8, i64 80, !50, i64 144, !50, i64 168, !51, i64 192}
!53 = !{!52, !21, i64 24}
!54 = !{!52, !21, i64 48}
!55 = !{!52, !21, i64 56}
!56 = !{!9, !9, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!43, !43, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!62 = !{!"opal_class_t", !27, i64 0, !18, i64 8, !13, i64 16, !13, i64 24, !9, i64 32, !9, i64 36, !35, i64 40, !35, i64 48, !21, i64 56}
!63 = !{!62, !21, i64 56}
!64 = !{!62, !9, i64 32}
!65 = !{!19, !18, i64 0}
!66 = !{!19, !9, i64 8}
!67 = !{!62, !35, i64 40}
!68 = !{!13, !13, i64 0}
!69 = !{!62, !35, i64 48}
!70 = distinct !{!70, !57, !76, !77}
!71 = distinct !{!71, !57, !77, !76}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = !{!44, !9, i64 220}
!75 = !{!44, !31, i64 264}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!"branch_weights", i32 430355294, i32 1717128354}
!79 = !{!52, !21, i64 32}
!80 = !{!52, !21, i64 40}
!81 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!82 = !{!44, !9, i64 248}
!83 = distinct !{!83, !57}
!84 = !{!44, !9, i64 224}
!85 = !{!44, !31, i64 272}
end_hunk_1
