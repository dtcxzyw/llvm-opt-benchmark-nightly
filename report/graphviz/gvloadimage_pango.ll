inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@pango_loadimage_cairo:bb.a
  %i.u = load double, ptr %i.q, align 8, !tbaa !41 ; 2 uses
  %i.v = fneg double %i.u
  tail call void @cairo_translate(ptr noundef %i.b, double noundef %i.t, double noundef %i.v) #4
  %i.w = load <2 x double>, ptr %i.p, align 8
  %i.x = load double, ptr %i.s, align 8, !tbaa !42
  %i.y = insertelement <2 x double> %i.w, double %i.u, i64 1
  %i.z = insertelement <2 x double> poison, double %i.t, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.x, i64 1
  %i.ab = fsub <2 x double> %i.y, %i.aa
  %i.ac = load <2 x double>, ptr %i.r, align 8, !tbaa !43
  %i.ad = fdiv <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = extractelement <2 x double> %i.ad, i64 1
  tail call void @cairo_scale(ptr noundef %i.b, double noundef %i.ae, double noundef %i.af) #4
  tail call void @cairo_set_source_surface(ptr noundef %i.b, ptr noundef nonnull %.019.i17, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
  tail call void @cairo_paint(ptr noundef %i.b) #4
  tail call void @cairo_restore(ptr noundef %i.b) #4
  br label %cairo_loadimage.exit.thread

cairo_loadimage.exit.thread:                      ; preds = %bb.d, %cairo_loadimage.exit.thread18, %cairo_loadimage.exit.thread14
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #1

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_paint(ptr noundef) local_unnamed_addr #1

declare void @cairo_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @cairo_freeimage(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @cairo_surface_destroy(ptr noundef %i.b) #4
  ret void
}

declare zeroext i1 @gvusershape_file_access(ptr noundef) local_unnamed_addr #1

declare ptr @cairo_image_surface_create_from_png_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 11) i32 @reader(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0)
  %i.c = icmp eq i64 %i.b, %i.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @feof(ptr noundef %0) #4
  %.not = icmp eq i32 %i.d, 0
  %spec.select = select i1 %.not, i32 10, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

declare ptr @cairo_surface_reference(ptr noundef) local_unnamed_addr #1

declare void @gvusershape_file_release(ptr noundef) local_unnamed_addr #1

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @pango_loadimage_ps(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.boxf) align 8 captures(none) %2, i1 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = icmp eq ptr %i.d, @cairo_freeimage
  br i1 %i.e, label %cairo_loadimage.exit.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %1) #4, !inline_history !37
  store ptr null, ptr %i.c, align 8, !tbaa !36
  store ptr null, ptr %i.a, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = tail call zeroext i1 @gvusershape_file_access(ptr noundef nonnull %1) #4
  br i1 %i.f, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %cond.i = icmp eq i32 %i.h, 3
  br i1 %cond.i, label %bb.f, label %cairo_loadimage.exit.thread61

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = tail call ptr @cairo_image_surface_create_from_png_stream(ptr noundef nonnull @reader, ptr noundef %i.j) #4 ; 4 uses
  %i.l = tail call ptr @cairo_surface_reference(ptr noundef %i.k) #4 ; 0 uses
  %.not23.i = icmp eq ptr %i.k, null
  br i1 %.not23.i, label %cairo_loadimage.exit.thread61, label %cairo_loadimage.exit

cairo_loadimage.exit.thread61:                    ; preds = %bb.f, %bb.e
  tail call void @gvusershape_file_release(ptr noundef nonnull %1) #4
  br label %.critedge

cairo_loadimage.exit:                             ; preds = %bb.f
  store ptr %i.k, ptr %i.a, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @cairo_freeimage, ptr %i.m, align 8, !tbaa !36
  tail call void @gvusershape_file_release(ptr noundef nonnull %1) #4
  br label %cairo_loadimage.exit.thread57

cairo_loadimage.exit.thread57:                    ; preds = %bb.b, %cairo_loadimage.exit
  %.019.i60 = phi ptr [ %i.k, %cairo_loadimage.exit ], [ %i.b, %bb.b ] ; 5 uses
  %i.n = tail call i32 @cairo_image_surface_get_format(ptr noundef nonnull %.019.i60) #4
  %or.cond = icmp ult i32 %i.n, 2
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %cairo_loadimage.exit.thread57
  %i.o = tail call i32 @cairo_image_surface_get_width(ptr noundef nonnull %.019.i60) #4
  %.fr70 = freeze i32 %i.o                        ; 4 uses
  %i.p = tail call i32 @cairo_image_surface_get_height(ptr noundef nonnull %.019.i60) #4 ; 6 uses
  %i.q = tail call i32 @cairo_image_surface_get_stride(ptr noundef nonnull %.019.i60) #4
  %i.r = tail call ptr @cairo_image_surface_get_data(ptr noundef nonnull %.019.i60) #4
  %i.s = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.3) #4 ; 0 uses
  %i.t = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.4) #4 ; 0 uses
  %i.u = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.5) #4 ; 0 uses
  %i.v = icmp sgt i32 %i.p, 0
  br i1 %i.v, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %bb.g
  %i.w = icmp sgt i32 %.fr70, 0
  br i1 %i.w, label %.lr.ph.us.preheader, label %.lr.ph68.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph68
  %i.x = sext i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %i.y = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.6) #4 ; 0 uses
  %i.z = mul nsw i64 %indvars.iv, %i.x
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.z
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %bb.k
  %.05165.us = phi ptr [ %i.aa, %.lr.ph.us ], [ %i.ab, %bb.k ] ; 2 uses
  %.05264.us = phi i32 [ 0, %.lr.ph.us ], [ %i.aj, %bb.k ]
  %.0.copyload.us = load i32, ptr %.05165.us, align 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05165.us, i64 4
  %i.ac = icmp ult i32 %.0.copyload.us, 2130706432
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = lshr i32 %.0.copyload.us, 16
  %i.ae = and i32 %i.ad, 255
  %i.af = lshr i32 %.0.copyload.us, 8
  %i.ag = and i32 %i.af, 255
  %i.ah = and i32 %.0.copyload.us, 255
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ah) #4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = add nuw nsw i32 %.05264.us, 1           ; 2 uses
  %exitcond72.not = icmp eq i32 %i.aj, %.fr70
  br i1 %exitcond72.not, label %._crit_edge.us, label %bb.h, !llvm.loop !44

._crit_edge.us:                                   ; preds = %bb.k
  %i.ak = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.9) #4 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond74.not, label %._crit_edge69, label %.lr.ph.us, !llvm.loop !46

._crit_edge69:                                    ; preds = %.lr.ph68.split, %._crit_edge.us, %bb.g
  %i.al = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.10) #4 ; 0 uses
  %i.am = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.11) #4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !43
  %i.aq = fdiv <2 x double> %i.ap, splat (double 9.600000e+01)
  %4 = fsub <2 x double> splat (double 1.000000e+00), %i.aq
  %i.ar = load <2 x double>, ptr %2, align 8, !tbaa !43 ; 2 uses
  %i.as = load <2 x double>, ptr %i.an, align 8, !tbaa !43
  %i.at = fsub <2 x double> %i.as, %i.ar          ; 2 uses
  %5 = fmul <2 x double> %i.at, %4
  %6 = fmul <2 x double> %5, splat (double 5.000000e-01)
  %7 = fadd <2 x double> %i.ar, %6                ; 2 uses
  %i.au = extractelement <2 x double> %7, i64 0
  %i.av = extractelement <2 x double> %7, i64 1
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.12, double noundef %i.au, double noundef %i.av) #4
  %i.aw = fmul <2 x double> %i.at, splat (double 7.200000e+01)
  %i.ax = fdiv <2 x double> %i.aw, splat (double 9.600000e+01) ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = extractelement <2 x double> %i.ax, i64 1
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.13, double noundef %i.ay, double noundef %i.az) #4
  %i.ba = sub nsw i32 0, %i.p
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %.fr70, i32 noundef %i.p, i32 noundef %.fr70, i32 noundef %i.ba, i32 noundef %i.p) #4
  %i.bb = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.15) #4 ; 0 uses
  %i.bc = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.16) #4 ; 0 uses
  br label %.critedge

.lr.ph68.split:                                   ; preds = %.lr.ph68, %.lr.ph68.split
  %.05066 = phi i32 [ %i.bf, %.lr.ph68.split ], [ 0, %.lr.ph68 ]
  %i.bd = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.6) #4 ; 0 uses
  %i.be = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.9) #4 ; 0 uses
  %i.bf = add nuw nsw i32 %.05066, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %i.p
  br i1 %exitcond.not, label %._crit_edge69, label %.lr.ph68.split, !llvm.loop !46

.critedge:                                        ; preds = %bb.d, %cairo_loadimage.exit.thread61, %._crit_edge69, %cairo_loadimage.exit.thread57
  ret void
}

declare i32 @cairo_image_surface_get_format(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_width(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_height(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_image_surface_get_stride(ptr noundef) local_unnamed_addr #1

declare ptr @cairo_image_surface_get_data(ptr noundef) local_unnamed_addr #1

declare i32 @gvputs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gvprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 256}
!9 = !{!"GVJ_s", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !5, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !15, i64 80, !17, i64 88, !17, i64 96, !15, i64 104, !5, i64 112, !18, i64 120, !20, i64 152, !22, i64 184, !24, i64 208, !25, i64 216, !27, i64 232, !11, i64 240, !5, i64 248, !11, i64 256, !27, i64 264, !15, i64 272, !5, i64 280, !5, i64 284, !5, i64 288, !28, i64 292, !28, i64 300, !28, i64 308, !28, i64 316, !28, i64 324, !5, i64 332, !29, i64 336, !25, i64 368, !29, i64 384, !29, i64 416, !25, i64 448, !25, i64 464, !26, i64 480, !5, i64 488, !25, i64 496, !29, i64 512, !25, i64 544, !25, i64 560, !5, i64 576, !5, i64 580, !30, i64 584, !30, i64 600, !25, i64 616, !25, i64 632, !25, i64 648, !27, i64 664, !27, i64 665, !27, i64 666, !27, i64 667, !27, i64 668, !6, i64 669, !25, i64 672, !25, i64 688, !11, i64 704, !11, i64 712, !15, i64 720, !15, i64 728, !11, i64 736, !31, i64 744, !17, i64 752, !11, i64 760}
!10 = !{!"p1 _ZTS5GVC_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS5GVJ_s", !11, i64 0}
!13 = !{!"p1 _ZTS10GVCOMMON_s", !11, i64 0}
!14 = !{!"p1 _ZTS11obj_state_s", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"gvplugin_active_render_s", !19, i64 0, !5, i64 8, !11, i64 16, !15, i64 24}
!19 = !{!"p1 _ZTS17gvrender_engine_s", !11, i64 0}
!20 = !{!"gvplugin_active_device_s", !21, i64 0, !5, i64 8, !11, i64 16, !15, i64 24}
!21 = !{!"p1 _ZTS17gvdevice_engine_s", !11, i64 0}
!22 = !{!"gvplugin_active_loadimage_t", !23, i64 0, !5, i64 8, !15, i64 16}
!23 = !{!"p1 _ZTS20gvloadimage_engine_s", !11, i64 0}
!24 = !{!"p1 _ZTS20gvdevice_callbacks_s", !11, i64 0}
!25 = !{!"pointf_s", !26, i64 0, !26, i64 8}
!26 = !{!"double", !6, i64 0}
!27 = !{!"_Bool", !6, i64 0}
!28 = !{!"", !5, i64 0, !5, i64 4}
!29 = !{!"", !25, i64 0, !25, i64 16}
!30 = !{!"", !28, i64 0, !28, i64 8}
!31 = !{!"p1 _ZTS21gvevent_key_binding_s", !11, i64 0}
!32 = !{!33, !11, i64 96}
!33 = !{!"usershape_s", !34, i64 0, !15, i64 16, !5, i64 24, !27, i64 28, !27, i64 29, !16, i64 32, !5, i64 40, !15, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !26, i64 80, !5, i64 88, !11, i64 96, !17, i64 104, !11, i64 112}
!34 = !{!"dtlink_s_", !35, i64 0, !6, i64 8}
!35 = !{!"p1 _ZTS9dtlink_s_", !11, i64 0}
!36 = !{!33, !11, i64 112}
!37 = distinct !{null}
!38 = !{!33, !5, i64 40}
!39 = !{!33, !16, i64 32}
!40 = !{!29, !26, i64 0}
!41 = !{!29, !26, i64 24}
!42 = !{!29, !26, i64 8}
!43 = !{!26, !26, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
end_hunk_0
