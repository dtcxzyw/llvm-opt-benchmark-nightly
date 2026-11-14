Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blend_gui?download=true
inline.NumInlined: 231
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_blendop_blendif_key_press:bb.a
  %i.bu = load i32, ptr %i.aw, align 4, !tbaa !139
  %.not30.i35 = icmp eq i32 %.1.i34, %i.bu
  br i1 %.not30.i35, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.1.i34, ptr %i.aw, align 4, !tbaa !139
  tail call void @dt_iop_refresh_center(ptr noundef nonnull %2) #18
  br label %bb.q

bb.m:                                             ; preds = %bb.b, %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 500 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !139 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 632 ; 2 uses
  %i.by = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bx) #18 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 460 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !140
  %i.cb = and i32 %i.ca, -65537
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !140
  %i.cc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bx) #18 ; 0 uses
  %.027.i38 = and i32 %i.bw, -66557
  %i.cd = xor i32 %.027.i38, 1                    ; 2 uses
  %i.ce = and i32 %i.bw, 2
  %.not29.i40 = icmp eq i32 %i.ce, 0
  br i1 %.not29.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !76
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [80 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !151 ; 2 uses
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.co = icmp eq ptr %0, %i.cn
  %i.cp = or i32 %i.cm, 4
  %spec.select.i41 = select i1 %i.co, i32 %i.cp, i32 %i.cm
  %i.cq = or i32 %spec.select.i41, %i.cd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i42 = phi i32 [ %i.cq, %bb.n ], [ %i.cd, %bb.m ] ; 2 uses
  %i.cr = load i32, ptr %i.bv, align 4, !tbaa !139
  %.not30.i43 = icmp eq i32 %.1.i42, %i.cr
  br i1 %.not30.i43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.1.i42, ptr %i.bv, align 4, !tbaa !139
  tail call void @dt_iop_refresh_center(ptr noundef nonnull %2) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.c, %bb.h, %bb.d, %bb.g, %bb.k, %bb.o, %bb.p
  tail call void @dt_iop_request_focus(ptr noundef nonnull %2) #18
  br label %_blendop_blendif_channel_mask_view_toggle.exit

_blendop_blendif_channel_mask_view_toggle.exit:   ; preds = %bb.b, %bb.q, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ 1, %bb.q ], [ 0, %bb.b ]
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal void @_blendop_blendif_polarity_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @gtk_toggle_button_get_active(ptr noundef %0) #18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !75  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.l = load i32, ptr %i.k, align 8, !tbaa !76
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [80 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130
  %i.r = icmp eq ptr %0, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = zext i1 %i.r to i64                      ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !81
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115  ; 4 uses
  %.not25 = icmp eq i32 %i.d, 0
  %i.y = add i32 %i.v, 16
  %i.z = shl nuw i32 1, %i.y                      ; 2 uses
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 28 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !121
  %i.ac = or i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !121
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = xor i32 %i.z, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !121
  %i.ag = and i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !121
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi i32 [ 13, %bb.d ], [ 11, %bb.c ]    ; 2 uses
  %i.ai = phi i32 [ 10, %bb.d ], [ 12, %bb.c ]    ; 2 uses
  tail call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.x, i32 noundef %i.ai, i32 noundef 0) #18
  tail call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.x, i32 noundef %i.ah, i32 noundef 1) #18
  tail call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.x, i32 noundef %i.ah, i32 noundef 2) #18
  tail call void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef %i.x, i32 noundef %i.ai, i32 noundef 3) #18
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !83
  tail call void @dt_dev_add_history_item(ptr noundef %i.aj, ptr noundef %i.ak, i32 noundef 1) #18
  tail call void @dt_control_queue_redraw_widget(ptr noundef %0) #18
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !83
  tail call fastcc void @_blendop_blendif_highlight_changed_tabs(ptr noundef %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_blendop_blendif_boost_factor_callback(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp slt i32 %i.c, 1
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !75  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76   ; 2 uses
  %i.n = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds [80 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !142
  %i.v = icmp eq i32 %i.u, 2                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 36 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 324 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !81 ; 4 uses
  %i.ac = add i32 %i.ab, -1
  %switch.and = and i32 %i.ac, -6
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.ad = and i1 %i.v, %switch.selectcmp
  %.0 = select nsz i1 %i.ad, float 5.000000e-01, float 0.000000e+00 ; 8 uses
  %i.ae = load float, ptr %i.w, align 4, !tbaa !134
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.n ; 2 uses
  %i.ag = sext i32 %i.ab to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ag ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !79
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.af
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.aj) ; 4 uses
  %i.al = shl nsw i32 %i.ab, 2
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.am ; 5 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !79 ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = fsub reassoc nnan nsz arcp contract afn float %i.ao, %.0
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.ak
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %.0 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ult float %i.as, 0.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.as, 1.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %.inv, float %i.as, float 1.000000e+00
  %i.au = select reassoc nsz arcp contract afn i1 %i.at, float 0.000000e+00, float %spec.select
  store float %i.au, ptr %i.an, align 4, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !79 ; 3 uses
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = fsub reassoc nnan nsz arcp contract afn float %i.aw, %.0
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ak
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %.0 ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ult float %i.ba, 0.000000e+00
  %.inv109 = fcmp reassoc nsz arcp contract afn ole float %i.ba, 1.000000e+00
  %spec.select106 = select reassoc nsz arcp contract afn i1 %.inv109, float %i.ba, float 1.000000e+00
  %i.bc = select reassoc nsz arcp contract afn i1 %i.bb, float 0.000000e+00, float %spec.select106 ; 2 uses
  store float %i.bc, ptr %i.av, align 4, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = phi float [ %i.bc, %bb.f ], [ %i.aw, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !79 ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.bf, 1.000000e+00
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bf, %.0
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.ak
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %.0 ; 3 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ult float %i.bj, 0.000000e+00
  %.inv110 = fcmp reassoc nsz arcp contract afn ole float %i.bj, 1.000000e+00
  %spec.select107 = select reassoc nsz arcp contract afn i1 %.inv110, float %i.bj, float 1.000000e+00
  %i.bl = select reassoc nsz arcp contract afn i1 %i.bk, float 0.000000e+00, float %spec.select107 ; 2 uses
  store float %i.bl, ptr %i.be, align 4, !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = phi float [ %i.bl, %bb.h ], [ %i.bf, %bb.g ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !79 ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, 1.000000e+00
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = fsub reassoc nnan nsz arcp contract afn float %i.bo, %.0
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.ak
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, %.0 ; 3 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ult float %i.bs, 0.000000e+00
  %.inv111 = fcmp reassoc nsz arcp contract afn ole float %i.bs, 1.000000e+00
  %spec.select108 = select reassoc nsz arcp contract afn i1 %.inv111, float %i.bs, float 1.000000e+00
  %i.bu = select reassoc nsz arcp contract afn i1 %i.bt, float 0.000000e+00, float %spec.select108
  store float %i.bu, ptr %i.bn, align 4, !tbaa !79
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bv = fcmp reassoc nsz arcp contract afn oeq float %i.bd, 0.000000e+00
  %i.bw = fcmp reassoc nsz arcp contract afn oeq float %i.bm, 1.000000e+00
  %or.cond126 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond126, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = shl nuw i32 1, %i.ab
  %i.by = xor i32 %i.bx, -1
  %i.bz = load i32, ptr %i.z, align 4, !tbaa !121
  %i.ca = and i32 %i.bz, %i.by
  store i32 %i.ca, ptr %i.z, align 4, !tbaa !121
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store float %i.af, ptr %i.ah, align 4, !tbaa !79
  %i.cb = load i32, ptr %i.s, align 4, !tbaa !81  ; 4 uses
  %i.cc = add i32 %i.cb, -1
  %switch.and.1 = and i32 %i.cc, -6
  %switch.selectcmp.1 = icmp eq i32 %switch.and.1, 0
  %i.cd = and i1 %i.v, %switch.selectcmp.1
  %.0.1 = select nsz i1 %i.cd, float 5.000000e-01, float 0.000000e+00 ; 8 uses
  %i.ce = load float, ptr %i.w, align 4, !tbaa !134
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.n ; 2 uses
  %i.cg = sext i32 %i.cb to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cg ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !79
  %i.cj = fsub reassoc nsz arcp contract afn float %i.ci, %i.cf
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cj) ; 4 uses
  %i.cl = shl nsw i32 %i.cb, 2
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.cm ; 5 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79 ; 2 uses
  %i.cp = fcmp reassoc nsz arcp contract afn ogt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = fsub reassoc nnan nsz arcp contract afn float %i.co, %.0.1
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.ck
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %.0.1 ; 3 uses
  %i.ct = fcmp reassoc nsz arcp contract afn ult float %i.cs, 0.000000e+00
  %.inv.1 = fcmp reassoc nsz arcp contract afn ole float %i.cs, 1.000000e+00
  %spec.select.1 = select reassoc nsz arcp contract afn i1 %.inv.1, float %i.cs, float 1.000000e+00
  %i.cu = select reassoc nsz arcp contract afn i1 %i.ct, float 0.000000e+00, float %spec.select.1
  store float %i.cu, ptr %i.cn, align 4, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !79 ; 3 uses
  %i.cx = fcmp reassoc nsz arcp contract afn ogt float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = fsub reassoc nnan nsz arcp contract afn float %i.cw, %.0.1
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.ck
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %.0.1 ; 3 uses
  %i.db = fcmp reassoc nsz arcp contract afn ult float %i.da, 0.000000e+00
  %.inv109.1 = fcmp reassoc nsz arcp contract afn ole float %i.da, 1.000000e+00
  %spec.select106.1 = select reassoc nsz arcp contract afn i1 %.inv109.1, float %i.da, float 1.000000e+00
  %i.dc = select reassoc nsz arcp contract afn i1 %i.db, float 0.000000e+00, float %spec.select106.1 ; 2 uses
  store float %i.dc, ptr %i.cv, align 4, !tbaa !79
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dd = phi float [ %i.dc, %bb.p ], [ %i.cw, %bb.o ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !79 ; 3 uses
  %i.dg = fcmp reassoc nsz arcp contract afn olt float %i.df, 1.000000e+00
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = fsub reassoc nnan nsz arcp contract afn float %i.df, %.0.1
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.ck
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %.0.1 ; 3 uses
  %i.dk = fcmp reassoc nsz arcp contract afn ult float %i.dj, 0.000000e+00
  %.inv110.1 = fcmp reassoc nsz arcp contract afn ole float %i.dj, 1.000000e+00
  %spec.select107.1 = select reassoc nsz arcp contract afn i1 %.inv110.1, float %i.dj, float 1.000000e+00
  %i.dl = select reassoc nsz arcp contract afn i1 %i.dk, float 0.000000e+00, float %spec.select107.1 ; 2 uses
  store float %i.dl, ptr %i.de, align 4, !tbaa !79
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dm = phi float [ %i.dl, %bb.r ], [ %i.df, %bb.q ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 12 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !79 ; 2 uses
  %i.dp = fcmp reassoc nsz arcp contract afn olt float %i.do, 1.000000e+00
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = fsub reassoc nnan nsz arcp contract afn float %i.do, %.0.1
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.ck
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %.0.1 ; 3 uses
  %i.dt = fcmp reassoc nsz arcp contract afn ult float %i.ds, 0.000000e+00
  %.inv111.1 = fcmp reassoc nsz arcp contract afn ole float %i.ds, 1.000000e+00
  %spec.select108.1 = select reassoc nsz arcp contract afn i1 %.inv111.1, float %i.ds, float 1.000000e+00
  %i.du = select reassoc nsz arcp contract afn i1 %i.dt, float 0.000000e+00, float %spec.select108.1
  store float %i.du, ptr %i.dn, align 4, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dv = fcmp reassoc nsz arcp contract afn oeq float %i.dd, 0.000000e+00
  %i.dw = fcmp reassoc nsz arcp contract afn oeq float %i.dm, 1.000000e+00
  %or.cond127 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond127, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = shl nuw i32 1, %i.cb
  %i.dy = xor i32 %i.dx, -1
  %i.dz = load i32, ptr %i.z, align 4, !tbaa !121
  %i.ea = and i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %i.z, align 4, !tbaa !121
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store float %i.cf, ptr %i.ch, align 4, !tbaa !79
  %i.eb = load ptr, ptr %i.h, align 8, !tbaa !83
  tail call fastcc void @_blendop_blendif_update_tab(ptr noundef %i.eb, i32 noundef %i.m)
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !83
  tail call void @dt_dev_add_history_item(ptr noundef %i.ec, ptr noundef %i.ed, i32 noundef 1) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.b, %bb.w
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_blendop_blendif_tab_switch(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp slt i32 %i.c, 1
  %i.e = icmp ne ptr %3, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 380 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82
  switch i32 %i.i, label %_blendop_blendif_get_picker_colorspace.exit [
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.k = load i32, ptr %i.j, align 8, !tbaa !76
  %i.l = icmp slt i32 %i.k, 4
  %..i = select i1 %i.l, i32 2, i32 4
  br label %_blendop_blendif_get_picker_colorspace.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.n = load i32, ptr %i.m, align 8, !tbaa !76
  %i.o = icmp slt i32 %i.n, 4
  %.7.i = select i1 %i.o, i32 2, i32 5
  br label %_blendop_blendif_get_picker_colorspace.exit

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.q = load i32, ptr %i.p, align 8, !tbaa !76
  %i.r = icmp slt i32 %i.q, 3
  %.8.i = select i1 %i.r, i32 1, i32 3
  br label %_blendop_blendif_get_picker_colorspace.exit

_blendop_blendif_get_picker_colorspace.exit:      ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %..i, %bb.d ], [ -1, %bb.c ], [ %.7.i, %bb.e ], [ %.8.i, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83
  tail call void @dt_iop_color_picker_reset(ptr noundef %i.t, i32 noundef 0) #18
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 5 uses
  store i32 %2, ptr %i.u, align 8, !tbaa !76
  %i.v = load i32, ptr %i.h, align 4, !tbaa !82
  switch i32 %i.v, label %_blendop_blendif_get_picker_colorspace.exit22 [
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %_blendop_blendif_get_picker_colorspace.exit
  %i.w = icmp slt i32 %2, 4
  %..i21 = select i1 %i.w, i32 2, i32 4
  br label %_blendop_blendif_get_picker_colorspace.exit22

bb.h:                                             ; preds = %_blendop_blendif_get_picker_colorspace.exit
  %i.x = icmp slt i32 %2, 4
  %.7.i20 = select i1 %i.x, i32 2, i32 5
  br label %_blendop_blendif_get_picker_colorspace.exit22

bb.i:                                             ; preds = %_blendop_blendif_get_picker_colorspace.exit
  %i.y = icmp slt i32 %2, 3
  %.8.i18 = select i1 %i.y, i32 1, i32 3
  br label %_blendop_blendif_get_picker_colorspace.exit22

_blendop_blendif_get_picker_colorspace.exit22:    ; preds = %_blendop_blendif_get_picker_colorspace.exit, %bb.g, %bb.h, %bb.i
  %.0.i19 = phi i32 [ %..i21, %bb.g ], [ -1, %_blendop_blendif_get_picker_colorspace.exit ], [ %.7.i20, %bb.h ], [ %.8.i18, %bb.i ]
  %.not15 = icmp eq i32 %.0.i, %.0.i19
  br i1 %.not15, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_blendop_blendif_get_picker_colorspace.exit22
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124
  %i.ab = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.aa) #18
  %.not16 = icmp eq i32 %i.ab, 0
  br i1 %.not16, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.ae = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ad) #18
  %.not17 = icmp eq i32 %i.ae, 0
  br i1 %.not17, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !82
  switch i32 %i.ag, label %_blendop_blendif_get_picker_colorspace.exit27 [
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.u, align 8, !tbaa !76
  %i.ai = icmp slt i32 %i.ah, 4
  %..i26 = select i1 %i.ai, i32 2, i32 4
  br label %_blendop_blendif_get_picker_colorspace.exit27

bb.n:                                             ; preds = %bb.l
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !76
  %i.ak = icmp slt i32 %i.aj, 4
  %.7.i25 = select i1 %i.ak, i32 2, i32 5
  br label %_blendop_blendif_get_picker_colorspace.exit27

bb.o:                                             ; preds = %bb.l
  %i.al = load i32, ptr %i.u, align 8, !tbaa !76
  %i.am = icmp slt i32 %i.al, 3
  %.8.i23 = select i1 %i.am, i32 1, i32 3
  br label %_blendop_blendif_get_picker_colorspace.exit27

_blendop_blendif_get_picker_colorspace.exit27:    ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i24 = phi i32 [ %..i26, %bb.m ], [ -1, %bb.l ], [ %.7.i25, %bb.n ], [ %.8.i23, %bb.o ]
  tail call void @dt_iop_color_picker_set_cst(ptr noundef %i.af, i32 noundef %.0.i24) #18
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 664
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !84
  tail call void @dt_dev_reprocess_all(ptr noundef %i.ap) #18
  tail call void @dt_control_queue_redraw() #18
  br label %bb.p

bb.p:                                             ; preds = %_blendop_blendif_get_picker_colorspace.exit27, %bb.k, %_blendop_blendif_get_picker_colorspace.exit22
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.ar = load i32, ptr %i.u, align 8, !tbaa !76
  tail call fastcc void @_blendop_blendif_update_tab(ptr noundef %i.aq, i32 noundef %i.ar)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_iop_gui_update_masks(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !28  ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !75
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %.not40 = icmp eq i32 %i.g, 0
  br i1 %.not40, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !153
  %.not41 = icmp eq i32 %i.i, 0
  br i1 %.not41, label %bb.ap, label %bb.d
end_hunk_0
begin_hunk_1_@_blendop_masks_combine_callback:bb.a
  %i.bi = and i32 %i.bh, 20560
  %.not44.i = icmp eq i32 %i.bi, 0
  br i1 %.not44.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx.i = shl nuw nsw i64 %.046.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i ; 5 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !79
  %i.bl = fcmp reassoc nsz arcp contract afn une float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !79
  %i.bo = fcmp reassoc nsz arcp contract afn une float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !79
  %i.br = fcmp reassoc nsz arcp contract afn une float %i.bq, 1.000000e+00
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !79
  %i.bu = fcmp reassoc nsz arcp contract afn une float %i.bt, 1.000000e+00
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.bj, align 4, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.i
  %i.bv = or disjoint i64 %.046.i, 1              ; 2 uses
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 1, %i.bw
  %i.by = and i32 %i.bx, 41120
  %.not44.i.1 = icmp eq i32 %i.by, 0
  br i1 %.not44.i.1, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.idx.i.1 = shl nuw nsw i64 %i.bv, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i.1 ; 5 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !79
  %i.cb = fcmp reassoc nsz arcp contract afn une float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !79
  %i.ce = fcmp reassoc nsz arcp contract afn une float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !79
  %i.ch = fcmp reassoc nsz arcp contract afn une float %i.cg, 1.000000e+00
  br i1 %i.ch, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !79
  %i.ck = fcmp reassoc nsz arcp contract afn une float %i.cj, 1.000000e+00
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.bz, align 4, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.o
  %i.cl = add nuw nsw i64 %.046.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.cl, 16
  br i1 %exitcond.not.i.1, label %_blendif_clean_output_channels.exit, label %bb.i

_blendif_clean_output_channels.exit:              ; preds = %bb.u, %bb.d, %bb.e, %bb.f, %bb.g
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  tail call void @dt_dev_add_history_item(ptr noundef %i.cm, ptr noundef %i.ag, i32 noundef 1) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_blendop_blendif_details_callback(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp slt i32 %i.c, 1
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !149
  %i.n = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %0) #18
  store float %i.n, ptr %i.l, align 4, !tbaa !149
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !83
  tail call void @dt_dev_add_history_item(ptr noundef %i.o, ptr noundef %i.p, i32 noundef 1) #18
  %i.q = fcmp reassoc nsz arcp contract afn oeq float %i.m, 0.000000e+00
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = load float, ptr %i.l, align 4, !tbaa !149
  %i.s = fcmp reassoc nsz arcp contract afn une float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 664
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !84
  tail call void @dt_dev_reprocess_all(ptr noundef %i.v) #18
  tail call void @dt_control_queue_redraw() #18
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_blendop_blendif_feathering_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp slt i32 %i.c, 1
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !137
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !262
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.l, align 4, !tbaa !262
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !123
  tail call void @dt_dev_add_history_item(ptr noundef %i.o, ptr noundef nonnull %i.i, i32 noundef 1) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

declare i32 @dt_iop_color_picker_get_active_cst(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !264    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !79
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !79   ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !79 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !79
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !79
  %i.ac = load float, ptr %3, align 4, !tbaa !79
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !79
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.e ], [ %i.z, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !264 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !79
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !79 ; 4 uses
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !79
  %i.at = load float, ptr %i.aq, align 4, !tbaa !79
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !79
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1.i, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !79 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !79
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.h ], [ %i.bp, %bb.i ], [ %i.ao, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !264 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !79
  %i.bu = fcmp reassoc nsz arcp contract afn ult float %i.bt, 0.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !79 ; 4 uses
  br i1 %i.bu, label %dt_ioppr_apply_trc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !79
  %i.cb = load float, ptr %i.by, align 4, !tbaa !79
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !79
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cc, float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ca
  br label %dt_ioppr_apply_trc.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = fmul reassoc nsz arcp contract afn float %i.bw, %i.b ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 0.000000e+00
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.b
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.cj, float %i.ch, float %i.b
  %i.ck = select reassoc nsz arcp contract afn i1 %i.ci, float %..i.2.i, float 0.000000e+00 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.ck, %i.d
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, float %i.ck, float %i.d
  %i.cn = fptosi float %i.cm to i32               ; 2 uses
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = fsub reassoc nnan nsz arcp contract afn float %i.ck, %i.co
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cq ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !79 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !79
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cp
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cs
  br label %dt_ioppr_apply_trc.exit

dt_ioppr_apply_trc.exit:                          ; preds = %bb.j, %bb.l, %bb.m
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.l ], [ %i.cx, %bb.m ], [ %i.bw, %bb.j ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !79
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !79
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bq
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !79
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cy
  %i.dj = fadd reassoc nsz arcp contract afn float %i.df, %i.di
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !79
  %i.dm = load float, ptr %0, align 4, !tbaa !79
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dp = load float, ptr %i.do, align 4, !tbaa !79
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !79
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dp
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dn
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load float, ptr %i.du, align 4, !tbaa !79
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !79
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dv
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dt, %i.dy
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_ioppr_apply_trc.exit
  %.0 = phi nsz float [ %i.dj, %dt_ioppr_apply_trc.exit ], [ %i.dz, %bb.n ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @dt_iop_color_picker_set_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_picker_meanminmax(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_picker(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #12

declare void @dtgtk_gradient_slider_multivalue_set_marker(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_resetvalue(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_clear_stops(ptr noundef) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_stop(ptr noundef, float noundef, ptr noundef byval(%struct._GdkRGBA) align 8) local_unnamed_addr #2

declare void @dtgtk_gradient_slider_multivalue_set_increment(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_blendop_blendif_highlight_changed_tabs(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %.not40 = icmp eq ptr %i.e, null
  br i1 %.not40, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !75  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = phi ptr [ %i.d, %.preheader.lr.ph ], [ %i.bb, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.l, align 4, !tbaa !121
  %i.r = load i32, ptr %i.m, align 4, !tbaa !121
  %i.s = xor i32 %i.r, %i.q                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !81   ; 2 uses
  %i.v = shl i32 %i.u, 2
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.w
  %i.z = load <4 x float>, ptr %i.x, align 4, !tbaa !79
  %i.aa = load <4 x float>, ptr %i.y, align 4, !tbaa !79
  %i.ab = fcmp reassoc nsz arcp contract afn une <4 x float> %i.z, %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp ne i4 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = add i32 %i.u, 16
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = and i32 %i.s, %i.ag
  %i.ai = load i32, ptr %i.p, align 4, !tbaa !81  ; 2 uses
  %i.aj = shl i32 %i.ai, 2
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ak
  %i.an = load <4 x float>, ptr %i.al, align 4, !tbaa !79
  %i.ao = load <4 x float>, ptr %i.am, align 4, !tbaa !79
  %i.ap = fcmp reassoc nsz arcp contract afn une <4 x float> %i.an, %i.ao
  %i.aq = add i32 %i.ai, 16
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.s, %i.ar
  %i.at = bitcast <4 x i1> %i.ap to i4
  %i.au = icmp ne i4 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %op.rdx = or i32 %i.ah, %i.av
  %op.rdx46 = or i32 %i.as, %i.ae
  %op.rdx47 = or i32 %op.rdx, %op.rdx46
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !143 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = tail call ptr @gtk_notebook_get_nth_page(ptr noundef %i.aw, i32 noundef %i.ax) #18
  %i.az = tail call ptr @gtk_notebook_get_tab_label(ptr noundef %i.aw, ptr noundef %i.ay) #18 ; 2 uses
  %.not35 = icmp eq i32 %op.rdx47, 0
  br i1 %.not35, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader
  tail call void @dt_gui_add_class(ptr noundef %i.az, ptr noundef nonnull @.str.206) #18
  br label %bb.d

bb.c:                                             ; preds = %.preheader
  tail call void @dt_gui_remove_class(ptr noundef %i.az, ptr noundef nonnull @.str.206) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.ba, i64 %indvars.iv.next ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !144
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %._crit_edge, label %.preheader
}

declare void @dtgtk_gradient_slider_multivalue_set_scale_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_notebook_get_tab_label(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_gui_remove_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @_log10_scale_callback(ptr nofree readnone captures(none) %0, float noundef %1, i32 noundef %2) #13 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp reassoc nsz arcp contract afn ogt float %1, 1.000000e+00
  %i.b = fcmp reassoc nsz arcp contract afn olt float %1, f0x38D1B717
  %i.c = select reassoc nsz arcp contract afn i1 %i.b, float f0x38D1B717, float %1
  %i.d = select reassoc nsz arcp contract afn i1 %i.a, float 1.000000e+00, float %i.c
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double
  %i.f = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.e)
  %i.g = fmul reassoc nsz arcp contract afn double %i.f, 2.500000e-01
  %i.h = fadd reassoc nsz arcp contract afn double %i.g, 1.000000e+00
  %i.i = fptrunc reassoc nsz arcp contract afn double %i.h to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = fmul reassoc nsz arcp contract afn float %1, 4.000000e+00
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, -4.000000e+00
  %i.l = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, f0x40026BB1BBB55516
  %i.n = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.m) ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn oge double %i.n, 1.000000e+00
  %3 = select i1 %.inv, double 1.000000e+00, double %i.n ; 2 uses
  %i.o = fptrunc double %3 to float
  %i.p = fcmp reassoc nsz arcp contract afn ole double %3, f0x3F1A36E2EFFFFFFF
  %spec.store.select = select i1 %i.p, float 0.000000e+00, float %i.o ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn oge float %spec.store.select, f0x3F7FF972
  %spec.store.select1 = select i1 %i.q, float 1.000000e+00, float %spec.store.select
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi nsz float [ %spec.store.select1, %bb.c ], [ %i.i, %bb.b ], [ %1, %bb.a ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @_magnifier_scale_callback(ptr nofree readnone captures(none) %0, float noundef %1, i32 noundef %2) #13 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn double @llvm.tanh.f64(double 3.000000e+00)
  %i.b = fptrunc reassoc nsz arcp contract afn double %i.a to float ; 2 uses
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.b
  %i.d = fpext reassoc nnan nsz arcp contract afn float %i.c to double
  %i.e = fcmp reassoc nsz arcp contract afn ogt float %1, 1.000000e+00
  %i.f = fcmp reassoc nsz arcp contract afn olt float %1, 0.000000e+00
  %i.g = select reassoc nsz arcp contract afn i1 %i.f, float 0.000000e+00, float %1
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, 6.000000e+00
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, -3.000000e+00
  %i.j = select i1 %i.e, float 3.000000e+00, float %i.i
  %i.k = fpext reassoc nsz arcp contract afn float %i.j to double
  %i.l = tail call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.k)
  %i.m = fmul reassoc nnan nsz arcp contract afn double %i.d, 5.000000e-01
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, %i.l
  %i.o = fadd reassoc nsz arcp contract afn double %i.n, 5.000000e-01 ; 2 uses
  %i.p = fptrunc reassoc nsz arcp contract afn double %i.o to float
  %i.q = fcmp reassoc nsz arcp contract afn ole double %i.o, f0x3F1A36E2EFFFFFFF
  %spec.store.select = select i1 %i.q, float 0.000000e+00, float %i.p ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn oge float %spec.store.select, f0x3F7FF972
  %spec.store.select2 = select i1 %i.r, float 1.000000e+00, float %spec.store.select
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %1, f0x3F7FFFEF
  %i.t = fcmp reassoc nsz arcp contract afn olt float %1, f0x358637BD
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float f0x358637BD, float %1
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, 2.000000e+00
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, -1.000000e+00
  %i.x = select i1 %i.s, float f0x3F7FFFDE, float %i.w
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.b
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = tail call reassoc nsz arcp contract afn double @atanh(double noundef %i.z) #20
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, f0x3FC5555560000000
  %i.ac = fadd reassoc nsz arcp contract afn double %i.ab, 5.000000e-01 ; 2 uses
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float
  %i.ae = fcmp reassoc nsz arcp contract afn ole double %i.ac, f0x3F1A36E2EFFFFFFF
  %spec.store.select1 = select i1 %i.ae, float 0.000000e+00, float %i.ad ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn oge float %spec.store.select1, f0x3F7FF972
  %spec.store.select3 = select i1 %i.af, float 1.000000e+00, float %spec.store.select1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi nsz float [ %spec.store.select3, %bb.c ], [ %spec.store.select2, %bb.b ], [ %1, %bb.a ]
  ret float %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tanh.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @atanh(double noundef) local_unnamed_addr #15

declare ptr @gtk_event_box_new() local_unnamed_addr #2

declare ptr @gtk_revealer_new() local_unnamed_addr #2

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_blendop_blendif_leave_delayed(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 632 ; 3 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #18 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !138
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.j = load i32, ptr %i.i, align 4, !tbaa !140
  %i.k = and i32 %i.j, -65537                     ; 2 uses
  %.not12 = icmp eq i32 %i.h, %i.k
  br i1 %.not12, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  store i32 %i.k, ptr %i.g, align 4, !tbaa !139
  store i32 0, ptr %i.e, align 8, !tbaa !138
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #18 ; 0 uses
  tail call void @dt_iop_refresh_center(ptr noundef nonnull %0) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !138
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  ret i32 0
}

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #2

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #2

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #2

declare void @dt_control_queue_redraw_widget(ptr noundef) local_unnamed_addr #2

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #2

declare void @dt_control_queue_redraw() local_unnamed_addr #2

declare void @dt_control_hinter_message(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_blendop_masks_modes_toggle(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 10) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !28  ; 9 uses
  tail call void @dt_iop_request_focus(ptr noundef %1) #18
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !75
  %i.h = load i32, ptr %i.g, align 4, !tbaa !196  ; 2 uses
  %i.i = or i32 %2, 8
  %i.j = and i32 %i.h, %i.i
  %.not44 = icmp eq i32 %i.j, 0
  br i1 %.not44, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.k = or i32 %2, %i.h
  %i.l = or i32 %i.k, 1                           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !191
  %i.q = zext i32 %i.l to i64
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call i32 @g_list_index(ptr noundef %i.p, ptr noundef nonnull %i.r) #18
  %i.t = tail call ptr @g_list_nth_data(ptr noundef %i.n, i32 noundef %i.s) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.040 = phi ptr [ %0, %bb.b ], [ %i.t, %bb.d ]  ; 3 uses
  %.0 = phi i32 [ %2, %bb.b ], [ %i.l, %bb.d ]    ; 2 uses
  %i.u = tail call i32 @gtk_toggle_button_get_active(ptr noundef %.040) #18
  %.not45 = icmp eq i32 %i.u, 0                   ; 3 uses
  %i.v = zext i1 %.not45 to i32                   ; 2 uses
  tail call void @gtk_toggle_button_set_active(ptr noundef %.040, i32 noundef %i.v) #18
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !197
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !191
  %i.ac = tail call i32 @g_list_index(ptr noundef %i.ab, ptr noundef null) #18
  %i.ad = tail call ptr @g_list_nth_data(ptr noundef %i.z, i32 noundef %i.ac) #18
  %.not46 = icmp eq ptr %i.x, %i.ad
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !197
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ae, i32 noundef 0) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_blendop_masks_mode_callback(i32 noundef %.0, ptr noundef nonnull %i.e)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @_blendop_masks_mode_callback(i32 noundef 0, ptr noundef nonnull %i.e)
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !191
  %i.ah = tail call i32 @g_list_index(ptr noundef %i.ag, ptr noundef null) #18
  %i.ai = tail call ptr @g_list_nth_data(ptr noundef %i.af, i32 noundef %i.ah) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %i.ai, %bb.i ], [ %.040, %bb.h ]
  store ptr %storemerge, ptr %i.w, align 8, !tbaa !197
  %i.aj = and i32 %.0, -2                         ; 3 uses
  %.not47 = icmp eq i32 %i.aj, 0
  %. = select i1 %.not47, i32 0, i32 %i.v
  tail call void @dt_iop_add_remove_mask_indicator(ptr noundef nonnull %1, i32 noundef %.) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !198
  tail call void @gtk_widget_set_visible(ptr noundef %i.al, i32 noundef %i.aj) #18
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !199
  tail call void @gtk_widget_set_visible(ptr noundef %i.an, i32 noundef %i.aj) #18
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = atomicrmw add ptr %i.ap, i32 1 seq_cst, align 4 ; 0 uses
  br i1 %.not45, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !215 ; 2 uses
  %.not48 = icmp eq ptr %i.as, null
  br i1 %.not48, label %bb.m, label %bb.l

end_hunk_1
