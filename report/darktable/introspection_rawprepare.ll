Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawprepare?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@cleanup_global:bb.a
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !148 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = and i32 %i.h, 557056                     ; 2 uses
  %.not54 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not54, label %.loopexit41, label %.loopexit41.thread

.loopexit41.thread:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load <4 x i16>, ptr %i.j, align 2, !tbaa !91
  %i.l = zext <4 x i16> %i.k to <4 x i32>
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.l)
  %op.rdx = add nuw nsw i32 %i.m, 2
  %i.n = lshr i32 %op.rdx, 2
  %i.o = uitofp nsz nneg i32 %i.n to float        ; 4 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.p, float noundef %i.o) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.r, float noundef %i.o) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.o) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.v, float noundef %i.o) #21
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !116
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 1540
  %.pre52 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !150
  %i.w = and i32 %.pre52, 131072
  br label %.loopexit

.loopexit41:                                      ; preds = %bb.a
  %i.x = and i32 %i.h, 131072                     ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit41
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !91
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ac, float noundef 0.000000e+00) #21
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !91
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !151
  %i.ai = load i16, ptr %i.z, align 4, !tbaa !91
  %i.aj = uitofp reassoc nsz arcp contract afn i16 %i.ai to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.aj) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !91
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !151
  %i.ap = load i16, ptr %i.z, align 4, !tbaa !91
  %i.aq = uitofp reassoc nsz arcp contract afn i16 %i.ap to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ao, float noundef %i.aq) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !91
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !151
  %i.aw = load i16, ptr %i.z, align 4, !tbaa !91
  %i.ax = uitofp reassoc nsz arcp contract afn i16 %i.aw to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.av, float noundef %i.ax) #21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h, %.loopexit41.thread, %.loopexit41
  %i.ay = phi i32 [ %i.w, %.loopexit41.thread ], [ %i.x, %.loopexit41 ], [ 1, %bb.h ], [ 1, %bb.g ]
  %i.az = zext i1 %.not54 to i32                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !151
  tail call void @gtk_widget_set_visible(ptr noundef %i.bb, i32 noundef %i.az) #21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !151
  tail call void @gtk_widget_set_visible(ptr noundef %i.bd, i32 noundef %i.az) #21
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !151
  %i.bg = or disjoint i32 %i.ay, %i.i
  %.not = icmp eq i32 %i.bg, 0
  %i.bh = zext i1 %.not to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.bf, i32 noundef %i.bh) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !153
  %.val = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.bk = tail call fastcc i32 @_check_gain_maps(ptr %.val, ptr noundef null)
  tail call void @gtk_widget_set_visible(ptr noundef %i.bj, i32 noundef %i.bk) #21
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !153
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !139
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.bl, i32 noundef %i.bn) #21
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #2

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !148 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = and i32 %i.h, 557056
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %.loopexit.thread, label %.thread

.loopexit.thread:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i16, ptr %i.l, align 4, !tbaa !91
  %i.n = uitofp i16 %i.m to float                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.p, float noundef %i.n) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.r, float noundef %i.n) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.n) #21
  br label %.thread

.loopexit:                                        ; preds = %bb.a
  %i.u = and i32 %i.h, 131072
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !151
  %i.x = icmp eq ptr %1, %i.w
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !151
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !151
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = load <2 x i16>, ptr %i.ae, align 4, !tbaa !91
  %i.ag = uitofp reassoc nsz arcp contract afn <2 x i16> %i.af to <2 x float>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !91
  %i.aj = uitofp reassoc nsz arcp contract afn i16 %i.ai to float
  %i.ak = tail call reassoc nnan nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.aj, <2 x float> %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151
  %i.an = fmul reassoc nnan nsz arcp contract afn float %i.ak, f0x3EAAAAAB
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.an)
  %i.ap = fptoui float %i.ao to i16
  %i.aq = uitofp reassoc nsz arcp contract afn i16 %i.ap to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.am, float noundef %i.aq) #21
  br label %.thread

.thread:                                          ; preds = %.loopexit.thread, %bb.b, %bb.e, %bb.f, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 2 uses
  %i.b = alloca [2 x ptr], align 8                ; 3 uses
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 80) #21 ; 15 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.c, ptr %i.d, align 16, !tbaa !148
  %i.e = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #21
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !13
  %i.f = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.8, i32 noundef 886, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !146
  %i.h = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 0) #21 ; 2 uses
  %i.i = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.h) #21 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !151
  %i.j = load ptr, ptr @black_label, align 16, !tbaa !224
  %i.k = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.i, ptr noundef null, ptr noundef %i.j) #21 ; 0 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.m = load ptr, ptr @black_label, align 16, !tbaa !224
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef %i.m, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.l, ptr noundef %i.n) #21
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.o, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.h) #21
  %i.p = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 1) #21 ; 2 uses
  %i.q = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.p) #21 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !151
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 8), align 8, !tbaa !224
  %i.t = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.q, ptr noundef null, ptr noundef %i.s) #21 ; 0 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !151
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 8), align 8, !tbaa !224
  %i.w = call ptr @dcgettext(ptr noundef null, ptr noundef %i.v, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.u, ptr noundef %i.w) #21
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.x, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.p) #21
  %i.y = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 2) #21 ; 2 uses
  %i.z = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.y) #21 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !151
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 16), align 16, !tbaa !224
  %i.ac = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.z, ptr noundef null, ptr noundef %i.ab) #21 ; 0 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !151
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 16), align 16, !tbaa !224
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef %i.ae, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ad, ptr noundef %i.af) #21
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.ag, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.y) #21
  %i.ah = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.20, i32 noundef 3) #21 ; 2 uses
  %i.ai = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef %i.ah) #21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !151
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 24), align 8, !tbaa !224
  %i.al = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ai, ptr noundef null, ptr noundef %i.ak) #21 ; 0 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !151
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @black_label, i64 24), align 8, !tbaa !224
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef %i.an, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.am, ptr noundef %i.ao) #21
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !151
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.ap, float noundef 1.638400e+04) #21
  call void @g_free(ptr noundef %i.ah) #21
  %i.aq = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.21) #21 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !225
  %i.as = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aq, ptr noundef %i.as) #21
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !225
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.at, float noundef 1.638400e+04) #21
  %i.au = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.23) #21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.au, ptr %i.av, align 8, !tbaa !153
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.au, ptr noundef %i.aw) #21
  %i.ax = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.25) #21
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.az = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.26, i64 noundef 8) #21
  %i.ba = call ptr @gtk_label_new(ptr noundef %i.az) #21 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ba, i32 noundef 0) #21
  call void @gtk_label_set_xalign(ptr noundef %i.ba, float noundef 5.000000e-01) #21
  call void @gtk_label_set_ellipsize(ptr noundef %i.ba, i32 noundef 3) #21
  call void @dt_gui_add_class(ptr noundef %i.ba, ptr noundef nonnull @.str.45) #21
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bb, align 8, !tbaa !13
  %i.bc = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.8, i32 noundef 911, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ay, ptr noundef nonnull %i.b) #21 ; 0 uses
  %i.bd = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #21 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !226
  %i.bf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bd, ptr noundef %i.bf) #21
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !226
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bg, float noundef 2.560000e+02) #21
  %i.bh = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #21 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !227
  %i.bj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bh, ptr noundef %i.bj) #21
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !227
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bk, float noundef 2.560000e+02) #21
  %i.bl = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #21 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !228
  %i.bn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bl, ptr noundef %i.bn) #21
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !228
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bo, float noundef 2.560000e+02) #21
  %i.bp = call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #21 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !229
  %i.br = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bp, ptr noundef %i.br) #21
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !229
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.bs, float noundef 2.560000e+02) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_iop_gui_alloc.exit
  %i.bt = call ptr @gtk_stack_new() #21           ; 2 uses
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !146
  call void @gtk_stack_set_homogeneous(ptr noundef %i.bt, i32 noundef 0) #21
  %i.bu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #21
  %i.bv = call ptr @gtk_label_new(ptr noundef %i.bu) #21 ; 2 uses
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.bv, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef nonnull @.str.47, double noundef 0.000000e+00, ptr noundef nonnull @.str.48, i32 noundef 3, ptr noundef null) #21
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !146
  call void @gtk_stack_add_named(ptr noundef %i.bw, ptr noundef %i.bv, ptr noundef nonnull @.str.10) #21
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !146
  call void @gtk_stack_add_named(ptr noundef %i.bx, ptr noundef %i.f, ptr noundef nonnull @.str.9) #21
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_stack_new() local_unnamed_addr #2

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !232
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader
end_hunk_0
