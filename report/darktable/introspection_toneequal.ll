inline.NumInlined: 273
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 53
begin_hunk_0_@fast_eigf_surface_blur:bb.a

middle.block180:                                  ; preds = %vector.body173
  br i1 %cmp.n181, label %eigf_blending.exit, label %.lr.ph.split.us.i157.preheader296

.lr.ph.split.us.i157.preheader296:                ; preds = %.lr.ph.split.us.i157.preheader, %middle.block180
  %.034.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i157.preheader ], [ %n.vec170, %middle.block180 ]
  br label %.lr.ph.split.us.i157

.lr.ph.split.us.i157:                             ; preds = %.lr.ph.split.us.i157.preheader296, %.lr.ph.split.us.i157
  %.034.us.i = phi i64 [ %i.aby, %.lr.ph.split.us.i157 ], [ %.034.us.i.ph, %.lr.ph.split.us.i157.preheader296 ] ; 3 uses
  %.idx.us.i158 = shl i64 %.034.us.i, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.us.i158 ; 2 uses
  %i.abm = load float, ptr %i.abl, align 8, !tbaa !11, !alias.scope !660, !noalias !657 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !11, !alias.scope !660, !noalias !657
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.us.i ; 2 uses
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !11, !alias.scope !657, !noalias !660 ; 2 uses
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abq, %i.abm
  %i.abs = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abr, float f0x358637BD)
  %i.abt = fdiv reassoc nsz arcp contract afn float %i.abo, %i.abs ; 2 uses
  %i.abu = fadd reassoc nsz arcp contract afn float %i.abt, %4
  %reass.add175 = fsub reassoc nsz arcp contract afn float %i.abq, %i.abm
  %i.abv = fmul reassoc nsz arcp contract afn float %i.abt, %reass.add175
  %reass.mul176 = fdiv reassoc nsz arcp contract afn float %i.abv, %i.abu
  %i.abw = fadd reassoc nsz arcp contract afn float %reass.mul176, %i.abm
  %i.abx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abw, float f0x37800000)
  store float %i.abx, ptr %i.abp, align 4, !tbaa !11, !alias.scope !657, !noalias !660
  %i.aby = add nuw i64 %.034.us.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.aby, %i.p
  br i1 %exitcond36.not.i, label %eigf_blending.exit, label %.lr.ph.split.us.i157, !llvm.loop !664

.lr.ph.split.i153:                                ; preds = %.lr.ph.split.i153.preheader298, %.lr.ph.split.i153
  %.034.i = phi i64 [ %i.aco, %.lr.ph.split.i153 ], [ %.034.i.ph, %.lr.ph.split.i153.preheader298 ] ; 3 uses
  %.idx.i154 = shl i64 %.034.i, 3
  %i.abz = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i154 ; 2 uses
  %i.aca = load float, ptr %i.abz, align 8, !tbaa !11, !alias.scope !660, !noalias !657 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !11, !alias.scope !660, !noalias !657
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i ; 2 uses
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !11, !alias.scope !657, !noalias !660 ; 3 uses
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, %i.aca
  %i.acg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.acf, float f0x358637BD)
  %i.ach = fdiv reassoc nsz arcp contract afn float %i.acc, %i.acg ; 2 uses
  %i.aci = fadd reassoc nsz arcp contract afn float %i.ach, %4
  %reass.add = fsub reassoc nsz arcp contract afn float %i.ace, %i.aca
  %i.acj = fmul reassoc nsz arcp contract afn float %i.ach, %reass.add
  %reass.mul = fdiv reassoc nsz arcp contract afn float %i.acj, %i.aci
  %i.ack = fadd reassoc nsz arcp contract afn float %reass.mul, %i.aca
  %i.acl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ack, float f0x37800000)
  %i.acm = fmul reassoc nsz arcp contract afn float %i.acl, %i.ace
  %i.acn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.acm)
  store float %i.acn, ptr %i.acd, align 4, !tbaa !11, !alias.scope !657, !noalias !660
  %i.aco = add nuw i64 %.034.i, 1                 ; 2 uses
  %exitcond.not.i155 = icmp eq i64 %i.aco, %i.p
  br i1 %exitcond.not.i155, label %eigf_blending.exit, label %.lr.ph.split.i153, !llvm.loop !665

eigf_blending.exit:                               ; preds = %.lr.ph.split.i153, %.lr.ph.split.us.i157, %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block196, %middle.block180, %middle.block36, %middle.block, %eigf_variance_analysis_no_mask.exit, %eigf_variance_analysis.exit
  %i.acp = add nuw nsw i32 %.089232, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.acp, %5
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %eigf_blending.exit, %.preheader, %bb.b
  call void @free(ptr noundef %i.y) #28
  call void @free(ptr noundef %i.w) #28
  call void @free(ptr noundef %i.u) #28
  call void @free(ptr noundef %i.t) #28
  call void @free(ptr noundef %i.r) #28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #2

declare void @dt_box_mean(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #2

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #6

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #2

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_iop_refresh_all(ptr noundef) local_unnamed_addr #6

declare i32 @dt_ioppr_get_iop_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #6

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #6

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #6

declare void @cairo_save(ptr noundef) local_unnamed_addr #6

declare void @cairo_clip(ptr noundef) local_unnamed_addr #6

declare void @cairo_restore(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_develop_distort_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !74  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3044 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !420
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !421
  %i.g = and i32 %i.f, 4
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_unset_distort_signal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !219
  %i.i = and i32 %i.h, 1048576
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %_unset_distort_signal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.49, i32 noundef 2538, ptr noundef nonnull @__FUNCTION__._unset_distort_signal) #28, !inline_history !422
  br label %_unset_distort_signal.exit

_unset_distort_signal.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !423
  tail call void @dt_control_signal_disconnect(ptr noundef %i.j, ptr noundef nonnull @_develop_distort_callback, ptr noundef nonnull %1) #28, !inline_history !422
  store i32 0, ptr %i.d, align 4, !tbaa !420
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.l = load i32, ptr %i.k, align 16, !tbaa !357
  %.not5 = icmp eq i32 %i.l, 0
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_unset_distort_signal.exit
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !343
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.m) #28
  br label %bb.g

bb.g:                                             ; preds = %_unset_distort_signal.exit, %bb.f, %bb.b, %bb.a
  ret void
}

declare void @dt_dev_reprocess_preview(ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #6

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #6

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare ptr @cairo_pattern_create_linear(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_source(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_pattern_destroy(ptr noundef) local_unnamed_addr #6

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #6

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_pattern_add_color_stop_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_histogram(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !74  ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #28 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 3024 ; 2 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !127
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3020
  %i.j = load i32, ptr %i.i, align 4, !tbaa !126
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2544
  %i.l = load i64, ptr %i.k, align 16, !tbaa !141
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2536
  %i.n = load i64, ptr %i.m, align 8, !tbaa !140
  %i.o = mul i64 %i.n, %i.l                       ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2576
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !142 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1408 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2480 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 2564
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.r, i8 0, i64 1024, i1 false), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !666
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !666
  %.not83.i = icmp eq i64 %i.o, 0
  br i1 %.not83.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.o, 1
  %i.v = icmp eq i64 %i.o, 1
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06577.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bj, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06577.i.epil.init
  %i.x = load float, ptr %i.w, align 4, !tbaa !11, !alias.scope !666
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.x)
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 3.200000e+01
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, 3.200000e+02
  %i.ab = fptosi float %i.aa to i32
  %narrow75.i.epil = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %narrow75.i.epil, i32 511)
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29, !noalias !666
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !29, !noalias !666
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.d
  %i.ah = uitofp reassoc nsz arcp contract afn i64 %i.o to float ; 2 uses
  %i.ai = fmul reassoc nnan nsz arcp contract afn float %i.ah, 5.000000e-02
  %i.aj = fptosi float %i.ai to i32               ; 8 uses
  %i.ak = fmul reassoc nnan nsz arcp contract afn float %i.ah, f0x3D4CCCD0
  %i.al = fptosi float %i.ak to i32               ; 2 uses
  br label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.06577.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bj, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06577.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !11, !alias.scope !666
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.an)
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 3.200000e+01
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, 3.200000e+02
  %i.ar = fptosi float %i.aq to i32
  %narrow75.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.as = tail call i32 @llvm.umin.i32(i32 %narrow75.i, i32 511)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29, !noalias !666
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !29, !noalias !666
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06577.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11, !alias.scope !666
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.az)
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 3.200000e+01
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, 3.200000e+02
  %i.bd = fptosi float %i.bc to i32
  %narrow75.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %narrow75.i.1, i32 511)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29, !noalias !666
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !29, !noalias !666
  %i.bj = add nuw i64 %.06577.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

bb.e:                                             ; preds = %bb.i, %._crit_edge.i
  %indvars.iv.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.i.3, %bb.i ] ; 6 uses
  %.06378.i = phi i32 [ 0, %._crit_edge.i ], [ %i.by, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !29, !noalias !666
  %i.bm = add nsw i32 %i.bl, %.06378.i            ; 3 uses
  %i.bn = icmp uge i32 %.06378.i, %i.aj
  %.not.i = icmp slt i32 %i.bm, %i.aj
  %or.cond.i = select i1 %i.bn, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.f, label %.split.loop.exit88.i

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !29, !noalias !666
  %i.bq = add nsw i32 %i.bp, %i.bm                ; 3 uses
  %i.br = icmp uge i32 %i.bm, %i.aj
  %.not.i.1 = icmp slt i32 %i.bq, %i.aj
  %or.cond.i.1 = select i1 %i.br, i1 true, i1 %.not.i.1
  br i1 %or.cond.i.1, label %bb.g, label %.split.loop.exit88.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !29, !noalias !666
  %i.bu = add nsw i32 %i.bt, %i.bq                ; 3 uses
  %i.bv = icmp uge i32 %i.bq, %i.aj
  %.not.i.2 = icmp slt i32 %i.bu, %i.aj
  %or.cond.i.2 = select i1 %i.bv, i1 true, i1 %.not.i.2
  br i1 %or.cond.i.2, label %bb.h, label %.split.loop.exit88.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !29, !noalias !666
  %i.by = add nsw i32 %i.bx, %i.bu                ; 2 uses
  %i.bz = icmp uge i32 %i.bu, %i.aj
  %.not.i.3 = icmp slt i32 %i.by, %i.aj
  %or.cond.i.3 = select i1 %i.bz, i1 true, i1 %.not.i.3
  br i1 %or.cond.i.3, label %bb.i, label %.split.loop.exit88.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond85.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 512
  br i1 %exitcond85.not.i.3, label %.split.loop.exit.i, label %bb.e

.split.loop.exit88.i:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.e ], [ %indvars.iv.next.i, %bb.f ], [ %indvars.iv.next.i.1, %bb.g ], [ %indvars.iv.next.i.2, %bb.h ]
  %i.ca = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %i.cc = fmul reassoc nnan nsz arcp contract afn double %i.cb, f0x3FA0080402010080
  %i.cd = fadd reassoc nsz arcp contract afn double %i.cc, -1.000000e+01
  %i.ce = fptrunc reassoc nsz arcp contract afn double %i.cd to float
  br label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %bb.i, %.split.loop.exit88.i
  %i.cf = phi float [ %i.ce, %.split.loop.exit88.i ], [ -1.000000e+01, %bb.i ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.split.loop.exit.i
  %.05581.i = phi i32 [ 511, %.split.loop.exit.i ], [ %3, %bb.j ] ; 4 uses
  %.16480.i = phi i32 [ 0, %.split.loop.exit.i ], [ %i.ci, %bb.j ] ; 2 uses
  %1 = zext nneg i32 %.05581.i to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %1
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29, !noalias !666
  %i.ci = add nsw i32 %i.ch, %.16480.i            ; 2 uses
  %2 = icmp ult i32 %.16480.i, %i.al
  %.not71.i = icmp sge i32 %i.ci, %i.al
  %or.cond72.not92.i = select i1 %2, i1 %.not71.i, i1 false
  %3 = add nsw i32 %.05581.i, -1
  %.not87.i = icmp eq i32 %.05581.i, 0
  %or.cond90.i = or i1 %.not87.i, %or.cond72.not92.i
  br i1 %or.cond90.i, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  store float %i.cf, ptr %i.t, align 4, !tbaa !11, !noalias !666
  %i.cj = uitofp nneg i32 %.05581.i to float
  %i.ck = fpext fast float %i.cj to double
  %i.cl = fmul reassoc nnan nsz arcp contract afn double %i.ck, f0x3FA0080402010080
  %i.cm = fadd reassoc nsz arcp contract afn double %i.cl, -1.000000e+01
  %i.cn = fptrunc reassoc nsz arcp contract afn double %i.cm to float ; 2 uses
  store float %i.cn, ptr %i.u, align 8, !tbaa !11, !noalias !666
  %.promoted = load i32, ptr %i.s, align 16, !tbaa !29, !noalias !666
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %..i19 = phi i32 [ %.promoted, %bb.k ], [ %..i.1, %bb.l ]
  %.082.i = phi i64 [ 0, %bb.k ], [ %i.dr, %bb.l ] ; 4 uses
  %i.co = uitofp nneg i64 %.082.i to double
  %i.cp = fmul reassoc nnan nsz arcp contract afn double %i.co, f0x3FA0080402010080
  %i.cq = fadd reassoc nnan nsz arcp contract afn double %i.cp, -1.000000e+01
  %i.cr = fptrunc reassoc nnan nsz arcp contract afn double %i.cq to float
  %i.cs = fmul reassoc nnan nsz arcp contract afn float %i.cr, 3.200000e+01
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, 2.560000e+02
  %i.cu = fptosi float %i.ct to i32
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cv = tail call i32 @llvm.umin.i32(i32 %narrow.i, i32 255)
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.082.i
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !29, !noalias !666
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cw ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29, !noalias !666
  %i.db = add nsw i32 %i.da, %i.cy                ; 2 uses
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !29, !noalias !666
  %..i = tail call i32 @llvm.smax.i32(i32 %i.db, i32 %..i19)
  %i.dc = or disjoint i64 %.082.i, 1              ; 2 uses
  %i.dd = uitofp nneg i64 %i.dc to double
  %i.de = fmul reassoc nnan nsz arcp contract afn double %i.dd, f0x3FA0080402010080
  %i.df = fadd reassoc nnan nsz arcp contract afn double %i.de, -1.000000e+01
  %i.dg = fptrunc reassoc nnan nsz arcp contract afn double %i.df to float
  %i.dh = fmul reassoc nnan nsz arcp contract afn float %i.dg, 3.200000e+01
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, 2.560000e+02
  %i.dj = fptosi float %i.di to i32
  %narrow.i.1 = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %narrow.i.1, i32 255)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dc
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29, !noalias !666
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dl ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !29, !noalias !666
  %i.dq = add nsw i32 %i.dp, %i.dn                ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !29, !noalias !666
  %..i.1 = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 %..i) ; 2 uses
  %i.dr = add nuw nsw i64 %.082.i, 2              ; 2 uses
  %exitcond86.not.i.1 = icmp eq i64 %i.dr, 512
  br i1 %exitcond86.not.i.1, label %compute_log_histogram_and_stats.exit, label %bb.l

compute_log_histogram_and_stats.exit:             ; preds = %bb.l
  store i32 %..i.1, ptr %i.s, align 16, !tbaa !29, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !666
  %i.ds = fadd reassoc nsz arcp contract afn float %i.cf, %i.cn
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, 5.000000e-01
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 2560
  store float %i.dt, ptr %i.du, align 64, !tbaa !669
  store i32 1, ptr %i.g, align 16, !tbaa !127
  br label %bb.m

bb.m:                                             ; preds = %compute_log_histogram_and_stats.exit, %bb.c, %bb.b
  %i.dv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #28 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #6

declare void @dtgtk_cairo_paint_warning(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_paint(ptr noundef) local_unnamed_addr #6

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #6

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_iop_refresh_center(ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #6

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log2.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <2 x float> @llvm.masked.load.v2f32.p0(ptr captures(none), <2 x i1>, <2 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v2f32.p0(<2 x float>, ptr captures(none), <2 x i1>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp2.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp2.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.pow.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !15, !14}
!18 = distinct !{!18, !15, !14}
!19 = distinct !{!19, !14, !15}
end_hunk_0
