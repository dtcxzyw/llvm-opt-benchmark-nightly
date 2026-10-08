Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/trigger_mgr?download=true
inline.NumInlined: 25
inline.NumDeleted: 13
begin_hunk_0_@trigger_set:bb.a
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i16 %i.cq, ptr %i.cr, align 4
  %i.cs = load ptr, ptr %i.n, align 8
  %i.ct = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i16, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i16 %i.cv, ptr %i.cx, align 4
  %i.cy = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not91 = icmp eq ptr %i.cy, null
  br i1 %.not91, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.cy, ptr %i.cz, align 8
  %i.da = call ptr @bit_copy(ptr noundef nonnull %i.cy) #13
  %i.db = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  store ptr %i.da, ptr %i.dc, align 8
  store ptr null, ptr %i.a, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit
  %i.dd = phi ptr [ %i.db, %bb.aj ], [ %i.cw, %.loopexit ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store i32 %.166, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  %.not92 = icmp eq ptr %i.di, null
  br i1 %.not92, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.di, ptr %i.dj, align 8
  %i.dk = call ptr @xstrdup(ptr noundef nonnull %i.di) #13
  %i.dl = load ptr, ptr %i.b, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  store ptr %i.dk, ptr %i.dm, align 8
  %i.dn = load ptr, ptr %i.n, align 8
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %indvars.iv
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr null, ptr %i.dp, align 8
  %.pre = load ptr, ptr %i.n, align 8
  %.pre119 = load ptr, ptr %i.b, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dq = phi ptr [ %.pre119, %bb.al ], [ %i.dd, %bb.ak ] ; 6 uses
  %i.dr = phi ptr [ %.pre, %bb.al ], [ %i.df, %bb.ak ]
  %i.ds = getelementptr inbounds nuw [48 x i8], ptr %i.dr, i64 %indvars.iv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  store i32 %i.du, ptr %i.dv, align 4
  %i.dw = load ptr, ptr %i.n, align 8
  %i.dx = getelementptr inbounds nuw [48 x i8], ptr %i.dw, i64 %indvars.iv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load i16, ptr %i.dy, align 8
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store i64 %i.ea, ptr %i.eb, align 8
  %i.ec = load ptr, ptr %i.n, align 8
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.ec, i64 %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load i16, ptr %i.ee, align 8
  %i.eg = zext i16 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  store i64 %i.eg, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %i.n, align 8
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  store i32 %i.el, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dq, i64 52
  store i32 %1, ptr %i.en, align 4
  %i.eo = load ptr, ptr %i.n, align 8
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  store ptr %i.er, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.n, align 8
  %i.eu = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store ptr null, ptr %i.ev, align 8
  %i.ew = load ptr, ptr %i.b, align 8
  %i.ex = call fastcc zeroext i1 @_validate_trigger(ptr noundef %i.ew)
  br i1 %i.ex, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %.not93 = icmp eq ptr %i.fa, null
  br i1 %.not93, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @slurm_bit_free(ptr noundef nonnull %i.ez) #13
  %.pre120 = load ptr, ptr %i.b, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fb = phi ptr [ %.pre120, %bb.ao ], [ %i.ey, %bb.an ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store ptr null, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 72 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8
  %.not94 = icmp eq ptr %i.fe, null
  br i1 %.not94, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @slurm_bit_free(ptr noundef nonnull %i.fd) #13
  %.pre121 = load ptr, ptr %i.b, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ff = phi ptr [ %.pre121, %bb.aq ], [ %i.fb, %bb.ap ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 72
  store ptr null, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  call void @slurm_xfree(ptr noundef nonnull %i.fh) #13
  %i.fi = load ptr, ptr %i.b, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  call void @slurm_xfree(ptr noundef nonnull %i.fj) #13
  call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  br label %.thread109

bb.as:                                            ; preds = %bb.am
  %i.fk = load ptr, ptr @trigger_list, align 8
  %i.fl = load ptr, ptr %i.b, align 8
  call void @list_append(ptr noundef %i.fk, ptr noundef %i.fl) #13
  call void @schedule_trigger_save() #13
  br label %.thread109

.thread109:                                       ; preds = %bb.q, %bb.n, %bb.o, %bb.p, %bb.as, %bb.ar, %bb.ai, %bb.w
  %.3 = phi i32 [ 2089, %bb.ai ], [ %.067116, %bb.as ], [ 2002, %bb.ar ], [ 2018, %bb.w ], [ 2017, %bb.n ], [ 2017, %bb.p ], [ 2017, %bb.o ], [ 2021, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fm = load i32, ptr %2, align 8
  %i.fn = zext i32 %i.fm to i64
  %i.fo = icmp samesign ult i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %bb.k, label %.loopexit114, !llvm.loop !16

.loopexit114:                                     ; preds = %.thread109, %bb.j, %bb.i, %bb.d, %bb.e
  %.4 = phi i32 [ 2002, %bb.d ], [ 11, %bb.i ], [ 2002, %bb.e ], [ 0, %bb.j ], [ %.3, %.thread109 ]
  %i.fp = call i32 @pthread_mutex_unlock(ptr noundef nonnull @trigger_mutex) #13 ; 2 uses
  %.not96 = icmp eq i32 %i.fp, 0
  br i1 %.not96, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.loopexit114
  %i.fq = tail call ptr @__errno_location() #14
  store i32 %i.fp, ptr %i.fq, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.trigger_set) #15
  unreachable

bb.au:                                            ; preds = %.loopexit114
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.trigger_set.job_read_lock) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.4
}

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @find_job_record(i32 noundef) local_unnamed_addr #2

declare i32 @node_name2bitmap(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #2

declare ptr @bit_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_validate_trigger(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @xstrdup(ptr noundef %i.c) #13 ; 5 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not18 = icmp eq i8 %i.e, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = tail call ptr @__ctype_b_loc() #14
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !17

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = phi i8 [ %i.e, %.lr.ph ], [ %i.i, %bb.b ]
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  %i.n = and i16 %i.m, 8192
  %.not14 = icmp eq i16 %i.n, 0
  br i1 %.not14, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 0, ptr %i.o, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %i.p = call i32 @stat(ptr noundef nonnull %i.d, ptr noundef nonnull %1) #13
  %.not15 = icmp eq i32 %i.p, 0
  br i1 %.not15, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.q = tail call i32 @get_log_level() #13
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef %i.s) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  br label %bb.q

bb.h:                                             ; preds = %.loopexit
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = and i32 %i.u, 61440
  %i.w = icmp eq i32 %i.v, 32768
  br i1 %i.w, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @get_log_level() #13
  %i.y = icmp sgt i32 %i.x, 2
  br i1 %i.y, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.23, ptr noundef %i.z) #13
  br label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = lshr i32 %i.u, 6
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.ah, %i.aj
  %i.al = lshr i32 %i.u, 3
  %spec.select = select i1 %i.ak, i32 %i.al, i32 %i.u
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.in = phi i32 [ %i.af, %bb.l ], [ %spec.select, %bb.m ]
  %i.am = and i32 %.0.in, 1
  %.not16 = icmp eq i32 %i.am, 0
  br i1 %.not16, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.an = call i32 @get_log_level() #13
  %i.ao = icmp sgt i32 %i.an, 2
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef %i.ap) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n, %bb.i, %bb.j, %bb.g
  %.012 = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.n ], [ false, %bb.j ], [ false, %bb.p ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i1 %.012
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare void @list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @trigger_node_down(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @trigger_mutex) #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #14
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.trigger_node_down) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @trigger_down_nodes_bitmap, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr @node_record_count, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @bit_alloc(i64 noundef %i.f) #13 ; 2 uses
  store ptr %i.g, ptr @trigger_down_nodes_bitmap, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  tail call void @bit_set(ptr noundef %i.h, i64 noundef %i.k) #13
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @trigger_mutex) #13 ; 2 uses
  %.not5 = icmp eq i32 %i.l, 0
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__errno_location() #14
  store i32 %i.l, ptr %i.m, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.trigger_node_down) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #2

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @trigger_node_drained(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @trigger_mutex) #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #14
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.trigger_node_drained) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @trigger_drained_nodes_bitmap, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr @node_record_count, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @bit_alloc(i64 noundef %i.f) #13 ; 2 uses
  store ptr %i.g, ptr @trigger_drained_nodes_bitmap, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  tail call void @bit_set(ptr noundef %i.h, i64 noundef %i.k) #13
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @trigger_mutex) #13 ; 2 uses
  %.not5 = icmp eq i32 %i.l, 0
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__errno_location() #14
  store i32 %i.l, ptr %i.m, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.trigger_node_drained) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @trigger_node_failing(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @trigger_mutex) #13 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
