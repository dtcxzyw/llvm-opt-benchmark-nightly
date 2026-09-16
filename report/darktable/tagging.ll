Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tagging?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
begin_hunk_0_@gui_update:bb.a
  %i.y = zext i1 %i.x to i32
  call void @gtk_widget_set_sensitive(ptr noundef %i.v, i32 noundef %i.y) #16
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 1064
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = select i1 %i.t, i1 %.0.i, i1 false
  %i.ac = zext i1 %i.ab to i32
  call void @gtk_widget_set_sensitive(ptr noundef %i.aa, i32 noundef %i.ac) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_init_treeview(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct._GtkTreeIter, align 8       ; 7 uses
  %3 = alloca %struct._GtkTreeIter, align 8       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %4 = alloca %struct._GtkTreeIter, align 8       ; 5 uses
  %5 = alloca %struct._GtkTreeIter, align 8       ; 7 uses
  %6 = alloca %struct._GtkTreeIter, align 8       ; 8 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = icmp eq i32 %1, 0                        ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @dt_control_get_mouse_over_id() #16 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (...) @dt_selected_images_count() #16
  %.fr = freeze i32 %i.i
  %i.j = icmp ne i32 %.fr, 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1192 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1196
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %.not157 = icmp eq i32 %i.n, 0
  br i1 %.not157, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @dt_tag_get_suggestions(ptr noundef nonnull %i.b) #16
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.p = call i32 @dt_tag_get_with_usage(ptr noundef nonnull %i.b) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0148 = phi i32 [ %i.p, %bb.g ], [ %i.o, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = load i32, ptr %i.k, align 8, !tbaa !36
  %.not158 = icmp eq i32 %i.s, 0
  %.0145.in.v = select i1 %.not158, i64 1144, i64 1152
  %.0145.in = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0145.in.v
  %.0145 = load ptr, ptr %.0145.in, align 8, !tbaa !38 ; 14 uses
  %i.t = call ptr @g_object_ref(ptr noundef %.0145) #16 ; 0 uses
  call void @gtk_tree_view_set_model(ptr noundef %i.r, ptr noundef null) #16
  %i.u = load i32, ptr %i.k, align 8, !tbaa !36
  %.not159 = icmp eq i32 %i.u, 0
  %.259 = select i1 %.not159, i64 1160, i64 1168
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %.259
  store ptr null, ptr %i.v, align 8, !tbaa !39
  call void @gtk_tree_sortable_set_sort_column_id(ptr noundef %.0145, i32 noundef -2, i32 noundef 0) #16
  %i.w = load i32, ptr %i.k, align 8, !tbaa !36
  %.not162 = icmp eq i32 %i.w, 0
  br i1 %.not162, label %bb.y, label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.c
  %i.x = phi i1 [ false, %bb.b ], [ %i.j, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 1208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !40
  %.not160 = icmp eq i32 %i.z, 0
  %i.aa = zext i1 %.not160 to i32
  %i.ab = call i32 @dt_tag_get_attached(i32 noundef %i.g, ptr noundef nonnull %i.b, i32 noundef %i.aa) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 1040
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30 ; 3 uses
  %i.ae = call ptr @gtk_tree_view_get_model(ptr noundef %i.ad) #16 ; 4 uses
  %i.af = call ptr @g_object_ref(ptr noundef %i.ae) #16 ; 0 uses
  call void @gtk_tree_view_set_model(ptr noundef %i.ad, ptr noundef null) #16
  call void @gtk_tree_sortable_set_sort_column_id(ptr noundef %i.ae, i32 noundef -2, i32 noundef 0) #16
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  call void @gtk_tree_store_clear(ptr noundef %.0145) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ah = call ptr @dt_sort_tag(ptr noundef %i.ag, i32 noundef 0) #16 ; 3 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !35
  %.not167216 = icmp eq ptr %i.ah, null
  br i1 %.not167216, label %._crit_edge222, label %.lr.ph221

._crit_edge222:                                   ; preds = %bb.w, %bb.j
  %.0140.lcssa = phi ptr [ null, %bb.j ], [ %.2142, %bb.w ]
  call void @g_strfreev(ptr noundef %.0140.lcssa) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ai = call ptr @gtk_tree_model_filter_new(ptr noundef %.0145, ptr noundef null) #16 ; 4 uses
  call void @gtk_tree_model_filter_set_visible_column(ptr noundef %i.ai, i32 noundef 7) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1168
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !41
  %i.ak = load i8, ptr %i.e, align 8, !tbaa !42
  %.not168 = icmp eq i8 %i.ak, 0
  br i1 %.not168, label %bb.ah, label %bb.x

.lr.ph221:                                        ; preds = %bb.j, %bb.w
  %.0136219 = phi ptr [ %i.cn, %bb.w ], [ %i.ah, %bb.j ] ; 4 uses
  %.0137218 = phi i32 [ %.2139, %bb.w ], [ 0, %bb.j ] ; 4 uses
  %.0140217 = phi ptr [ %.2142, %bb.w ], [ null, %bb.j ] ; 5 uses
  %i.al = load ptr, ptr %.0136219, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.w, label %bb.k

bb.k:                                             ; preds = %.lr.ph221
  %i.ap = call ptr @g_strsplit(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.64, i32 noundef -1) #16 ; 8 uses
  %.not169 = icmp eq ptr %i.ap, null
  br i1 %.not169, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !48
  %i.aq = call i32 @g_strv_length(ptr noundef nonnull %i.ap) #16 ; 2 uses
  %.not170 = icmp eq ptr %.0140217, null          ; 2 uses
  br i1 %.not170, label %.loopexit198.thread, label %.preheader199

.loopexit198.thread:                              ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !49
  br label %._crit_edge

.preheader199:                                    ; preds = %bb.l
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %.not171200 = icmp eq ptr %i.ar, null
  br i1 %.not171200, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader199, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader199 ] ; 4 uses
  %i.as = phi ptr [ %i.ax, %bb.n ], [ %i.ar, %.preheader199 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.0140217, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %.not172 = icmp eq ptr %i.au, null
  br i1 %.not172, label %.critedge.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.av = call i32 @g_strcmp0(ptr noundef nonnull %i.as, ptr noundef nonnull %i.au) #16
  %.not173 = icmp eq i32 %i.av, 0
  br i1 %.not173, label %bb.n, label %.critedge.loopexit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %.not171 = icmp eq ptr %i.ax, null
  br i1 %.not171, label %.critedge.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %.lr.ph, %bb.n, %bb.m
  %.0135.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.m ], [ %indvars.iv.next, %bb.n ], [ %indvars.iv, %.lr.ph ]
  %.0135.lcssa.ph = trunc i64 %.0135.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader199
  %.0135.lcssa = phi i32 [ 0, %.preheader199 ], [ %.0135.lcssa.ph, %.critedge.loopexit ] ; 5 uses
  %i.ay = icmp slt i32 %.0135.lcssa, %.0137218
  br i1 %i.ay, label %.lr.ph207, label %.loopexit198

.lr.ph207:                                        ; preds = %.critedge, %.lr.ph207
  %.0134206 = phi i32 [ %i.ba, %.lr.ph207 ], [ %.0135.lcssa, %.critedge ]
  %i.az = call i32 @gtk_tree_model_iter_parent(ptr noundef %.0145, ptr noundef nonnull %6, ptr noundef nonnull %5) #16 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !48
  %i.ba = add nsw i32 %.0134206, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %.0137218
  br i1 %exitcond.not, label %.loopexit198, label %.lr.ph207

.loopexit198:                                     ; preds = %.lr.ph207, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !49
  %.not225 = icmp eq i32 %.0135.lcssa, 0
  br i1 %.not225, label %._crit_edge, label %.lr.ph209.preheader

.lr.ph209.preheader:                              ; preds = %.loopexit198
  %wide.trip.count = zext i32 %.0135.lcssa to i64 ; 2 uses
  br label %.lr.ph209

._crit_edge:                                      ; preds = %.lr.ph209, %.loopexit198, %.loopexit198.thread
  %.1255 = phi i32 [ 0, %.loopexit198 ], [ 0, %.loopexit198.thread ], [ %.0135.lcssa, %.lr.ph209 ]
  %.pre-phi = phi i64 [ 0, %.loopexit198 ], [ 0, %.loopexit198.thread ], [ %wide.trip.count, %.lr.ph209 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.pre-phi ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 2 uses
  %.not174210 = icmp eq ptr %i.bc, null
  br i1 %.not174210, label %._crit_edge215, label %.lr.ph214

.lr.ph214:                                        ; preds = %._crit_edge
  %i.bd = sext i32 %i.aq to i64
  %i.be = getelementptr [8 x i8], ptr %i.ap, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  br label %g_strdup_inline.exit

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %.lr.ph209
  %indvars.iv228 = phi i64 [ 0, %.lr.ph209.preheader ], [ %indvars.iv.next229, %.lr.ph209 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv228
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.65, ptr noundef %i.bh) #16
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count
  br i1 %exitcond232.not, label %._crit_edge, label %.lr.ph209

._crit_edge215:                                   ; preds = %bb.t, %._crit_edge
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !49
  call void @g_free(ptr noundef %i.bi) #16
  br i1 %.not170, label %bb.v, label %bb.u

g_strdup_inline.exit:                             ; preds = %.lr.ph214, %bb.t
  %i.bj = phi ptr [ %i.bc, %.lr.ph214 ], [ %i.cl, %bb.t ]
  %.0132212 = phi ptr [ %i.bb, %.lr.ph214 ], [ %i.ck, %bb.t ] ; 3 uses
  %.2211 = phi i32 [ %.1255, %.lr.ph214 ], [ %i.cj, %bb.t ] ; 2 uses
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.bj) #16
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.bl = call noalias ptr @g_strdup(ptr noundef %i.bk) #16 ; 4 uses
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #17
  %i.bn = getelementptr i8, ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  store i8 0, ptr %i.bo, align 1, !tbaa !42
  %.not175 = icmp eq i32 %.2211, 0
  %. = select i1 %.not175, ptr null, ptr %6
  %i.bp = load ptr, ptr %.0132212, align 8, !tbaa !49
  %i.bq = icmp eq ptr %.0132212, %i.bf
  %.pre = load ptr, ptr %.0136219, align 8, !tbaa !44 ; 5 uses
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %g_strdup_inline.exit
  %i.br = load i32, ptr %.pre, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !155
  br label %bb.p

bb.p:                                             ; preds = %g_strdup_inline.exit, %bb.o
  %i.bu = phi i32 [ %i.br, %bb.o ], [ 0, %g_strdup_inline.exit ]
  %i.bv = phi i32 [ %i.bt, %bb.o ], [ 0, %g_strdup_inline.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !156
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !157
  call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %.0145, ptr noundef nonnull %4, ptr noundef %., i32 noundef -1, i32 noundef 0, ptr noundef %i.bp, i32 noundef 1, i32 noundef %i.bu, i32 noundef 2, ptr noundef nonnull %i.bl, i32 noundef 4, i32 noundef %i.bv, i32 noundef 5, i32 noundef %i.bx, i32 noundef 6, i32 noundef %i.bz, i32 noundef 3, ptr noundef %i.cb, i32 noundef 7, i32 noundef 1, i32 noundef -1) #16
  %i.cc = load ptr, ptr %.0136219, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !51
  %.not176 = icmp eq i32 %i.ce, 0
  br i1 %.not176, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !48
  %i.cf = call i32 @gtk_tree_model_iter_parent(ptr noundef %.0145, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %.not4.i = icmp eq i32 %i.cf, 0
  br i1 %.not4.i, label %_propagate_sel_to_parents.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.s
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %.0145, ptr noundef nonnull %2, i32 noundef 5, ptr noundef nonnull %i.a, i32 noundef -1) #16
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !47
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %.0145, ptr noundef nonnull %2, i32 noundef 5, i32 noundef 1, i32 noundef -1) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !48
  %i.ci = call i32 @gtk_tree_model_iter_parent(ptr noundef %.0145, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %.not.i178 = icmp eq i32 %i.ci, 0
  br i1 %.not.i178, label %_propagate_sel_to_parents.exit, label %.lr.ph.i

_propagate_sel_to_parents.exit:                   ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.t

bb.t:                                             ; preds = %_propagate_sel_to_parents.exit, %bb.p
  %i.cj = add nuw nsw i32 %.2211, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !48
  call void @g_free(ptr noundef nonnull %i.bl) #16
  %i.ck = getelementptr inbounds nuw i8, ptr %.0132212, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 2 uses
  %.not174 = icmp eq ptr %i.cl, null
  br i1 %.not174, label %._crit_edge215, label %g_strdup_inline.exit

bb.u:                                             ; preds = %._crit_edge215
  call void @g_strfreev(ptr noundef nonnull %.0140217) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.k, %bb.v, %.lr.ph221
  %.2142 = phi ptr [ %.0140217, %.lr.ph221 ], [ %i.ap, %bb.v ], [ %.0140217, %bb.k ] ; 2 uses
  %.2139 = phi i32 [ %.0137218, %.lr.ph221 ], [ %i.aq, %bb.v ], [ %.0137218, %bb.k ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0136219, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !52 ; 2 uses
  %.not167 = icmp eq ptr %i.cn, null
  br i1 %.not167, label %._crit_edge222, label %.lr.ph221

bb.x:                                             ; preds = %._crit_edge222
  call void @gtk_tree_model_foreach(ptr noundef %.0145, ptr noundef nonnull @_set_matching_tag_visibility, ptr noundef %0) #16
  call void @gtk_tree_model_foreach(ptr noundef %.0145, ptr noundef nonnull @_tree_reveal_func, ptr noundef null) #16
  br label %bb.ah

bb.y:                                             ; preds = %bb.i, %bb.h
  %.0143194 = phi i1 [ true, %bb.h ], [ %i.x, %bb.i ]
  %.0144192 = phi ptr [ null, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %.1146190 = phi ptr [ %.0145, %bb.h ], [ %i.ae, %bb.i ] ; 6 uses
  %.0147188 = phi ptr [ %i.r, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %.1149186 = phi i32 [ %.0148, %bb.h ], [ %i.ab, %bb.i ]
  call void @gtk_list_store_clear(ptr noundef %.1146190) #16
  %i.co = icmp ne i32 %.1149186, 0
  %i.cp = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.cq = icmp ne ptr %i.cp, null
  %or.cond = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.y
  br i1 %.0143194, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.ab
  %.0224.us = phi ptr [ %i.dm, %bb.ab ], [ %i.cp, %.preheader ] ; 4 uses
  %i.cr = load ptr, ptr %.0224.us, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46
  %i.cu = call ptr @g_strrstr(ptr noundef %i.ct, ptr noundef nonnull @.str.64) #16 ; 2 uses
  %.not165.us = icmp eq ptr %i.cu, null
  br i1 %.not165.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %.pre235 = load ptr, ptr %.0224.us, align 8, !tbaa !44 ; 2 uses
  %.phi.trans.insert236 = getelementptr inbounds nuw i8, ptr %.pre235, i64 8
  %.pre237 = load ptr, ptr %.phi.trans.insert236, align 8, !tbaa !46
  br label %bb.ab

bb.aa:                                            ; preds = %.preheader.split.us
  %i.cw = load ptr, ptr %.0224.us, align 8, !tbaa !44 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !46 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cz = phi ptr [ %i.cy, %bb.aa ], [ %.pre237, %bb.z ]
  %i.da = phi ptr [ %i.cw, %bb.aa ], [ %.pre235, %bb.z ] ; 5 uses
  %i.db = phi ptr [ %i.cy, %bb.aa ], [ %i.cv, %bb.z ]
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !155
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !156
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !157
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %.1146190, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef %i.db, i32 noundef 1, i32 noundef %i.dc, i32 noundef 2, ptr noundef %i.cz, i32 noundef 4, i32 noundef %i.de, i32 noundef 5, i32 noundef %i.dg, i32 noundef 6, i32 noundef %i.di, i32 noundef 3, ptr noundef %i.dk, i32 noundef 7, i32 noundef 1, i32 noundef -1) #16
  %i.dl = getelementptr inbounds nuw i8, ptr %.0224.us, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !52 ; 2 uses
  %.not163.us = icmp eq ptr %i.dm, null
  br i1 %.not163.us, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.ae
  %.0224 = phi ptr [ %i.eg, %bb.ae ], [ %i.cp, %.preheader ] ; 4 uses
  %i.dn = load ptr, ptr %.0224, align 8, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !46
  %i.dq = call ptr @g_strrstr(ptr noundef %i.dp, ptr noundef nonnull @.str.64) #16 ; 2 uses
  %.not165 = icmp eq ptr %i.dq, null
  br i1 %.not165, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.split
  %i.dr = load ptr, ptr %.0224, align 8, !tbaa !44 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !46 ; 2 uses
  br label %bb.ae

bb.ad:                                            ; preds = %.preheader.split
end_hunk_0
