Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology-synthetic?download=true
inline.NumInlined: 47
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hwloc__export_synthetic_obj_attr:bb.a
bb.f:                                             ; preds = %thread-pre-split.thread
  %i.r = load i32, ptr %1, align 8, !tbaa !57
  switch i32 %i.r, label %.loopexit [
    i32 3, label %.preheader
    i32 13, label %.preheader
  ]

.preheader:                                       ; preds = %bb.f, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %.045138 = phi ptr [ %i.x, %bb.h ], [ %1, %.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.045138, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %.045138, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !67
  %.not60 = icmp eq i32 %i.t, %i.v
  br i1 %.not60, label %bb.h, label %.loopexit127

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.045138, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %.not59.not = icmp eq ptr %i.x, null
  br i1 %.not59.not, label %.loopexit, label %bb.g, !llvm.loop !68

.loopexit:                                        ; preds = %bb.h, %bb.f, %thread-pre-split.thread
  %i.y = load i8, ptr %i.a, align 16, !tbaa !61
  %i.z = icmp ne i8 %i.y, 0
  %i.aa = load i8, ptr %i.b, align 16
  %i.ab = icmp ne i8 %i.aa, 0
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %.loopexit127, label %.critedge

.loopexit127:                                     ; preds = %bb.g, %.loopexit
  %.19295 = phi i1 [ false, %.loopexit ], [ true, %bb.g ]
  %i.ac = phi ptr [ @.str.80, %.loopexit ], [ @.str.79, %bb.g ]
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ac) #22 ; 5 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.loopexit127
  %i.af = zext nneg i32 %i.ad to i64
  %.not.i = icmp sgt i64 %3, %i.af
  %i.ag = icmp sgt i64 %3, 0
  %i.ah = trunc nuw nsw i64 %3 to i32
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = select i1 %i.ag, i32 %i.ai, i32 0
  %.0.i = select i1 %.not.i, i32 %i.ad, i32 %i.aj
  %i.ak = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak ; 2 uses
  %i.am = sub nsw i64 %3, %i.ak                   ; 5 uses
  br i1 %.19295, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !47 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp eq i32 %i.ao, -3
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.4, i32 noundef 1252, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc__export_synthetic_obj_attr) #24
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69
  %i.av = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.av
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.043.in = phi ptr [ %i.ar, %bb.m ], [ %i.aw, %bb.n ]
  %.0.in = phi ptr [ %i.as, %bb.m ], [ %i.az, %bb.n ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !71  ; 6 uses
  %.043 = load i32, ptr %.043.in, align 4, !tbaa !65 ; 7 uses
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.82, ptr noundef nonnull %.148) #22 ; 4 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nuw nsw i32 %i.ba, %i.ad
  %i.bd = zext nneg i32 %i.ba to i64
  %.not.i61 = icmp sgt i64 %i.am, %i.bd
  %i.be = icmp sgt i64 %i.am, 0
  %i.bf = trunc nuw nsw i64 %i.am to i32
  %i.bg = add nsw i32 %i.bf, -1
  %i.bh = select i1 %i.be, i32 %i.bg, i32 0
  %.0.i62 = select i1 %.not.i61, i32 %i.ba, i32 %i.bh
  %i.bi = zext nneg i32 %.0.i62 to i64            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bi ; 2 uses
  %i.bk = sub nsw i64 %i.am, %i.bi                ; 2 uses
  %i.bl = load ptr, ptr %.0, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !49
  %.not.i65 = icmp eq i32 %i.bn, 0
  br i1 %.not.i65, label %.preheader133.i, label %.loopexit.i

.preheader133.i:                                  ; preds = %bb.p
  %.not90147.i = icmp eq i32 %.043, 1
  br i1 %.not90147.i, label %.preheader129.preheader.i, label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %.preheader133.i
  %.not179.i = icmp eq i32 %.043, 0               ; 2 uses
  %wide.trip.count.i = zext i32 %.043 to i64      ; 3 uses
  br label %bb.s

.preheader130.i:                                  ; preds = %bb.v
  br i1 %.not179.i, label %.preheader.i, label %.preheader129.lr.ph.i

.preheader129.lr.ph.i:                            ; preds = %.preheader130.i
  %.not181.i = icmp eq i32 %i.cu, 0
  br i1 %.not181.i, label %.preheader129.preheader.i, label %.preheader129.us.i

.preheader129.preheader.i:                        ; preds = %.preheader133.i, %.preheader129.lr.ph.i
  %wide.trip.count210.i.pre-phi = phi i64 [ %wide.trip.count.i, %.preheader129.lr.ph.i ], [ 1, %.preheader133.i ]
  %.082.lcssa228233.i = phi ptr [ %i.cx, %.preheader129.lr.ph.i ], [ null, %.preheader133.i ] ; 2 uses
  br label %.preheader129.i

.preheader129.us.i:                               ; preds = %.preheader129.lr.ph.i, %bb.r
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i, %bb.r ], [ 0, %.preheader129.lr.ph.i ] ; 3 uses
  %i.bo = trunc nuw i64 %indvars.iv200.i to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader129.us.i
  %indvars.iv194.i = phi i64 [ 0, %.preheader129.us.i ], [ %indvars.iv.next195.i, %bb.q ] ; 2 uses
  %.076156.us.i = phi i32 [ 1, %.preheader129.us.i ], [ %i.bx, %bb.q ] ; 2 uses
  %.077155.us.i = phi i32 [ 0, %.preheader129.us.i ], [ %i.bw, %bb.q ]
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %indvars.iv194.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !72
  %i.br = udiv i32 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !74 ; 2 uses
  %i.bu = urem i32 %i.br, %i.bt
  %i.bv = mul i32 %i.bu, %.076156.us.i
  %i.bw = add i32 %i.bv, %.077155.us.i            ; 2 uses
  %i.bx = mul i32 %i.bt, %.076156.us.i
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next195.i, %i.cv
  br i1 %exitcond199.not.i, label %._crit_edge158.us.i, label %bb.q, !llvm.loop !75

bb.r:                                             ; preds = %._crit_edge158.us.i
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next201.i, %wide.trip.count.i
  br i1 %exitcond205.not.i, label %.preheader.i, label %.preheader129.us.i, !llvm.loop !76

._crit_edge158.us.i:                              ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv200.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !49
  %.not91.us.i = icmp eq i32 %i.cb, %i.bw
  br i1 %.not91.us.i, label %bb.r, label %.loopexit.i

bb.s:                                             ; preds = %bb.v, %.lr.ph151.i
  %.082150.i = phi ptr [ null, %.lr.ph151.i ], [ %i.cx, %bb.v ] ; 5 uses
  %.084149.i = phi i32 [ 0, %.lr.ph151.i ], [ %i.cu, %bb.v ] ; 2 uses
  %.085148.i = phi i32 [ 1, %.lr.ph151.i ], [ %i.db, %bb.v ] ; 4 uses
  %i.cc = urem i32 %.043, %.085148.i
  %.not92.i = icmp eq i32 %i.cc, 0
  br i1 %.not92.i, label %.preheader132.i, label %.loopexit.i

.preheader132.i:                                  ; preds = %bb.s
  br i1 %.not179.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader132.i, %bb.t
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 1, %.preheader132.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !49
  %i.ch = icmp eq i32 %i.cg, %.085148.i
  br i1 %i.ch, label %._crit_edge.loopexit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !77

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ci = trunc nuw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader132.i
  %.079.lcssa.i = phi i32 [ 1, %.preheader132.i ], [ %i.ci, %._crit_edge.loopexit.i ] ; 4 uses
  %i.cj = icmp eq i32 %.079.lcssa.i, %.043
  br i1 %i.cj, label %.loopexit.i, label %.preheader131.i

.preheader131.i:                                  ; preds = %._crit_edge.i
  %i.ck = udiv i32 %.043, %.079.lcssa.i           ; 2 uses
  %i.cl = icmp ugt i32 %i.ck, 2
  br i1 %i.cl, label %.lr.ph142.preheader.i, label %._crit_edge143.i

.lr.ph142.preheader.i:                            ; preds = %.preheader131.i
  %i.cm = zext i32 %i.ck to i64
  br label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %bb.u, %.lr.ph142.preheader.i
  %indvars.iv191.i = phi i64 [ 2, %.lr.ph142.preheader.i ], [ %indvars.iv.next192.i, %bb.u ] ; 2 uses
  %indvars193.i = trunc i64 %indvars.iv191.i to i32 ; 3 uses
  %i.cn = mul i32 %.079.lcssa.i, %indvars193.i
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !49
  %i.ct = mul i32 %.085148.i, %indvars193.i
  %.not93.i = icmp eq i32 %i.cs, %i.ct
  br i1 %.not93.i, label %bb.u, label %._crit_edge143.i

bb.u:                                             ; preds = %.lr.ph142.i
  %indvars.iv.next192.i = add nuw nsw i64 %indvars.iv191.i, 1 ; 3 uses
  %4 = icmp samesign ult i64 %indvars.iv.next192.i, %i.cm
  br i1 %4, label %.lr.ph142.i, label %._crit_edge143.loopexit.split.loop.exit247.i, !llvm.loop !78

._crit_edge143.loopexit.split.loop.exit247.i:     ; preds = %bb.u
  %indvars.le.i = trunc i64 %indvars.iv.next192.i to i32
  br label %._crit_edge143.i

._crit_edge143.i:                                 ; preds = %.lr.ph142.i, %._crit_edge143.loopexit.split.loop.exit247.i, %.preheader131.i
  %.078.lcssa.i = phi i32 [ 2, %.preheader131.i ], [ %indvars.le.i, %._crit_edge143.loopexit.split.loop.exit247.i ], [ %indvars193.i, %.lr.ph142.i ] ; 2 uses
  %i.cu = add i32 %.084149.i, 1                   ; 4 uses
  %i.cv = zext i32 %i.cu to i64                   ; 3 uses
  %i.cw = mul nuw nsw i64 %i.cv, 12
  %i.cx = call ptr @realloc(ptr noundef %.082150.i, i64 noundef %i.cw) #26 ; 10 uses
  %.not94.i = icmp eq ptr %i.cx, null
  br i1 %.not94.i, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge143.i
  %i.cy = zext i32 %.084149.i to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  store i32 %.079.lcssa.i, ptr %i.cz, align 4, !tbaa !72
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %.078.lcssa.i, ptr %i.da, align 4, !tbaa !74
  %i.db = mul i32 %.078.lcssa.i, %.085148.i       ; 2 uses
  %.not90.i = icmp eq i32 %i.db, %.043
  br i1 %.not90.i, label %.preheader130.i, label %bb.s, !llvm.loop !79

bb.w:                                             ; preds = %.preheader129.i
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %exitcond211.not.i = icmp eq i64 %indvars.iv.next207.i, %wide.trip.count210.i.pre-phi
  br i1 %exitcond211.not.i, label %hwloc__export_synthetic_update_status.exit100.thread.sink.split.i, label %.preheader129.i, !llvm.loop !76

.preheader129.i:                                  ; preds = %bb.w, %.preheader129.preheader.i
  %indvars.iv206.i = phi i64 [ 0, %.preheader129.preheader.i ], [ %indvars.iv.next207.i, %bb.w ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv206.i
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !54
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !49
  %.not91.i = icmp eq i32 %i.df, 0
  br i1 %.not91.i, label %bb.w, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.r, %.preheader130.i
  %.not182.i = icmp eq i32 %i.cu, 0
  br i1 %.not182.i, label %hwloc__export_synthetic_update_status.exit100.thread.sink.split.i, label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %.preheader.i, %bb.x
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i, %bb.x ], [ 0, %.preheader.i ] ; 3 uses
  %.0163.i = phi i32 [ %i.do, %bb.x ], [ 0, %.preheader.i ]
  %.0113162.i = phi ptr [ %i.dv, %bb.x ], [ %i.bj, %.preheader.i ] ; 2 uses
  %.0117161.i = phi i64 [ %i.dw, %bb.x ], [ %i.bk, %.preheader.i ] ; 5 uses
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %i.cx, i64 %indvars.iv212.i ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !74
  %i.dk = icmp eq i64 %indvars.iv212.i, %i.cy
  %i.dl = select i1 %i.dk, ptr @.str.80, ptr @.str.84
  %i.dm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0113162.i, i64 noundef %.0117161.i, ptr noundef nonnull @.str.83, i32 noundef %i.dh, i32 noundef %i.dj, ptr noundef nonnull %i.dl) #22 ; 4 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %hwloc__export_synthetic_update_status.exit100.thread.sink.split.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph165.i
  %i.do = add nuw nsw i32 %i.dm, %.0163.i         ; 2 uses
  %i.dp = zext nneg i32 %i.dm to i64
  %.not.i.i = icmp sgt i64 %.0117161.i, %i.dp
  %i.dq = icmp sgt i64 %.0117161.i, 0
  %i.dr = trunc nuw nsw i64 %.0117161.i to i32
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = select i1 %i.dq, i32 %i.ds, i32 0
  %.0.i.i = select i1 %.not.i.i, i32 %i.dm, i32 %i.dt
  %i.du = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0113162.i, i64 %i.du
  %i.dw = sub nsw i64 %.0117161.i, %i.du
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %exitcond217.not.i = icmp eq i64 %indvars.iv.next213.i, %i.cv
  br i1 %exitcond217.not.i, label %hwloc__export_synthetic_update_status.exit100.thread.sink.split.i, label %.lr.ph165.i, !llvm.loop !80

.loopexit.i:                                      ; preds = %._crit_edge143.i, %._crit_edge.i, %bb.s, %bb.t, %._crit_edge158.us.i, %.preheader129.i, %bb.p
  %.183.i = phi ptr [ null, %bb.p ], [ %i.cx, %._crit_edge158.us.i ], [ %.082150.i, %bb.t ], [ %.082.lcssa228233.i, %.preheader129.i ], [ %.082150.i, %bb.s ], [ %.082150.i, %._crit_edge.i ], [ %.082150.i, %._crit_edge143.i ]
  call void @free(ptr noundef %.183.i) #22
  %.081168.i = load ptr, ptr %.0, align 8, !tbaa !54 ; 2 uses
  %.not95169.i = icmp eq ptr %.081168.i, null
  br i1 %.not95169.i, label %hwloc__export_synthetic_indexes.exit.thread112, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.loopexit.i, %hwloc__export_synthetic_update_status.exit100.i
  %.081173.i = phi ptr [ %.081.i, %hwloc__export_synthetic_update_status.exit100.i ], [ %.081168.i, %.loopexit.i ] ; 2 uses
  %.1111172.i = phi i32 [ %i.ee, %hwloc__export_synthetic_update_status.exit100.i ], [ 0, %.loopexit.i ]
  %.1114171.i = phi ptr [ %i.el, %hwloc__export_synthetic_update_status.exit100.i ], [ %i.bj, %.loopexit.i ] ; 2 uses
  %.1118170.i = phi i64 [ %i.em, %hwloc__export_synthetic_update_status.exit100.i ], [ %i.bk, %.loopexit.i ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.081173.i, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !49
  %i.dz = getelementptr inbounds nuw i8, ptr %.081173.i, i64 56 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !48
  %.not96.i = icmp eq ptr %i.ea, null
  %i.eb = select i1 %.not96.i, ptr @.str.80, ptr @.str.86
  %i.ec = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.1114171.i, i64 noundef %.1118170.i, ptr noundef nonnull @.str.85, i32 noundef %i.dy, ptr noundef nonnull %i.eb) #22 ; 4 uses
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.critedge, label %hwloc__export_synthetic_update_status.exit100.i

hwloc__export_synthetic_update_status.exit100.i:  ; preds = %.lr.ph175.i
  %i.ee = add nuw nsw i32 %i.ec, %.1111172.i      ; 2 uses
  %i.ef = zext nneg i32 %i.ec to i64
  %.not.i97.i = icmp sgt i64 %.1118170.i, %i.ef
  %i.eg = icmp sgt i64 %.1118170.i, 0
  %i.eh = trunc nuw nsw i64 %.1118170.i to i32
  %i.ei = add nsw i32 %i.eh, -1
  %i.ej = select i1 %i.eg, i32 %i.ei, i32 0
  %.0.i98.i = select i1 %.not.i97.i, i32 %i.ec, i32 %i.ej
  %i.ek = zext nneg i32 %.0.i98.i to i64          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1114171.i, i64 %i.ek
  %i.em = sub nsw i64 %.1118170.i, %i.ek
  %.081.i = load ptr, ptr %i.dz, align 8, !tbaa !54 ; 2 uses
  %.not95.i = icmp eq ptr %.081.i, null
  br i1 %.not95.i, label %hwloc__export_synthetic_indexes.exit, label %.lr.ph175.i, !llvm.loop !81

hwloc__export_synthetic_update_status.exit100.thread.sink.split.i: ; preds = %bb.x, %.lr.ph165.i, %bb.w, %.preheader.i
  %.082.lcssa229.i109 = phi ptr [ %.082.lcssa228233.i, %bb.w ], [ %i.cx, %.preheader.i ], [ %i.cx, %.lr.ph165.i ], [ %i.cx, %bb.x ]
  %.086.ph.i = phi i32 [ 0, %bb.w ], [ 0, %.preheader.i ], [ -1, %.lr.ph165.i ], [ %i.do, %bb.x ]
  call void @free(ptr noundef %.082.lcssa229.i109) #22
  br label %hwloc__export_synthetic_indexes.exit

hwloc__export_synthetic_indexes.exit:             ; preds = %hwloc__export_synthetic_update_status.exit100.i, %hwloc__export_synthetic_update_status.exit100.thread.sink.split.i
  %.086.i = phi i32 [ %.086.ph.i, %hwloc__export_synthetic_update_status.exit100.thread.sink.split.i ], [ %i.ee, %hwloc__export_synthetic_update_status.exit100.i ] ; 2 uses
  %i.en = icmp slt i32 %.086.i, 0
  br i1 %i.en, label %.critedge, label %hwloc__export_synthetic_indexes.exit.thread112

hwloc__export_synthetic_indexes.exit.thread112:   ; preds = %.loopexit.i, %hwloc__export_synthetic_indexes.exit
  %.086.i116 = phi i32 [ %.086.i, %hwloc__export_synthetic_indexes.exit ], [ 0, %.loopexit.i ]
  %i.eo = add nuw nsw i32 %i.bc, %.086.i116
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph175.i, %hwloc__export_synthetic_indexes.exit, %bb.o, %.loopexit127, %hwloc__export_synthetic_indexes.exit.thread112, %bb.i, %.loopexit
  %.2 = phi i32 [ 0, %.loopexit ], [ -1, %bb.o ], [ -1, %.loopexit127 ], [ %i.ad, %bb.i ], [ %i.eo, %hwloc__export_synthetic_indexes.exit.thread112 ], [ -1, %hwloc__export_synthetic_indexes.exit ], [ -1, %.lr.ph175.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483646, -2147483648) i32 @hwloc__export_synthetic_memory_children(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %1, 4
  %.not34 = icmp eq i64 %i.c, 0
  br i1 %.not34, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.b
  %i.d = icmp eq i32 %5, 0
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.f = load i32, ptr %i.e, align 4, !tbaa !53
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.b, align 8, !tbaa !57
  %.not39 = icmp eq i32 %i.h, 13
  br i1 %.not39, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not41 = icmp eq i32 %6, 0
  br i1 %.not41, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.87, i64 93, i64 1, ptr %i.i) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = tail call ptr @__errno_location() #25
  store i32 22, ptr %i.k, align 4, !tbaa !65
  br label %.critedge44

bb.h:                                             ; preds = %bb.d
  %.not40 = icmp eq i32 %5, 0
  br i1 %.not40, label %hwloc__export_synthetic_add_char.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = icmp sgt i64 %4, 1
  br i1 %i.l, label %bb.j, label %hwloc__export_synthetic_add_char.exit

bb.j:                                             ; preds = %bb.i
  store i8 32, ptr %3, align 1, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !61
  %i.n = add nsw i64 %4, -1
  br label %hwloc__export_synthetic_add_char.exit

hwloc__export_synthetic_add_char.exit:            ; preds = %bb.j, %bb.i, %bb.h
  %.093 = phi i64 [ %4, %bb.h ], [ %i.n, %bb.j ], [ %4, %bb.i ]
  %.088 = phi ptr [ %3, %bb.h ], [ %i.m, %bb.j ], [ %3, %bb.i ]
  %.086 = phi i32 [ 0, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ]
  %i.o = tail call fastcc i32 @hwloc__export_synthetic_obj(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef %.088, i64 noundef %.093) ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.critedge44, label %hwloc__export_synthetic_update_status.exit

hwloc__export_synthetic_update_status.exit:       ; preds = %hwloc__export_synthetic_add_char.exit
  %i.q = add nuw nsw i32 %i.o, %.086
  br label %.critedge44

.preheader:                                       ; preds = %.preheader.preheader, %hwloc__export_synthetic_add_char.exit51
  %.028118 = phi ptr [ %i.au, %hwloc__export_synthetic_add_char.exit51 ], [ %i.b, %.preheader.preheader ] ; 2 uses
  %.031117 = phi i1 [ false, %hwloc__export_synthetic_add_char.exit51 ], [ %i.d, %.preheader.preheader ]
  %.1116 = phi i32 [ %i.as, %hwloc__export_synthetic_add_char.exit51 ], [ 0, %.preheader.preheader ] ; 2 uses
end_hunk_0
