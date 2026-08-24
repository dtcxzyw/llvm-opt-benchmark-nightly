Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/reservation?download=true
inline.NumInlined: 103
inline.NumDeleted: 45
begin_hunk_0_@validate_all_reservations:bb.a
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.validate_all_reservations.lock) #18
  br label %bb.p

.critedge:                                        ; preds = %bb.n
  tail call fastcc void @_validate_all_reservations()
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.critedge, %bb.o, %bb.g
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_validate_all_reservations() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.slurmdb_reservation_rec_t, align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %1 = alloca %struct.slurmctld_resv, align 8     ; 13 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 16384
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @get_log_level() #18
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @resv_list, align 8
  %i.r = tail call i32 @list_count(ptr noundef %i.q) #18
  %i.s = load ptr, ptr @job_list, align 8
  %i.t = tail call i32 @list_count(ptr noundef %i.s) #18
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.181, ptr noundef nonnull @__func__._validate_all_reservations, i32 noundef %i.r, i32 noundef %i.t) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.u = load ptr, ptr @resv_list, align 8
  %i.v = tail call ptr @list_iterator_create(ptr noundef %i.u) #18 ; 4 uses
  %i.w = tail call ptr @list_next(ptr noundef %i.v) #18 ; 2 uses
  %.not1724 = icmp eq ptr %i.w, null
  br i1 %.not1724, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.cd
  %i.ai = phi ptr [ %i.w, %.lr.ph ], [ %i.kt, %bb.cd ] ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 200 ; 16 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.ak, align 1
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.183) #18 ; 0 uses
  br label %bb.ca

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 104 ; 12 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not54.i.i = icmp eq ptr %i.as, null
  br i1 %.not54.i.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not55.i.i = icmp eq ptr %i.at, null
  br i1 %.not55.i.i, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = call i64 @bit_ffs(ptr noundef nonnull %i.at) #18
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not56.i.i = icmp eq ptr %i.ay, null
  br i1 %.not56.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @slurm_bit_free(ptr noundef nonnull %i.ax) #18
  %.pre.i.i = load ptr, ptr %i.ap, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = phi ptr [ %.pre.i.i, %bb.m ], [ %i.aw, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store ptr null, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not57.i.i = icmp eq ptr %i.bd, null
  br i1 %.not57.i.i, label %.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bf = call i32 @node_name2bitmap(ptr noundef nonnull %i.bd, i1 noundef zeroext false, ptr noundef nonnull %i.be, ptr noundef null) #18
  %.not58.i.i = icmp eq i32 %i.bf, 0
  %.pre82.i.i = load ptr, ptr %i.ap, align 8      ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre82.i.i, i64 120
  %.pre83.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  br i1 %.not58.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.aj, align 8
  %i.bh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.194, ptr noundef %.pre83.i.i, ptr noundef %i.bg) #18 ; 0 uses
  br label %_get_core_resrcs.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bi = icmp eq ptr %.pre83.i.i, null
  br i1 %i.bi, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.q, %bb.n
  %i.bj = load i32, ptr @node_record_count, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = call ptr @bit_alloc(i64 noundef %i.bk) #18
  %i.bm = load ptr, ptr %i.ap, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store ptr %i.bl, ptr %i.bn, align 8
  %.pre84.i.i = load ptr, ptr %i.ap, align 8
  br label %bb.r

bb.r:                                             ; preds = %.thread.i.i, %bb.q
  %i.bo = phi ptr [ %.pre82.i.i, %bb.q ], [ %.pre84.i.i, %.thread.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i32 @bit_set_count(ptr noundef %i.bq) #18 ; 2 uses
  %i.bs = load ptr, ptr %i.ap, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 92
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %.not59.i.i = icmp eq i32 %i.bu, %i.br
  br i1 %.not59.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.aj, align 8
  %i.bw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.195, ptr noundef %i.bv, i32 noundef %i.bu, i32 noundef %i.br) #18 ; 0 uses
  br label %_get_core_resrcs.exit.i

bb.t:                                             ; preds = %bb.r
  call void @node_conf_create_cluster_core_bitmap(ptr noundef nonnull %i.ar) #18
  store i32 0, ptr %i.a, align 4
  %i.bx = load ptr, ptr %i.ap, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call ptr @next_node_bitmap(ptr noundef %i.bz, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not6068.i.i = icmp eq ptr %i.ca, null
  br i1 %.not6068.i.i, label %.loopexit.i, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.t, %bb.z
  %indvars.iv79.i.i = phi i64 [ %indvars.iv.next80.i.i, %bb.z ], [ -1, %bb.t ]
  %2 = phi ptr [ %i.dm, %bb.z ], [ %i.ca, %bb.t ]
  %indvars.iv.next80.i.i = add nsw i64 %indvars.iv79.i.i, 1 ; 4 uses
  %i.cb = load i32, ptr %i.a, align 4
  %i.cc = call i32 @cr_get_coremap_offset(i32 noundef %i.cb) #18 ; 2 uses
  %i.cd = load i32, ptr %i.a, align 4
  %i.ce = add nsw i32 %i.cd, 1
  %i.cf = call i32 @cr_get_coremap_offset(i32 noundef %i.ce) #18 ; 2 uses
  %i.cg = load ptr, ptr %i.ap, align 8
  %3 = trunc nsw i64 %indvars.iv.next80.i.i to i32 ; 2 uses
  %4 = call i32 @get_job_resources_offset(ptr noundef %i.cg, i32 noundef %3, i16 noundef zeroext 0, i16 noundef zeroext 0) #18
  %5 = icmp slt i32 %i.cc, %i.cf
  br i1 %5, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph70.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.ci = sext i32 %i.cc to i64
  %i.cj = sext i32 %4 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i.i
  %indvars.iv74.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %indvars.iv.next75.i.i, %bb.x ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.x ] ; 2 uses
  %.065.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.x ] ; 4 uses
  %i.ck = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %indvars.iv.next80.i.i
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = zext i16 %i.co to i32
  %i.cq = icmp slt i32 %.065.i.i, %i.cp
  br i1 %i.cq, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.ck, align 8
  %i.cs = call i32 @slurm_bit_test(ptr noundef %i.cr, i64 noundef %indvars.iv74.i.i) #18
  %.not61.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not61.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load ptr, ptr %i.ar, align 8
  call void @bit_set(ptr noundef %i.ct, i64 noundef %indvars.iv.i.i) #18
  %i.cu = load i16, ptr %i.ch, align 8
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %.065.i.i, %i.cv
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i.i = phi i32 [ %i.cw, %bb.w ], [ %.065.i.i, %bb.v ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %indvars.iv.next75.i.i = add nsw i64 %indvars.iv74.i.i, 1
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.cf, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.u, !llvm.loop !64

.critedge.i.i:                                    ; preds = %bb.x, %bb.u, %.lr.ph70.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph70.i.i ], [ %.1.i.i, %bb.x ], [ %.065.i.i, %bb.u ]
  %i.cx = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %indvars.iv.next80.i.i
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = zext i16 %i.db to i32
  %i.dd = icmp slt i32 %.0.lcssa.i.i, %i.dc
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.critedge.i.i
  %i.de = load ptr, ptr %i.aj, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 120
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.196, ptr noundef %i.de, i32 noundef %3, ptr noundef %i.dg) #18 ; 0 uses
  br label %_get_core_resrcs.exit.i

bb.z:                                             ; preds = %.critedge.i.i
  %i.di = load i32, ptr %i.a, align 4
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.a, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call ptr @next_node_bitmap(ptr noundef %i.dl, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.dm, null
  br i1 %.not60.i.i, label %.loopexit.i, label %.lr.ph70.i.i, !llvm.loop !65

_get_core_resrcs.exit.i:                          ; preds = %bb.y, %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ca

.loopexit.i:                                      ; preds = %bb.z, %bb.t, %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ai, i64 232 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not166.i = icmp eq ptr %i.do, null
  br i1 %.not166.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i
  %i.dp = call ptr @find_part_record(ptr noundef nonnull %i.do) #18 ; 2 uses
  %.not167.not.i = icmp eq ptr %i.dp, null
  br i1 %.not167.not.i, label %.thread.i, label %bb.ab

.thread.i:                                        ; preds = %bb.aa
  %i.dq = load ptr, ptr %i.aj, align 8
  %i.dr = load ptr, ptr %i.dn, align 8
  %i.ds = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.184, ptr noundef %i.dq, ptr noundef %i.dr) #18 ; 0 uses
  br label %bb.ca

bb.ab:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  store ptr %i.dp, ptr %i.dt, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not168.i = icmp eq ptr %i.dv, null
  br i1 %.not168.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.dw = call fastcc i32 @_build_account_list(ptr noundef nonnull %i.dv, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.b)
  %.not169.i = icmp eq i32 %i.dw, 0
  br i1 %.not169.i, label %.preheader.i, label %.thread196.i

.preheader.i:                                     ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br label %bb.ae

.thread196.i:                                     ; preds = %bb.ad
  %i.eb = load ptr, ptr %i.aj, align 8
  %i.ec = load ptr, ptr %i.du, align 8
  %i.ed = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.185, ptr noundef %i.eb, ptr noundef %i.ec) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.ca

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ae ] ; 2 uses
  %i.ee = load ptr, ptr %i.ea, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i
  call void @slurm_xfree(ptr noundef %i.ef) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eg = load i32, ptr %i.dx, align 8
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next.i, %i.eh
  br i1 %i.ei, label %bb.ae, label %._crit_edge.i, !llvm.loop !66

._crit_edge.i:                                    ; preds = %bb.ae, %.preheader.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ej) #18
  %i.ek = load i32, ptr %i.d, align 4
  store i32 %i.ek, ptr %i.dx, align 8
  %i.el = load ptr, ptr %i.e, align 8
  store ptr %i.el, ptr %i.ej, align 8
  %i.em = load i8, ptr %i.b, align 1, !range !11, !noundef !12
  %masksel.i = zext nneg i8 %i.em to i32
  %i.en = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = and i32 %i.eo, -2
  %.sink.i = or disjoint i32 %i.ep, %masksel.i
  store i32 %.sink.i, ptr %i.en, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i, %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ai, i64 184 ; 5 uses
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %.not170.i = icmp eq ptr %i.er, null
  br i1 %.not170.i, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i8 1, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i8 0, ptr %i.g, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 176 ; 4 uses
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not171.i = icmp eq ptr %i.et, null
  br i1 %.not171.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @list_destroy(ptr noundef nonnull %i.et) #18
  %.pre.i = load ptr, ptr %i.eq, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eu = phi ptr [ %.pre.i, %bb.ah ], [ %i.er, %bb.ag ]
  store ptr null, ptr %i.es, align 8
  %i.ev = call ptr @license_validate(ptr noundef %i.eu, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #18
  store ptr %i.ev, ptr %i.es, align 8
  %i.ew = load i8, ptr %i.f, align 1, !range !11, !noundef !12
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load i8, ptr %i.g, align 1, !range !11, !noundef !12
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ak, label %.thread197.i

bb.ak:                                            ; preds = %bb.aj
  call void @slurm_xfree(ptr noundef nonnull %i.eq) #18
  %i.fa = load ptr, ptr %i.es, align 8
  %i.fb = call ptr @license_list_to_string(ptr noundef %i.fa) #18
  store ptr %i.fb, ptr %i.eq, align 8
  br label %.thread197.i

.thread197.i:                                     ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.fc = load ptr, ptr %i.aj, align 8
  %i.fd = load ptr, ptr %i.eq, align 8
  %i.fe = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.186, ptr noundef %i.fc, ptr noundef %i.fd) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.ca

bb.am:                                            ; preds = %.thread197.i, %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ai, i64 328 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.not172.i = icmp eq ptr %i.fg, null
  br i1 %.not172.i, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.fh = call fastcc i32 @_build_uid_list(ptr noundef nonnull %i.fg, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.c, i1 noundef zeroext false)
  switch i32 %i.fh, label %bb.ap [
    i32 -1, label %bb.as
    i32 2010, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fi = load ptr, ptr %i.aj, align 8
  %i.fj = load ptr, ptr %i.ff, align 8
  %i.fk = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.188, ptr noundef %i.fi, ptr noundef %i.fj) #18 ; 0 uses
  br label %.thread199.i

bb.ap:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 344 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.fl) #18
  %i.fm = load i32, ptr %i.h, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ai, i64 336
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %i.i, align 8
  store ptr %i.fo, ptr %i.fl, align 8
  %i.fp = load i8, ptr %i.c, align 1, !range !11, !noundef !12
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  br i1 %i.fq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_pick_nodes_ordered:bb.a
  %i.ng = call i32 @get_log_level() #18
  %i.nh = icmp sgt i32 %i.ng, 3
  br i1 %i.nh, label %bb.ez, label %bb.fn

bb.ez:                                            ; preds = %bb.ey
  %i.ni = load ptr, ptr %i.cf, align 8
  br i1 %.not201, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0145239
  %i.nk = load ptr, ptr %i.nj, align 8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.nl = phi ptr [ %i.nk, %bb.fa ], [ @.str.22, %bb.ez ]
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.216, ptr noundef nonnull @__func__._pick_nodes_ordered, ptr noundef %i.ni, ptr noundef %i.nl, i64 noundef %.0145239) #18
  br label %bb.fn

bb.fc:                                            ; preds = %bb.ew
  %i.nm = load ptr, ptr %i.j, align 8
  %i.nn = icmp eq ptr %i.nm, null
  %i.no = icmp ne i64 %.3, 0
  %or.cond7 = select i1 %i.nn, i1 true, i1 %i.no
  %i.np = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.nq = and i64 %i.np, 16384
  %.not212 = icmp eq i64 %i.nq, 0                 ; 2 uses
  br i1 %or.cond7, label %bb.fi, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not212, label %bb.fn, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.nr = call i32 @get_log_level() #18
  %i.ns = icmp sgt i32 %i.nr, 3
  br i1 %i.ns, label %bb.ff, label %bb.fn

bb.ff:                                            ; preds = %bb.fe
  %i.nt = load ptr, ptr %i.cf, align 8
  br i1 %.not201, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0145239
  %i.nv = load ptr, ptr %i.nu, align 8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %i.nw = phi ptr [ %i.nv, %bb.fg ], [ @.str.22, %bb.ff ]
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.217, ptr noundef nonnull @__func__._pick_nodes_ordered, ptr noundef %i.nt, ptr noundef %i.nw, i64 noundef %.0145239) #18
  br label %bb.fn

bb.fi:                                            ; preds = %bb.fc
  br i1 %.not212, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.nx = call i32 @get_log_level() #18
  %i.ny = icmp sgt i32 %i.nx, 3
  br i1 %i.ny, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  %i.nz = load ptr, ptr %i.cf, align 8
  br i1 %.not201, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0145239
  %i.ob = load ptr, ptr %i.oa, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fk, %bb.fl
  %i.oc = phi ptr [ %i.ob, %bb.fl ], [ @.str.22, %bb.fk ]
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.218, ptr noundef nonnull @__func__._pick_nodes_ordered, ptr noundef %i.nz, i64 noundef %.1152, i64 noundef %.3, ptr noundef %i.oc, i64 noundef %.0145239) #18
  br label %bb.fn

bb.fn:                                            ; preds = %bb.ey, %bb.fb, %bb.ex, %bb.fi, %bb.fm, %bb.fj, %bb.fd, %bb.fh, %bb.fe, %bb.ea, %bb.ee, %bb.eb, %bb.y, %bb.ac, %bb.z
  %.2153 = phi i64 [ %.0151237, %bb.y ], [ %.0151237, %bb.ea ], [ %.0151237, %bb.z ], [ %.0151237, %bb.ac ], [ %.0151237, %bb.eb ], [ %.0151237, %bb.ee ], [ %i.mw, %bb.fe ], [ %i.mw, %bb.fh ], [ %i.mw, %bb.fd ], [ %i.mw, %bb.fj ], [ %i.mw, %bb.fm ], [ %i.mw, %bb.fi ], [ 0, %bb.ex ], [ 0, %bb.fb ], [ 0, %bb.ey ] ; 2 uses
  %.4 = phi i64 [ %.1150238, %bb.y ], [ %.1150238, %bb.ea ], [ %.1150238, %bb.z ], [ %.1150238, %bb.ac ], [ %.1150238, %bb.eb ], [ %.1150238, %bb.ee ], [ 0, %bb.fe ], [ 0, %bb.fh ], [ 0, %bb.fd ], [ %.3, %bb.fj ], [ %.3, %bb.fm ], [ %.3, %bb.fi ], [ %.3, %bb.ex ], [ %.3, %bb.fb ], [ %.3, %bb.ey ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  %i.od = add nuw nsw i64 %.0145239, 1            ; 2 uses
  %i.oe = icmp ne i64 %.2153, 0
  %i.of = icmp ne i64 %.4, 0
  %or.cond = select i1 %i.oe, i1 true, i1 %i.of
  %i.og = icmp samesign ult i64 %i.od, %.pre-phi
  %or.cond225 = select i1 %or.cond, i1 %i.og, i1 false
  br i1 %or.cond225, label %bb.u, label %.critedge5, !llvm.loop !110

bb.fo:                                            ; preds = %.critedge5
  %i.oh = call i32 @bit_set_count(ptr noundef nonnull %i.cn) #18
  %.not183 = icmp eq i32 %i.oh, 0
  br i1 %.not183, label %bb.fp, label %bb.fw

bb.fp:                                            ; preds = %.critedge5, %bb.fo
  %i.oi = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.oj = and i64 %i.oi, 16384
  %.not184 = icmp eq i64 %i.oj, 0
  br i1 %.not184, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ok = call i32 @get_log_level() #18
  %i.ol = icmp sgt i32 %i.ok, 3
  br i1 %i.ol, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.on = load ptr, ptr %i.om, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.219, ptr noundef nonnull @__func__._pick_nodes_ordered, ptr noundef %i.on) #18
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fp, %bb.fr, %bb.fq
  %i.oo = load ptr, ptr %i.i, align 8
  %.not185 = icmp eq ptr %i.oo, null
  br i1 %.not185, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @slurm_bit_free(ptr noundef nonnull %i.i) #18
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  store ptr null, ptr %i.i, align 8
  %i.op = load ptr, ptr %i.j, align 8
  %.not186 = icmp eq ptr %i.op, null
  br i1 %.not186, label %bb.gw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @slurm_bit_free(ptr noundef nonnull %i.j) #18
  br label %bb.gw

bb.fw:                                            ; preds = %bb.fo
  %i.oq = load ptr, ptr %i.i, align 8             ; 6 uses
  %i.or = load ptr, ptr %i.j, align 8             ; 6 uses
  %.not.i226 = icmp eq ptr %i.or, null            ; 2 uses
  br i1 %.not.i226, label %_validate_core_resrcs.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 504 ; 13 uses
  %i.ov = load ptr, ptr %i.ou, align 8            ; 2 uses
  %.not43.i = icmp eq ptr %i.ov, null
  br i1 %.not43.i, label %_validate_core_resrcs.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %.not44.i = icmp eq ptr %i.ow, null
  br i1 %.not44.i, label %_validate_core_resrcs.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ox = call i32 @bit_set_count(ptr noundef nonnull %i.ow) #18
  %i.oy = call i32 @bit_set_count(ptr noundef nonnull %i.or) #18
  %i.oz = icmp eq i32 %i.ox, %i.oy
  br i1 %i.oz, label %_validate_core_resrcs.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.pa = call i32 @bit_set_count(ptr noundef %i.oq) #18
  %.not45.i = icmp eq i32 %i.pa, 0
  br i1 %.not45.i, label %_validate_core_resrcs.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @free_job_resources(ptr noundef nonnull %i.ou) #18
  %i.pb = call ptr @create_job_resources() #18
  store ptr %i.pb, ptr %i.ou, align 8
  %i.pc = call ptr @bitmap2node_name(ptr noundef %i.oq) #18
  %i.pd = load ptr, ptr %i.ou, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 120
  store ptr %i.pc, ptr %i.pe, align 8
  %i.pf = call ptr @bit_copy(ptr noundef %i.oq) #18
  %i.pg = load ptr, ptr %i.ou, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 96
  store ptr %i.pf, ptr %i.ph, align 8
  %i.pi = call i32 @bit_set_count(ptr noundef %i.oq) #18
  %i.pj = load ptr, ptr %i.ou, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 92
  store i32 %i.pi, ptr %i.pk, align 4
  %i.pl = load ptr, ptr %i.ou, align 8
  %i.pm = call i32 @build_job_resources(ptr noundef %i.pl) #18
  %.not46.i = icmp eq i32 %i.pm, 0
  br i1 %.not46.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @free_job_resources(ptr noundef nonnull %i.ou) #18
  br label %_validate_core_resrcs.exit

bb.gd:                                            ; preds = %bb.gb
  %i.pn = load ptr, ptr %i.ou, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 92
  %i.pp = load i32, ptr %i.po, align 4
  %i.pq = zext i32 %i.pp to i64
  %i.pr = call ptr @slurm_xcalloc(i64 noundef %i.pq, i64 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 6653, ptr noundef nonnull @__func__._validate_core_resrcs) #18
  %i.ps = load ptr, ptr %i.ou, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 40
  store ptr %i.pr, ptr %i.pt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4
  %i.pu = call ptr @next_node_bitmap(ptr noundef %i.oq, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not4752.i = icmp eq ptr %i.pu, null
  br i1 %.not4752.i, label %._crit_edge57.i, label %.lr.ph56.i

._crit_edge57.i:                                  ; preds = %._crit_edge.i227, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_validate_core_resrcs.exit

.lr.ph56.i:                                       ; preds = %bb.gd, %._crit_edge.i227
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %._crit_edge.i227 ], [ -1, %bb.gd ]
  %6 = phi ptr [ %i.qh, %._crit_edge.i227 ], [ %i.pu, %bb.gd ]
  %.03654.i.a = phi i32 [ %.1.lcssa.i, %._crit_edge.i227 ], [ -1, %bb.gd ] ; 2 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %i.pv = load i32, ptr %i.a, align 4
  %i.pw = call i32 @cr_get_coremap_offset(i32 noundef %i.pv) #18 ; 2 uses
  %i.px = load i32, ptr %i.a, align 4
  %i.py = add nsw i32 %i.px, 1
  %i.pz = call i32 @cr_get_coremap_offset(i32 noundef %i.py) #18 ; 2 uses
  %i.qa = icmp slt i32 %i.pw, %i.pz
  br i1 %i.qa, label %.lr.ph.i228, label %._crit_edge.i227

.lr.ph.i228:                                      ; preds = %.lr.ph56.i
  %i.qb = getelementptr inbounds nuw i8, ptr %6, i64 544 ; 2 uses
  %i.qc = sext i32 %i.pw to i64
  %i.qd = sext i32 %.03654.i.a to i64
  br label %bb.ge

._crit_edge.loopexit.i:                           ; preds = %bb.gi
  %i.qe = trunc nsw i64 %indvars.iv.next59.i to i32
  br label %._crit_edge.i227

._crit_edge.i227:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph56.i
  %.1.lcssa.i = phi i32 [ %.03654.i.a, %.lr.ph56.i ], [ %i.qe, %._crit_edge.loopexit.i ]
  %i.qf = load i32, ptr %i.a, align 4
  %i.qg = add nsw i32 %i.qf, 1
  store i32 %i.qg, ptr %i.a, align 4
  %i.qh = call ptr @next_node_bitmap(ptr noundef %i.oq, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not47.i = icmp eq ptr %i.qh, null
  br i1 %.not47.i, label %._crit_edge57.i, label %.lr.ph56.i, !llvm.loop !111

bb.ge:                                            ; preds = %bb.gi, %.lr.ph.i228
  %indvars.iv58.i = phi i64 [ %i.qd, %.lr.ph.i228 ], [ %indvars.iv.next59.i, %bb.gi ]
  %indvars.iv.i = phi i64 [ %i.qc, %.lr.ph.i228 ], [ %indvars.iv.next.i, %bb.gi ] ; 2 uses
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i, 1 ; 3 uses
  %i.qi = call i32 @slurm_bit_test(ptr noundef nonnull %i.or, i64 noundef %indvars.iv.i) #18
  %.not48.i = icmp eq i32 %i.qi, 0
  br i1 %.not48.i, label %bb.gi, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.qj = load ptr, ptr %i.ou, align 8            ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8            ; 2 uses
  %.not49.i = icmp eq ptr %i.qk, null
  br i1 %.not49.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @bit_set(ptr noundef nonnull %i.qk, i64 noundef %indvars.iv.next59.i) #18
  %.pre.i229 = load ptr, ptr %i.ou, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.ql = phi ptr [ %.pre.i229, %bb.gg ], [ %i.qj, %bb.gf ]
  %i.qm = load i16, ptr %i.qb, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 40
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %indvars.iv.next64.i ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2
  %i.qr = add i16 %i.qq, %i.qm
  store i16 %i.qr, ptr %i.qp, align 2
  %i.qs = load i16, ptr %i.qb, align 8
  %i.qt = zext i16 %i.qs to i32
  %i.qu = load ptr, ptr %i.ou, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 128 ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 8
  %i.qx = add i32 %i.qw, %i.qt
  store i32 %i.qx, ptr %i.qv, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ge
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.pz, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.ge, !llvm.loop !112

_validate_core_resrcs.exit:                       ; preds = %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gc, %._crit_edge57.i
  %i.qy = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.qz = and i64 %i.qy, 16384
  %.not187 = icmp eq i64 %i.qz, 0
  br i1 %.not187, label %bb.gr, label %bb.gj

bb.gj:                                            ; preds = %_validate_core_resrcs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  store ptr null, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  store ptr null, ptr %i.t, align 8
  %i.ra = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not188 = icmp eq ptr %i.ra, null
  br i1 %.not188, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rb = call ptr @bitmap2node_name(ptr noundef nonnull %i.ra) #18 ; 2 uses
  store ptr %i.rb, ptr %i.s, align 8
  %i.rc = load ptr, ptr %i.i, align 8
  %i.rd = call i32 @bit_set_count(ptr noundef %i.rc) #18
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.re = phi ptr [ %i.rb, %bb.gk ], [ null, %bb.gj ]
  %.0143 = phi i32 [ %i.rd, %bb.gk ], [ 0, %bb.gj ]
  br i1 %.not.i226, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.rf = call ptr @bit_fmt_full(ptr noundef nonnull %i.or) #18 ; 2 uses
  store ptr %i.rf, ptr %i.t, align 8
  %i.rg = call i32 @bit_set_count(ptr noundef nonnull %i.or) #18
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %i.rh = phi ptr [ %i.rf, %bb.gm ], [ null, %bb.gl ]
  %.0 = phi i32 [ %i.rg, %bb.gm ], [ 0, %bb.gl ]
  %i.ri = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.rj = and i64 %i.ri, 16384
  %.not190 = icmp eq i64 %i.rj, 0
  br i1 %.not190, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.rk = call i32 @get_log_level() #18
  %i.rl = icmp sgt i32 %i.rk, 3
  br i1 %i.rl, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.rn = load ptr, ptr %i.rm, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.220, ptr noundef nonnull @__func__._pick_nodes_ordered, ptr noundef %i.rn, i32 noundef %.0143, ptr noundef %i.re, i32 noundef %.0, ptr noundef %i.rh) #18
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gp, %bb.gn
  call void @slurm_xfree(ptr noundef nonnull %i.s) #18
  call void @slurm_xfree(ptr noundef nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %_validate_core_resrcs.exit
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8            ; 2 uses
  %.not191 = icmp eq ptr %i.rp, null
  %i.rq = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %.not191, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @bit_or(ptr noundef nonnull %i.rp, ptr noundef %i.rq) #18
  %i.rr = load ptr, ptr %i.i, align 8
  %.not192 = icmp eq ptr %i.rr, null
  br i1 %.not192, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @slurm_bit_free(ptr noundef nonnull %i.i) #18
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gr
  store ptr %i.rq, ptr %i.ro, align 8
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gs, %bb.gt, %bb.gu
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.or, ptr %i.rs, align 8
  br label %bb.gw

bb.gw:                                            ; preds = %bb.fu, %bb.fv, %bb.gv
  %.0154 = phi i32 [ 0, %bb.gv ], [ 2016, %bb.fv ], [ 2016, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  ret i32 %.0154
}

declare ptr @bit_fmt_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_pick_nodes(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @bit_and_not(ptr noundef %i.f, ptr noundef nonnull %i.d) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.h = and i64 %i.g, 16384
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @bitmap2node_name(ptr noundef nonnull %i.j) #18 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = tail call i32 @bit_set_count(ptr noundef %i.l) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  %.015 = phi i32 [ %i.m, %bb.e ], [ 0, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.p, null
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @bit_fmt_full(ptr noundef nonnull %i.p) #18 ; 2 uses
  store ptr %i.q, ptr %i.b, align 8
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = tail call i32 @bit_set_count(ptr noundef %i.r) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.q, %bb.g ], [ null, %bb.f ]
  %.0 = phi i32 [ %i.s, %bb.g ], [ 0, %bb.f ]
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.v = and i64 %i.u, 16384
  %.not22 = icmp eq i64 %i.v, 0
  br i1 %.not22, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @get_log_level() #18
  %i.x = icmp sgt i32 %i.w, 3
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.209, ptr noundef nonnull @__func__._pick_nodes, ptr noundef %i.z, i32 noundef %.015, ptr noundef %i.n, i32 noundef %.0, ptr noundef %i.t) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  call void @slurm_xfree(ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %i.aa = call fastcc i32 @_pick_nodes_ordered(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @select_node_bitmap_tags, i64 32))
  %.not23 = icmp eq i32 %i.aa, 0
  br i1 %.not23, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
end_hunk_1
