inline.NumInlined: 96
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_lib_masks_list_recurs:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 296
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.097 = phi ptr [ %i.z, %bb.k ], [ null, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !99
  %i.ab = and i32 %i.aa, 4
  %.not107 = icmp eq i32 %i.ab, 0
  br i1 %.not107, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %.not108 = icmp eq ptr %1, null
  br i1 %.not108, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @gtk_tree_store_prepend(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %1) #11
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ac = call i32 @gtk_tree_model_get_iter_first(ptr noundef %0, ptr noundef nonnull %9) #11
  %.not109 = icmp eq i32 %i.ac, 0
  br i1 %.not109, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %.preheader
  %.094 = phi i32 [ %spec.select, %.preheader ], [ 0, %bb.o ]
  %i.ad = call i32 @gtk_tree_model_iter_has_child(ptr noundef %0, ptr noundef nonnull %9) #11
  %.not110 = icmp ne i32 %i.ad, 0
  %i.ae = zext i1 %.not110 to i32
  %spec.select = add nuw nsw i32 %.094, %i.ae     ; 2 uses
  %i.af = call i32 @gtk_tree_model_iter_next(ptr noundef %0, ptr noundef nonnull %9) #11
  %.not111 = icmp eq i32 %i.af, 0
  br i1 %.not111, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.o
  %.296 = phi i32 [ 0, %bb.o ], [ %spec.select, %.preheader ]
  call void @gtk_tree_store_insert(ptr noundef %0, ptr noundef nonnull %8, ptr noundef null, i32 noundef %.296) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !105
  %i.ai = zext i1 %i.t to i32
  %i.aj = icmp ne ptr %.089, null
  %i.ak = icmp ne i32 %i.i, 0
  %i.al = and i1 %i.ak, %i.aj
  %i.am = zext i1 %i.al to i32
  %i.an = icmp ne ptr %.091, null
  %i.ao = zext i1 %i.an to i32
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !19
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %4, i32 noundef 2, i32 noundef %3, i32 noundef 3, i32 noundef %i.ah, i32 noundef 4, i32 noundef %i.ai, i32 noundef 5, ptr noundef %.089, i32 noundef 6, i32 noundef %i.am, i32 noundef 7, ptr noundef %.091, i32 noundef 8, i32 noundef %i.ao, i32 noundef 9, ptr noundef %.097, i32 noundef 10, i32 noundef %i.ar, i32 noundef 11, ptr noundef nonnull %i.b, i32 noundef -1) #11
  call fastcc void @_set_iter_name(ptr noundef nonnull %7, ptr noundef nonnull %2, i32 noundef %5, float noundef %6, ptr noundef %0, ptr noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.y

bb.q:                                             ; preds = %bb.l
  %i.as = icmp ne i32 %3, 0
  %i.at = icmp ne ptr %4, null
  %or.cond = or i1 %i.as, %i.at
  br i1 %or.cond, label %.loopexit120, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2088
  %.093121 = load ptr, ptr %i.av, align 8, !tbaa !98 ; 2 uses
  %.not112122 = icmp eq ptr %.093121, null
  br i1 %.not112122, label %.loopexit120, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 160
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %.093123 = phi ptr [ %.093121, %.lr.ph ], [ %.093, %bb.v ] ; 2 uses
  %i.ax = load ptr, ptr %.093123, align 8, !tbaa !50 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !107
  %i.ba = call i32 %i.az() #11
  %i.bb = and i32 %i.ba, 2
  %.not113 = icmp eq i32 %i.bb, 0
  br i1 %.not113, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.ay, align 16, !tbaa !107
  %i.bd = call i32 %i.bc() #11
  %i.be = and i32 %i.bd, 1024
  %.not114 = icmp eq i32 %i.be, 0
  br i1 %.not114, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 768
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !109
  %i.bj = load i32, ptr %i.aw, align 8, !tbaa !105
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.loopexit120, label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %.093123, i64 8
  %.093 = load ptr, ptr %i.bl, align 8, !tbaa !98 ; 2 uses
  %.not112 = icmp eq ptr %.093, null
  br i1 %.not112, label %.loopexit120, label %bb.s

.loopexit120:                                     ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  %.3 = phi ptr [ %4, %bb.q ], [ null, %bb.r ], [ null, %bb.v ], [ %i.ax, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @gtk_tree_store_prepend(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %1) #11
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !105
  %i.bo = zext i1 %i.t to i32
  %i.bp = icmp ne ptr %.089, null
  %i.bq = icmp ne i32 %i.i, 0
  %i.br = and i1 %i.bq, %i.bp
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp ne ptr %.091, null
  %i.bu = zext i1 %i.bt to i32
  %i.bv = load i32, ptr %i.c, align 4, !tbaa !19
  %i.bw = icmp sgt i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %.3, i32 noundef 2, i32 noundef %3, i32 noundef 3, i32 noundef %i.bn, i32 noundef 4, i32 noundef %i.bo, i32 noundef 5, ptr noundef %.089, i32 noundef 6, i32 noundef %i.bs, i32 noundef 7, ptr noundef %.091, i32 noundef 8, i32 noundef %i.bu, i32 noundef 9, ptr noundef %.097, i32 noundef 10, i32 noundef %i.bx, i32 noundef 11, ptr noundef nonnull %i.b, i32 noundef -1) #11
  call fastcc void @_set_iter_name(ptr noundef nonnull %7, ptr noundef %2, i32 noundef %5, float noundef %6, ptr noundef %0, ptr noundef %10)
  %.090126 = load ptr, ptr %2, align 8, !tbaa !98 ; 2 uses
  %.not115127 = icmp eq ptr %.090126, null
  br i1 %.not115127, label %._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %bb.x, %.loopexit120
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.y

.lr.ph129:                                        ; preds = %.loopexit120, %bb.x
  %.090128 = phi ptr [ %.090, %bb.x ], [ %.090126, %.loopexit120 ] ; 2 uses
  %i.by = load ptr, ptr %.090128, align 8, !tbaa !50 ; 3 uses
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !111
  %i.cb = call ptr @dt_masks_get_from_id(ptr noundef %i.bz, i32 noundef %i.ca) #11 ; 2 uses
  %.not116 = icmp eq ptr %i.cb, null
  br i1 %.not116, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph129
  %i.cc = load i32, ptr %i.bm, align 8, !tbaa !105
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !113
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !114
  call fastcc void @_lib_masks_list_recurs(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %i.cb, i32 noundef %i.cc, ptr noundef %.3, i32 noundef %i.ce, float noundef %i.cg, ptr noundef %7)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph129
  %i.ch = getelementptr inbounds nuw i8, ptr %.090128, i64 8
  %.090 = load ptr, ptr %i.ch, align 8, !tbaa !98 ; 2 uses
  %.not115 = icmp eq ptr %.090, null
  br i1 %.not115, label %._crit_edge, label %.lr.ph129

bb.y:                                             ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.y
  ret void
}

declare void @gtk_tree_view_set_model(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gtk_tree_model_get_iter_first(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_tree_model_get_path(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_tree_view_expand_to_path(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_tree_view_scroll_to_cell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @gtk_tree_selection_select_iter(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_object_unref(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_widget_reallocate_now(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [7 x ptr], align 8                ; 5 uses
  %i.b = alloca [3 x ptr], align 8                ; 4 uses
  %i.c = alloca [2 x ptr], align 8                ; 3 uses
  %i.d = alloca [2 x ptr], align 8                ; 5 uses
  %i.e = alloca [3 x ptr], align 16               ; 3 uses
  %i.f = tail call noalias dereferenceable_or_null(304) ptr @g_malloc0(i64 noundef 304) #13 ; 29 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.f, ptr %i.g, align 8, !tbaa !38
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1432
  %i.j = load double, ptr %i.i, align 8, !tbaa !115
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, 1.300000e+01
  %i.l = fptosi double %i.k to i32                ; 36 uses
  %i.m = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.l, i32 noundef %i.l) #11 ; 3 uses
  %i.n = tail call ptr @cairo_create(ptr noundef %i.m) #11 ; 3 uses
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.n, i32 noundef 9, float noundef 1.000000e+00) #11
  tail call void @dtgtk_cairo_paint_masks_inverse(ptr noundef %i.n, i32 noundef 0, i32 noundef 0, i32 noundef %i.l, i32 noundef %i.l, i32 noundef 0, ptr noundef null) #11, !inline_history !121
  tail call void @cairo_destroy(ptr noundef %i.n) #11
  %i.o = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.m) #11 ; 5 uses
  %.not = icmp eq i32 %i.l, 0                     ; 7 uses
  br i1 %.not, label %_get_pixbuf_from_cairo.exit, label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %bb.a
  %1 = zext i32 %i.l to i64                       ; 2 uses
  %flatten.tripcount.i.i = mul nuw i64 %1, %1
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i.i.a
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i.a ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %i.p = trunc i64 %indvars.iv.i.i to i32
  %i.q = shl i32 %i.p, 2                          ; 4 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r ; 3 uses
  %i.t = or disjoint i32 %i.q, 2
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u ; 3 uses
  %i.w = or disjoint i32 %i.q, 3
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  %i.z = load i8, ptr %i.s, align 1, !tbaa !122   ; 2 uses
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !122  ; 2 uses
  store i8 %i.aa, ptr %i.s, align 1, !tbaa !122
  store i8 %i.z, ptr %i.v, align 1, !tbaa !122
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !122  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = or disjoint i32 %i.q, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad ; 2 uses
  %i.af = uitofp i8 %i.ab to float
  %i.ag = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.af ; 3 uses
  %i.ah = uitofp reassoc nsz arcp contract afn i8 %i.aa to float
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.aj = fptoui float %i.ai to i8
  store i8 %i.aj, ptr %i.s, align 1, !tbaa !122
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !122
  %i.al = uitofp reassoc nsz arcp contract afn i8 %i.ak to float
  %i.am = fmul reassoc nsz arcp contract afn float %i.ag, %i.al
  %i.an = fptoui float %i.am to i8
  store i8 %i.an, ptr %i.ae, align 1, !tbaa !122
  %i.ao = uitofp reassoc nsz arcp contract afn i8 %i.z to float
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ag, %i.ao
  %i.aq = fptoui float %i.ap to i8
  store i8 %i.aq, ptr %i.v, align 1, !tbaa !122
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i.i = add nuw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %flatten.tripcount.i.i
  br i1 %exitcond.not.i.i, label %_get_pixbuf_from_cairo.exit, label %bb.b

_get_pixbuf_from_cairo.exit:                      ; preds = %bb.d, %bb.a
  %i.ar = tail call i32 @cairo_image_surface_get_stride(ptr noundef %i.m) #11
  %i.as = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.o, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.l, i32 noundef %i.l, i32 noundef %i.ar, ptr noundef null, ptr noundef null) #11
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  store ptr %i.as, ptr %i.at, align 8, !tbaa !104
  %i.au = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.l, i32 noundef %i.l) #11 ; 3 uses
  %i.av = tail call ptr @cairo_create(ptr noundef %i.au) #11 ; 3 uses
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.av, i32 noundef 9, float noundef 1.000000e+00) #11
  tail call void @dtgtk_cairo_paint_masks_used(ptr noundef %i.av, i32 noundef 0, i32 noundef 0, i32 noundef %i.l, i32 noundef %i.l, i32 noundef 0, ptr noundef null) #11, !inline_history !121
  tail call void @cairo_destroy(ptr noundef %i.av) #11
  %i.aw = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.au) #11 ; 5 uses
  br i1 %.not, label %_get_pixbuf_from_cairo.exit175, label %.preheader.i.i167.a

.preheader.i.i167.a:                              ; preds = %_get_pixbuf_from_cairo.exit
  %2 = zext i32 %i.l to i64                       ; 2 uses
  %flatten.tripcount.i.i166 = mul nuw i64 %2, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i167.a
  %indvars.iv.i.i169 = phi i64 [ 0, %.preheader.i.i167.a ], [ %indvars.iv.next.i.i171, %bb.g ] ; 2 uses
  %i.ax = trunc i64 %indvars.iv.i.i169 to i32
  %i.ay = shl i32 %i.ax, 2                        ; 4 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 3 uses
  %i.bb = or disjoint i32 %i.ay, 2
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc ; 3 uses
  %i.be = or disjoint i32 %i.ay, 3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !122 ; 2 uses
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !122 ; 2 uses
  store i8 %i.bi, ptr %i.ba, align 1, !tbaa !122
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !122
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !122 ; 2 uses
  %.not.i.i170 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i170, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = or disjoint i32 %i.ay, 1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bl ; 2 uses
  %i.bn = uitofp i8 %i.bj to float
  %i.bo = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.bn ; 3 uses
  %i.bp = uitofp reassoc nsz arcp contract afn i8 %i.bi to float
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bo, %i.bp
  %i.br = fptoui float %i.bq to i8
  store i8 %i.br, ptr %i.ba, align 1, !tbaa !122
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !122
  %i.bt = uitofp reassoc nsz arcp contract afn i8 %i.bs to float
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bo, %i.bt
  %i.bv = fptoui float %i.bu to i8
  store i8 %i.bv, ptr %i.bm, align 1, !tbaa !122
  %i.bw = uitofp reassoc nsz arcp contract afn i8 %i.bh to float
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bo, %i.bw
  %i.by = fptoui float %i.bx to i8
  store i8 %i.by, ptr %i.bd, align 1, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.i171 = add nuw i64 %indvars.iv.i.i169, 1 ; 2 uses
  %exitcond.not.i.i172 = icmp eq i64 %indvars.iv.next.i.i171, %flatten.tripcount.i.i166
  br i1 %exitcond.not.i.i172, label %_get_pixbuf_from_cairo.exit175, label %bb.e

_get_pixbuf_from_cairo.exit175:                   ; preds = %bb.g, %_get_pixbuf_from_cairo.exit
  %i.bz = tail call i32 @cairo_image_surface_get_stride(ptr noundef %i.au) #11
  %i.ca = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.aw, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.l, i32 noundef %i.l, i32 noundef %i.bz, ptr noundef null, ptr noundef null) #11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !106
  %i.cc = shl nsw i32 %i.l, 1                     ; 20 uses
  %i.cd = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l) #11 ; 3 uses
  %i.ce = tail call ptr @cairo_create(ptr noundef %i.cd) #11 ; 3 uses
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.ce, i32 noundef 9, float noundef 1.000000e+00) #11
  tail call void @dtgtk_cairo_paint_masks_union(ptr noundef %i.ce, i32 noundef 0, i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef 0, ptr noundef null) #11, !inline_history !121
  tail call void @cairo_destroy(ptr noundef %i.ce) #11
  %i.cf = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.cd) #11 ; 5 uses
  br i1 %.not, label %_get_pixbuf_from_cairo.exit186, label %.preheader.i.i178

.preheader.i.i178:                                ; preds = %_get_pixbuf_from_cairo.exit175
  %3 = zext i32 %i.cc to i64
  %4 = zext i32 %i.l to i64
  %flatten.tripcount.i.i176 = mul nuw i64 %3, %4
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.preheader.i.i178
  %indvars.iv.i.i180 = phi i64 [ 0, %.preheader.i.i178 ], [ %indvars.iv.next.i.i182, %bb.j ] ; 2 uses
  %i.cg = trunc i64 %indvars.iv.i.i180 to i32
  %i.ch = shl i32 %i.cg, 2                        ; 4 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci ; 3 uses
  %i.ck = or disjoint i32 %i.ch, 2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cl ; 3 uses
  %i.cn = or disjoint i32 %i.ch, 3
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.co
  %i.cq = load i8, ptr %i.cj, align 1, !tbaa !122 ; 2 uses
  %i.cr = load i8, ptr %i.cm, align 1, !tbaa !122 ; 2 uses
  store i8 %i.cr, ptr %i.cj, align 1, !tbaa !122
  store i8 %i.cq, ptr %i.cm, align 1, !tbaa !122
  %i.cs = load i8, ptr %i.cp, align 1, !tbaa !122 ; 2 uses
  %.not.i.i181 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i181, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ct = or disjoint i32 %i.ch, 1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cu ; 2 uses
  %i.cw = uitofp i8 %i.cs to float
  %i.cx = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.cw ; 3 uses
  %i.cy = uitofp reassoc nsz arcp contract afn i8 %i.cr to float
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cx, %i.cy
  %i.da = fptoui float %i.cz to i8
  store i8 %i.da, ptr %i.cj, align 1, !tbaa !122
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !122
  %i.dc = uitofp reassoc nsz arcp contract afn i8 %i.db to float
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cx, %i.dc
  %i.de = fptoui float %i.dd to i8
  store i8 %i.de, ptr %i.cv, align 1, !tbaa !122
  %i.df = uitofp reassoc nsz arcp contract afn i8 %i.cq to float
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cx, %i.df
  %i.dh = fptoui float %i.dg to i8
  store i8 %i.dh, ptr %i.cm, align 1, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.i.i182 = add nuw i64 %indvars.iv.i.i180, 1 ; 2 uses
  %exitcond.not.i.i183 = icmp eq i64 %indvars.iv.next.i.i182, %flatten.tripcount.i.i176
  br i1 %exitcond.not.i.i183, label %_get_pixbuf_from_cairo.exit186, label %bb.h

_get_pixbuf_from_cairo.exit186:                   ; preds = %bb.j, %_get_pixbuf_from_cairo.exit175
  %i.di = tail call i32 @cairo_image_surface_get_stride(ptr noundef %i.cd) #11
  %i.dj = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.cf, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef %i.di, ptr noundef null, ptr noundef null) #11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !123
  %i.dl = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l) #11 ; 3 uses
  %i.dm = tail call ptr @cairo_create(ptr noundef %i.dl) #11 ; 3 uses
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.dm, i32 noundef 9, float noundef 1.000000e+00) #11
  tail call void @dtgtk_cairo_paint_masks_intersection(ptr noundef %i.dm, i32 noundef 0, i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef 0, ptr noundef null) #11, !inline_history !121
  tail call void @cairo_destroy(ptr noundef %i.dm) #11
  %i.dn = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.dl) #11 ; 5 uses
  br i1 %.not, label %_get_pixbuf_from_cairo.exit197, label %.preheader.i.i189

.preheader.i.i189:                                ; preds = %_get_pixbuf_from_cairo.exit186
  %5 = zext i32 %i.cc to i64
  %6 = zext i32 %i.l to i64
  %flatten.tripcount.i.i186 = mul nuw i64 %5, %6
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader.i.i189
  %indvars.iv.i.i191 = phi i64 [ 0, %.preheader.i.i189 ], [ %indvars.iv.next.i.i193, %bb.m ] ; 2 uses
  %i.do = trunc i64 %indvars.iv.i.i191 to i32
  %i.dp = shl i32 %i.do, 2                        ; 4 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dq ; 3 uses
  %i.ds = or disjoint i32 %i.dp, 2
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dt ; 3 uses
  %i.dv = or disjoint i32 %i.dp, 3
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dw
  %i.dy = load i8, ptr %i.dr, align 1, !tbaa !122 ; 2 uses
  %i.dz = load i8, ptr %i.du, align 1, !tbaa !122 ; 2 uses
  store i8 %i.dz, ptr %i.dr, align 1, !tbaa !122
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !122
  %i.ea = load i8, ptr %i.dx, align 1, !tbaa !122 ; 2 uses
  %.not.i.i192 = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i192, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = or disjoint i32 %i.dp, 1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ec ; 2 uses
  %i.ee = uitofp i8 %i.ea to float
  %i.ef = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.ee ; 3 uses
  %i.eg = uitofp reassoc nsz arcp contract afn i8 %i.dz to float
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ef, %i.eg
  %i.ei = fptoui float %i.eh to i8
  store i8 %i.ei, ptr %i.dr, align 1, !tbaa !122
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !122
  %i.ek = uitofp reassoc nsz arcp contract afn i8 %i.ej to float
  %i.el = fmul reassoc nsz arcp contract afn float %i.ef, %i.ek
  %i.em = fptoui float %i.el to i8
  store i8 %i.em, ptr %i.ed, align 1, !tbaa !122
  %i.en = uitofp reassoc nsz arcp contract afn i8 %i.dy to float
  %i.eo = fmul reassoc nsz arcp contract afn float %i.ef, %i.en
  %i.ep = fptoui float %i.eo to i8
  store i8 %i.ep, ptr %i.du, align 1, !tbaa !122
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i.i193 = add nuw i64 %indvars.iv.i.i191, 1 ; 2 uses
  %exitcond.not.i.i194 = icmp eq i64 %indvars.iv.next.i.i193, %flatten.tripcount.i.i186
  br i1 %exitcond.not.i.i194, label %_get_pixbuf_from_cairo.exit197, label %bb.k

_get_pixbuf_from_cairo.exit197:                   ; preds = %bb.m, %_get_pixbuf_from_cairo.exit186
  %i.eq = tail call i32 @cairo_image_surface_get_stride(ptr noundef %i.dl) #11
  %i.er = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.dn, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef %i.eq, ptr noundef null, ptr noundef null) #11
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  store ptr %i.er, ptr %i.es, align 8, !tbaa !124
  %i.et = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l) #11 ; 3 uses
  %i.eu = tail call ptr @cairo_create(ptr noundef %i.et) #11 ; 3 uses
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.eu, i32 noundef 9, float noundef 1.000000e+00) #11
  tail call void @dtgtk_cairo_paint_masks_difference(ptr noundef %i.eu, i32 noundef 0, i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef 0, ptr noundef null) #11, !inline_history !121
  tail call void @cairo_destroy(ptr noundef %i.eu) #11
  %i.ev = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.et) #11 ; 5 uses
  br i1 %.not, label %_get_pixbuf_from_cairo.exit208, label %.preheader.i.i200

.preheader.i.i200:                                ; preds = %_get_pixbuf_from_cairo.exit197
  %7 = zext i32 %i.cc to i64
  %8 = zext i32 %i.l to i64
  %flatten.tripcount.i.i196 = mul nuw i64 %7, %8
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.i.i200
  %indvars.iv.i.i202 = phi i64 [ 0, %.preheader.i.i200 ], [ %indvars.iv.next.i.i204, %bb.p ] ; 2 uses
  %i.ew = trunc i64 %indvars.iv.i.i202 to i32
  %i.ex = shl i32 %i.ew, 2                        ; 4 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ey ; 3 uses
  %i.fa = or disjoint i32 %i.ex, 2
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fb ; 3 uses
  %i.fd = or disjoint i32 %i.ex, 3
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fe
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !122 ; 2 uses
  %i.fh = load i8, ptr %i.fc, align 1, !tbaa !122 ; 2 uses
  store i8 %i.fh, ptr %i.ez, align 1, !tbaa !122
  store i8 %i.fg, ptr %i.fc, align 1, !tbaa !122
  %i.fi = load i8, ptr %i.ff, align 1, !tbaa !122 ; 2 uses
  %.not.i.i203 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i203, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fj = or disjoint i32 %i.ex, 1
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fk ; 2 uses
  %i.fm = uitofp i8 %i.fi to float
  %i.fn = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.fm ; 3 uses
  %i.fo = uitofp reassoc nsz arcp contract afn i8 %i.fh to float
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = fptoui float %i.fp to i8
  store i8 %i.fq, ptr %i.ez, align 1, !tbaa !122
  %i.fr = load i8, ptr %i.fl, align 1, !tbaa !122
  %i.fs = uitofp reassoc nsz arcp contract afn i8 %i.fr to float
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fn, %i.fs
  %i.fu = fptoui float %i.ft to i8
  store i8 %i.fu, ptr %i.fl, align 1, !tbaa !122
  %i.fv = uitofp reassoc nsz arcp contract afn i8 %i.fg to float
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fn, %i.fv
  %i.fx = fptoui float %i.fw to i8
  store i8 %i.fx, ptr %i.fc, align 1, !tbaa !122
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next.i.i204 = add nuw i64 %indvars.iv.i.i202, 1 ; 2 uses
  %exitcond.not.i.i205 = icmp eq i64 %indvars.iv.next.i.i204, %flatten.tripcount.i.i196
  br i1 %exitcond.not.i.i205, label %_get_pixbuf_from_cairo.exit208, label %bb.n

_get_pixbuf_from_cairo.exit208:                   ; preds = %bb.p, %_get_pixbuf_from_cairo.exit197
  %i.fy = tail call i32 @cairo_image_surface_get_stride(ptr noundef %i.et) #11
  %i.fz = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.ev, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef %i.fy, ptr noundef null, ptr noundef null) #11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !125
  %i.gb = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l) #11 ; 3 uses
  %i.gc = tail call ptr @cairo_create(ptr noundef %i.gb) #11 ; 3 uses
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.gc, i32 noundef 9, float noundef 1.000000e+00) #11
  tail call void @dtgtk_cairo_paint_masks_sum(ptr noundef %i.gc, i32 noundef 0, i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef 0, ptr noundef null) #11, !inline_history !121
  tail call void @cairo_destroy(ptr noundef %i.gc) #11
  %i.gd = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.gb) #11 ; 5 uses
  br i1 %.not, label %_get_pixbuf_from_cairo.exit219, label %.preheader.i.i211

.preheader.i.i211:                                ; preds = %_get_pixbuf_from_cairo.exit208
  %9 = zext i32 %i.cc to i64
  %10 = zext i32 %i.l to i64
  %flatten.tripcount.i.i206 = mul nuw i64 %9, %10
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.preheader.i.i211
  %indvars.iv.i.i213 = phi i64 [ 0, %.preheader.i.i211 ], [ %indvars.iv.next.i.i215, %bb.s ] ; 2 uses
  %i.ge = trunc i64 %indvars.iv.i.i213 to i32
  %i.gf = shl i32 %i.ge, 2                        ; 4 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg ; 3 uses
  %i.gi = or disjoint i32 %i.gf, 2
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gj ; 3 uses
  %i.gl = or disjoint i32 %i.gf, 3
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gm
  %i.go = load i8, ptr %i.gh, align 1, !tbaa !122 ; 2 uses
  %i.gp = load i8, ptr %i.gk, align 1, !tbaa !122 ; 2 uses
  store i8 %i.gp, ptr %i.gh, align 1, !tbaa !122
  store i8 %i.go, ptr %i.gk, align 1, !tbaa !122
  %i.gq = load i8, ptr %i.gn, align 1, !tbaa !122 ; 2 uses
  %.not.i.i214 = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i214, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gr = or disjoint i32 %i.gf, 1
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gs ; 2 uses
  %i.gu = uitofp i8 %i.gq to float
  %i.gv = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.gu ; 3 uses
  %i.gw = uitofp reassoc nsz arcp contract afn i8 %i.gp to float
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gv, %i.gw
  %i.gy = fptoui float %i.gx to i8
  store i8 %i.gy, ptr %i.gh, align 1, !tbaa !122
  %i.gz = load i8, ptr %i.gt, align 1, !tbaa !122
  %i.ha = uitofp reassoc nsz arcp contract afn i8 %i.gz to float
  %i.hb = fmul reassoc nsz arcp contract afn float %i.gv, %i.ha
  %i.hc = fptoui float %i.hb to i8
  store i8 %i.hc, ptr %i.gt, align 1, !tbaa !122
  %i.hd = uitofp reassoc nsz arcp contract afn i8 %i.go to float
  %i.he = fmul reassoc nsz arcp contract afn float %i.gv, %i.hd
  %i.hf = fptoui float %i.he to i8
  store i8 %i.hf, ptr %i.gk, align 1, !tbaa !122
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i.i215 = add nuw i64 %indvars.iv.i.i213, 1 ; 2 uses
  %exitcond.not.i.i216 = icmp eq i64 %indvars.iv.next.i.i215, %flatten.tripcount.i.i206
  br i1 %exitcond.not.i.i216, label %_get_pixbuf_from_cairo.exit219, label %bb.q

_get_pixbuf_from_cairo.exit219:                   ; preds = %bb.s, %_get_pixbuf_from_cairo.exit208
  %i.hg = tail call i32 @cairo_image_surface_get_stride(ptr noundef %i.gb) #11
  %i.hh = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.gd, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef %i.hg, ptr noundef null, ptr noundef null) #11
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !126
  %i.hj = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l) #11 ; 3 uses
  %i.hk = tail call ptr @cairo_create(ptr noundef %i.hj) #11 ; 3 uses
  tail call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.hk, i32 noundef 9, float noundef 1.000000e+00) #11
  tail call void @dtgtk_cairo_paint_masks_exclusion(ptr noundef %i.hk, i32 noundef 0, i32 noundef 0, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef 0, ptr noundef null) #11, !inline_history !121
  tail call void @cairo_destroy(ptr noundef %i.hk) #11
  %i.hl = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.hj) #11 ; 5 uses
  br i1 %.not, label %_get_pixbuf_from_cairo.exit230, label %.preheader.i.i222

.preheader.i.i222:                                ; preds = %_get_pixbuf_from_cairo.exit219
  %11 = zext i32 %i.cc to i64
  %12 = zext i32 %i.l to i64
  %flatten.tripcount.i.i216 = mul nuw i64 %11, %12
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.preheader.i.i222
  %indvars.iv.i.i224 = phi i64 [ 0, %.preheader.i.i222 ], [ %indvars.iv.next.i.i226, %bb.v ] ; 2 uses
  %i.hm = trunc i64 %indvars.iv.i.i224 to i32
  %i.hn = shl i32 %i.hm, 2                        ; 4 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ho ; 3 uses
  %i.hq = or disjoint i32 %i.hn, 2
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hr ; 3 uses
  %i.ht = or disjoint i32 %i.hn, 3
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hu
  %i.hw = load i8, ptr %i.hp, align 1, !tbaa !122 ; 2 uses
  %i.hx = load i8, ptr %i.hs, align 1, !tbaa !122 ; 2 uses
  store i8 %i.hx, ptr %i.hp, align 1, !tbaa !122
  store i8 %i.hw, ptr %i.hs, align 1, !tbaa !122
  %i.hy = load i8, ptr %i.hv, align 1, !tbaa !122 ; 2 uses
  %.not.i.i225 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i225, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hz = or disjoint i32 %i.hn, 1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ia ; 2 uses
  %i.ic = uitofp i8 %i.hy to float
  %i.id = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.ic ; 3 uses
  %i.ie = uitofp reassoc nsz arcp contract afn i8 %i.hx to float
  %i.if = fmul reassoc nsz arcp contract afn float %i.id, %i.ie
  %i.ig = fptoui float %i.if to i8
  store i8 %i.ig, ptr %i.hp, align 1, !tbaa !122
  %i.ih = load i8, ptr %i.ib, align 1, !tbaa !122
  %i.ii = uitofp reassoc nsz arcp contract afn i8 %i.ih to float
  %i.ij = fmul reassoc nsz arcp contract afn float %i.id, %i.ii
  %i.ik = fptoui float %i.ij to i8
  store i8 %i.ik, ptr %i.ib, align 1, !tbaa !122
  %i.il = uitofp reassoc nsz arcp contract afn i8 %i.hw to float
  %i.im = fmul reassoc nsz arcp contract afn float %i.id, %i.il
  %i.in = fptoui float %i.im to i8
  store i8 %i.in, ptr %i.hs, align 1, !tbaa !122
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.i.i226 = add nuw i64 %indvars.iv.i.i224, 1 ; 2 uses
  %exitcond.not.i.i227 = icmp eq i64 %indvars.iv.next.i.i226, %flatten.tripcount.i.i216
  br i1 %exitcond.not.i.i227, label %_get_pixbuf_from_cairo.exit230, label %bb.t

_get_pixbuf_from_cairo.exit230:                   ; preds = %bb.v, %_get_pixbuf_from_cairo.exit219
  %i.io = tail call i32 @cairo_image_surface_get_stride(ptr noundef %i.hj) #11
  %i.ip = tail call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.hl, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.cc, i32 noundef %i.l, i32 noundef %i.io, ptr noundef null, ptr noundef null) #11
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !127
  %i.ir = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_masks_gradient, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !95
  %i.it = tail call ptr @dt_action_define(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %i.ir, ptr noundef nonnull @dt_action_def_toggle) #11 ; 0 uses
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !95
  %i.iv = tail call i64 @g_signal_connect_data(ptr noundef %i.iu, ptr noundef nonnull @.str.17, ptr noundef nonnull @_bt_add_shape, ptr noundef nonnull inttoptr (i64 16 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !95
  %i.ix = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #11
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.iw, ptr noundef %i.ix) #11
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !95
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.iy, i32 noundef 0) #11
  %i.iz = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_masks_path, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !94
  %i.jb = tail call ptr @dt_action_define(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef %i.iz, ptr noundef nonnull @dt_action_def_toggle) #11 ; 0 uses
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !94
  %i.jd = tail call i64 @g_signal_connect_data(ptr noundef %i.jc, ptr noundef nonnull @.str.17, ptr noundef nonnull @_bt_add_shape, ptr noundef nonnull inttoptr (i64 2 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.je = load ptr, ptr %i.ja, align 8, !tbaa !94
  %i.jf = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #11
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.je, ptr noundef %i.jf) #11
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !94
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.jg, i32 noundef 0) #11
  %i.jh = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_masks_ellipse, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !93
  %i.jj = tail call ptr @dt_action_define(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.19, ptr noundef %i.jh, ptr noundef nonnull @dt_action_def_toggle) #11 ; 0 uses
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !93
  %i.jl = tail call i64 @g_signal_connect_data(ptr noundef %i.jk, ptr noundef nonnull @.str.17, ptr noundef nonnull @_bt_add_shape, ptr noundef nonnull inttoptr (i64 32 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !93
  %i.jn = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #11
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.jm, ptr noundef %i.jn) #11
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !93
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.jo, i32 noundef 0) #11
  %i.jp = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_masks_circle, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  store ptr %i.jp, ptr %i.f, align 8, !tbaa !92
  %i.jq = tail call ptr @dt_action_define(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.20, ptr noundef %i.jp, ptr noundef nonnull @dt_action_def_toggle) #11 ; 0 uses
  %i.jr = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.js = tail call i64 @g_signal_connect_data(ptr noundef %i.jr, ptr noundef nonnull @.str.17, ptr noundef nonnull @_bt_add_shape, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.jt = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.ju = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #11
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.jt, ptr noundef %i.ju) #11
  %i.jv = load ptr, ptr %i.f, align 8, !tbaa !92
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.jv, i32 noundef 0) #11
  %i.jw = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_masks_brush, i32 noundef 0, ptr noundef null) #11 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 5 uses
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !96
  %i.jy = tail call ptr @dt_action_define(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.21, ptr noundef %i.jw, ptr noundef nonnull @dt_action_def_toggle) #11 ; 0 uses
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !96
  %i.ka = tail call i64 @g_signal_connect_data(ptr noundef %i.jz, ptr noundef nonnull @.str.17, ptr noundef nonnull @_bt_add_shape, ptr noundef nonnull inttoptr (i64 64 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.kb = load ptr, ptr %i.jx, align 8, !tbaa !96
  %i.kc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #11
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.kb, ptr noundef %i.kc) #11
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !96
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.kd, i32 noundef 0) #11
  %i.ke = tail call ptr @gtk_tree_view_new() #11
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 8 uses
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !43
  %i.kg = tail call ptr @gtk_tree_view_column_new() #11 ; 14 uses
  tail call void @gtk_tree_view_column_set_title(ptr noundef %i.kg, ptr noundef nonnull @.str.15) #11
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !43
  %i.ki = tail call i32 @gtk_tree_view_append_column(ptr noundef %i.kh, ptr noundef %i.kg) #11 ; 0 uses
  %i.kj = tail call ptr @gtk_cell_renderer_pixbuf_new() #11 ; 3 uses
  tail call void @gtk_tree_view_column_pack_start(ptr noundef %i.kg, ptr noundef %i.kj, i32 noundef 0) #11
  tail call void (ptr, ptr, ...) @gtk_tree_view_column_set_attributes(ptr noundef %i.kg, ptr noundef %i.kj, ptr noundef nonnull @.str.22, i32 noundef 5, ptr noundef null) #11
  tail call void @gtk_tree_view_column_add_attribute(ptr noundef %i.kg, ptr noundef %i.kj, ptr noundef nonnull @.str.23, i32 noundef 6) #11
  %i.kk = tail call ptr @gtk_cell_renderer_pixbuf_new() #11 ; 3 uses
  tail call void @gtk_tree_view_column_pack_start(ptr noundef %i.kg, ptr noundef %i.kk, i32 noundef 0) #11
  tail call void (ptr, ptr, ...) @gtk_tree_view_column_set_attributes(ptr noundef %i.kg, ptr noundef %i.kk, ptr noundef nonnull @.str.22, i32 noundef 7, ptr noundef null) #11
  tail call void @gtk_tree_view_column_add_attribute(ptr noundef %i.kg, ptr noundef %i.kk, ptr noundef nonnull @.str.23, i32 noundef 8) #11
  %i.kl = tail call ptr @gtk_cell_renderer_text_new() #11 ; 6 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.kl, ptr noundef nonnull @.str.24, i32 noundef 2, ptr noundef null) #11
  tail call void @gtk_tree_view_column_pack_start(ptr noundef %i.kg, ptr noundef %i.kl, i32 noundef 1) #11
  tail call void @gtk_tree_view_column_add_attribute(ptr noundef %i.kg, ptr noundef %i.kl, ptr noundef nonnull @.str.25, i32 noundef 0) #11
  tail call void @gtk_tree_view_column_add_attribute(ptr noundef %i.kg, ptr noundef %i.kl, ptr noundef nonnull @.str.26, i32 noundef 4) #11
  %i.km = tail call i64 @g_signal_connect_data(ptr noundef %i.kl, ptr noundef nonnull @.str.27, ptr noundef nonnull @_tree_cell_edited, ptr noundef %0, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  tail call void @dt_gui_commit_on_focus_loss(ptr noundef %i.kl, ptr noundef null) #11
  %i.kn = tail call ptr @gtk_cell_renderer_pixbuf_new() #11 ; 3 uses
  tail call void @gtk_tree_view_column_pack_end(ptr noundef %i.kg, ptr noundef %i.kn, i32 noundef 0) #11
  tail call void (ptr, ptr, ...) @gtk_tree_view_column_set_attributes(ptr noundef %i.kg, ptr noundef %i.kn, ptr noundef nonnull @.str.22, i32 noundef 9, ptr noundef null) #11
  tail call void @gtk_tree_view_column_add_attribute(ptr noundef %i.kg, ptr noundef %i.kn, ptr noundef nonnull @.str.23, i32 noundef 10) #11
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !43
  %i.kp = tail call ptr @gtk_tree_view_get_selection(ptr noundef %i.ko) #11 ; 3 uses
  tail call void @gtk_tree_selection_set_mode(ptr noundef %i.kp, i32 noundef 3) #11
  tail call void @gtk_tree_selection_set_select_function(ptr noundef %i.kp, ptr noundef nonnull @_tree_restrict_select, ptr noundef nonnull %i.f, ptr noundef null) #11
  %i.kq = load ptr, ptr %i.kf, align 8, !tbaa !43
  tail call void @gtk_tree_view_set_headers_visible(ptr noundef %i.kq, i32 noundef 0) #11
  %i.kr = load ptr, ptr %i.kf, align 8, !tbaa !43
  tail call void @gtk_widget_set_has_tooltip(ptr noundef %i.kr, i32 noundef 1) #11
  %i.ks = load ptr, ptr %i.kf, align 8, !tbaa !43
  %i.kt = tail call i64 @g_signal_connect_data(ptr noundef %i.ks, ptr noundef nonnull @.str.28, ptr noundef nonnull @_tree_query_tooltip, ptr noundef null, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.ku = tail call i64 @g_signal_connect_data(ptr noundef %i.kp, ptr noundef nonnull @.str.29, ptr noundef nonnull @_tree_selection_change, ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.kv = load ptr, ptr %i.kf, align 8, !tbaa !43
  %i.kw = tail call i64 @g_signal_connect_data(ptr noundef %i.kv, ptr noundef nonnull @.str.17, ptr noundef nonnull @_tree_button_pressed, ptr noundef %0, ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %i.kx = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #11
  %i.ky = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #11
  %i.kz = tail call ptr @gtk_label_new(ptr noundef %i.ky) #11 ; 3 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.kz, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull @.str.66, double noundef 0.000000e+00, ptr noundef nonnull @.str.24, i32 noundef 3, ptr noundef null) #11
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.kz, i32 noundef 1) #11
  store ptr %i.kz, ptr %i.a, align 8, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lb = load ptr, ptr %i.jx, align 8, !tbaa !96
  store ptr %i.lb, ptr %i.la, align 8, !tbaa !21
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ld = load <4 x ptr>, ptr %i.f, align 8, !tbaa !128
  %i.le = shufflevector <4 x ptr> %i.ld, <4 x ptr> poison, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  store <4 x ptr> %i.le, ptr %i.lc, align 8, !tbaa !21
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.lf, align 8, !tbaa !21
  %i.lg = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1921, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.kx, ptr noundef nonnull %i.a) #11
  %i.lh = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #11
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !21
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lj = load ptr, ptr %i.kf, align 8, !tbaa !43
  %i.lk = call ptr @dt_ui_resize_wrap(ptr noundef %i.lj, i32 noundef 200, ptr noundef nonnull @.str.32) #11
  store ptr %i.lk, ptr %i.li, align 8, !tbaa !21
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ll, align 8, !tbaa !21
  %i.lm = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1928, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.lh, ptr noundef nonnull %i.b) #11
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !129
  %i.lo = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.lp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #11
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !129
  call void @dt_gui_new_collapsible_section(ptr noundef nonnull %i.lo, ptr noundef nonnull @.str.33, ptr noundef %i.lp, ptr noundef %i.lq, ptr noundef %0) #11
  %i.lr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #11
  %i.ls = call ptr @gtk_label_new(ptr noundef %i.lr) #11 ; 3 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.ls, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull @.str.66, double noundef 0.000000e+00, ptr noundef nonnull @.str.24, i32 noundef 3, ptr noundef null) #11
  %i.lt = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !130
  %i.lu = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 6 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !131
  store ptr %i.ls, ptr %i.c, align 8, !tbaa !21
  %i.lw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.lw, align 8, !tbaa !21
  %i.lx = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1937, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.lv, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.ly = load ptr, ptr %i.lu, align 8, !tbaa !131
  call void @gtk_widget_show_all(ptr noundef %i.ly) #11
  %i.lz = load ptr, ptr %i.lu, align 8, !tbaa !131
  call void @gtk_widget_set_no_show_all(ptr noundef %i.lz, i32 noundef 1) #11
  %i.ma = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.mb = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.w

.peel.next:                                       ; preds = %bb.y
  %i.md = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #11
  %i.me = call ptr @gtk_check_button_new_with_label(ptr noundef %i.md) #11 ; 5 uses
  %i.mf = call ptr @dt_action_define(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.14, ptr noundef %i.me, ptr noundef nonnull @dt_action_def_toggle) #11 ; 0 uses
  %i.mg = call i32 @gtk_toggle_button_get_active(ptr noundef %i.me) #11
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %i.mg to float
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 236
  store float %i.mh, ptr %i.mi, align 4, !tbaa !132
  %i.mj = call i64 @g_signal_connect_data(ptr noundef %i.me, ptr noundef nonnull @.str.36, ptr noundef nonnull @_property_changed, ptr noundef nonnull inttoptr (i64 9 to ptr), ptr noundef null, i32 noundef 0) #11 ; 0 uses
  %.pre235 = load ptr, ptr %i.lu, align 8, !tbaa !131
  %i.mk = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  store ptr %i.me, ptr %i.mk, align 8, !tbaa !128
  store ptr %i.me, ptr %i.d, align 8, !tbaa !21
  store ptr inttoptr (i64 -1 to ptr), ptr %i.mc, align 8, !tbaa !21
  %i.ml = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1970, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %.pre235, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.mm = call ptr @dt_gui_preferences_enum(ptr noundef %0, ptr noundef nonnull @.str.38) #11 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.f, i64 184 ; 2 uses
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !133
  %i.mo = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.mm, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.39) #11 ; 0 uses
  %i.mp = call ptr @dt_gui_preferences_enum(ptr noundef %0, ptr noundef nonnull @.str.40) #11 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store ptr %i.mp, ptr %i.mq, align 8, !tbaa !134
  %i.mr = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.mp, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.13) #11 ; 0 uses
  %i.ms = load ptr, ptr %i.lu, align 8, !tbaa !131
  %i.mt = load <2 x ptr>, ptr %i.mn, align 8, !tbaa !128
  store <2 x ptr> %i.mt, ptr %i.e, align 16, !tbaa !21
  %i.mu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.mu, align 16, !tbaa !21
  %i.mv = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.30, i32 noundef 1977, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ms, ptr noundef nonnull %i.e) #11 ; 0 uses
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !97 ; 5 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 2344
  store ptr %0, ptr %i.mx, align 8, !tbaa !135
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 2352
  store ptr @_lib_masks_recreate_list, ptr %i.my, align 8, !tbaa !162
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 2368
  store ptr @_lib_masks_update_list, ptr %i.mz, align 8, !tbaa !163
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 2360
  store ptr @_lib_masks_remove_item, ptr %i.na, align 8, !tbaa !164
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 2376
  store ptr @_lib_masks_selection_change, ptr %i.nb, align 8, !tbaa !165
  ret void

bb.w:                                             ; preds = %bb.y, %_get_pixbuf_from_cairo.exit230
  %indvars.iv = phi i64 [ 0, %_get_pixbuf_from_cairo.exit230 ], [ %indvars.iv.next, %bb.y ] ; 6 uses
  %i.nc = getelementptr inbounds nuw [32 x i8], ptr @_masks_properties, i64 %indvars.iv ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.ne = load float, ptr %i.nd, align 16, !tbaa !166
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 20
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !168
  %i.nh = call ptr @dt_bauhaus_slider_new_action(ptr noundef %0, float noundef %i.ne, float noundef %i.ng, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef 2) #11 ; 8 uses
  %i.ni = load ptr, ptr %i.nc, align 16, !tbaa !169
  %i.nj = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.nh, ptr noundef nonnull @.str.34, ptr noundef %i.ni) #11 ; 0 uses
end_hunk_0
