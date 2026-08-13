inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@prte_oob_tcp_peer_try_connect:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond = icmp ult i32 %i.z, 64
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !36
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.ag = tail call ptr @prte_job_state_to_str(i32 noundef 56) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.z, ptr noundef nonnull @.str.1, ptr noundef %i.af, double noundef %i.y, ptr noundef nonnull @.str.2, ptr noundef %i.ag, ptr noundef nonnull @.str.3, i32 noundef 169) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %pmix_obj_new_tma.exit
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !39
  tail call void %i.ah(ptr noundef null, i32 noundef 56) #16
  br label %bb.dp

.loopexit346:                                     ; preds = %.lr.ph.i.i, %bb.d
  fence acquire
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 25 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 544 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 664 ; 3 uses
  %.0256364 = load ptr, ptr %i.al, align 8, !tbaa !50 ; 2 uses
  %.not365 = icmp eq ptr %.0256364, %i.ak
  br i1 %.not365, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit346
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit345
  %.0256366 = phi ptr [ %.0256364, %.lr.ph ], [ %.0256, %.loopexit345 ] ; 3 uses
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_pif_t_class, i64 56), align 8, !tbaa !8
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #15 ; 15 uses
  %i.ar = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !15
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pif_t_class, i64 32), align 8, !tbaa !16
  %.not.i300 = icmp eq i32 %i.ar, %i.as
  br i1 %.not.i300, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_pif_t_class) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not22.i301 = icmp eq ptr %i.aq, null
  br i1 %.not22.i301, label %pmix_obj_new_tma.exit306, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.aq, ptr noundef null) #16 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr @pmix_pif_t_class, ptr %i.au, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i32 1, ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pif_t_class, i64 40), align 8, !tbaa !21 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %.not6.i.i302 = icmp eq ptr %i.az, null
  br i1 %.not6.i.i302, label %.loopexit345, label %.lr.ph.i.i303

.lr.ph.i.i303:                                    ; preds = %bb.l, %.lr.ph.i.i303
  %i.ba = phi ptr [ %i.bc, %.lr.ph.i.i303 ], [ %i.az, %bb.l ]
  %.07.i.i304 = phi ptr [ %i.bb, %.lr.ph.i.i303 ], [ %i.ay, %bb.l ]
  tail call void %i.ba(ptr noundef nonnull %i.aq) #16, !inline_history !23
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i304, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i305, label %.loopexit345, label %.lr.ph.i.i303, !llvm.loop !24

pmix_obj_new_tma.exit306:                         ; preds = %bb.k
  %i.bd = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.bd) #16
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !26
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %pmix_obj_new_tma.exit306
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bg = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #16 ; 0 uses
  %i.bh = load i64, ptr %4, align 8, !tbaa !32
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !34
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+06
  %i.bn = fadd double %i.bm, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond4 = icmp ult i32 %i.bo, 64
  br i1 %or.cond4, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !36
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.bv = tail call ptr @prte_job_state_to_str(i32 noundef 56) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.bo, ptr noundef nonnull @.str.1, ptr noundef %i.bu, double noundef %i.bn, ptr noundef nonnull @.str.2, ptr noundef %i.bv, ptr noundef nonnull @.str.3, i32 noundef 183) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %pmix_obj_new_tma.exit306
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !39
  tail call void %i.bw(ptr noundef null, i32 noundef 56) #16
  br label %pmix_list_remove_first.exit.thread

.loopexit345:                                     ; preds = %.lr.ph.i.i303, %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.0256366, i64 144 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 410
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 424
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ca, ptr noundef nonnull align 8 dereferenceable(128) %i.bx, i64 128, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.0256366, i64 280
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aq, i64 552
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 556
  store i32 1, ptr %i.ce, align 4, !tbaa !58
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !59
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  store volatile ptr %i.aq, ptr %i.ch, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store ptr %i.am, ptr %i.ci, align 8, !tbaa !50
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !59
  %i.cj = load volatile i64, ptr %i.ao, align 8, !tbaa !60
  %i.ck = add i64 %i.cj, 1
  store volatile i64 %i.ck, ptr %i.ao, align 8, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %.0256366, i64 120
  %.0256 = load ptr, ptr %i.cl, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq ptr %.0256, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !61

._crit_edge:                                      ; preds = %.loopexit345, %.loopexit346
  %i.cm = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_oob_tcp_component, i64 1208), align 8, !tbaa !60 ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.cp = load volatile i64, ptr %i.co, align 8, !tbaa !60 ; 5 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_reachable, i64 16), align 8, !tbaa !62
  %i.cs = tail call ptr %i.cr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @prte_mca_oob_tcp_component, i64 944), ptr noundef nonnull %i.b) #16 ; 12 uses
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 4 uses
  %or.cond6 = icmp ult i32 %i.ct, 64
  br i1 %or.cond6, label %bb.q, label %.thread

bb.q:                                             ; preds = %._crit_edge
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !36
  %i.cy = icmp sgt i32 %i.cx, 6
  br i1 %i.cy, label %bb.r, label %.thread481

bb.r:                                             ; preds = %bb.q
  %i.cz = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.db = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.da) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ct, ptr noundef nonnull @.str.4, ptr noundef %i.cz, ptr noundef %i.db) #16
  %.pr.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 2 uses
  %or.cond8 = icmp ult i32 %.pr.pre, 64
  br i1 %or.cond8, label %.thread481, label %.thread

.thread481:                                       ; preds = %bb.q, %bb.r
  %.pr484 = phi i32 [ %.pr.pre, %bb.r ], [ %i.ct, %bb.q ] ; 2 uses
  %i.dc = zext nneg i32 %.pr484 to i64
  %i.dd = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !36
  %i.dg = icmp sgt i32 %i.df, 6
  br i1 %i.dg, label %bb.s, label %.thread

bb.s:                                             ; preds = %.thread481
  %i.dh = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.dj = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.di) #16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 416
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !64
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %.pr484, ptr noundef nonnull @.str.5, ptr noundef %i.dh, ptr noundef %i.dj, i32 noundef %i.dl) #16
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.s, %.thread481, %bb.r
  %i.dm = icmp slt i32 %i.cn, 1
  %i.dn = icmp slt i32 %i.cq, 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 128 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aj, i64 696 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aj, i64 144 ; 13 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aj, i64 416 ; 24 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aj, i64 848 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 976 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.aj, i64 712 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aj, i64 840 ; 4 uses
  %i.dw = and i64 %i.cp, 4294967295               ; 2 uses
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %wide.trip.count434 = and i64 %i.cm, 2147483647
  %brmerge = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %brmerge, label %.critedge, label %.preheader.lr.ph.split.us.preheader

.preheader.lr.ph.split.us.preheader:              ; preds = %.thread
  %xtraiter = and i64 %i.cp, 1
  %i.dy = icmp eq i64 %i.dw, 1
  %unroll_iter = and i64 %i.cp, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod552 = trunc i64 %i.cp to i1
  br label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph.split.us.preheader, %.backedge
  %.0245531 = phi i32 [ %i.er, %.backedge ], [ 0, %.preheader.lr.ph.split.us.preheader ]
  %.0248530 = phi i32 [ %i.eq, %.backedge ], [ 0, %.preheader.lr.ph.split.us.preheader ]
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !67
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge372.us, %.preheader.lr.ph.split.us
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %._crit_edge372.us ], [ 0, %.preheader.lr.ph.split.us ] ; 3 uses
  %.0242377.us = phi i32 [ %.2244.us.lcssa, %._crit_edge372.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.1246376.us = phi i32 [ %i.eq, %._crit_edge372.us ], [ %.0248530, %.preheader.lr.ph.split.us ] ; 2 uses
  %.1249375.us = phi i32 [ %i.er, %._crit_edge372.us ], [ %.0245531, %.preheader.lr.ph.split.us ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv431
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !70 ; 3 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv431 to i32 ; 2 uses
  br i1 %i.dy, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %.1243369.us = phi i32 [ %.2244.us.1, %.preheader.us.new ], [ %.0242377.us, %.preheader.us ] ; 2 uses
  %.2247368.us = phi i32 [ %.3.us.1, %.preheader.us.new ], [ %.1246376.us, %.preheader.us ]
  %.2250367.us = phi i32 [ %.3251.us.1, %.preheader.us.new ], [ %.1249375.us, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !15 ; 2 uses
  %i.ef = icmp slt i32 %.1243369.us, %i.ee        ; 2 uses
  %i.eg = trunc nuw nsw i64 %indvars.iv to i32
  %.3251.us = select i1 %i.ef, i32 %i.eg, i32 %.2250367.us
  %.2244.us = tail call i32 @llvm.smax.i32(i32 %.1243369.us, i32 %i.ee) ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !15 ; 2 uses
  %i.ej = icmp slt i32 %.2244.us, %i.ei           ; 2 uses
  %i.ek = trunc nuw nsw i64 %indvars.iv.next to i32
  %.3251.us.1 = select i1 %i.ej, i32 %i.ek, i32 %.3251.us ; 3 uses
  %i.el = or i1 %i.ej, %i.ef
  %.3.us.1 = select i1 %i.el, i32 %i.ec, i32 %.2247368.us ; 3 uses
  %.2244.us.1 = tail call i32 @llvm.smax.i32(i32 %.2244.us, i32 %i.ei) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge372.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !72

._crit_edge372.us.unr-lcssa:                      ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge372.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge372.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge372.us.unr-lcssa ] ; 2 uses
  %.1243369.us.epil.init = phi i32 [ %.0242377.us, %.preheader.us ], [ %.2244.us.1, %._crit_edge372.us.unr-lcssa ] ; 2 uses
  %.2247368.us.epil.init = phi i32 [ %.1246376.us, %.preheader.us ], [ %.3.us.1, %._crit_edge372.us.unr-lcssa ]
  %.2250367.us.epil.init = phi i32 [ %.1249375.us, %.preheader.us ], [ %.3251.us.1, %._crit_edge372.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod552)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.epil.init
  %i.en = load i32, ptr %i.em, align 4, !tbaa !15 ; 2 uses
  %i.eo = icmp slt i32 %.1243369.us.epil.init, %i.en ; 2 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.3251.us.epil = select i1 %i.eo, i32 %i.ep, i32 %.2250367.us.epil.init
  %.3.us.epil = select i1 %i.eo, i32 %i.ec, i32 %.2247368.us.epil.init
  %.2244.us.epil = tail call i32 @llvm.smax.i32(i32 %.1243369.us.epil.init, i32 %i.en)
  br label %._crit_edge372.us

._crit_edge372.us:                                ; preds = %._crit_edge372.us.unr-lcssa, %.epil.preheader
  %.3251.us.lcssa = phi i32 [ %.3251.us.1, %._crit_edge372.us.unr-lcssa ], [ %.3251.us.epil, %.epil.preheader ]
  %.3.us.lcssa = phi i32 [ %.3.us.1, %._crit_edge372.us.unr-lcssa ], [ %.3.us.epil, %.epil.preheader ]
  %.2244.us.lcssa = phi i32 [ %.2244.us.1, %._crit_edge372.us.unr-lcssa ], [ %.2244.us.epil, %.epil.preheader ] ; 2 uses
  %i.eq = freeze i32 %.3.us.lcssa                 ; 7 uses
  %i.er = freeze i32 %.3251.us.lcssa              ; 7 uses
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvars.iv.next432, %wide.trip.count434
  br i1 %exitcond435.not, label %._crit_edge379, label %.preheader.us, !llvm.loop !73

._crit_edge379:                                   ; preds = %._crit_edge372.us
  %i.es = icmp eq i32 %.2244.us.lcssa, 0
  br i1 %i.es, label %.critedge, label %bb.t

bb.t:                                             ; preds = %._crit_edge379
  %i.et = load ptr, ptr %i.do, align 8, !tbaa !67
  %i.eu = sext i32 %i.eq to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !70
  %i.ex = sext i32 %i.er to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ex
  store i32 0, ptr %i.ey, align 4, !tbaa !15
  %i.ez = load ptr, ptr %i.al, align 8, !tbaa !74 ; 3 uses
  %i.fa = icmp sgt i32 %i.er, 0
  br i1 %i.fa, label %.lr.ph388.preheader, label %._crit_edge389

.lr.ph388.preheader:                              ; preds = %bb.t
  %xtraiter554 = and i32 %i.er, 7                 ; 3 uses
  %i.fb = icmp ult i32 %i.er, 8
  br i1 %i.fb, label %.lr.ph388.epil.preheader, label %.lr.ph388.preheader.new

.lr.ph388.preheader.new:                          ; preds = %.lr.ph388.preheader
  %unroll_iter558 = and i32 %i.er, 2147483640
  br label %.lr.ph388

.lr.ph388:                                        ; preds = %.lr.ph388, %.lr.ph388.preheader.new
  %.0254385 = phi ptr [ %i.ez, %.lr.ph388.preheader.new ], [ %i.fr, %.lr.ph388 ]
  %niter559 = phi i32 [ 0, %.lr.ph388.preheader.new ], [ %niter559.next.7, %.lr.ph388 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0254385, i64 120
  %i.fd = load volatile ptr, ptr %i.fc, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 120
  %i.ff = load volatile ptr, ptr %i.fe, align 8, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 120
  %i.fh = load volatile ptr, ptr %i.fg, align 8, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 120
  %i.fj = load volatile ptr, ptr %i.fi, align 8, !tbaa !50
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 120
  %i.fl = load volatile ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 120
  %i.fn = load volatile ptr, ptr %i.fm, align 8, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 120
  %i.fp = load volatile ptr, ptr %i.fo, align 8, !tbaa !50
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 120
  %i.fr = load volatile ptr, ptr %i.fq, align 8, !tbaa !50 ; 3 uses
  %niter559.next.7 = add i32 %niter559, 8         ; 2 uses
  %niter559.ncmp.7 = icmp eq i32 %niter559.next.7, %unroll_iter558
  br i1 %niter559.ncmp.7, label %._crit_edge389.loopexit.unr-lcssa, label %.lr.ph388, !llvm.loop !75

._crit_edge389.loopexit.unr-lcssa:                ; preds = %.lr.ph388
  %lcmp.mod555.not = icmp eq i32 %xtraiter554, 0
  br i1 %lcmp.mod555.not, label %._crit_edge389, label %.lr.ph388.epil.preheader

.lr.ph388.epil.preheader:                         ; preds = %._crit_edge389.loopexit.unr-lcssa, %.lr.ph388.preheader
  %.0254385.epil.init = phi ptr [ %i.ez, %.lr.ph388.preheader ], [ %i.fr, %._crit_edge389.loopexit.unr-lcssa ]
  %lcmp.mod557 = icmp ne i32 %xtraiter554, 0
  tail call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph388.epil

.lr.ph388.epil:                                   ; preds = %.lr.ph388.epil, %.lr.ph388.epil.preheader
  %.0254385.epil = phi ptr [ %i.ft, %.lr.ph388.epil ], [ %.0254385.epil.init, %.lr.ph388.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph388.epil ], [ 0, %.lr.ph388.epil.preheader ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0254385.epil, i64 120
  %i.ft = load volatile ptr, ptr %i.fs, align 8, !tbaa !50 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter554
  br i1 %epil.iter.cmp.not, label %._crit_edge389, label %.lr.ph388.epil, !llvm.loop !76

._crit_edge389:                                   ; preds = %._crit_edge389.loopexit.unr-lcssa, %.lr.ph388.epil, %bb.t
  %.0254.lcssa = phi ptr [ %i.ez, %bb.t ], [ %i.fr, %._crit_edge389.loopexit.unr-lcssa ], [ %i.ft, %.lr.ph388.epil ] ; 8 uses
  store ptr %.0254.lcssa, ptr %i.dp, align 8, !tbaa !78
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_oob_tcp_component, i64 1184), align 8, !tbaa !79 ; 3 uses
  %i.fv = icmp sgt i32 %i.eq, 0
  br i1 %i.fv, label %.lr.ph393.preheader, label %._crit_edge394

.lr.ph393.preheader:                              ; preds = %._crit_edge389
  %xtraiter561 = and i32 %i.eq, 7                 ; 3 uses
  %i.fw = icmp ult i32 %i.eq, 8
  br i1 %i.fw, label %.lr.ph393.epil.preheader, label %.lr.ph393.preheader.new

.lr.ph393.preheader.new:                          ; preds = %.lr.ph393.preheader
  %unroll_iter566 = and i32 %i.eq, 2147483640
  br label %.lr.ph393

.lr.ph393:                                        ; preds = %.lr.ph393, %.lr.ph393.preheader.new
  %.1255390 = phi ptr [ %i.fu, %.lr.ph393.preheader.new ], [ %i.gm, %.lr.ph393 ]
  %niter567 = phi i32 [ 0, %.lr.ph393.preheader.new ], [ %niter567.next.7, %.lr.ph393 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.1255390, i64 120
  %i.fy = load volatile ptr, ptr %i.fx, align 8, !tbaa !50
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 120
  %i.ga = load volatile ptr, ptr %i.fz, align 8, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 120
  %i.gc = load volatile ptr, ptr %i.gb, align 8, !tbaa !50
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 120
  %i.ge = load volatile ptr, ptr %i.gd, align 8, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 120
  %i.gg = load volatile ptr, ptr %i.gf, align 8, !tbaa !50
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 120
  %i.gi = load volatile ptr, ptr %i.gh, align 8, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 120
  %i.gk = load volatile ptr, ptr %i.gj, align 8, !tbaa !50
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 120
  %i.gm = load volatile ptr, ptr %i.gl, align 8, !tbaa !50 ; 3 uses
  %niter567.next.7 = add i32 %niter567, 8         ; 2 uses
  %niter567.ncmp.7 = icmp eq i32 %niter567.next.7, %unroll_iter566
  br i1 %niter567.ncmp.7, label %._crit_edge394.loopexit.unr-lcssa, label %.lr.ph393, !llvm.loop !85

._crit_edge394.loopexit.unr-lcssa:                ; preds = %.lr.ph393
  %lcmp.mod563.not = icmp eq i32 %xtraiter561, 0
  br i1 %lcmp.mod563.not, label %._crit_edge394, label %.lr.ph393.epil.preheader

.lr.ph393.epil.preheader:                         ; preds = %._crit_edge394.loopexit.unr-lcssa, %.lr.ph393.preheader
  %.1255390.epil.init = phi ptr [ %i.fu, %.lr.ph393.preheader ], [ %i.gm, %._crit_edge394.loopexit.unr-lcssa ]
  %lcmp.mod565 = icmp ne i32 %xtraiter561, 0
  tail call void @llvm.assume(i1 %lcmp.mod565)
  br label %.lr.ph393.epil

.lr.ph393.epil:                                   ; preds = %.lr.ph393.epil, %.lr.ph393.epil.preheader
  %.1255390.epil = phi ptr [ %i.go, %.lr.ph393.epil ], [ %.1255390.epil.init, %.lr.ph393.epil.preheader ]
  %epil.iter562 = phi i32 [ %epil.iter562.next, %.lr.ph393.epil ], [ 0, %.lr.ph393.epil.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.1255390.epil, i64 120
  %i.go = load volatile ptr, ptr %i.gn, align 8, !tbaa !50 ; 2 uses
  %epil.iter562.next = add i32 %epil.iter562, 1   ; 2 uses
  %epil.iter562.cmp.not = icmp eq i32 %epil.iter562.next, %xtraiter561
  br i1 %epil.iter562.cmp.not, label %._crit_edge394, label %.lr.ph393.epil, !llvm.loop !86

._crit_edge394:                                   ; preds = %._crit_edge394.loopexit.unr-lcssa, %.lr.ph393.epil, %._crit_edge389
  %.1255.lcssa = phi ptr [ %i.fu, %._crit_edge389 ], [ %i.gm, %._crit_edge394.loopexit.unr-lcssa ], [ %i.go, %.lr.ph393.epil ]
  %i.gp = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond10 = icmp ult i32 %i.gp, 64
  br i1 %or.cond10, label %bb.u, label %bb.w

bb.u:                                             ; preds = %._crit_edge394
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !36
  %i.gu = icmp sgt i32 %i.gt, 6
  br i1 %i.gu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gv = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.gw = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.dq) #16
  %i.gx = getelementptr inbounds nuw i8, ptr %.0254.lcssa, i64 144 ; 2 uses
  %i.gy = tail call ptr @pmix_net_get_hostname(ptr noundef nonnull %i.gx) #16
  %i.gz = tail call i32 @pmix_net_get_port(ptr noundef nonnull %i.gx) #16
  %i.ha = getelementptr inbounds nuw i8, ptr %.0254.lcssa, i64 272
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !87
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.gp, ptr noundef nonnull @.str.6, ptr noundef %i.gv, ptr noundef %i.gw, ptr noundef %i.gy, i32 noundef %i.gz, i32 noundef %i.hb) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge394
  %i.hc = getelementptr inbounds nuw i8, ptr %.0254.lcssa, i64 276 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !88
  %i.he = icmp eq i32 %i.hd, 6
  br i1 %i.he, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hf = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond12 = icmp ult i32 %i.hf, 64
  br i1 %or.cond12, label %bb.y, label %.backedge

bb.y:                                             ; preds = %bb.x
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !36
  %i.hk = icmp sgt i32 %i.hj, 6
  br i1 %i.hk, label %bb.z, label %.backedge

bb.z:                                             ; preds = %bb.y
  %i.hl = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.hm = getelementptr inbounds nuw i8, ptr %.0254.lcssa, i64 144 ; 2 uses
  %i.hn = tail call ptr @pmix_net_get_hostname(ptr noundef nonnull %i.hm) #16
  %i.ho = tail call i32 @pmix_net_get_port(ptr noundef nonnull %i.hm) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.hf, ptr noundef nonnull @.str.7, ptr noundef %i.hl, ptr noundef %i.hn, i32 noundef %i.ho) #16
  br label %.backedge

.backedge:                                        ; preds = %bb.bf, %bb.ab, %bb.ac, %bb.ad, %bb.x, %bb.y, %bb.z, %.lr.ph405, %bb.bv
  br label %.preheader.lr.ph.split.us, !llvm.loop !89

bb.aa:                                            ; preds = %bb.w
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_oob_tcp_component, i64 296), align 8, !tbaa !90
  %i.hq = getelementptr inbounds nuw i8, ptr %.0254.lcssa, i64 272 ; 7 uses
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !87
  %i.hs = icmp slt i32 %i.hp, %i.hr
  br i1 %i.hs, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond14 = icmp ult i32 %i.ht, 64
  br i1 %or.cond14, label %bb.ac, label %.backedge

bb.ac:                                            ; preds = %bb.ab
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !36
  %i.hy = icmp sgt i32 %i.hx, 6
  br i1 %i.hy, label %bb.ad, label %.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.hz = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.ia = getelementptr inbounds nuw i8, ptr %.0254.lcssa, i64 144 ; 2 uses
  %i.ib = tail call ptr @pmix_net_get_hostname(ptr noundef nonnull %i.ia) #16
  %i.ic = tail call i32 @pmix_net_get_port(ptr noundef nonnull %i.ia) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ht, ptr noundef nonnull @.str.8, ptr noundef %i.hz, ptr noundef %i.ib, i32 noundef %i.ic) #16
  br label %.backedge

bb.ae:                                            ; preds = %bb.aa
  %i.id = getelementptr inbounds nuw i8, ptr %.0254.lcssa, i64 144 ; 6 uses
  %i.ie = load i16, ptr %i.id, align 8, !tbaa !51 ; 2 uses
  %i.if = icmp eq i16 %i.ie, 10
  %i.ig = select i1 %i.if, i32 28, i32 16         ; 3 uses
  %i.ih = load i32, ptr %i.dr, align 8, !tbaa !64 ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, -1
  br i1 %i.ii, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ij = tail call i32 @shutdown(i32 noundef %i.ih, i32 noundef 2) #16 ; 0 uses
  %i.ik = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.il = tail call i32 @close(i32 noundef %i.ik) #16 ; 0 uses
  store i32 -1, ptr %i.dr, align 8, !tbaa !64
  %.pre = load i16, ptr %i.id, align 8, !tbaa !51
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.im = phi i16 [ %i.ie, %bb.ae ], [ %.pre, %bb.af ]
  %i.in = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond.i = icmp ult i32 %i.in, 64
  br i1 %or.cond.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !36
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.it = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.iu = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.dq) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.in, ptr noundef nonnull @.str.54, ptr noundef %i.it, ptr noundef %i.iu) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.iv = zext i16 %i.im to i32
  %i.iw = tail call i32 @socket(i32 noundef %i.iv, i32 noundef 1, i32 noundef 0) #16 ; 3 uses
  store i32 %i.iw, ptr %i.dr, align 8, !tbaa !64
  %i.ix = icmp slt i32 %i.iw, 0
  br i1 %i.ix, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.iy = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.iz = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.dq) #16
  %i.ja = tail call ptr @__errno_location() #17   ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !15
  %i.jc = tail call ptr @strerror(i32 noundef %i.jb) #16
  %i.jd = load i32, ptr %i.ja, align 4, !tbaa !15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef %i.iy, ptr noundef %i.iz, ptr noundef %i.jc, i32 noundef %i.jd) #16
  br label %tcp_peer_create_socket.exit

bb.al:                                            ; preds = %bb.aj
  %i.je = tail call i32 @pmix_fd_set_cloexec(i32 noundef %i.iw) #16
  %.not.i307 = icmp eq i32 %i.je, 0
  br i1 %.not.i307, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jf = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef %i.jf) #16
  %i.jg = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.jh = tail call i32 @close(i32 noundef %i.jg) #16 ; 0 uses
  store i32 -1, ptr %i.dr, align 8, !tbaa !64
  br label %tcp_peer_create_socket.exit

bb.an:                                            ; preds = %bb.al
  %i.ji = load i32, ptr %i.dr, align 8, !tbaa !64
  tail call void @prte_oob_tcp_set_socket_options(i32 noundef %i.ji) #16
  %i.jj = load i32, ptr %i.dr, align 8, !tbaa !64 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  %i.jl = load ptr, ptr @prte_event_base, align 8, !tbaa !91
  %i.jm = tail call i32 @prte_event_assign(ptr noundef nonnull %i.ds, ptr noundef %i.jl, i32 noundef %i.jj, i16 noundef signext 18, ptr noundef nonnull @prte_oob_tcp_recv_handler, ptr noundef nonnull %i.aj) #16 ; 0 uses
  %i.jn = load i8, ptr %i.dt, align 8, !tbaa !92, !range !93, !noundef !94
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jp = tail call i32 @event_del(ptr noundef nonnull %i.ds) #16 ; 0 uses
  store i8 0, ptr %i.dt, align 8, !tbaa !92
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jq = load ptr, ptr @prte_event_base, align 8, !tbaa !91
  %i.jr = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.js = tail call i32 @prte_event_assign(ptr noundef nonnull %i.du, ptr noundef %i.jq, i32 noundef %i.jr, i16 noundef signext 20, ptr noundef nonnull @prte_oob_tcp_send_handler, ptr noundef nonnull %i.aj) #16 ; 0 uses
  %i.jt = load i8, ptr %i.dv, align 8, !tbaa !95, !range !93, !noundef !94
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ar, label %tcp_peer_event_init.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.jv = tail call i32 @event_del(ptr noundef nonnull %i.du) #16 ; 0 uses
  store i8 0, ptr %i.dv, align 8, !tbaa !95
  br label %tcp_peer_event_init.exit.i

tcp_peer_event_init.exit.i:                       ; preds = %bb.ar, %bb.aq
  %.pr.i = load i32, ptr %i.dr, align 8, !tbaa !64 ; 2 uses
  %i.jw = icmp sgt i32 %.pr.i, -1
  br i1 %i.jw, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %tcp_peer_event_init.exit.i
  %i.jx = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %.pr.i, i32 noundef 3, i32 noundef 0) #16 ; 2 uses
  %i.jy = icmp slt i32 %i.jx, 0
  br i1 %i.jy, label %.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jz = or i32 %i.jx, 2048
  %i.ka = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.kb = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ka, i32 noundef 4, i32 noundef %i.jz) #16
  %i.kc = icmp slt i32 %i.kb, 0
  br i1 %i.kc, label %.sink.split, label %bb.ay

tcp_peer_create_socket.exit:                      ; preds = %bb.am, %bb.ak
  %i.kd = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %i.kd) #16
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !26
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %tcp_peer_create_socket.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.kg = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #16 ; 0 uses
  %i.kh = load i64, ptr %5, align 8, !tbaa !32
  %i.ki = sitofp i64 %i.kh to double
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !34
  %i.kl = sitofp i64 %i.kk to double
  %i.km = fdiv double %i.kl, 1.000000e+06
  %i.kn = fadd double %i.km, %i.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ko = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond16 = icmp ult i32 %i.ko, 64
  br i1 %or.cond16, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !36
  %i.kt = icmp sgt i32 %i.ks, 0
  br i1 %i.kt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ku = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.kv = tail call ptr @prte_job_state_to_str(i32 noundef 56) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ko, ptr noundef nonnull @.str.1, ptr noundef %i.ku, double noundef %i.kn, ptr noundef nonnull @.str.2, ptr noundef %i.kv, ptr noundef nonnull @.str.3, i32 noundef 300) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw, %tcp_peer_create_socket.exit
  %i.kw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !39
  tail call void %i.kw(ptr noundef null, i32 noundef 56) #16
  br label %pmix_list_remove_first.exit.thread

.sink.split:                                      ; preds = %bb.at, %bb.as
  %.str.57.sink = phi ptr [ @.str.57, %bb.as ], [ @.str.58, %bb.at ]
  %i.kx = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.ky = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.dq) #16
  %i.kz = tail call ptr @__errno_location() #17   ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !15
  %i.lb = tail call ptr @strerror(i32 noundef %i.la) #16
  %i.lc = load i32, ptr %i.kz, align 4, !tbaa !15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull %.str.57.sink, ptr noundef %i.kx, ptr noundef %i.ky, ptr noundef %i.lb, i32 noundef %i.lc) #16
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.an, %bb.at, %tcp_peer_event_init.exit.i
  %i.ld = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.le = getelementptr inbounds nuw i8, ptr %.1255.lcssa, i64 424
  %i.lf = tail call i32 @bind(i32 noundef %i.ld, ptr nonnull %i.le, i32 noundef %i.ig) #16
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %bb.az, label %.preheader343

.preheader343:                                    ; preds = %bb.ay
  %i.lh = load i32, ptr %i.hq, align 8, !tbaa !87
  %i.li = add nsw i32 %i.lh, 1
  store i32 %i.li, ptr %i.hq, align 8, !tbaa !87
  %i.lj = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.lk = tail call i32 @connect(i32 noundef %i.lj, ptr nonnull %i.id, i32 noundef %i.ig) #16
  %i.ll = icmp slt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph396, label %.preheader343._crit_edge

.lr.ph396:                                        ; preds = %.preheader343
  %i.lm = tail call ptr @__errno_location() #17   ; 2 uses
  br label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.ln = tail call ptr @__errno_location() #17   ; 3 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !15
  %i.lp = and i32 %i.lo, -2
  %switch = icmp eq i32 %i.lp, 98
  br i1 %switch, label %.lr.ph405, label %bb.ba

.lr.ph405:                                        ; preds = %bb.az
  %i.lq = load ptr, ptr %i.do, align 8, !tbaa !67
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.eu
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ls, i8 0, i64 %i.dx, i1 false), !tbaa !15
  br label %.backedge, !llvm.loop !89

bb.ba:                                            ; preds = %bb.az
  %i.lt = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.lu = load i32, ptr %i.ln, align 4, !tbaa !15
  %i.lv = tail call ptr @strerror(i32 noundef %i.lu) #16
  %i.lw = load i32, ptr %i.ln, align 4, !tbaa !15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef %i.lt, ptr noundef %i.lv, i32 noundef %i.lw) #16
  %i.lx = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.ly = tail call i32 @shutdown(i32 noundef %i.lx, i32 noundef 2) #16 ; 0 uses
  %i.lz = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.ma = tail call i32 @close(i32 noundef %i.lz) #16 ; 0 uses
  %i.mb = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 72), align 8, !tbaa !26
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.md = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #16 ; 0 uses
  %i.me = load i64, ptr %6, align 8, !tbaa !32
  %i.mf = sitofp i64 %i.me to double
  %i.mg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !34
  %i.mi = sitofp i64 %i.mh to double
  %i.mj = fdiv double %i.mi, 1.000000e+06
  %i.mk = fadd double %i.mj, %i.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ml = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_state_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond18 = icmp ult i32 %i.ml, 64
  br i1 %or.cond18, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !36
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mr = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.ms = tail call ptr @prte_job_state_to_str(i32 noundef 56) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ml, ptr noundef nonnull @.str.1, ptr noundef %i.mr, double noundef %i.mk, ptr noundef nonnull @.str.2, ptr noundef %i.ms, ptr noundef nonnull @.str.3, i32 noundef 324) #16
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bc, %bb.bd, %bb.ba
  %i.mt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_state, i64 16), align 8, !tbaa !39
  tail call void %i.mt(ptr noundef null, i32 noundef 56) #16
  br label %pmix_list_remove_first.exit.thread

bb.bf:                                            ; preds = %.lr.ph396, %bb.bu
  %i.mu = load i32, ptr %i.lm, align 4, !tbaa !15
  switch i32 %i.mu, label %.backedge [
    i32 115, label %bb.bg
    i32 11, label %bb.bg
    i32 103, label %bb.bq
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.mv = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond20 = icmp ult i32 %i.mv, 64
  br i1 %or.cond20, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !36
  %i.na = icmp sgt i32 %i.mz, 6
  br i1 %i.na, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nb = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.nc = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.dq) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.mv, ptr noundef nonnull @.str.11, ptr noundef %i.nb, ptr noundef %i.nc) #16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.nd = load i8, ptr %i.dv, align 8, !tbaa !95, !range !93, !noundef !94
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nf = tail call i32 @event_add(ptr noundef nonnull %i.du, ptr noundef null) #16 ; 0 uses
  store i8 1, ptr %i.dv, align 8, !tbaa !95
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.ng = tail call i32 @pthread_mutex_lock(ptr noundef %2) #16
  %i.nh = icmp eq i32 %i.ng, 35
  br i1 %i.nh, label %bb.bm, label %pmix_obj_update.exit299

bb.bm:                                            ; preds = %bb.bl
  store i32 35, ptr %i.lm, align 4, !tbaa !15
  tail call void @perror(ptr noundef nonnull @.str.59) #18
  tail call void @abort() #19
  unreachable

pmix_obj_update.exit299:                          ; preds = %bb.bl
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !20
  %i.nk = add nsw i32 %i.nj, -1                   ; 2 uses
  store i32 %i.nk, ptr %i.ni, align 8, !tbaa !20
  %i.nl = tail call i32 @pthread_mutex_unlock(ptr noundef %2) #16 ; 0 uses
  %i.nm = icmp eq i32 %i.nk, 0
  br i1 %i.nm, label %bb.bn, label %bb.di

bb.bn:                                            ; preds = %pmix_obj_update.exit299
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 48
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !96 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !22 ; 2 uses
  %.not6.i = icmp eq ptr %i.nr, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bn, %.lr.ph.i
  %i.ns = phi ptr [ %i.nu, %.lr.ph.i ], [ %i.nr, %bb.bn ]
  %.07.i = phi ptr [ %i.nt, %.lr.ph.i ], [ %i.nq, %bb.bn ]
  tail call void %i.ns(ptr noundef nonnull %2) #16, !inline_history !97
  %i.nt = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !22 ; 2 uses
  %.not.i308 = icmp eq ptr %i.nu, null
  br i1 %.not.i308, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !98

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.bn
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !99 ; 2 uses
  %.not290 = icmp eq ptr %i.nw, null
  br i1 %.not290, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void %i.nw(ptr noundef nonnull %i.nx, ptr noundef nonnull %2) #16, !inline_history !100
  br label %bb.di

bb.bp:                                            ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %2) #16
  br label %bb.di

bb.bq:                                            ; preds = %bb.bf
  %i.ny = load i32, ptr %i.hq, align 8, !tbaa !87 ; 3 uses
  %i.nz = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_oob_tcp_component, i64 296), align 8, !tbaa !90
  %i.oa = icmp slt i32 %i.ny, %i.nz
  br i1 %i.oa, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.ob = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_oob_base_framework, i64 76), align 4, !tbaa !35 ; 3 uses
  %or.cond22 = icmp ult i32 %i.ob, 64
  br i1 %or.cond22, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !36
  %i.og = icmp sgt i32 %i.of, 6
  br i1 %i.og, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.oh = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #16
  %i.oi = tail call ptr @prte_util_print_name_args(ptr noundef nonnull %i.dq) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ob, ptr noundef nonnull @.str.12, ptr noundef %i.oh, ptr noundef %i.oi) #16
  %.pre442 = load i32, ptr %i.hq, align 8, !tbaa !87
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.oj = phi i32 [ %.pre442, %bb.bt ], [ %i.ny, %bb.bs ], [ %i.ny, %bb.br ]
  %i.ok = add nsw i32 %i.oj, 1
  store i32 %i.ok, ptr %i.hq, align 8, !tbaa !87
  %i.ol = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.om = tail call i32 @connect(i32 noundef %i.ol, ptr nonnull %i.id, i32 noundef %i.ig) #16
  %i.on = icmp slt i32 %i.om, 0
  br i1 %i.on, label %bb.bf, label %.preheader343._crit_edge

bb.bv:                                            ; preds = %bb.bq
  store i32 6, ptr %i.hc, align 4, !tbaa !88
  br label %.backedge

.critedge:                                        ; preds = %._crit_edge379, %.thread
  %i.oo = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_oob_tcp_component, i64 1700), align 4, !tbaa !101
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %.critedge
  %i.oq = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_mca_oob_tcp_component, i64 1704), align 8, !tbaa !102 ; 2 uses
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.os = getelementptr inbounds nuw i8, ptr %i.aj, i64 708
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !103
  %i.ou = icmp slt i32 %i.ot, %i.oq
  br i1 %i.ou, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx, %bb.bw
end_hunk_0
