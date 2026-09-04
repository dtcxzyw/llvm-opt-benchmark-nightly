Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/proj?download=true
inline.NumInlined: 135
inline.NumDeleted: 86
begin_hunk_0_@main:bb.a
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.af, label %bb.y

bb.y:                                             ; preds = %.lr.ph451
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(8) @.str.5) #21
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(8) @.str.6) #21
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.af, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %i.az) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0176450, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  br i1 %i.aw, label %bb.ac, label %.preheader571

bb.ac:                                            ; preds = %bb.ab
  %i.bl = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.bk) ; 0 uses
  br label %bb.af

.preheader571:                                    ; preds = %bb.ab, %bb.ad
  %.0175 = phi ptr [ %i.bo, %bb.ad ], [ %i.bk, %bb.ab ] ; 2 uses
  %i.bm = load i8, ptr %.0175, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.bm, label %bb.ad [
    i8 10, label %bb.ae
    i8 0, label %bb.ae
  ]

bb.ad:                                            ; preds = %.preheader571
  %i.bn = sext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0175, i64 1
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.bq = tail call i32 @putc(i32 noundef %i.bn, ptr noundef %i.bp), !inline_history !24 ; 0 uses
  br label %.preheader571

bb.ae:                                            ; preds = %.preheader571, %.preheader571
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.bs = tail call i32 @putc(i32 noundef 10, ptr noundef %i.br), !inline_history !24 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %.lr.ph451, %bb.y, %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %.0176450, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42 ; 2 uses
  %.not299 = icmp eq ptr %i.bu, null
  br i1 %.not299, label %.loopexit, label %.lr.ph451, !llvm.loop !25

bb.ag:                                            ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %.0203, i64 3
  %i.bw = invoke ptr @proj_list_operations()
          to label %.preheader371 unwind label %bb.ai ; 2 uses

.preheader371:                                    ; preds = %bb.ag
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42 ; 2 uses
  %.not297446 = icmp eq ptr %i.bx, null
  br i1 %.not297446, label %.loopexit, label %.lr.ph448

.lr.ph448:                                        ; preds = %.preheader371, %bb.aj
  %i.by = phi ptr [ %i.cg, %bb.aj ], [ %i.bx, %.preheader371 ] ; 2 uses
  %.0174447 = phi ptr [ %i.cf, %bb.aj ], [ %i.bw, %.preheader371 ] ; 2 uses
  %i.bz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(1) %i.bv) #21
  %.not298 = icmp eq i32 %i.bz, 0
  br i1 %.not298, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.lr.ph448
  %i.ca = getelementptr inbounds nuw i8, ptr %.0174447, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.by, ptr noundef %i.cc) ; 0 uses
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %.lr.ph448
  %i.cf = getelementptr inbounds nuw i8, ptr %.0174447, i64 24 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42 ; 2 uses
  %.not297 = icmp eq ptr %i.cg, null
  br i1 %.not297, label %.loopexit, label %.lr.ph448, !llvm.loop !26

bb.ak:                                            ; preds = %bb.w
  %i.ch = invoke ptr @proj_list_ellps()
          to label %.preheader373 unwind label %bb.al ; 2 uses

.preheader373:                                    ; preds = %bb.ak
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46 ; 2 uses
  %.not296443 = icmp eq ptr %i.ci, null
  br i1 %.not296443, label %.loopexit, label %.lr.ph445

.lr.ph445:                                        ; preds = %.preheader373, %.lr.ph445
  %i.cj = phi ptr [ %i.cs, %.lr.ph445 ], [ %i.ci, %.preheader373 ]
  %.0173444 = phi ptr [ %i.cr, %.lr.ph445 ], [ %i.ch, %.preheader373 ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0173444, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %.0173444, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !48
  %i.co = getelementptr inbounds nuw i8, ptr %.0173444, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !49
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %i.cj, ptr noundef %i.cl, ptr noundef %i.cn, ptr noundef %i.cp) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0173444, i64 32 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46 ; 2 uses
  %.not296 = icmp eq ptr %i.cs, null
  br i1 %.not296, label %.loopexit, label %.lr.ph445, !llvm.loop !27

bb.al:                                            ; preds = %bb.ak
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.w
  %i.cu = invoke ptr @proj_get_units_from_database(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef null)
          to label %.preheader375 unwind label %bb.an ; 4 uses

.preheader375:                                    ; preds = %bb.am
  %.not293 = icmp eq ptr %i.cu, null
  br i1 %.not293, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader375
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50 ; 2 uses
  %.not294440 = icmp eq ptr %i.cv, null
  br i1 %.not294440, label %.critedge, label %.lr.ph442

.critedge:                                        ; preds = %bb.ap, %.lr.ph.split, %.preheader375
  invoke void @proj_unit_list_destroy(ptr noundef %i.cu)
          to label %.loopexit unwind label %bb.an

bb.an:                                            ; preds = %.critedge, %bb.am
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph442:                                        ; preds = %.lr.ph.split, %bb.ap
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ap ], [ 0, %.lr.ph.split ]
  %i.cx = phi ptr [ %i.dg, %bb.ap ], [ %i.cv, %.lr.ph.split ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !53 ; 2 uses
  %.not295 = icmp eq ptr %i.cz, null
  br i1 %.not295, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph442
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.db = load double, ptr %i.da, align 8, !tbaa !54
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !55
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %i.cz, double noundef %i.db, ptr noundef %i.dd) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph442, %bb.ao
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !50 ; 2 uses
  %.not294 = icmp eq ptr %i.dg, null
  br i1 %.not294, label %.critedge, label %.lr.ph442

bb.aq:                                            ; preds = %bb.w
  %i.dh = sext i8 %i.av to i32
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.dh)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph445, %bb.aj, %bb.af, %.preheader373, %.preheader371, %.preheader, %.critedge, %bb.ah, %bb.aq
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.ar:                                            ; preds = %.preheader382
  %i.di = add nsw i32 %.1210, -1                  ; 2 uses
  %i.dj = icmp slt i32 %.1210, 2
  br i1 %i.dj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.bf, %bb.bd, %bb.au, %bb.ar
  %.2211 = phi i32 [ %i.di, %bb.ar ], [ %i.dn, %bb.au ], [ %i.eg, %bb.bd ], [ %i.ek, %bb.bf ]
  %i.dk = zext nneg i8 %i.al to i32
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %i.dk)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.3212 = phi i32 [ %.2211, %bb.as ], [ %i.di, %bb.ar ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.1207, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !11
  store ptr %i.dm, ptr @_ZL5oterr, align 8, !tbaa !11
  br label %.preheader382.backedge

bb.au:                                            ; preds = %.preheader382
  %i.dn = add nsw i32 %.1210, -1                  ; 4 uses
  %i.do = icmp slt i32 %.1210, 2
  br i1 %i.do, label %bb.as, label %sub_0364

sub_0364:                                         ; preds = %bb.au
  store i1 true, ptr @_ZL9postscale, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.1207, i64 8 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !11 ; 5 uses
  %i.dr = load i8, ptr %i.dq, align 1             ; 2 uses
  %.not454 = icmp eq i8 %i.dr, 49
  br i1 %.not454, label %.tail363, label %.tail367

.tail363:                                         ; preds = %sub_0364
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  %.not290 = icmp eq i8 %i.dt, 47
  br i1 %.not290, label %bb.av, label %sub_1369

sub_1369:                                         ; preds = %.tail363
  %10 = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %11 = load i8, ptr %10, align 1
  br label %.tail367

.tail367:                                         ; preds = %sub_0364, %sub_1369
  %.sink605 = phi i8 [ %11, %sub_1369 ], [ %i.dr, %sub_0364 ]
  %.sink603 = phi i32 [ 58, %sub_1369 ], [ 49, %sub_0364 ]
  %12 = zext i8 %.sink605 to i32
  %.not291 = icmp eq i32 %.sink603, %12
  br i1 %.not291, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.tail367, %.tail363
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.dv = tail call double @strtod(ptr noundef nonnull captures(none) %i.du, ptr noundef null) #19, !inline_history !28 ; 3 uses
  store double %i.dv, ptr @_ZL6fscale, align 8, !tbaa !56
  %i.dw = fcmp oeq double %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = fdiv double 1.000000e+00, %i.dv
  store double %i.dx, ptr @_ZL6fscale, align 8, !tbaa !56
  br label %.preheader382.backedge

bb.ax:                                            ; preds = %.tail367
  %i.dy = tail call double @strtod(ptr noundef nonnull captures(none) %i.dq, ptr noundef null) #19, !inline_history !28 ; 2 uses
  store double %i.dy, ptr @_ZL6fscale, align 8, !tbaa !56
  %i.dz = fcmp oeq double %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.ay, label %.preheader382.backedge

bb.ay:                                            ; preds = %bb.ax, %bb.av
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.16)
          to label %.preheader382.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.az:                                            ; preds = %.preheader382, %.preheader382
  %i.ea = getelementptr inbounds nuw i8, ptr %.0203, i64 2 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !12
  %i.ec = sext i8 %i.eb to i32
  %isdigittmp = add nsw i32 %i.ec, -48            ; 2 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ed = icmp eq i8 %i.al, 87
  %i.ee = zext i1 %i.ed to i32
  invoke void @_Z10set_rtodmsii(i32 noundef %isdigittmp, i32 noundef %i.ee)
          to label %.preheader382.backedge unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bc:                                            ; preds = %bb.az
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.17)
          to label %.preheader382.backedge unwind label %bb.bb

.preheader382.backedge:                           ; preds = %bb.bc, %bb.ba, %bb.aw, %bb.ay, %bb.ax, %bb.u, %bb.v, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.at, %bb.be, %bb.bh, %bb.bi, %.preheader382
  %_ZL7inverse.3 = phi i32 [ %_ZL7inverse.1, %bb.m ], [ %_ZL7inverse.1, %.preheader382 ], [ %_ZL7inverse.1, %bb.n ], [ %_ZL7inverse.1, %bb.o ], [ 1, %bb.p ], [ %_ZL7inverse.1, %bb.q ], [ %_ZL7inverse.1, %bb.r ], [ %_ZL7inverse.1, %bb.s ], [ %_ZL7inverse.1, %bb.v ], [ %_ZL7inverse.1, %bb.u ], [ %_ZL7inverse.1, %bb.at ], [ %_ZL7inverse.1, %bb.ay ], [ %_ZL7inverse.1, %bb.aw ], [ %_ZL7inverse.1, %bb.ax ], [ %_ZL7inverse.1, %bb.ba ], [ %_ZL7inverse.1, %bb.bc ], [ %_ZL7inverse.1, %bb.be ], [ %_ZL7inverse.1, %bb.bh ], [ %_ZL7inverse.1, %bb.bi ]
  %.1210.be = phi i32 [ %.1210, %bb.m ], [ %.1210, %.preheader382 ], [ %.1210, %bb.n ], [ %.1210, %bb.o ], [ %.1210, %bb.p ], [ %.1210, %bb.q ], [ %.1210, %bb.r ], [ %.1210, %bb.s ], [ %.1210, %bb.v ], [ %.1210, %bb.u ], [ %.3212, %bb.at ], [ %i.dn, %bb.ay ], [ %i.dn, %bb.aw ], [ %i.dn, %bb.ax ], [ %.1210, %bb.ba ], [ %.1210, %bb.bc ], [ %i.eg, %bb.be ], [ %.1210, %bb.bh ], [ %.1210, %bb.bi ]
  %.1207.be = phi ptr [ %.1207, %bb.m ], [ %.1207, %.preheader382 ], [ %.1207, %bb.n ], [ %.1207, %bb.o ], [ %.1207, %bb.p ], [ %.1207, %bb.q ], [ %.1207, %bb.r ], [ %.1207, %bb.s ], [ %.1207, %bb.v ], [ %.1207, %bb.u ], [ %i.dl, %bb.at ], [ %i.dp, %bb.ay ], [ %i.dp, %bb.aw ], [ %i.dp, %bb.ax ], [ %.1207, %bb.ba ], [ %.1207, %bb.bc ], [ %i.ei, %bb.be ], [ %.1207, %bb.bh ], [ %.1207, %bb.bi ]
  %.0203.be = phi ptr [ %i.ak, %bb.m ], [ %i.ak, %.preheader382 ], [ %i.ak, %bb.n ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %bb.q ], [ %i.ak, %bb.r ], [ %i.ak, %bb.s ], [ %i.ak, %bb.v ], [ %i.ar, %bb.u ], [ %i.ak, %bb.at ], [ %i.ak, %bb.ay ], [ %i.ak, %bb.aw ], [ %i.ak, %bb.ax ], [ %i.ea, %bb.ba ], [ %i.ak, %bb.bc ], [ %i.ak, %bb.be ], [ %i.ak, %bb.bh ], [ %i.ak, %bb.bi ]
  %.1193.be = phi i32 [ %.1193, %bb.m ], [ 1, %.preheader382 ], [ %.1193, %bb.n ], [ %.1193, %bb.o ], [ %.1193, %bb.p ], [ %.1193, %bb.q ], [ 1, %bb.r ], [ %.1193, %bb.s ], [ %.1193, %bb.v ], [ %.1193, %bb.u ], [ %.1193, %bb.at ], [ %.1193, %bb.ay ], [ %.1193, %bb.aw ], [ %.1193, %bb.ax ], [ %.1193, %bb.ba ], [ %.1193, %bb.bc ], [ %.1193, %bb.be ], [ %.1193, %bb.bh ], [ %.1193, %bb.bi ]
  br label %.preheader382, !llvm.loop !29

bb.bd:                                            ; preds = %.preheader382
  %i.eg = add nsw i32 %.1210, -1                  ; 2 uses
  %i.eh = icmp slt i32 %.1210, 2
  br i1 %i.eh, label %bb.as, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ei = getelementptr inbounds nuw i8, ptr %.1207, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !11
  store ptr %i.ej, ptr @_ZL5oform, align 8, !tbaa !11
  br label %.preheader382.backedge

bb.bf:                                            ; preds = %.preheader382
  %i.ek = add nsw i32 %.1210, -1                  ; 2 uses
  %i.el = icmp slt i32 %.1210, 2
  br i1 %i.el, label %bb.as, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.em = getelementptr inbounds nuw i8, ptr %.1207, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !11
  %i.eo = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.en, ptr noundef null, i32 noundef 10) #19, !inline_history !30
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZL12oform_buffer, i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.ep) #19 ; 0 uses
  store ptr @_ZL12oform_buffer, ptr @_ZL5oform, align 8, !tbaa !11
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

bb.bh:                                            ; preds = %.preheader382
  store i1 true, ptr @_ZL9reversein, align 4
  br label %.preheader382.backedge

bb.bi:                                            ; preds = %.preheader382
  store i1 true, ptr @_ZL10reverseout, align 4
  br label %.preheader382.backedge

bb.bj:                                            ; preds = %.preheader382
  %i.er = sext i8 %i.al to i32
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %i.er)
          to label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bk:                                            ; preds = %bb.j
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.et = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 4 uses
  %i.eu = load ptr, ptr %i.ab, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.es, ptr %i.et, align 8, !tbaa !11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ev, ptr %i.aa, align 8, !tbaa !16
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

bb.bm:                                            ; preds = %bb.bk
  %i.ew = load ptr, ptr %7, align 8, !tbaa !18    ; 4 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 5 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775800
  br i1 %i.fa, label %bb.bn, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #24
          to label %.noexc unwind label %.loopexit.split-lp388

.noexc:                                           ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bm
  %i.fb = ashr exact i64 %i.ez, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = tail call i64 @llvm.umin.i64(i64 %i.fc, i64 1152921504606846975)
  %i.ff = select i1 %i.fd, i64 1152921504606846975, i64 %i.fe ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ff, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #25
          to label %.noexc305 unwind label %.loopexit387 ; 4 uses

.noexc305:                                        ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.ez ; 2 uses
  store ptr %i.es, ptr %i.fi, align 8, !tbaa !11
  %i.fj = icmp sgt i64 %i.ez, 0
  br i1 %i.fj, label %bb.bo, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.bo:                                            ; preds = %.noexc305
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr align 8 %i.ew, i64 %i.ez, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.bo, %.noexc305
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.fl = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.ey
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fn) #26
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.bp, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.fh, ptr %7, align 8, !tbaa !18
  store ptr %i.fk, ptr %i.aa, align 8, !tbaa !16
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ff
  store ptr %i.fo, ptr %i.ab, align 8, !tbaa !17
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

.loopexit387:                                     ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit389 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp388:                            ; preds = %bb.bn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bq:                                            ; preds = %bb.j
  %i.fp = add nsw i32 %.0195435, 1
  %i.fq = sext i32 %.0195435 to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fq
  store ptr %i.ai, ptr %i.fr, align 8, !tbaa !11
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit:      ; preds = %bb.bl, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.bq, %bb.bj, %bb.k, %bb.l, %bb.bg
  %_ZL7inverse.2 = phi i32 [ %_ZL7inverse.0, %bb.bq ], [ %_ZL7inverse.1, %bb.bj ], [ %_ZL7inverse.1, %bb.l ], [ %_ZL7inverse.1, %bb.k ], [ %_ZL7inverse.1, %bb.bg ], [ %_ZL7inverse.0, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %_ZL7inverse.0, %bb.bl ] ; 8 uses
  %.4213 = phi i32 [ %i.ag, %bb.bq ], [ %.1210, %bb.bj ], [ %.1210, %bb.l ], [ %.1210, %bb.k ], [ %i.ek, %bb.bg ], [ %i.ag, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.ag, %bb.bl ] ; 2 uses
  %.2208 = phi ptr [ %i.ah, %bb.bq ], [ %.1207, %bb.bj ], [ %.1207, %bb.l ], [ %.1207, %bb.k ], [ %i.em, %bb.bg ], [ %i.ah, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.ah, %bb.bl ]
  %.1196 = phi i32 [ %i.fp, %bb.bq ], [ %.0195435, %bb.bj ], [ %i.ao, %bb.l ], [ %.0195435, %bb.k ], [ %.0195435, %bb.bg ], [ %.0195435, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.0195435, %bb.bl ] ; 4 uses
  %.2194 = phi i32 [ %.0192436, %bb.bq ], [ %.1193, %bb.bj ], [ %.1193, %bb.l ], [ %.1193, %bb.k ], [ %.1193, %bb.bg ], [ %.0192436, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.0192436, %bb.bl ] ; 2 uses
  %i.fs = icmp sgt i32 %.4213, 1
  br i1 %i.fs, label %bb.j, label %bb.br, !llvm.loop !31

bb.br:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit
  %i.ft = load ptr, ptr @_ZL5oform, align 8, !tbaa !11 ; 2 uses
  %.not252 = icmp eq ptr %i.ft, null
  br i1 %.not252, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fu = invoke noundef zeroext i1 @_Z32validate_form_string_for_numbersPKc(ptr noundef nonnull %i.ft)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.fu, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void (i32, ptr, ...) @_Z5emessiPKcz(i32 noundef 3, ptr noundef nonnull @.str.20)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.bw:                                            ; preds = %bb.bt, %bb.br
  %i.fv = icmp ne i32 %_ZL7inverse.2, 0
  %.b251 = load i1, ptr @_ZL9postscale, align 4
  %or.cond = select i1 %i.fv, i1 %.b251, i1 false
  br i1 %or.cond, label %bb.bx, label %bb.by

end_hunk_0
