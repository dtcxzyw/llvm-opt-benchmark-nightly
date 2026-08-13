inline.NumInlined: 54
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@cluster_preview_draw:bb.a
  %i.bq = fmul reassoc nnan nsz arcp contract afn double %i.bp, f0x3FD5555555555555 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !190
  %i.br = load float, ptr %i.bk, align 4, !tbaa !93
  %i.bs = load float, ptr %i.bl, align 4, !tbaa !93
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bm
  %i.bu = load <2 x float>, ptr %i.bj, align 4, !tbaa !93 ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bt, i64 1 ; 2 uses
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bw
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  store <2 x double> %i.ca, ptr %i.at, align 8, !tbaa !192
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !132
  call void @cmsDoTransform(ptr noundef %i.cb, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.cc = load double, ptr %i.a, align 16, !tbaa !192
  %i.cd = load double, ptr %i.av, align 8, !tbaa !192
  %i.ce = load double, ptr %i.aw, align 16, !tbaa !192
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.cc, double noundef %i.cd, double noundef %i.ce) #21
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1432
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !189
  %i.ci = fmul reassoc nsz arcp contract afn double %i.ch, 5.000000e-01 ; 2 uses
  %i.cj = fsub reassoc nsz arcp contract afn double %i.ay, %i.ci
  %i.ck = fsub reassoc nsz arcp contract afn double %i.ba, %i.ci
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.bf, double noundef %i.bq, double noundef %i.cj, double noundef %i.ck) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !190
  %i.cl = load <2 x float>, ptr %i.bj, align 4, !tbaa !93
  %i.cm = load <2 x float>, ptr %i.bk, align 4, !tbaa !93
  %i.cn = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bm, i64 1
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.cn
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.co, %i.cl
  %i.cq = fpext <2 x float> %i.cp to <2 x double>
  store <2 x double> %i.cq, ptr %i.at, align 8, !tbaa !192
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !132
  call void @cmsDoTransform(ptr noundef %i.cr, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.cs = load double, ptr %i.a, align 16, !tbaa !192
  %i.ct = load double, ptr %i.av, align 8, !tbaa !192
  %i.cu = load double, ptr %i.aw, align 16, !tbaa !192
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.cs, double noundef %i.ct, double noundef %i.cu) #21
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1432
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !189
  %i.cy = fmul reassoc nsz arcp contract afn double %i.cx, 5.000000e-01 ; 2 uses
  %i.cz = fsub reassoc nsz arcp contract afn double %i.ay, %i.cy
  %i.da = fsub reassoc nsz arcp contract afn double %i.ba, %i.cy
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.ay, double noundef %i.bq, double noundef %i.cz, double noundef %i.da) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cluster_preview_draw.rgb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store double f0x404AB1EBE1650A46, ptr %4, align 8, !tbaa !190
  %i.db = load float, ptr %i.bk, align 4, !tbaa !93
  %i.dc = load float, ptr %i.bl, align 4, !tbaa !93
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.bm
  %i.de = load <2 x float>, ptr %i.bj, align 4, !tbaa !93
  %i.df = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.dd, i64 1
  %i.dh = fadd reassoc nsz arcp contract afn <2 x float> %i.dg, %i.de
  %i.di = fpext <2 x float> %i.dh to <2 x double>
  store <2 x double> %i.di, ptr %i.at, align 8, !tbaa !192
  %i.dj = load ptr, ptr %i.au, align 8, !tbaa !132
  call void @cmsDoTransform(ptr noundef %i.dj, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.dk = load double, ptr %i.a, align 16, !tbaa !192
  %i.dl = load double, ptr %i.av, align 8, !tbaa !192
  %i.dm = load double, ptr %i.aw, align 16, !tbaa !192
  call void @cairo_set_source_rgb(ptr noundef %i.y, double noundef %i.dk, double noundef %i.dl, double noundef %i.dm) #21
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1432
  %i.dp = load double, ptr %i.do, align 8, !tbaa !189
  %i.dq = fmul reassoc nsz arcp contract afn double %i.dp, 5.000000e-01 ; 2 uses
  %i.dr = fsub reassoc nsz arcp contract afn double %i.ay, %i.dq
  %i.ds = fsub reassoc nsz arcp contract afn double %i.ba, %i.dq
  call void @cairo_rectangle(ptr noundef %i.y, double noundef %i.bi, double noundef %i.bq, double noundef %i.dr, double noundef %i.ds) #21
  call void @cairo_fill(ptr noundef %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %exitcond.not = icmp eq i32 %i.bn, 2
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  call void @cairo_translate(ptr noundef %i.y, double noundef %i.bc, double noundef 0.000000e+00) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dt = load i32, ptr %i.aa, align 4, !tbaa !92
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next, %i.du
  br i1 %i.dv, label %.preheader60, label %._crit_edge
}

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_iop_button_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @acquire_source_button_pressed(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82
  %i.g = and i32 %i.f, -14
  %i.h = or disjoint i32 %i.g, 12
  store i32 %i.h, ptr %i.e, align 4, !tbaa !82
  tail call void @dt_iop_request_focus(ptr noundef %1) #21
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !193
  tail call void @dt_dev_add_history_item(ptr noundef %i.i, ptr noundef %1, i32 noundef 1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @acquire_target_button_pressed(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82
  %i.g = and i32 %i.f, -23
  %i.h = or disjoint i32 %i.g, 20
  store i32 %i.h, ptr %i.e, align 4, !tbaa !82
  tail call void @dt_iop_request_focus(ptr noundef %1) #21
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !193
  tail call void @dt_dev_add_history_item(ptr noundef %i.i, ptr noundef %1, i32 noundef 1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @process_clusters(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 28 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !30  ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %.not70 = icmp eq ptr %i.g, null
  br i1 %.not70, label %bb.bd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 4, !tbaa !82
  %i.i = and i32 %i.h, 4
  %.not71 = icmp eq i32 %i.i, 0
  br i1 %.not71, label %bb.bd, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = atomicrmw add ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 3 uses
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.m) #21 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87   ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !88   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !89
  %i.u = sext i32 %i.p to i64                     ; 2 uses
  %i.v = sext i32 %i.r to i64
  %i.w = sext i32 %i.t to i64
  %i.x = mul nsw i64 %i.w, %i.v                   ; 2 uses
  %i.y = shl i64 %i.x, 2
  %i.z = mul i64 %i.y, %i.u
  %i.aa = tail call ptr @dt_alloc_aligned(i64 noundef %i.z) #21 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %.not72 = icmp eq ptr %i.aa, null
  br i1 %.not72, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #21 ; 0 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = atomicrmw sub ptr %i.ad, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.bd

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.ag = mul i64 %i.x, %i.u
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.aa, ptr noundef %i.af, i64 noundef %i.ag) #21
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #21 ; 0 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !82  ; 2 uses
  %i.aj = and i32 %i.ai, 8
  %.not73 = icmp eq i32 %i.aj, 0                  ; 2 uses
  br i1 %.not73, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %i.ak = icmp sgt i32 %i.r, 0
  %i.al = icmp sgt i32 %i.p, 0
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %.preheader46.preheader.i, label %.preheader45.i.a

.preheader46.preheader.i:                         ; preds = %bb.g
  %i.am = zext nneg i32 %i.p to i64               ; 3 uses
  %wide.trip.count55.i = zext nneg i32 %i.r to i64
  %xtraiter = and i64 %i.am, 1
  %2 = icmp eq i32 %i.p, 1
  %unroll_iter.a = and i64 %i.am, 2147483646
  %lcmp.mod.not.a = icmp eq i64 %xtraiter, 0
  %lcmp.mod118 = trunc i32 %i.p to i1
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %._crit_edge.i, %.preheader46.preheader.i
  %indvars.iv52.i = phi i64 [ 0, %.preheader46.preheader.i ], [ %indvars.iv.next53.i, %._crit_edge.i ] ; 2 uses
  %3 = mul nuw nsw i64 %indvars.iv52.i, %i.am     ; 3 uses
  br i1 %2, label %.epil.preheader, label %.preheader46.i.new

.preheader45.i.a:                                 ; preds = %._crit_edge.i, %bb.g
  %load_initial115 = load i32, ptr %i.a, align 16
  br label %bb.p

._crit_edge.i.unr-lcssa:                          ; preds = %bb.o
  br i1 %lcmp.mod.not.a, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader46.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader46.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %4 = add nuw nsw i64 %indvars.iv.i.epil.init, %3
  %i.an = shl i64 %4, 2
  %5 = and i64 %i.an, 4294967292
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %5
  %i.ao = load float, ptr %6, align 16, !tbaa !93
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 2.048000e+03
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ar = fmul reassoc nsz arcp contract afn double %i.aq, 1.000000e-02 ; 3 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt double %i.ar, 2.047000e+03
  br i1 %i.as, label %._crit_edge.i.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.at = fcmp reassoc nsz arcp contract afn olt double %i.ar, 0.000000e+00
  br i1 %i.at, label %._crit_edge.i.epilog-lcssa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fptosi double %i.ar to i32
  %i.av = sext i32 %i.au to i64
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.i, %bb.h, %.epil.preheader
  %i.aw = phi i64 [ 2047, %.epil.preheader ], [ %i.av, %bb.i ], [ 0, %bb.h ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !94
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !94
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %._crit_edge.i.epilog-lcssa
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %.preheader45.i.a, label %.preheader46.i

.preheader46.i.new:                               ; preds = %.preheader46.i, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.o ], [ 0, %.preheader46.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.preheader46.i ]
  %7 = add nuw nsw i64 %indvars.iv.i, %3
  %8 = shl i64 %7, 2
  %9 = and i64 %8, 4294967292
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %9
  %11 = load float, ptr %10, align 16, !tbaa !93
  %12 = fmul reassoc nsz arcp contract afn float %11, 2.048000e+03
  %13 = fpext reassoc nsz arcp contract afn float %12 to double
  %14 = fmul reassoc nsz arcp contract afn double %13, 1.000000e-02 ; 3 uses
  %15 = fcmp reassoc nsz arcp contract afn ogt double %14, 2.047000e+03
  br i1 %15, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.preheader46.i.new
  %i.ba = fcmp reassoc nsz arcp contract afn olt double %14, 0.000000e+00
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = fptosi double %14 to i32
  %i.bc = sext i32 %i.bb to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.preheader46.i.new
  %i.bd = phi i64 [ 2047, %.preheader46.i.new ], [ %i.bc, %bb.k ], [ 0, %bb.j ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !94
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !94
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %16 = add nuw nsw i64 %indvars.iv.next.i, %3
  %i.bh = shl i64 %16, 2
  %17 = and i64 %i.bh, 4294967292
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %17
  %i.bi = load float, ptr %18, align 16, !tbaa !93
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 2.048000e+03
  %i.bk = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bk, 1.000000e-02 ; 3 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt double %i.bl, 2.047000e+03
  br i1 %i.bm, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = fcmp reassoc nsz arcp contract afn olt double %i.bl, 0.000000e+00
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = fptosi double %i.bl to i32
  %i.bp = sext i32 %i.bo to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bq = phi i64 [ 2047, %bb.l ], [ %i.bp, %bb.n ], [ 0, %bb.m ]
  %i.br = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !94
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !94
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter.a
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader46.i.new

.preheader.i:                                     ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8188 ; 2 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.q, %.preheader45.i.a
  %store_forwarded116 = phi i32 [ %load_initial115, %.preheader45.i.a ], [ %i.cy, %bb.q ]
  %indvars.iv57.i = phi i64 [ 1, %.preheader45.i.a ], [ %indvars.iv.next58.i.7, %bb.q ] ; 9 uses
  %i.bv = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv57.i ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !94
  %i.bx = add nsw i32 %i.bw, %store_forwarded116  ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !94
  %i.by = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv57.i
  %i.bz = getelementptr i8, ptr %i.by, i64 4      ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !94
  %i.cb = add nsw i32 %i.ca, %i.bx                ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !94
  %i.cc = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv57.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !94
  %i.cf = add nsw i32 %i.ce, %i.cb                ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !94
  %i.cg = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv57.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 12     ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !94
  %i.cj = add nsw i32 %i.ci, %i.cf                ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !94
  %i.ck = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv57.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !94
  %i.cn = add nsw i32 %i.cm, %i.cj                ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !94
  %i.co = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv57.i
  %i.cp = getelementptr i8, ptr %i.co, i64 20     ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !94
  %i.cr = add nsw i32 %i.cq, %i.cn                ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !94
  %i.cs = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv57.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 24     ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !94
  %i.cv = add nsw i32 %i.cu, %i.cr                ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !94
  %indvars.iv.next58.i.6 = add nuw nsw i64 %indvars.iv57.i, 7 ; 2 uses
  %exitcond60.not.i.6 = icmp eq i64 %indvars.iv.next58.i.6, 2048
  br i1 %exitcond60.not.i.6, label %.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next58.i.6 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.cy = add nsw i32 %i.cx, %i.cv                ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !94
  %indvars.iv.next58.i.7 = add nuw nsw i64 %indvars.iv57.i, 8
  br label %bb.p

bb.r:                                             ; preds = %bb.x, %.preheader.i
  %indvars.iv61.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next62.i.1, %bb.x ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv61.i ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !94
  %i.db = sitofp reassoc nsz arcp contract afn i32 %i.da to float
  %i.dc = load i32, ptr %i.bu, align 4, !tbaa !94
  %i.dd = sitofp reassoc nsz arcp contract afn i32 %i.dc to float
  %i.de = fmul reassoc nnan nsz arcp contract afn float %i.db, 2.048000e+03
  %i.df = fdiv reassoc nsz arcp contract afn float %i.de, %i.dd ; 3 uses
  %i.dg = fcmp reassoc nsz arcp contract afn ogt float %i.df, 2.047000e+03
  br i1 %i.dg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = fcmp reassoc nsz arcp contract afn olt float %i.df, 0.000000e+00
  br i1 %i.dh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = fptosi float %i.df to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.dj = phi i32 [ 2047, %bb.r ], [ %i.di, %bb.t ], [ 0, %bb.s ]
  store i32 %i.dj, ptr %i.cz, align 8, !tbaa !94
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv61.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !94
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.dm to float
  %i.do = load i32, ptr %i.bu, align 4, !tbaa !94
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %i.do to float
  %i.dq = fmul reassoc nnan nsz arcp contract afn float %i.dn, 2.048000e+03
  %i.dr = fdiv reassoc nsz arcp contract afn float %i.dq, %i.dp ; 3 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt float %i.dr, 2.047000e+03
  br i1 %i.ds, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = fcmp reassoc nsz arcp contract afn olt float %i.dr, 0.000000e+00
  br i1 %i.dt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = fptosi float %i.dr to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dv = phi i32 [ 2047, %bb.u ], [ %i.du, %bb.w ], [ 0, %bb.v ]
  store i32 %i.dv, ptr %i.dl, align 4, !tbaa !94
  %indvars.iv.next62.i.1 = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %exitcond64.not.i.1 = icmp eq i64 %indvars.iv.next62.i.1, 2048
  br i1 %exitcond64.not.i.1, label %capture_histogram.exit, label %bb.r

capture_histogram.exit:                           ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store <8 x float> <float 0.000000e+00, float f0x3D480000, float f0x3DC80000, float f0x3E160000, float f0x3E480000, float f0x3E7A0000, float f0x3E960000, float f0x3EAF0000>, ptr %i.dw, align 4, !tbaa !93
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <8 x float> <float 3.906250e-01, float f0x3EE10000, float f0x3EFA0000, float f0x3F098000, float f0x3F160000, float f0x3F228000, float f0x3F2F0000, float f0x3F3B8000>, ptr %i.dx, align 4, !tbaa !93
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <8 x float> <float 7.812500e-01, float f0x3F548000, float f0x3F610000, float f0x3F6D8000, float f0x3F7A0000, float f0x3F834000, float f0x3F898000, float f0x3F8FC000>, ptr %i.dy, align 4, !tbaa !93
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store <8 x float> <float f0x3F960000, float f0x3F9C4000, float f0x3FA28000, float f0x3FA8C000, float f0x3FAF0000, float f0x3FB54000, float f0x3FBB8000, float f0x3FC1C000>, ptr %i.dz, align 4, !tbaa !93
  br label %.preheader.i78

.preheader.i78:                                   ; preds = %.loopexit.i.1, %capture_histogram.exit
  %indvars.iv31.i = phi i64 [ 32, %capture_histogram.exit ], [ %indvars.iv.next32.i.1, %.loopexit.i.1 ] ; 5 uses
  %.02025.i = phi i32 [ 31, %capture_histogram.exit ], [ %.1.i.1, %.loopexit.i.1 ] ; 4 uses
  %i.ea = icmp slt i32 %.02025.i, 2048
  br i1 %i.ea, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i78
  %i.eb = sext i32 %.02025.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i79 = phi i64 [ %i.eb, %.lr.ph.preheader.i ], [ %indvars.iv.next.i80, %bb.z ] ; 3 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.i79
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !94
  %i.ee = sext i32 %i.ed to i64
  %.not.i = icmp sgt i64 %indvars.iv31.i, %i.ee
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.ef = trunc nsw i64 %indvars.iv.i79 to i32    ; 2 uses
  %i.eg = sitofp reassoc nsz arcp contract afn i32 %i.ef to float
  %i.eh = fmul reassoc nnan nsz arcp contract afn float %i.eg, f0x3D480000
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv31.i
  store float %i.eh, ptr %i.ei, align 4, !tbaa !93
  br label %.loopexit.i

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i80 = add nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %i.ej = and i64 %indvars.iv.next.i80, 4294967295
  %exitcond.not.i81 = icmp eq i64 %i.ej, 2048
  br i1 %exitcond.not.i81, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.z, %bb.y, %.preheader.i78
  %.1.i = phi i32 [ %i.ef, %bb.y ], [ %.02025.i, %.preheader.i78 ], [ %.02025.i, %bb.z ] ; 4 uses
  %i.ek = icmp slt i32 %.1.i, 2048
  br i1 %i.ek, label %.lr.ph.preheader.i.1, label %.loopexit.i.1

.lr.ph.preheader.i.1:                             ; preds = %.loopexit.i
  %i.el = sext i32 %.1.i to i64
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ab, %.lr.ph.preheader.i.1
  %indvars.iv.i79.1 = phi i64 [ %i.el, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next.i80.1, %bb.ab ] ; 3 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.i79.1
  %i.en = load i32, ptr %i.em, align 4, !tbaa !94
  %i.eo = sext i32 %i.en to i64
  %.not.i.1.not = icmp slt i64 %indvars.iv31.i, %i.eo
  br i1 %.not.i.1.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.1
  %i.ep = trunc nsw i64 %indvars.iv.i79.1 to i32  ; 2 uses
  %i.eq = sitofp reassoc nsz arcp contract afn i32 %i.ep to float
  %i.er = fmul reassoc nnan nsz arcp contract afn float %i.eq, f0x3D480000
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv31.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store float %i.er, ptr %i.et, align 4, !tbaa !93
  br label %.loopexit.i.1

bb.ab:                                            ; preds = %.lr.ph.i.1
  %indvars.iv.next.i80.1 = add nsw i64 %indvars.iv.i79.1, 1 ; 2 uses
  %i.eu = and i64 %indvars.iv.next.i80.1, 4294967295
  %exitcond.not.i81.1 = icmp eq i64 %i.eu, 2048
  br i1 %exitcond.not.i81.1, label %.loopexit.i.1, label %.lr.ph.i.1

.loopexit.i.1:                                    ; preds = %bb.ab, %bb.aa, %.loopexit.i
  %.1.i.1 = phi i32 [ %i.ep, %bb.aa ], [ %.1.i, %.loopexit.i ], [ %.1.i, %bb.ab ]
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %exitcond34.not.i.1 = icmp eq i64 %indvars.iv.next32.i.1, 2048
  br i1 %exitcond34.not.i.1, label %invert_histogram.exit, label %.preheader.i78

invert_histogram.exit:                            ; preds = %.loopexit.i.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !92
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 8208
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 8248
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 8288
  tail call fastcc void @kmeans(ptr noundef %i.aa, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.ew, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ez)
  %i.fa = load i32, ptr %i.c, align 4, !tbaa !82
  %i.fb = or i32 %i.fa, 1
  store i32 %i.fb, ptr %i.c, align 4, !tbaa !82
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 8344
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !117
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.fd) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.av

bb.ac:                                            ; preds = %bb.f
  %i.fe = and i32 %i.ai, 16
  %.not74 = icmp eq i32 %i.fe, 0
  br i1 %.not74, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.aa) #21
  br label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 8308 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.ff, i8 0, i64 8192, i1 false)
  %i.fg = icmp sgt i32 %i.r, 0
  %i.fh = icmp sgt i32 %i.p, 0
  %or.cond.i82 = and i1 %i.fh, %i.fg
  br i1 %or.cond.i82, label %.preheader46.preheader.i91, label %.preheader45.i83.a

.preheader46.preheader.i91:                       ; preds = %bb.ad
  %i.fi = zext nneg i32 %i.p to i64               ; 3 uses
  %wide.trip.count55.i92 = zext nneg i32 %i.r to i64
  %xtraiter120 = and i64 %i.fi, 1
  %19 = icmp eq i32 %i.p, 1
  %unroll_iter123.a = and i64 %i.fi, 2147483646
  %lcmp.mod121.not.a = icmp eq i64 %xtraiter120, 0
  %lcmp.mod122 = trunc i32 %i.p to i1
  br label %.preheader46.i93

.preheader46.i93:                                 ; preds = %._crit_edge.i98, %.preheader46.preheader.i91
  %indvars.iv52.i94 = phi i64 [ 0, %.preheader46.preheader.i91 ], [ %indvars.iv.next53.i99, %._crit_edge.i98 ] ; 2 uses
  %20 = mul nuw nsw i64 %indvars.iv52.i94, %i.fi  ; 3 uses
  br i1 %19, label %.epil.preheader119, label %.preheader46.i93.new

.preheader45.i83.a:                               ; preds = %._crit_edge.i98, %bb.ad
  %load_initial = load i32, ptr %i.ff, align 4
  br label %bb.am

._crit_edge.i98.unr-lcssa:                        ; preds = %bb.al
  br i1 %lcmp.mod121.not.a, label %._crit_edge.i98, label %.epil.preheader119

.epil.preheader119:                               ; preds = %._crit_edge.i98.unr-lcssa, %.preheader46.i93
  %indvars.iv.i95.epil.init = phi i64 [ 0, %.preheader46.i93 ], [ %indvars.iv.next.i96.1, %._crit_edge.i98.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %21 = add nuw nsw i64 %indvars.iv.i95.epil.init, %20
  %i.fj = shl i64 %21, 2
  %22 = and i64 %i.fj, 4294967292
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %22
  %i.fk = load float, ptr %23, align 16, !tbaa !93
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 2.048000e+03
  %i.fm = fpext reassoc nsz arcp contract afn float %i.fl to double
  %i.fn = fmul reassoc nsz arcp contract afn double %i.fm, 1.000000e-02 ; 3 uses
  %i.fo = fcmp reassoc nsz arcp contract afn ogt double %i.fn, 2.047000e+03
  br i1 %i.fo, label %._crit_edge.i98.epilog-lcssa, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader119
  %i.fp = fcmp reassoc nsz arcp contract afn olt double %i.fn, 0.000000e+00
  br i1 %i.fp, label %._crit_edge.i98.epilog-lcssa, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fq = fptosi double %i.fn to i32
  %i.fr = sext i32 %i.fq to i64
  br label %._crit_edge.i98.epilog-lcssa

._crit_edge.i98.epilog-lcssa:                     ; preds = %bb.af, %bb.ae, %.epil.preheader119
  %i.fs = phi i64 [ 2047, %.epil.preheader119 ], [ %i.fr, %bb.af ], [ 0, %bb.ae ]
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !94
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !94
  br label %._crit_edge.i98

._crit_edge.i98:                                  ; preds = %._crit_edge.i98.unr-lcssa, %._crit_edge.i98.epilog-lcssa
  %indvars.iv.next53.i99 = add nuw nsw i64 %indvars.iv52.i94, 1 ; 2 uses
  %exitcond56.not.i100 = icmp eq i64 %indvars.iv.next53.i99, %wide.trip.count55.i92
  br i1 %exitcond56.not.i100, label %.preheader45.i83.a, label %.preheader46.i93

.preheader46.i93.new:                             ; preds = %.preheader46.i93, %bb.al
  %indvars.iv.i95 = phi i64 [ %indvars.iv.next.i96.1, %bb.al ], [ 0, %.preheader46.i93 ] ; 3 uses
  %niter124 = phi i64 [ %niter124.next.1, %bb.al ], [ 0, %.preheader46.i93 ]
  %24 = add nuw nsw i64 %indvars.iv.i95, %20
  %25 = shl i64 %24, 2
  %26 = and i64 %25, 4294967292
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %26
  %28 = load float, ptr %27, align 16, !tbaa !93
  %29 = fmul reassoc nsz arcp contract afn float %28, 2.048000e+03
  %30 = fpext reassoc nsz arcp contract afn float %29 to double
  %31 = fmul reassoc nsz arcp contract afn double %30, 1.000000e-02 ; 3 uses
  %32 = fcmp reassoc nsz arcp contract afn ogt double %31, 2.047000e+03
  br i1 %32, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.preheader46.i93.new
  %i.fw = fcmp reassoc nsz arcp contract afn olt double %31, 0.000000e+00
  br i1 %i.fw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fx = fptosi double %31 to i32
  %i.fy = sext i32 %i.fx to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.preheader46.i93.new
  %i.fz = phi i64 [ 2047, %.preheader46.i93.new ], [ %i.fy, %bb.ah ], [ 0, %bb.ag ]
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !94
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !94
  %indvars.iv.next.i96 = or disjoint i64 %indvars.iv.i95, 1
  %33 = add nuw nsw i64 %indvars.iv.next.i96, %20
  %i.gd = shl i64 %33, 2
  %34 = and i64 %i.gd, 4294967292
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %34
  %i.ge = load float, ptr %35, align 16, !tbaa !93
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, 2.048000e+03
  %i.gg = fpext reassoc nsz arcp contract afn float %i.gf to double
  %i.gh = fmul reassoc nsz arcp contract afn double %i.gg, 1.000000e-02 ; 3 uses
  %i.gi = fcmp reassoc nsz arcp contract afn ogt double %i.gh, 2.047000e+03
  br i1 %i.gi, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gj = fcmp reassoc nsz arcp contract afn olt double %i.gh, 0.000000e+00
  br i1 %i.gj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = fptosi double %i.gh to i32
  %i.gl = sext i32 %i.gk to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.gm = phi i64 [ 2047, %bb.ai ], [ %i.gl, %bb.ak ], [ 0, %bb.aj ]
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !94
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !94
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i95, 2 ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123.a
  br i1 %niter124.ncmp.1, label %._crit_edge.i98.unr-lcssa, label %.preheader46.i93.new

.preheader.i87:                                   ; preds = %bb.am
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 16496 ; 2 uses
  br label %bb.ao

bb.am:                                            ; preds = %bb.an, %.preheader45.i83.a
  %store_forwarded = phi i32 [ %load_initial, %.preheader45.i83.a ], [ %i.hu, %bb.an ]
  %indvars.iv57.i84 = phi i64 [ 1, %.preheader45.i83.a ], [ %indvars.iv.next58.i85.7, %bb.an ] ; 9 uses
  %i.gr = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv57.i84 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !94
  %i.gt = add nsw i32 %i.gs, %store_forwarded     ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !94
  %i.gu = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv57.i84
  %i.gv = getelementptr i8, ptr %i.gu, i64 4      ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !94
  %i.gx = add nsw i32 %i.gw, %i.gt                ; 2 uses
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !94
  %i.gy = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv57.i84
  %i.gz = getelementptr i8, ptr %i.gy, i64 8      ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !94
  %i.hb = add nsw i32 %i.ha, %i.gx                ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !94
  %i.hc = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv57.i84
  %i.hd = getelementptr i8, ptr %i.hc, i64 12     ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !94
  %i.hf = add nsw i32 %i.he, %i.hb                ; 2 uses
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !94
  %i.hg = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv57.i84
  %i.hh = getelementptr i8, ptr %i.hg, i64 16     ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !94
  %i.hj = add nsw i32 %i.hi, %i.hf                ; 2 uses
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !94
  %i.hk = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv57.i84
  %i.hl = getelementptr i8, ptr %i.hk, i64 20     ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !94
  %i.hn = add nsw i32 %i.hm, %i.hj                ; 2 uses
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !94
  %i.ho = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv57.i84
  %i.hp = getelementptr i8, ptr %i.ho, i64 24     ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !94
  %i.hr = add nsw i32 %i.hq, %i.hn                ; 2 uses
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !94
  %indvars.iv.next58.i85.6 = add nuw nsw i64 %indvars.iv57.i84, 7 ; 2 uses
  %exitcond60.not.i86.6 = icmp eq i64 %indvars.iv.next58.i85.6, 2048
  br i1 %exitcond60.not.i86.6, label %.preheader.i87, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hs = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv.next58.i85.6 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !94
  %i.hu = add nsw i32 %i.ht, %i.hr                ; 2 uses
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !94
  %indvars.iv.next58.i85.7 = add nuw nsw i64 %indvars.iv57.i84, 8
  br label %bb.am

bb.ao:                                            ; preds = %bb.au, %.preheader.i87
  %indvars.iv61.i88 = phi i64 [ 0, %.preheader.i87 ], [ %indvars.iv.next62.i89.1, %bb.au ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv61.i88 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !94
  %i.hx = sitofp reassoc nsz arcp contract afn i32 %i.hw to float
  %i.hy = load i32, ptr %i.gq, align 4, !tbaa !94
  %i.hz = sitofp reassoc nsz arcp contract afn i32 %i.hy to float
  %i.ia = fmul reassoc nnan nsz arcp contract afn float %i.hx, 2.048000e+03
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.ia, %i.hz ; 3 uses
  %i.ic = fcmp reassoc nsz arcp contract afn ogt float %i.ib, 2.047000e+03
  br i1 %i.ic, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.id = fcmp reassoc nsz arcp contract afn olt float %i.ib, 0.000000e+00
  br i1 %i.id, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ie = fptosi float %i.ib to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.if = phi i32 [ 2047, %bb.ao ], [ %i.ie, %bb.aq ], [ 0, %bb.ap ]
  store i32 %i.if, ptr %i.hv, align 4, !tbaa !94
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv61.i88
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !94
  %i.ij = sitofp reassoc nsz arcp contract afn i32 %i.ii to float
  %i.ik = load i32, ptr %i.gq, align 4, !tbaa !94
  %i.il = sitofp reassoc nsz arcp contract afn i32 %i.ik to float
  %i.im = fmul reassoc nnan nsz arcp contract afn float %i.ij, 2.048000e+03
  %i.in = fdiv reassoc nsz arcp contract afn float %i.im, %i.il ; 3 uses
  %i.io = fcmp reassoc nsz arcp contract afn ogt float %i.in, 2.047000e+03
  br i1 %i.io, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ip = fcmp reassoc nsz arcp contract afn olt float %i.in, 0.000000e+00
  br i1 %i.ip, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iq = fptosi float %i.in to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.ir = phi i32 [ 2047, %bb.ar ], [ %i.iq, %bb.at ], [ 0, %bb.as ]
  store i32 %i.ir, ptr %i.ih, align 4, !tbaa !94
  %indvars.iv.next62.i89.1 = add nuw nsw i64 %indvars.iv61.i88, 2 ; 2 uses
  %exitcond64.not.i90.1 = icmp eq i64 %indvars.iv.next62.i89.1, 2048
  br i1 %exitcond64.not.i90.1, label %capture_histogram.exit101, label %bb.ao

capture_histogram.exit101:                        ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !92
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 16500
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 16540
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 16580
  tail call fastcc void @kmeans(ptr noundef %i.aa, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.it, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.iv, ptr noundef nonnull %i.iw)
  %i.ix = load i32, ptr %i.c, align 4, !tbaa !82
  %i.iy = or i32 %i.ix, 2
  store i32 %i.iy, ptr %i.c, align 4, !tbaa !82
  %i.iz = getelementptr inbounds nuw i8, ptr %i.e, i64 8352
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !118
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.ja) #21
  br label %bb.av

bb.av:                                            ; preds = %capture_histogram.exit101, %invert_histogram.exit
  tail call void @free(ptr noundef nonnull %i.aa) #21
  br i1 %.not73, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jb = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.jb, ptr noundef nonnull align 4 dereferenceable(8192) %i.jc, i64 8192, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.e, i64 8224
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 8208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jd, ptr noundef nonnull align 4 dereferenceable(40) %i.je, i64 40, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 8264
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 8248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jf, ptr noundef nonnull align 4 dereferenceable(40) %i.jg, i64 40, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 8304
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 8288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jh, ptr noundef nonnull align 4 dereferenceable(20) %i.ji, i64 20, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !92
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 8324
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !128
  %i.jm = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 1, ptr %i.jm, align 4, !tbaa !127
  %i.jn = tail call noalias ptr @fopen(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.56) ; 3 uses
  %.not76 = icmp eq ptr %i.jn, null
  br i1 %.not76, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jo = tail call i64 @fwrite(ptr noundef nonnull %i.jb, i64 noundef 8296, i64 noundef 1, ptr noundef nonnull %i.jn)
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.57) #21
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jq = tail call i32 @fclose(ptr noundef nonnull %i.jn) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.aw, %bb.az, %bb.av
  %i.jr = load i32, ptr %i.c, align 4, !tbaa !82
  %i.js = and i32 %i.jr, -29
  store i32 %i.js, ptr %i.c, align 4, !tbaa !82
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !182
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  %i.jv = atomicrmw sub ptr %i.ju, i32 1 seq_cst, align 4 ; 0 uses
  %i.jw = load i32, ptr %i.c, align 4, !tbaa !82
  %i.jx = and i32 %i.jw, 1
  %.not77 = icmp eq i32 %i.jx, 0
  br i1 %.not77, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !193
  tail call void @dt_dev_add_history_item(ptr noundef %i.jy, ptr noundef %1, i32 noundef 1) #21
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  tail call void @dt_control_queue_redraw() #21
  br label %bb.bd

bb.bd:                                            ; preds = %bb.e, %bb.bc, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !30  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  tail call void @cmsDeleteTransform(ptr noundef %i.d) #21
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.f) #21
  ret void
}

declare void @cmsDeleteTransform(ptr noundef) local_unnamed_addr #3

end_hunk_0
