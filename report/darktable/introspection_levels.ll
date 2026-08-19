inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dt_iop_levels_motion_notify:bb.a
bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.ba, align 4, !tbaa !182
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi nsz float [ %i.cj, %bb.t ], [ %i.cf, %bb.s ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !14
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cm, %i.cb
  %i.co = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cn)
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.co, %.1
  br i1 %i.cp, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.ba, align 4, !tbaa !182
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.v, %bb.o
  call void @gtk_widget_queue_draw(ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dt_iop_levels_leave_notify(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <2 x double> splat (double -1.000000e+00), ptr %i.c, align 8, !tbaa !164
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #18
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dt_iop_levels_scroll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !19  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = tail call i32 @dt_gui_ignore_scroll(ptr noundef %1) #18
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #18
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !165
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !201
  %.not20 = icmp eq ptr %i.k, %2
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @dt_iop_request_focus(ptr noundef nonnull %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !209
  %i.n = tail call reassoc nsz arcp contract afn float @dt_accel_get_speed_multiplier(ptr noundef %0, i32 noundef %i.m) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.o = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef %1, ptr noundef nonnull %i.a) #18
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = fpext reassoc nsz arcp contract afn float %i.n to double
  %i.q = fmul reassoc nsz arcp contract afn double %i.p, 2.000000e-03
  %i.r = fptrunc reassoc nsz arcp contract afn double %i.q to float
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !182  ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !14
  %i.y = load i32, ptr %i.a, align 4, !tbaa !18
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.r
  %i.ab = fsub reassoc nsz arcp contract afn float %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !204
  %.val = load ptr, ptr %i.b, align 16, !tbaa !19
  call fastcc void @dt_iop_levels_move_handle(ptr %.val, i32 noundef %i.u, float noundef %i.ab, ptr noundef nonnull %i.s, float noundef %i.ad)
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !46
  call void @dt_dev_add_history_item(ptr noundef %i.ae, ptr noundef nonnull %2, i32 noundef 1) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  %.1 = phi i32 [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.1
}

declare ptr @gtk_button_new_with_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @dt_iop_levels_autoadjust_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !19  ; 2 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !185 ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %dt_iop_levels_compute_levels_manual.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %bb.d ], [ 0, %bb.b ] ; 10 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %.preheader.i.1

bb.c:                                             ; preds = %.preheader.i.7, %.preheader.i.6, %.preheader.i.5, %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %.preheader.i ], [ %indvars.iv.next.i, %.preheader.i.1 ], [ %indvars.iv.next.i.1, %.preheader.i.2 ], [ %indvars.iv.next.i.2, %.preheader.i.3 ], [ %indvars.iv.next.i.3, %.preheader.i.4 ], [ %indvars.iv.next.i.4, %.preheader.i.5 ], [ %indvars.iv.next.i.5, %.preheader.i.6 ], [ %indvars.iv.next.i.6, %.preheader.i.7 ]
  %i.n = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fmul reassoc nnan nsz arcp contract afn float %i.o, f0x3A800000
  store float %i.p, ptr %i.j, align 4, !tbaa !14
  br label %.loopexit17.i.preheader

.preheader.i.1:                                   ; preds = %.preheader.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = icmp ugt i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 8 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i.1
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %bb.c, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 12 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i.2
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = icmp ugt i32 %i.x, 1
  br i1 %i.y, label %bb.c, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 16 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i.3
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ab = icmp ugt i32 %i.aa, 1
  br i1 %i.ab, label %bb.c, label %.preheader.i.5

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 20 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i.4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = icmp ugt i32 %i.ad, 1
  br i1 %i.ae, label %bb.c, label %.preheader.i.6

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 24 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i.5
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !18
  %i.ah = icmp ugt i32 %i.ag, 1
  br i1 %i.ah, label %bb.c, label %.preheader.i.7

.preheader.i.7:                                   ; preds = %.preheader.i.6
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 28 ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i.6
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !18
  %i.ak = icmp ugt i32 %i.aj, 1
  br i1 %i.ak, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.preheader.i.7
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 32
  %i.al = icmp samesign ult i64 %indvars.iv.next.i.6, 1017
  br i1 %i.al, label %.preheader.i, label %.loopexit17.i.preheader

.loopexit17.i.preheader:                          ; preds = %bb.d, %bb.c
  br label %.loopexit17.i

.loopexit17.i:                                    ; preds = %bb.f, %.loopexit17.i.preheader
  %indvars.iv25.i = phi i64 [ 1020, %.loopexit17.i.preheader ], [ %indvars.iv.next26.i.7, %bb.f ] ; 10 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv25.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %bb.e, label %.loopexit17.i.1

bb.e:                                             ; preds = %.loopexit17.i.7, %.loopexit17.i.6, %.loopexit17.i.5, %.loopexit17.i.4, %.loopexit17.i.3, %.loopexit17.i.2, %.loopexit17.i.1, %.loopexit17.i
  %indvars.iv25.i.lcssa = phi i64 [ %indvars.iv25.i, %.loopexit17.i ], [ %indvars.iv.next26.i, %.loopexit17.i.1 ], [ %indvars.iv.next26.i.1, %.loopexit17.i.2 ], [ %indvars.iv.next26.i.2, %.loopexit17.i.3 ], [ %indvars.iv.next26.i.3, %.loopexit17.i.4 ], [ %indvars.iv.next26.i.4, %.loopexit17.i.5 ], [ %indvars.iv.next26.i.5, %.loopexit17.i.6 ], [ %indvars.iv.next26.i.6, %.loopexit17.i.7 ]
  %2 = trunc nuw nsw i64 %indvars.iv25.i.lcssa to i32
  %i.ap = uitofp nneg i32 %2 to float
  %i.aq = fmul reassoc nnan nsz arcp contract afn float %i.ap, f0x3A800000 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store float %i.aq, ptr %i.ar, align 4, !tbaa !14
  br label %.loopexit.i

.loopexit17.i.1:                                  ; preds = %.loopexit17.i
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, -4 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next26.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = icmp ugt i32 %i.at, 1
  br i1 %i.au, label %bb.e, label %.loopexit17.i.2

.loopexit17.i.2:                                  ; preds = %.loopexit17.i.1
  %indvars.iv.next26.i.1 = add nsw i64 %indvars.iv25.i, -8 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next26.i.1
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !18
  %i.ax = icmp ugt i32 %i.aw, 1
  br i1 %i.ax, label %bb.e, label %.loopexit17.i.3

.loopexit17.i.3:                                  ; preds = %.loopexit17.i.2
  %indvars.iv.next26.i.2 = add nsw i64 %indvars.iv25.i, -12 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next26.i.2
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18
  %i.ba = icmp ugt i32 %i.az, 1
  br i1 %i.ba, label %bb.e, label %.loopexit17.i.4

.loopexit17.i.4:                                  ; preds = %.loopexit17.i.3
  %indvars.iv.next26.i.3 = add nsw i64 %indvars.iv25.i, -16 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next26.i.3
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.bd = icmp ugt i32 %i.bc, 1
  br i1 %i.bd, label %bb.e, label %.loopexit17.i.5

.loopexit17.i.5:                                  ; preds = %.loopexit17.i.4
  %indvars.iv.next26.i.4 = add nsw i64 %indvars.iv25.i, -20 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next26.i.4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bg = icmp ugt i32 %i.bf, 1
  br i1 %i.bg, label %bb.e, label %.loopexit17.i.6

.loopexit17.i.6:                                  ; preds = %.loopexit17.i.5
  %indvars.iv.next26.i.5 = add nsw i64 %indvars.iv25.i, -24 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next26.i.5
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  %i.bj = icmp ugt i32 %i.bi, 1
  br i1 %i.bj, label %bb.e, label %.loopexit17.i.7

.loopexit17.i.7:                                  ; preds = %.loopexit17.i.6
  %indvars.iv.next26.i.6 = add nsw i64 %indvars.iv25.i, -28 ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next26.i.6
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18
  %i.bm = icmp ugt i32 %i.bl, 1
  br i1 %i.bm, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.loopexit17.i.7
  %indvars.iv.next26.i.7 = add nsw i64 %indvars.iv25.i, -32
  %.not25.i.7 = icmp eq i64 %indvars.iv.next26.i.6, 0
  br i1 %.not25.i.7, label %.loopexit.loopexit.i, label %.loopexit17.i

.loopexit.loopexit.i:                             ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !14
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.e
  %i.bn = phi float [ %.pre.i, %.loopexit.loopexit.i ], [ %i.aq, %bb.e ]
  %i.bo = load float, ptr %i.j, align 4, !tbaa !14
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bn
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, 5.000000e-01
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store float %i.bq, ptr %i.br, align 4, !tbaa !14
  br label %dt_iop_levels_compute_levels_manual.exit

dt_iop_levels_compute_levels_manual.exit:         ; preds = %bb.b, %.loopexit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !166 ; 2 uses
  %.not9 = icmp eq ptr %i.bt, null
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %dt_iop_levels_compute_levels_manual.exit
  tail call void @gtk_toggle_button_set_active(ptr noundef nonnull %i.bt, i32 noundef 0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %dt_iop_levels_compute_levels_manual.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store float -1.000000e+00, ptr %i.bu, align 8, !tbaa !36
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !46
  tail call void @dt_dev_add_history_item(ptr noundef %i.bv, ptr noundef %1, i32 noundef 1) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !19
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163
  tail call void @g_list_free(ptr noundef %i.c) #18
  ret void
}

declare void @g_list_free(ptr noundef) local_unnamed_addr #3

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !211
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !214
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !214
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !214
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !214
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !214
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !214
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !214
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !214
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !214
  store ptr @introspection_init.f6, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 600), align 8, !tbaa !214
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.34) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.27) #20
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.30) #20
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.32) #20
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.37) #20
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.1) #20
  %.not18 = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select = select i1 %.not18, ptr %i.k, ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.j ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.34) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.27) #18
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #18
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.32) #18
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.37) #18
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.1) #18
  %.not11 = icmp eq i32 %i.f, 0
  %. = select i1 %.not11, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ %., %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

end_hunk_0
