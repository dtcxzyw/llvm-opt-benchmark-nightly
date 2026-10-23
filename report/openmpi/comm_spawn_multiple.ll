Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/comm_spawn_multiple?download=true
inline.NumInlined: 27
inline.NumDeleted: 12
begin_hunk_0_@PMPI_Comm_spawn_multiple:bb.a
bb.aa:                                            ; preds = %.lr.ph
  %i.bx = getelementptr i8, ptr %i.bv, i64 76
  %.val133 = load i8, ptr %i.bx, align 4, !tbaa !77, !range !13, !noundef !14
  %i.by = trunc nuw i8 %.val133 to i1
  br i1 %i.by, label %.loopexit179, label %bb.ab

.loopexit179:                                     ; preds = %bb.aa, %.lr.ph, %bb.t, %.lr.ph.preheader
  %i.bz = call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 34, ptr noundef nonnull @FUNC_NAME) #9
  br label %bb.bl

bb.ab:                                            ; preds = %bb.aa
  %i.ca = call i32 @ompi_info_get_bool(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !19
  %.not218 = icmp eq i32 %i.cb, 0
  br i1 %.not218, label %bb.ac, label %._crit_edge198

._crit_edge198:                                   ; preds = %bb.ab
  %.pre199 = load i8, ptr %i.e, align 1, !tbaa !12, !range !13
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.e, align 1, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge198, %bb.ac
  %i.cc = phi i8 [ %.pre199, %._crit_edge198 ], [ 0, %bb.ac ]
  %.not129 = icmp eq i8 %.1.peel, %i.cc
  br i1 %.not129, label %bb.z, label %.loopexit180

.loopexit180:                                     ; preds = %bb.ad
  %i.cd = call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 34, ptr noundef nonnull @FUNC_NAME) #9
  br label %bb.bl

bb.ae:                                            ; preds = %bb.ag
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %.loopexit159, label %.lr.ph166, !llvm.loop !32

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.ae
  %indvars.iv181 = phi i64 [ 0, %.lr.ph166.preheader ], [ %indvars.iv.next182, %bb.ae ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv181
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph166
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !64
  %i.cl = call i32 @ompi_errhandler_invoke(ptr noundef %i.ci, ptr noundef %6, i32 noundef %i.ck, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #9
  br label %bb.bl

bb.ag:                                            ; preds = %.lr.ph166
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv181
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !19
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !64
  %i.ct = call i32 @ompi_errhandler_invoke(ptr noundef %i.cq, ptr noundef %6, i32 noundef %i.cs, i32 noundef 13, ptr noundef nonnull @FUNC_NAME) #9
  br label %bb.bl

.loopexit159:                                     ; preds = %bb.ae, %.preheader160, %.thread219, %bb.l
  %i.cu = phi i1 [ %i.i, %.thread219 ], [ %i.ao, %.preheader160 ], [ %i.ao, %bb.l ], [ %i.ao, %bb.ae ] ; 3 uses
  %i.cv = call zeroext i1 @ompi_mpi_dynamics_is_enabled(ptr noundef nonnull @FUNC_NAME) #9
  br i1 %i.cv, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %.loopexit159
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !64
  %i.da = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !19 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.i, label %ompi_errcode_get_mpi_code.exit

.lr.ph.i:                                         ; preds = %bb.ai
  %i.dc = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13, !noundef !14
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !20

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.dg = sext i32 %i.de to i64
  %wide.trip.count.i = zext nneg i32 %i.da to i64
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.aj, %.lr.ph.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aj ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.not.us.i = icmp slt i64 %indvars.iv.i, %i.dg
  call void @llvm.assume(i1 %.not.us.i)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !25 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !27
  %i.dl = icmp eq i32 %i.dk, -8
  br i1 %i.dl, label %.split.us.i, label %bb.aj

bb.aj:                                            ; preds = %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ompi_errcode_get_mpi_code.exit, label %.thread.i.us.i, !llvm.loop !0

bb.ak:                                            ; preds = %opal_pointer_array_get_item.exit.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.dm = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !19
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next19.i, %i.dn
  br i1 %i.do, label %.lr.ph.split.i, label %ompi_errcode_get_mpi_code.exit, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ak
  %i.dp = phi i8 [ %i.ec, %bb.ak ], [ 1, %.lr.ph.i ]
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %bb.ak ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.dr = sext i32 %i.dq to i64
  %.not.i = icmp slt i64 %indvars.iv18.i, %i.dr
  call void @llvm.assume(i1 %.not.i)
  %i.ds = trunc nuw i8 %i.dp to i1
  br i1 %i.ds, label %bb.al, label %.thread.i.i, !prof !20

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv18.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !25
  br label %opal_pointer_array_get_item.exit.i

bb.al:                                            ; preds = %.lr.ph.split.i
  %i.dw = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #9 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  %i.dx = trunc nuw i8 %.pre.i.i to i1
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv18.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !25 ; 2 uses
  br i1 %i.dx, label %bb.am, label %opal_pointer_array_get_item.exit.i, !prof !29

bb.am:                                            ; preds = %bb.al
  %i.eb = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #9 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !12, !range !13
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.am, %bb.al, %.thread.i.i
  %i.ec = phi i8 [ 0, %.thread.i.i ], [ %.pre.i, %bb.am ], [ 0, %bb.al ]
  %.0.i.i = phi ptr [ %i.dv, %.thread.i.i ], [ %i.ea, %bb.am ], [ %i.ea, %bb.al ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !27
  %i.ef = icmp eq i32 %i.ee, -8
  br i1 %i.ef, label %.split.us.i, label %bb.ak

.split.us.i:                                      ; preds = %.thread.i.us.i, %opal_pointer_array_get_item.exit.i
  %.us-phi.i = phi ptr [ %.0.i.i, %opal_pointer_array_get_item.exit.i ], [ %i.di, %.thread.i.us.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !30
  br label %ompi_errcode_get_mpi_code.exit

ompi_errcode_get_mpi_code.exit:                   ; preds = %bb.aj, %bb.ak, %bb.ai, %.split.us.i
  %.010.i = phi i32 [ 14, %bb.ak ], [ %i.eh, %.split.us.i ], [ 14, %bb.ai ], [ 14, %bb.aj ]
  %i.ei = call i32 @ompi_errhandler_invoke(ptr noundef %i.cx, ptr noundef %6, i32 noundef %i.cz, i32 noundef %.010.i, ptr noundef nonnull @FUNC_NAME) #9
  br label %bb.bl

bb.an:                                            ; preds = %.loopexit159
  br i1 %i.cu, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ej = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, @ompi_mpi_info_null
  br i1 %i.ek, label %.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = call i32 @ompi_info_get_bool(ptr noundef %i.ej, ptr noundef nonnull @.str, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.em = load i32, ptr %i.a, align 4, !tbaa !19
  %.not122 = icmp eq i32 %i.em, 0
  br i1 %.not122, label %.sink.split, label %bb.aq

.sink.split:                                      ; preds = %bb.ap, %bb.ao
  store i8 0, ptr %i.e, align 1, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.ap, %bb.an
  %i.en = getelementptr i8, ptr %6, i64 377
  %.val.i = load i8, ptr %i.en, align 1, !tbaa !79, !range !13, !noundef !14
  %i.eo = trunc nuw i8 %.val.i to i1
  br i1 %i.eo, label %bb.at, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  %i.ep = getelementptr i8, ptr %6, i64 378
  %.val5.i = load i8, ptr %i.ep, align 2, !tbaa !80, !range !13, !noundef !14
  %i.eq = trunc nuw i8 %.val5.i to i1
  br i1 %i.eq, label %bb.as, label %ompi_comm_iface_coll_check.exit, !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.er = call i32 @opal_progress() #9            ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.2141.ph = phi i32 [ 77, %bb.aq ], [ 75, %bb.as ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !63
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !64
  %9 = icmp eq i32 %.2141.ph, 76
  %.finite = select i1 %9, i32 76, i32 77
  %10 = icmp eq i32 %.2141.ph, 75
  %.finite262 = select i1 %10, i32 75, i32 %.finite
  %i.ew = call i32 @ompi_errhandler_invoke(ptr noundef %i.et, ptr noundef nonnull %6, i32 noundef %i.ev, i32 noundef %.finite262, ptr noundef nonnull @FUNC_NAME) #9
  br label %bb.bl

ompi_comm_iface_coll_check.exit:                  ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br i1 %i.cu, label %bb.au, label %.thread151

bb.au:                                            ; preds = %ompi_comm_iface_coll_check.exit
  %i.ex = load i8, ptr %i.e, align 1, !tbaa !12, !range !13, !noundef !14
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ez = call i32 @ompi_dpm_open_port(ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not123 = icmp eq i32 %i.ez, 0
  br i1 %.not123, label %bb.ax, label %.thread

bb.aw:                                            ; preds = %bb.au
  %i.fa = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fb = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.fb, align 8, !tbaa !68
  %i.fc = icmp sgt i32 %.val.val, 1
  br i1 %i.fc, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.fd = call i32 @ompi_dpm_spawn(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not124 = icmp eq i32 %i.fd, 0
  br i1 %.not124, label %.thread151, label %.thread

.thread:                                          ; preds = %bb.aw, %bb.av, %bb.ax
  %.0139149 = phi i32 [ %i.fd, %bb.ax ], [ -8, %bb.aw ], [ %i.ez, %bb.av ] ; 2 uses
  %i.fe = call i32 (ptr, ptr, ...) @opal_asprintf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c, i32 noundef %.0139149) #9 ; 0 uses
  br label %bb.ay

.thread151:                                       ; preds = %ompi_comm_iface_coll_check.exit, %bb.ax
  store ptr %i.c, ptr %i.d, align 8, !tbaa !40
  br label %bb.ay

bb.ay:                                            ; preds = %.thread151, %.thread
  %.0139150 = phi i32 [ 0, %.thread151 ], [ %.0139149, %.thread ]
  %i.ff = load i8, ptr %i.e, align 1, !tbaa !12, !range !13, !noundef !14
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr @ompi_mpi_comm_null, ptr %i.b, align 8, !tbaa !38
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.fh = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.fi = call i32 @ompi_dpm_connect_accept(ptr noundef nonnull %6, i32 noundef %5, ptr noundef %i.fh, i1 noundef zeroext false, ptr noundef nonnull %i.b) #9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1140 = phi i32 [ %.0139150, %bb.az ], [ %i.fi, %bb.ba ] ; 5 uses
  %i.fj = icmp eq i32 %.1140, -8
  br i1 %i.fj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fk = load ptr, ptr @opal_show_help, align 8, !tbaa !25
  %i.fl = call i32 (ptr, ptr, i32, ...) %i.fk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @FUNC_NAME, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %.not125 = icmp eq ptr %i.fm, %i.c
  br i1 %.not125, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef %i.fm) #9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.not200 = xor i1 %i.cu, true
  %i.fn = load i8, ptr %i.e, align 1, !range !13
  %i.fo = trunc nuw i8 %i.fn to i1
  %or.cond3 = select i1 %.not200, i1 true, i1 %i.fo
  br i1 %or.cond3, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fp = call i32 @ompi_dpm_close_port(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.not126 = icmp eq ptr %8, null
  %.pre201 = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  br i1 %.not126, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not127 = icmp eq ptr %.pre201, @ompi_mpi_comm_null
  br i1 %.not127, label %.preheader, label %bb.bj

.preheader:                                       ; preds = %bb.bi
  %i.fq = icmp sgt i32 %0, 0
  br i1 %i.fq, label %.lr.ph169.preheader, label %.loopexit

.lr.ph169.preheader:                              ; preds = %.preheader
  %wide.trip.count189 = zext nneg i32 %0 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph169.preheader248, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph169.preheader
  %n.vec = and i64 %wide.trip.count189, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ft, %vector.body ]
  %vec.phi235 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fu, %vector.body ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %wide.load = load <4 x i32>, ptr %i.fr, align 4, !tbaa !19
  %wide.load236 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !19
  %i.ft = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.fu = add <4 x i32> %wide.load236, %vec.phi235 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fu, %i.ft
  %i.fw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count189
  br i1 %cmp.n, label %.loopexit155, label %.lr.ph169.preheader248

.lr.ph169.preheader248:                           ; preds = %.lr.ph169.preheader, %middle.block
  %indvars.iv186.ph = phi i64 [ 0, %.lr.ph169.preheader ], [ %n.vec, %middle.block ]
  %.0104168.ph = phi i32 [ 0, %.lr.ph169.preheader ], [ %i.fw, %middle.block ]
  br label %.lr.ph169

bb.bj:                                            ; preds = %bb.bi
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre201, i64 272
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !83
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !68
  br label %.loopexit155

.lr.ph169:                                        ; preds = %.lr.ph169.preheader248, %.lr.ph169
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %.lr.ph169 ], [ %indvars.iv186.ph, %.lr.ph169.preheader248 ] ; 2 uses
  %.0104168 = phi i32 [ %i.gd, %.lr.ph169 ], [ %.0104168.ph, %.lr.ph169.preheader248 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv186
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !19
  %i.gd = add nsw i32 %i.gc, %.0104168            ; 2 uses
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.loopexit155, label %.lr.ph169, !llvm.loop !34

.loopexit155:                                     ; preds = %.lr.ph169, %middle.block, %bb.bj
  %.1105 = phi i32 [ %i.ga, %bb.bj ], [ %i.fw, %middle.block ], [ %i.gd, %.lr.ph169 ] ; 3 uses
  %i.ge = icmp sgt i32 %.1105, 0
  br i1 %i.ge, label %.lr.ph171.preheader, label %.loopexit

.lr.ph171.preheader:                              ; preds = %.loopexit155
  %wide.trip.count194 = zext nneg i32 %.1105 to i64 ; 3 uses
  %min.iters.check238 = icmp ult i32 %.1105, 8
  br i1 %min.iters.check238, label %.lr.ph171.preheader247, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph171.preheader
  %n.vec240 = and i64 %wide.trip.count194, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1140, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next243, %vector.body241 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index242 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gf, align 4, !tbaa !19
  store <4 x i32> %broadcast.splat, ptr %i.gg, align 4, !tbaa !19
  %index.next243 = add nuw i64 %index242, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next243, %n.vec240
  br i1 %i.gh, label %middle.block244, label %vector.body241, !llvm.loop !35

middle.block244:                                  ; preds = %vector.body241
  %cmp.n245 = icmp eq i64 %n.vec240, %wide.trip.count194
  br i1 %cmp.n245, label %.loopexit, label %.lr.ph171.preheader247

.lr.ph171.preheader247:                           ; preds = %.lr.ph171.preheader, %middle.block244
  %indvars.iv191.ph = phi i64 [ 0, %.lr.ph171.preheader ], [ %n.vec240, %middle.block244 ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader247, %.lr.ph171
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %.lr.ph171 ], [ %indvars.iv191.ph, %.lr.ph171.preheader247 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv191
  store i32 %.1140, ptr %i.gi, align 4, !tbaa !19
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %.loopexit, label %.lr.ph171, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph171, %middle.block244, %.preheader, %.loopexit155, %bb.bh
  store ptr %.pre201, ptr %7, align 8, !tbaa !38
  %.not128 = icmp eq i32 %.1140, 0
  br i1 %.not128, label %bb.bl, label %bb.bk, !prof !84

bb.bk:                                            ; preds = %.loopexit
  %i.gj = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.1140) ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 312
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 320
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !64
end_hunk_0
