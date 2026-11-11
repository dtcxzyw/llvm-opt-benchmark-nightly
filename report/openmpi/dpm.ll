Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/dpm?download=true
inline.NumInlined: 424
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_dpm_disconnect:bb.a
  %i.cj = load volatile i64, ptr %i.bg, align 8, !tbaa !77
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %opal_list_remove_first.exit70.thread, label %bb.l, !llvm.loop !136

opal_list_remove_first.exit70.thread:             ; preds = %bb.p, %.preheader103, %bb.k
  %i.cl = load ptr, ptr %1, align 8, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !79 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !70 ; 2 uses
  %.not6.i78 = icmp eq ptr %i.co, null
  br i1 %.not6.i78, label %opal_obj_run_destructors.exit68, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %opal_list_remove_first.exit70.thread, %.lr.ph.i79
  %i.cp = phi ptr [ %i.cr, %.lr.ph.i79 ], [ %i.co, %opal_list_remove_first.exit70.thread ]
  %.07.i80 = phi ptr [ %i.cq, %.lr.ph.i79 ], [ %i.cn, %opal_list_remove_first.exit70.thread ]
  call void %i.cp(ptr noundef nonnull %1) #22, !inline_history !3
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i80, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !70 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cr, null
  br i1 %.not.i81, label %opal_obj_run_destructors.exit68, label %.lr.ph.i79, !llvm.loop !4

bb.q:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.ct = load volatile i64, ptr %i.cs, align 8, !tbaa !77 ; 3 uses
  %i.cu = call ptr @PMIx_Proc_create(i64 noundef %i.ct) #22 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cx = load volatile ptr, ptr %i.cw, align 8, !tbaa !78 ; 2 uses
  %.not54107 = icmp eq ptr %i.cx, %i.cv
  br i1 %.not54107, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.q, %.lr.ph110
  %.0109 = phi i64 [ %i.df, %.lr.ph110 ], [ 0, %bb.q ] ; 2 uses
  %.043108 = phi ptr [ %i.dh, %.lr.ph110 ], [ %i.cx, %bb.q ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [260 x i8], ptr %i.cu, i64 %.0109 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.043108, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !140
  %i.db = call i32 @opal_pmix_convert_jobid(ptr noundef %i.cy, i32 noundef %i.da) #22 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.043108, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !141 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 256
  %cond = icmp eq i32 %i.dd, -1
  %spec.select = select i1 %cond, i32 -4, i32 %i.dd
  store i32 %spec.select, ptr %i.de, align 4, !tbaa !53
  %i.df = add i64 %.0109, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.043108, i64 16
  %i.dh = load volatile ptr, ptr %i.dg, align 8, !tbaa !75 ; 2 uses
  %.not54 = icmp eq ptr %i.dh, %i.cv
  br i1 %.not54, label %._crit_edge, label %.lr.ph110, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph110, %bb.q
  %i.di = load volatile i32, ptr %i.c, align 8, !tbaa !68
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %.preheader, label %opal_list_remove_first.exit84.thread

.preheader:                                       ; preds = %._crit_edge
  %i.dk = load volatile i64, ptr %i.cs, align 8, !tbaa !77
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %opal_list_remove_first.exit84.thread, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader, %bb.u
  %i.dm = load volatile i64, ptr %i.cs, align 8, !tbaa !77
  %i.dn = add i64 %i.dm, -1
  store volatile i64 %i.dn, ptr %i.cs, align 8, !tbaa !77
  %i.do = load volatile ptr, ptr %i.cw, align 8, !tbaa !78 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load volatile ptr, ptr %i.dp, align 8, !tbaa !74
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.ds = load volatile ptr, ptr %i.dr, align 8, !tbaa !75
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store volatile ptr %i.dq, ptr %i.dt, align 8, !tbaa !74
  %i.du = load volatile ptr, ptr %i.dr, align 8, !tbaa !75
  store volatile ptr %i.du, ptr %i.cw, align 8, !tbaa !78
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dw = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.r, label %bb.s, !prof !59

bb.r:                                             ; preds = %.lr.ph111
  %i.dy = atomicrmw volatile add ptr %i.dv, i32 -1 monotonic, align 4
  %i.dz = add i32 %i.dy, -1
  br label %opal_thread_add_fetch_32.exit86

bb.s:                                             ; preds = %.lr.ph111
  %i.ea = load volatile i32, ptr %i.dv, align 8, !tbaa !13
  %i.eb = add nsw i32 %i.ea, -1
  store volatile i32 %i.eb, ptr %i.dv, align 8, !tbaa !13
  %i.ec = load volatile i32, ptr %i.dv, align 8, !tbaa !13
  br label %opal_thread_add_fetch_32.exit86

opal_thread_add_fetch_32.exit86:                  ; preds = %bb.r, %bb.s
  %.0.i85 = phi i32 [ %i.dz, %bb.r ], [ %i.ec, %bb.s ]
  %i.ed = icmp eq i32 %.0.i85, 0
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %opal_thread_add_fetch_32.exit86
  %i.ee = load ptr, ptr %i.do, align 8, !tbaa !67
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !79 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !70 ; 2 uses
  %.not6.i87 = icmp eq ptr %i.eh, null
  br i1 %.not6.i87, label %opal_obj_run_destructors.exit91, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.t, %.lr.ph.i88
  %i.ei = phi ptr [ %i.ek, %.lr.ph.i88 ], [ %i.eh, %bb.t ]
  %.07.i89 = phi ptr [ %i.ej, %.lr.ph.i88 ], [ %i.eg, %bb.t ]
  call void %i.ei(ptr noundef nonnull %i.do) #22, !inline_history !3
  %i.ej = getelementptr inbounds nuw i8, ptr %.07.i89, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !70 ; 2 uses
  %.not.i90 = icmp eq ptr %i.ek, null
  br i1 %.not.i90, label %opal_obj_run_destructors.exit91, label %.lr.ph.i88, !llvm.loop !4

opal_obj_run_destructors.exit91:                  ; preds = %.lr.ph.i88, %bb.t
  call void @free(ptr noundef nonnull %i.do) #22
  br label %bb.u

bb.u:                                             ; preds = %opal_obj_run_destructors.exit91, %opal_thread_add_fetch_32.exit86
  %i.el = load volatile i64, ptr %i.cs, align 8, !tbaa !77
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %opal_list_remove_first.exit84.thread, label %.lr.ph111, !llvm.loop !138

opal_list_remove_first.exit84.thread:             ; preds = %bb.u, %.preheader, %._crit_edge
  %i.en = load ptr, ptr %1, align 8, !tbaa !67
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !79 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !70 ; 2 uses
  %.not6.i92 = icmp eq ptr %i.eq, null
  br i1 %.not6.i92, label %opal_obj_run_destructors.exit96, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %opal_list_remove_first.exit84.thread, %.lr.ph.i93
  %i.er = phi ptr [ %i.et, %.lr.ph.i93 ], [ %i.eq, %opal_list_remove_first.exit84.thread ]
  %.07.i94 = phi ptr [ %i.es, %.lr.ph.i93 ], [ %i.ep, %opal_list_remove_first.exit84.thread ]
  call void %i.er(ptr noundef nonnull %1) #22, !inline_history !3
  %i.es = getelementptr inbounds nuw i8, ptr %.07.i94, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !70 ; 2 uses
  %.not.i95 = icmp eq ptr %i.et, null
  br i1 %.not.i95, label %opal_obj_run_destructors.exit96, label %.lr.ph.i93, !llvm.loop !4

opal_obj_run_destructors.exit96:                  ; preds = %.lr.ph.i93, %opal_list_remove_first.exit84.thread
  %i.eu = call i32 @PMIx_Fence(ptr noundef %i.cu, i64 noundef %i.ct, ptr noundef null, i64 noundef 0) #22 ; 2 uses
  %.not56 = icmp eq i32 %i.eu, 0
  br i1 %.not56, label %opal_obj_run_destructors.exit68.sink.split, label %bb.v

bb.v:                                             ; preds = %opal_obj_run_destructors.exit96
  %i.ev = call i32 @opal_pmix_convert_status(i32 noundef %i.eu) #22 ; 2 uses
  %i.ew = call ptr @opal_strerror(i32 noundef %i.ev) #22
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %i.ew, ptr noundef nonnull @.str.6, i32 noundef 667) #22
  br label %opal_obj_run_destructors.exit68.sink.split

opal_obj_run_destructors.exit68.sink.split:       ; preds = %opal_obj_run_destructors.exit96, %bb.v
  %.044.ph = phi i32 [ %i.ev, %bb.v ], [ 0, %opal_obj_run_destructors.exit96 ]
  call void @PMIx_Proc_free(ptr noundef %i.cu, i64 noundef %i.ct) #22
  br label %opal_obj_run_destructors.exit68

opal_obj_run_destructors.exit68:                  ; preds = %.lr.ph.i65, %.lr.ph.i79, %opal_obj_run_destructors.exit68.sink.split, %opal_list_remove_first.exit70.thread, %opal_list_remove_first.exit.thread
  %.044 = phi i32 [ %i.bc, %opal_list_remove_first.exit70.thread ], [ %.044.ph, %opal_obj_run_destructors.exit68.sink.split ], [ %i.bc, %.lr.ph.i79 ], [ %i.k, %opal_list_remove_first.exit.thread ], [ %i.k, %.lr.ph.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -13, 1) i32 @construct_peers(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph43, label %.loopexit

.lr.ph43:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph43, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !55
  %i.k = and i32 %i.j, 4
  %.not = icmp eq i32 %i.k, 0
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 3 uses
  br i1 %.not, label %bb.c, label %ompi_group_peer_lookup.exit

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %ompi_group_peer_lookup.exit, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i64 %i.o, 1
  %i.r = and i64 %i.q, 32767
  %i.s = and i64 %i.o, -65536
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %i.r, %i.s
  %i.t = tail call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i) #22 ; 5 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = cmpxchg volatile ptr %i.v, i64 %i.o, i64 %i.w acquire monotonic, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.e, label %ompi_group_peer_lookup.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.aa = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %ompi_group_peer_lookup.exit.thread, !prof !59

bb.f:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_group_peer_lookup.exit

ompi_group_peer_lookup.exit.thread:               ; preds = %bb.e
  %i.ad = load volatile i32, ptr %i.z, align 4, !tbaa !13
  %i.ae = add nsw i32 %i.ad, 1
  store volatile i32 %i.ae, ptr %i.z, align 4, !tbaa !13
  %i.af = load volatile i32, ptr %i.z, align 4, !tbaa !13 ; 0 uses
  br label %bb.h

ompi_group_peer_lookup.exit:                      ; preds = %bb.b, %bb.f, %bb.d, %bb.c
  %.027 = phi ptr [ %i.t, %bb.f ], [ %i.n, %bb.c ], [ %i.t, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.ag = icmp eq ptr %.027, null
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ompi_group_peer_lookup.exit
  %i.ah = tail call ptr @opal_strerror(i32 noundef -13) #22
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %i.ah, ptr noundef nonnull @.str.6, i32 noundef 593) #22
  br label %.loopexit

bb.h:                                             ; preds = %ompi_group_peer_lookup.exit, %ompi_group_peer_lookup.exit.thread
  %.02734 = phi ptr [ %i.t, %ompi_group_peer_lookup.exit.thread ], [ %.027, %ompi_group_peer_lookup.exit ] ; 2 uses
  %.pre-phi = ptrtoint ptr %.02734 to i64         ; 3 uses
  %i.ai = trunc i64 %.pre-phi to i1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = lshr i64 %.pre-phi, 1
  %i.ak = and i64 %i.aj, 32767
  %i.al = and i64 %.pre-phi, -65536
  %.sroa.0.0.insert.insert.i = or disjoint i64 %i.ak, %i.al
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.02734, i64 40
  %.sroa.01.0.copyload = load i64, ptr %i.am, align 8, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.insert.insert.i, %bb.i ], [ %.sroa.01.0.copyload, %bb.j ]
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_namelist_t_class, i64 56), align 8, !tbaa !71
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #25 ; 13 uses
  %i.ap = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_namelist_t_class, i64 32), align 8, !tbaa !66
  %.not.i = icmp eq i32 %i.ap, %i.aq
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_namelist_t_class) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not9.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @opal_namelist_t_class, ptr %i.ao, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store volatile i32 1, ptr %i.ar, align 8, !tbaa !68
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_namelist_t_class, i64 40), align 8, !tbaa !69 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !70 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.at, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %i.au = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.at, %bb.n ]
  %.07.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.as, %bb.n ]
  tail call void %i.au(ptr noundef nonnull %i.ao) #22, !inline_history !2
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !70 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.m, %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  store i64 %.sroa.01.0, ptr %i.ax, align 8, !tbaa !13
  %i.ay = load volatile ptr, ptr %i.g, align 8, !tbaa !78 ; 2 uses
  %.not3138 = icmp eq ptr %i.ay, %i.f
  br i1 %.not3138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %opal_obj_new.exit, %bb.o
  %.02839 = phi ptr [ %i.bm, %bb.o ], [ %i.ay, %opal_obj_new.exit ] ; 4 uses
  %i.az = load ptr, ptr @opal_compare_proc, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %.02839, i64 40
  %i.bb = load i64, ptr %i.ax, align 8
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = tail call i32 %i.az(i64 %i.bb, i64 %i.bc) #22
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.thread, label %bb.o

.thread:                                          ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store volatile ptr %.02839, ptr %i.bf, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %.02839, i64 24 ; 3 uses
  %i.bh = load volatile ptr, ptr %i.bg, align 8, !tbaa !74
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store volatile ptr %i.bh, ptr %i.bi, align 8, !tbaa !74
  %i.bj = load volatile ptr, ptr %i.bg, align 8, !tbaa !74
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store volatile ptr %i.ao, ptr %i.bk, align 8, !tbaa !75
  store volatile ptr %i.ao, ptr %i.bg, align 8, !tbaa !74
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.02839, i64 16
  %i.bm = load volatile ptr, ptr %i.bl, align 8, !tbaa !75 ; 2 uses
  %.not31 = icmp eq ptr %i.bm, %i.f
  br i1 %.not31, label %._crit_edge, label %.lr.ph, !llvm.loop !142

._crit_edge:                                      ; preds = %bb.o, %opal_obj_new.exit
  %i.bn = load volatile ptr, ptr %i.i, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store volatile ptr %i.bn, ptr %i.bo, align 8, !tbaa !74
  %i.bp = load volatile ptr, ptr %i.i, align 8, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store volatile ptr %i.ao, ptr %i.bq, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store volatile ptr %i.f, ptr %i.br, align 8, !tbaa !75
  store volatile ptr %i.ao, ptr %i.i, align 8, !tbaa !74
  br label %bb.p

bb.p:                                             ; preds = %.thread, %._crit_edge
  %i.bs = load volatile i64, ptr %i.h, align 8, !tbaa !77
  %i.bt = add i64 %i.bs, 1
  store volatile i64 %i.bt, ptr %i.h, align 8, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !48
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %bb.b, label %.loopexit, !llvm.loop !143

.loopexit:                                        ; preds = %bb.p, %bb.a, %bb.g
  %.0 = phi i32 [ -13, %bb.g ], [ 0, %bb.a ], [ 0, %bb.p ]
  ret i32 %.0
}

declare i32 @PMIx_Fence(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ompi_dpm_spawn(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 22 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca [2 x i32], align 4                ; 14 uses
  %i.d = alloca [2 x i32], align 4                ; 9 uses
  %6 = alloca %struct.__sigset_t, align 8         ; 5 uses
  %7 = alloca %struct.pmix_info, align 8          ; 5 uses
  %i.e = alloca i32, align 4                      ; 107 uses
  %i.f = alloca ptr, align 8                      ; 244 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %struct.opal_list_t, align 8        ; 50 uses
  %9 = alloca %struct.opal_list_t, align 8        ; 27 uses
  %i.i = alloca i8, align 1                       ; 10 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca [256 x i8], align 16              ; 3 uses
  %i.l = alloca ptr, align 8                      ; 16 uses
  %i.m = alloca ptr, align 8                      ; 16 uses
  %i.n = alloca [4097 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 0, ptr %i.e, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  %i.o = sext i32 %0 to i64                       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store ptr null, ptr %i.l, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  store ptr null, ptr %i.m, align 8, !tbaa !17
  %i.p = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !13
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !66
  %.not = icmp eq i32 %i.p, %i.q
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @opal_list_t_class, ptr %8, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  store volatile i32 1, ptr %i.r, align 8, !tbaa !68
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !69 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %.not6.i = icmp eq ptr %i.t, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.u = phi ptr [ %i.w, %.lr.ph.i ], [ %i.t, %bb.c ]
  %.07.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.c ]
  call void %i.u(ptr noundef nonnull %8) #22, !inline_history !0
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.x = call ptr @PMIx_App_create(i64 noundef %i.o) #22 ; 13 uses
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.lr.ph1610, label %.critedge1634

.lr.ph1610:                                       ; preds = %opal_obj_run_constructors.exit
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 10 uses
  %.not472 = icmp eq ptr %2, null
  %.not476 = icmp eq ptr %4, null
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 25 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 75 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 82 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 18 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 48 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 69 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 19 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph1610, %opal_obj_run_destructors.exit1439
  %indvars.iv1660 = phi i64 [ 0, %.lr.ph1610 ], [ %indvars.iv.next1661, %opal_obj_run_destructors.exit1439 ] ; 6 uses
  %.03961609 = phi i1 [ false, %.lr.ph1610 ], [ %.41519, %opal_obj_run_destructors.exit1439 ] ; 3 uses
end_hunk_0
