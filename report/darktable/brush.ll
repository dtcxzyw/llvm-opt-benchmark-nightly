Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/brush?download=true
inline.NumInlined: 210
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@g_list_remove
declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_brush_ramer_douglas_peucker(ptr noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %1, -1                           ; 6 uses
  %i.b = icmp sgt i32 %1, 2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load float, ptr %2, align 4, !tbaa !102  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !102 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !102 ; 4 uses
  %i.h = shl nuw nsw i32 %i.a, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = shl nuw nsw i32 %i.a, 2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l ; 3 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !102 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !102 ; 2 uses
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !102 ; 5 uses
  %i.t = load <2 x float>, ptr %i.j, align 4, !tbaa !102 ; 2 uses
  %i.u = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.s ; 5 uses
  %i.v = fsub reassoc nsz arcp contract afn float %i.n, %i.c
  %i.w = fsub reassoc nsz arcp contract afn float %i.p, %i.e
  %i.x = fsub reassoc nsz arcp contract afn float %i.r, %i.g
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.u, %i.u
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = extractelement <2 x float> %i.u, i64 1   ; 3 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.z
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.y
  %.fr97 = freeze float %i.ab                     ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn oeq float %.fr97, 0.000000e+00
  br i1 %i.ac, label %_brush_point_line_distance2.exit.us.preheader, label %.lr.ph.split

_brush_point_line_distance2.exit.us.preheader:    ; preds = %.lr.ph
  %wide.trip.count103 = zext nneg i32 %i.a to i64
  %i.ad = extractelement <2 x float> %i.s, i64 0
  %i.ae = extractelement <2 x float> %i.s, i64 1
  br label %_brush_point_line_distance2.exit.us

_brush_point_line_distance2.exit.us:              ; preds = %_brush_point_line_distance2.exit.us.preheader, %_brush_point_line_distance2.exit.us
  %indvars.iv100 = phi i64 [ 1, %_brush_point_line_distance2.exit.us.preheader ], [ %indvars.iv.next101, %_brush_point_line_distance2.exit.us ] ; 4 uses
  %.07186.us = phi float [ 0.000000e+00, %_brush_point_line_distance2.exit.us.preheader ], [ %spec.select78.us, %_brush_point_line_distance2.exit.us ] ; 2 uses
  %.07285.us = phi i32 [ 0, %_brush_point_line_distance2.exit.us.preheader ], [ %spec.select.us, %_brush_point_line_distance2.exit.us ]
  %.idx107 = shl nuw nsw i64 %indvars.iv100, 3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.idx107 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !102
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !102
  %.idx108 = shl nuw nsw i64 %indvars.iv100, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx108 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !102
  %i.al = getelementptr i8, ptr %i.aj, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !102
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !102
  %i.ap = fsub reassoc nsz arcp contract afn float %i.ag, %i.ad ; 2 uses
  %i.aq = fsub reassoc nsz arcp contract afn float %i.ai, %i.ae ; 2 uses
  %.0.i.us = fsub reassoc nsz arcp contract afn float %i.ao, %i.g ; 2 uses
  %.0105.i.us = fsub reassoc nsz arcp contract afn float %i.am, %i.e ; 2 uses
  %.0106.i.us = fsub reassoc nsz arcp contract afn float %i.ak, %i.c ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn float %i.aq, %i.aq
  %i.at = fmul reassoc nsz arcp contract afn float %.0106.i.us, %.0106.i.us
  %i.au = fmul reassoc nsz arcp contract afn float %.0105.i.us, %.0105.i.us
  %i.av = fmul reassoc nsz arcp contract afn float %.0.i.us, %.0.i.us
  %reass.add.i.us = fadd reassoc nsz arcp contract afn float %i.av, %i.au
  %reass.mul.i.us = fmul reassoc nsz arcp contract afn float %reass.add.i.us, f0x3C23D70A
  %i.aw = fadd reassoc nsz arcp contract afn float %i.as, %i.ar
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.at
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %reass.mul.i.us ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn ogt float %i.ay, %.07186.us ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv100 to i32
  %spec.select.us = select i1 %i.az, i32 %i.ba, i32 %.07285.us ; 2 uses
  %spec.select78.us = select nsz i1 %i.az, float %i.ay, float %.07186.us ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge, label %_brush_point_line_distance2.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bb = extractelement <2 x float> %i.u, i64 0
  %i.bc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.fr97 ; 2 uses
  %factor.op.fmul93 = fmul reassoc nsz arcp contract afn float %i.bb, %i.bc
  %factor.op.fmul95 = fmul reassoc nsz arcp contract afn float %i.z, %i.bc
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_brush_point_line_distance2.exit, %_brush_point_line_distance2.exit.us, %bb.a
  %.072.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.us, %_brush_point_line_distance2.exit.us ], [ %spec.select, %_brush_point_line_distance2.exit ] ; 4 uses
  %.071.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %spec.select78.us, %_brush_point_line_distance2.exit.us ], [ %spec.select78, %_brush_point_line_distance2.exit ]
  %i.bd = fcmp reassoc nsz arcp contract afn ult float %.071.lcssa, %3
  br i1 %i.bd, label %common.ret, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split, %_brush_point_line_distance2.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.split ], [ %indvars.iv.next, %_brush_point_line_distance2.exit ] ; 4 uses
  %.07186 = phi float [ 0.000000e+00, %.lr.ph.split ], [ %spec.select78, %_brush_point_line_distance2.exit ] ; 2 uses
  %.07285 = phi i32 [ 0, %.lr.ph.split ], [ %spec.select, %_brush_point_line_distance2.exit ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx106 = shl nuw nsw i64 %indvars.iv, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx106 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !102
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !102
  %i.bj = getelementptr i8, ptr %i.bf, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !102
  %i.bl = load <2 x float>, ptr %i.be, align 4, !tbaa !102 ; 3 uses
  %i.bm = fsub reassoc nsz arcp contract afn <2 x float> %i.bl, %i.s ; 3 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %.reass94 = fmul reassoc nsz arcp contract afn float %factor.op.fmul93, %i.bn
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  %.reass96 = fmul reassoc nsz arcp contract afn float %factor.op.fmul95, %i.bo
  %i.bp = fadd reassoc nsz arcp contract afn float %.reass96, %.reass94 ; 6 uses
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bp, 0.000000e+00
  br i1 %i.bq, label %_brush_point_line_distance2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bp, 1.000000e+00
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bs = fsub reassoc nsz arcp contract afn <2 x float> %i.bl, %i.t
  br label %_brush_point_line_distance2.exit

bb.e:                                             ; preds = %bb.c
  %i.bt = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.u, %i.bu
  %i.bw = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.bv
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bw
  %i.by = fmul reassoc nsz arcp contract afn float %i.bp, %i.v
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.c
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bp, %i.w
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %i.e
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bp, %i.x
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, %i.g
  br label %_brush_point_line_distance2.exit

_brush_point_line_distance2.exit:                 ; preds = %bb.b, %bb.d, %bb.e
  %.pn.i = phi float [ %i.bz, %bb.e ], [ %i.c, %bb.b ], [ %i.n, %bb.d ]
  %.pn110.i = phi float [ %i.cb, %bb.e ], [ %i.e, %bb.b ], [ %i.p, %bb.d ]
  %.pn111.i = phi float [ %i.cd, %bb.e ], [ %i.g, %bb.b ], [ %i.r, %bb.d ]
  %i.ce = phi <2 x float> [ %i.bx, %bb.e ], [ %i.bm, %bb.b ], [ %i.bs, %bb.d ] ; 4 uses
  %.0.i = fsub reassoc nsz arcp contract afn float %i.bk, %.pn111.i ; 2 uses
  %.0105.i = fsub reassoc nsz arcp contract afn float %i.bi, %.pn110.i ; 2 uses
  %.0106.i = fsub reassoc nsz arcp contract afn float %i.bg, %.pn.i ; 2 uses
  %foldExtExtBinop112 = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, %i.ce
  %foldExtExtBinop114 = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, %i.ce
  %i.cf = fmul reassoc nsz arcp contract afn float %.0106.i, %.0106.i
  %i.cg = fmul reassoc nsz arcp contract afn float %.0105.i, %.0105.i
  %i.ch = fmul reassoc nsz arcp contract afn float %.0.i, %.0.i
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.ch, %i.cg
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, f0x3C23D70A
  %shift = shufflevector <2 x float> %foldExtExtBinop114, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop116 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop112
  %i.ci = extractelement <2 x float> %foldExtExtBinop116, i64 0
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.cf
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %reass.mul.i ; 2 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.ck, %.07186 ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.cl, i32 %i.cm, i32 %.07285 ; 2 uses
  %spec.select78 = select nsz i1 %i.cl, float %i.ck, float %.07186 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

common.ret119:                                    ; preds = %bb.f, %common.ret
  %common.ret119.op = phi ptr [ %i.ds, %common.ret ], [ %i.da, %bb.f ]
  ret ptr %common.ret119.op

bb.f:                                             ; preds = %._crit_edge
  %i.cn = add nuw nsw i32 %.072.lcssa, 1
  %i.co = tail call fastcc ptr @_brush_ramer_douglas_peucker(ptr noundef %0, i32 noundef %i.cn, ptr noundef %2, float noundef %3) ; 2 uses
  %i.cp = shl nuw nsw i32 %.072.lcssa, 1
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cq
  %i.cs = sub nsw i32 %1, %.072.lcssa
  %i.ct = shl nuw nsw i32 %.072.lcssa, 2
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu
  %i.cw = tail call fastcc ptr @_brush_ramer_douglas_peucker(ptr noundef %i.cr, i32 noundef %i.cs, ptr noundef %i.cv, float noundef %3)
  %i.cx = tail call ptr @g_list_last(ptr noundef %i.co) #18 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.cy) #18
  %i.cz = tail call ptr @g_list_delete_link(ptr noundef %i.co, ptr noundef nonnull %i.cx) #18
  %i.da = tail call ptr @g_list_concat(ptr noundef %i.cz, ptr noundef %i.cw) #18
  br label %common.ret119

common.ret:                                       ; preds = %._crit_edge
  %i.db = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 5 uses
  %i.dc = load <2 x float>, ptr %0, align 4, !tbaa !102
  store <2 x float> %i.dc, ptr %i.db, align 4, !tbaa !102
  %4 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store <4 x float> splat (float -1.000000e+00), ptr %4, align 4, !tbaa !102
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.de = load <3 x float>, ptr %2, align 4, !tbaa !102
  %i.df = shufflevector <3 x float> %i.de, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  store <4 x float> %i.df, ptr %i.dd, align 4, !tbaa !102
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i32 1, ptr %i.dg, align 4, !tbaa !167
  %i.dh = tail call ptr @g_list_append(ptr noundef null, ptr noundef nonnull %i.db) #18
  %i.di = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19 ; 5 uses
  %i.dj = shl nsw i32 %i.a, 1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dk
  %i.dm = load <2 x float>, ptr %i.dl, align 4, !tbaa !102
  store <2 x float> %i.dm, ptr %i.di, align 4, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store <4 x float> splat (float -1.000000e+00), ptr %i.dn, align 4, !tbaa !102
  %i.do = shl nsw i32 %i.a, 2
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dp
  %5 = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %6 = load <3 x float>, ptr %i.dq, align 4, !tbaa !102
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  store <4 x float> %7, ptr %5, align 4, !tbaa !102
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 1, ptr %i.dr, align 4, !tbaa !167
  %i.ds = tail call ptr @g_list_append(ptr noundef %i.dh, ptr noundef nonnull %i.di) #18
  br label %common.ret119
}

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_set_edit_mode_single_form(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #4

declare void @dt_masks_select_form(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_last(ptr noundef) local_unnamed_addr #4

declare ptr @g_list_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @g_list_concat(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_save(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_gtk_set_source_rgba(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #4

declare void @dt_masks_calculate_source_pos_value(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_draw_clone_source_pos(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @cairo_restore(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_line_join(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @dt_masks_line_stroke(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare void @dt_masks_draw_anchor(ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @dt_masks_draw_ctrl(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_closest_point(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_masks_draw_arrow(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_masks_stroke_arrow(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS6_GList", !11, i64 0}
!13 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !11, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"dt_masks_form_gui_t", !12, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !14, i64 152, !14, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !15, i64 184, !15, i64 192, !8, i64 200, !8, i64 204, !16, i64 208, !11, i64 216, !11, i64 224}
!18 = !{!17, !8, i64 172}
!19 = !{!17, !8, i64 60}
!20 = !{!17, !8, i64 64}
!21 = !{!"dt_codepath_t", !8, i64 0}
!22 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!23 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!24 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!25 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!26 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!27 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!28 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!29 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!30 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!31 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!32 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!33 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!34 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!35 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!36 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!37 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!38 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!39 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!40 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!41 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!42 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!43 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!44 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!45 = !{!"dt_pthread_mutex_t", !7, i64 0}
!46 = !{!"p1 omnipotent char", !11, i64 0}
!47 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!48 = !{!"_Bool", !7, i64 0}
!49 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!50 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!51 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!52 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!53 = !{!"", !47, i64 0, !45, i64 8, !7, i64 48, !48, i64 96, !48, i64 97, !49, i64 104, !50, i64 112, !51, i64 120, !52, i64 128, !52, i64 136, !52, i64 144}
!54 = !{!"double", !7, i64 0}
!55 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!56 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!57 = !{!"p1 int", !11, i64 0}
!58 = !{!"dt_sys_resources_t", !16, i64 0, !16, i64 8, !57, i64 16, !57, i64 24, !8, i64 32}
!59 = !{!"dt_backthumb_t", !54, i64 0, !54, i64 8, !8, i64 16, !8, i64 20}
!60 = !{!"dt_gimp_t", !8, i64 0, !46, i64 8, !46, i64 16, !8, i64 24, !8, i64 28}
!61 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!62 = !{!"dt_splash_t", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !8, i64 32}
!63 = !{!"darktable_t", !21, i64 0, !8, i64 4, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !22, i64 48, !23, i64 56, !24, i64 64, !25, i64 72, !26, i64 80, !27, i64 88, !28, i64 96, !29, i64 104, !30, i64 112, !31, i64 120, !32, i64 128, !33, i64 136, !34, i64 144, !35, i64 152, !36, i64 160, !37, i64 168, !38, i64 176, !39, i64 184, !40, i64 192, !41, i64 200, !42, i64 208, !43, i64 216, !44, i64 224, !7, i64 232, !45, i64 2792, !45, i64 2832, !45, i64 2872, !45, i64 2912, !45, i64 2952, !45, i64 2992, !46, i64 3032, !46, i64 3040, !46, i64 3048, !46, i64 3056, !46, i64 3064, !46, i64 3072, !46, i64 3080, !46, i64 3088, !46, i64 3096, !46, i64 3104, !46, i64 3112, !46, i64 3120, !46, i64 3128, !53, i64 3136, !12, i64 3288, !54, i64 3296, !12, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !55, i64 3520, !56, i64 3528, !58, i64 3536, !59, i64 3576, !60, i64 3600, !62, i64 3632, !8, i64 3672}
!64 = !{!63, !24, i64 64}
!65 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!66 = !{!"short", !7, i64 0}
!67 = !{!"", !66, i64 0, !66, i64 2}
!68 = !{!"", !8, i64 0, !7, i64 16}
!69 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !67, i64 48, !68, i64 64, !7, i64 96, !8, i64 112}
!70 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!71 = !{!"dt_image_geoloc_t", !54, i64 0, !54, i64 8, !54, i64 16}
!72 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!73 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!74 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !16, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !14, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !16, i64 1448, !16, i64 1456, !16, i64 1464, !16, i64 1472, !8, i64 1480, !69, i64 1488, !7, i64 1616, !46, i64 1656, !8, i64 1664, !8, i64 1668, !70, i64 1672, !71, i64 1680, !72, i64 1704, !66, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !14, i64 1756, !14, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !12, i64 1856, !73, i64 1864, !8, i64 1872, !8, i64 1876}
!75 = !{!"p1 _ZTS15dt_masks_form_t", !11, i64 0}
!76 = !{!"p1 _ZTS19dt_masks_form_gui_t", !11, i64 0}
!77 = !{!"dt_dev_proxy_exposure_t", !15, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!78 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!79 = !{!"", !78, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!80 = !{!"", !78, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!81 = !{!"", !77, i64 0, !15, i64 40, !79, i64 48, !80, i64 120}
!82 = !{!"dt_dev_chroma_t", !15, i64 0, !15, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!83 = !{!"", !15, i64 0, !15, i64 8, !11, i64 16}
!84 = !{!"", !61, i64 0, !61, i64 8, !8, i64 16, !8, i64 20, !14, i64 24, !14, i64 28, !8, i64 32}
!85 = !{!"", !61, i64 0, !61, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !14, i64 28}
!86 = !{!"", !61, i64 0, !61, i64 8}
end_hunk_0
