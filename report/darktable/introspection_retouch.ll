Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@gui_changed:bb.a
  %i.j = atomicrmw add ptr %i.i, i32 1 seq_cst, align 4 ; 0 uses
  tail call fastcc void @rt_show_hide_controls(ptr noundef nonnull %0)
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = atomicrmw sub ptr %i.l, i32 1 seq_cst, align 4 ; 0 uses
  br label %rt_get_selected_shape_index.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2888
  %i.p = load i32, ptr %i.o, align 8, !tbaa !105  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.i.i, label %rt_get_selected_shape_index.exit.thread

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw [44 x i8], ptr %i.b, i64 %indvars.iv.i.i ; 6 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !106
  %i.t = icmp ne i32 %i.s, %i.p                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.u = icmp samesign ult i64 %indvars.iv.i.i, 299
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.preheader.i.i, label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.preheader.i.i
  br i1 %i.t, label %rt_get_selected_shape_index.exit.thread, label %rt_get_selected_shape_index.exit

rt_get_selected_shape_index.exit:                 ; preds = %.loopexit.loopexit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !107
  switch i32 %i.x, label %rt_get_selected_shape_index.exit.thread [
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %rt_get_selected_shape_index.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 13228
  %i.z = load i32, ptr %i.y, align 4, !tbaa !133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 13232
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store float %i.ac, ptr %i.ad, align 4, !tbaa !15
  br label %rt_get_selected_shape_index.exit.thread

bb.e:                                             ; preds = %rt_get_selected_shape_index.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 13236
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 13252
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store float %i.ai, ptr %i.aj, align 4, !tbaa !138
  br label %rt_get_selected_shape_index.exit.thread

rt_get_selected_shape_index.exit.thread:          ; preds = %.loopexit.loopexit.i.i, %bb.c, %bb.e, %bb.d, %rt_get_selected_shape_index.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rt_show_hide_controls(ptr nofree noundef readonly captures(address) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143
  %i.l = icmp eq ptr %i.k, %0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.l, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 13200
  %i.o = load i32, ptr %i.n, align 4, !tbaa !144
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 280 ; 4 uses
  switch i32 %i.o, label %bb.j [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @gtk_widget_hide(ptr noundef %i.q) #27
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146
  tail call void @gtk_widget_hide(ptr noundef %i.s) #27
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @gtk_widget_show(ptr noundef %i.q) #27
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !146
  tail call void @gtk_widget_hide(ptr noundef %i.t) #27
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  tail call void @gtk_widget_hide(ptr noundef %i.q) #27
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !146
  tail call void @gtk_widget_show(ptr noundef %i.u) #27
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 13236
  %i.w = load i32, ptr %i.v, align 4, !tbaa !136
  %i.x = icmp eq i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !147  ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @gtk_widget_show(ptr noundef %i.z) #27
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  tail call void @gtk_widget_hide(ptr noundef %i.z) #27
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  tail call void @gtk_widget_hide(ptr noundef %i.q) #27
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !146
  tail call void @gtk_widget_hide(ptr noundef %i.aa) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !148
  %.not23 = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !149 ; 2 uses
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @gtk_widget_show(ptr noundef %i.ae) #27
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @gtk_widget_hide(ptr noundef %i.ae) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2888
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !105
  %i.ai = tail call ptr @dt_masks_get_from_id(ptr noundef %i.af, i32 noundef %i.ah) #27
  %i.aj = icmp eq ptr %i.ai, null
  %or.cond = select i1 %i.aj, i1 true, i1 %i.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !129 ; 2 uses
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @gtk_widget_show(ptr noundef %i.al) #27
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @gtk_widget_hide(ptr noundef %i.al) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define void @masks_selection_changed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #27 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 8 uses
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !36  ; 12 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = atomicrmw add ptr %i.i, i32 1 seq_cst, align 4 ; 0 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2888
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105  ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader.i.i.i, label %rt_get_selected_shape_index.exit.thread.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader.i.i.i ], [ 0, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw [44 x i8], ptr %i.f, i64 %indvars.iv.i.i.i ; 7 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !106
  %i.q = icmp ne i32 %i.p, %i.m                   ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.r = icmp samesign ult i64 %indvars.iv.i.i.i, 299
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.preheader.i.i.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.preheader.i.i.i
  %3 = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  br i1 %i.q, label %rt_get_selected_shape_index.exit.thread.i, label %rt_get_selected_shape_index.exit.i

rt_get_selected_shape_index.exit.i:               ; preds = %.loopexit.loopexit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !117 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %rt_get_shape_opacity.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rt_get_selected_shape_index.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !120
  %i.z = tail call ptr @dt_masks_get_from_id(ptr noundef %i.w, i32 noundef %i.y) #27 ; 3 uses
  %.not22.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not22.i.i.i, label %rt_get_shape_opacity.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !123
  %i.ac = and i32 %i.ab, 4
  %.not23.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not23.i.i.i, label %rt_get_shape_opacity.exit.thread.i, label %.preheader.i.i78.i

.preheader.i.i78.i:                               ; preds = %bb.d
  %.026.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %.not2427.i.i.i = icmp eq ptr %.026.i.i.i, null
  br i1 %.not2427.i.i.i, label %rt_get_shape_opacity.exit.thread.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 8
  %.0.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not24.i.i.i, label %rt_get_shape_opacity.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i78.i, %bb.e
  %.028.i.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.026.i.i.i, %.preheader.i.i78.i ] ; 2 uses
  %i.ae = load ptr, ptr %.028.i.i.i, align 8, !tbaa !126 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !128
  %.not25.i.i.i = icmp eq i32 %i.af, %i.m
  br i1 %.not25.i.i.i, label %rt_get_shape_opacity.exit.i, label %bb.e

rt_get_shape_opacity.exit.i:                      ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !130 ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ult float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %rt_get_shape_opacity.exit.thread.i

rt_get_shape_opacity.exit.thread.i:               ; preds = %bb.e, %rt_get_shape_opacity.exit.i, %.preheader.i.i78.i, %bb.d, %bb.c, %rt_get_selected_shape_index.exit.i
  %i.aj = phi float [ %i.ah, %rt_get_shape_opacity.exit.i ], [ 0.000000e+00, %rt_get_selected_shape_index.exit.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %.preheader.i.i78.i ], [ 0.000000e+00, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !129
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.al, float noundef %i.aj) #27
  br label %bb.f

bb.f:                                             ; preds = %rt_get_shape_opacity.exit.thread.i, %rt_get_shape_opacity.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !107 ; 3 uses
  switch i32 %i.an, label %.thread95.i [
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !134 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 13228
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !133
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 13232 ; 2 uses
  store float %i.as, ptr %i.at, align 4, !tbaa !135
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !150
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.av, i32 noundef %i.ap) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !151
  %i.ay = load float, ptr %i.at, align 4, !tbaa !135
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ax, float noundef %i.ay) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 13236 ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 13240 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 13248
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !138
  %i.bh = load <4 x float>, ptr %i.bd, align 4, !tbaa !12
  store <4 x float> %i.bh, ptr %i.be, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !152
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bj, float noundef %i.bg) #27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !131
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !136
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.bl, i32 noundef %i.bm) #27
  %i.bn = getelementptr i8, ptr %i.g, i64 296
  %.val.i = load ptr, ptr %i.bn, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bo = load <2 x float>, ptr %i.be, align 4, !tbaa !12
  %i.bp = fpext <2 x float> %i.bo to <2 x double>
  store <2 x double> %i.bp, ptr %2, align 16, !tbaa !112
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load float, ptr %i.bf, align 4, !tbaa !12
  %i.bs = fpext reassoc nsz arcp contract afn float %i.br to double
  store double %i.bs, ptr %i.bq, align 16, !tbaa !114
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !115
  call void @gtk_color_chooser_set_rgba(ptr noundef %.val.i, ptr noundef nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 13200 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !144
  %i.bw = load i32, ptr %i.am, align 4, !tbaa !107 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, %i.bw
  br i1 %.not.i, label %bb.j, label %.thread.i

.thread95.i:                                      ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 13200 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !144
  %.not97.i = icmp eq i32 %i.by, %i.an
  br i1 %.not97.i, label %rt_get_selected_shape_index.exit.thread.i, label %.thread.i

.thread.i:                                        ; preds = %.thread95.i, %bb.i
  %i.bz = phi i32 [ %i.an, %.thread95.i ], [ %i.bw, %bb.i ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %.thread95.i ], [ %i.bu, %bb.i ] ; 4 uses
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !144
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !153
  %i.cd = icmp eq i32 %i.bz, 1
  %i.ce = zext i1 %i.cd to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.cc, i32 noundef %i.ce) #27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !154
  %i.ch = load i32, ptr %i.ca, align 4, !tbaa !144
  %i.ci = icmp eq i32 %i.ch, 2
  %i.cj = zext i1 %i.ci to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.cg, i32 noundef %i.cj) #27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !155
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !144
  %i.cn = icmp eq i32 %i.cm, 3
  %i.co = zext i1 %i.cn to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.cl, i32 noundef %i.co) #27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !156
  %i.cr = load i32, ptr %i.ca, align 4, !tbaa !144
  %i.cs = icmp eq i32 %i.cr, 4
  %i.ct = zext i1 %i.cs to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.cq, i32 noundef %i.ct) #27
  br label %bb.j

bb.j:                                             ; preds = %.thread.i, %bb.i
  call fastcc void @rt_show_hide_controls(ptr noundef %0)
  br label %rt_get_selected_shape_index.exit.thread.i

rt_get_selected_shape_index.exit.thread.i:        ; preds = %bb.j, %.thread95.i, %.loopexit.loopexit.i.i.i, %bb.b
  %.2.i.i80.i = phi i32 [ -1, %.loopexit.loopexit.i.i.i ], [ %3, %bb.j ], [ -1, %bb.b ], [ %3, %.thread95.i ]
  %.2.i = phi i1 [ true, %.loopexit.loopexit.i.i.i ], [ false, %bb.j ], [ true, %bb.b ], [ true, %.thread95.i ]
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2888
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !105
  %i.cx = call ptr @dt_masks_get_from_id(ptr noundef %i.cu, i32 noundef %i.cw) #27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !157
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rt_get_selected_shape_index.exit.thread.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  br label %rt_display_selected_shapes_lbl.exit.i

bb.l:                                             ; preds = %rt_get_selected_shape_index.exit.thread.i
  %i.db = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.131, i32 noundef 5) #27
  br label %rt_display_selected_shapes_lbl.exit.i

rt_display_selected_shapes_lbl.exit.i:            ; preds = %bb.l, %bb.k
  %.sink.i.i = phi ptr [ %i.db, %bb.l ], [ %i.da, %bb.k ]
  call void @gtk_label_set_text(ptr noundef %i.cz, ptr noundef %.sink.i.i) #27
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !139 ; 3 uses
  %.not75.i = icmp eq ptr %i.de, null
  br i1 %.not75.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %rt_display_selected_shapes_lbl.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !142
  %.not76.i = icmp eq i32 %i.dg, 0
  br i1 %.not76.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 192
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !143
  %i.dj = icmp eq ptr %i.di, %0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %rt_display_selected_shapes_lbl.exit.i
  %i.dk = phi i1 [ false, %bb.m ], [ false, %rt_display_selected_shapes_lbl.exit.i ], [ %i.dj, %bb.n ]
  %4 = icmp slt i32 %.2.i.i80.i, 0
  %or.cond.i = select i1 %4, i1 true, i1 %i.dk
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !129 ; 2 uses
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @gtk_widget_show(ptr noundef %i.dm) #27
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @gtk_widget_hide(ptr noundef %i.dm) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !116
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
  %i.dp = atomicrmw sub ptr %i.do, i32 1 seq_cst, align 4 ; 0 uses
  br i1 %.2.i, label %rt_shape_selection_changed.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  call void @dt_dev_add_history_item(ptr noundef %i.dq, ptr noundef %0, i32 noundef 1) #27
  br label %rt_shape_selection_changed.exit

rt_shape_selection_changed.exit:                  ; preds = %bb.r, %bb.s
  %i.dr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #27 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %rt_shape_selection_changed.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !158 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 13216
  store <2 x float> <float -3.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 13224
  store float 3.000000e+00, ptr %i.d, align 4, !tbaa !12
  %i.e = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.6) #27
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 13200
  store i32 %i.e, ptr %i.f, align 4, !tbaa !144
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #3

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !162
  store <8 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 -999, ptr %i.c, align 4, !tbaa !278
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 -999, ptr %i.d, align 4, !tbaa !279
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @free(ptr noundef %i.b) #27
  store ptr null, ptr %i.a, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load i32, ptr %i.a, align 16, !tbaa !163
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2760
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.g = load i32, ptr %i.f, align 16, !tbaa !280
  %.not25 = icmp eq i32 %i.g, 0
  br i1 %.not25, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !36  ; 9 uses
  %.not26 = icmp eq i32 %1, 0
  br i1 %.not26, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 4, !tbaa !120
  %i.p = tail call ptr @dt_masks_get_from_id(ptr noundef nonnull %i.c, i32 noundef %i.o) #27 ; 3 uses
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !123
  %i.s = and i32 %i.r, 4
  %.not29 = icmp eq i32 %i.s, 0
  br i1 %.not29, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !175
  %.not30 = icmp eq ptr %i.t, null
  br i1 %.not30, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 600 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !180
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @dt_masks_set_edit_mode(ptr noundef nonnull %0, i32 noundef 1) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @rt_show_forms_for_current_scale(ptr noundef nonnull %0)
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !181
  %i.z = load i32, ptr %i.u, align 8, !tbaa !180
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !182
  %i.ad = icmp eq ptr %i.ac, %0
  %i.ae = zext i1 %i.ad to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = phi i32 [ 0, %bb.i ], [ %i.ae, %bb.j ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.y, i32 noundef %i.af) #27
  br label %bb.r

bb.l:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 2168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 172
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !183
  %.not27 = icmp eq i32 %i.aj, 0
  br i1 %.not27, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !184
  %i.am = icmp eq ptr %i.al, %0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @dt_masks_change_form_gui(ptr noundef null) #27
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !78
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 2168
  %.pre35 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.an = phi ptr [ %.pre35, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !143
  %i.aq = icmp eq ptr %i.ap, %0
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  store i32 0, ptr %i.ar, align 8, !tbaa !142
  store ptr null, ptr %i.ao, align 8, !tbaa !143
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !185
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.at, i32 noundef 0) #27
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !186
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.av, i32 noundef 0) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !187
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ax, i32 noundef 0) #27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 88
end_hunk_0
