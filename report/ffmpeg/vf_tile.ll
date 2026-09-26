Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_tile?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@filter_frame:bb.a
  %i.de = load i32, ptr %i.cb, align 8, !tbaa !32
  %i.df = add i32 %i.de, 1                        ; 2 uses
  store i32 %i.df, ptr %i.cb, align 8, !tbaa !32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !29
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.dj = call fastcc i32 @end_last_frame(ptr noundef nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l, %bb.c
  %.053 = phi i32 [ %i.dj, %bb.l ], [ -12, %bb.c ], [ 0, %.loopexit ]
  ret i32 %.053
}

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_fill_rectangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_copy_rectangle2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @end_last_frame(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !32
  %i.k = load i32, ptr %i.i, align 4, !tbaa !29
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.val = load ptr, ptr %i.m, align 8, !tbaa !48
  %.val16 = load ptr, ptr %i.a, align 8, !tbaa !19 ; 6 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !44 ; 2 uses
  %i.o = getelementptr i8, ptr %.val.val, i64 40
  %.val.val.val = load i32, ptr %i.o, align 8, !tbaa !45 ; 2 uses
  %i.p = getelementptr i8, ptr %.val.val, i64 44
  %.val.val.val17 = load i32, ptr %i.p, align 4, !tbaa !46 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val16, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = urem i32 %i.r, %i.t
  %i.v = udiv i32 %i.r, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val16, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27   ; 2 uses
  %i.aa = add i32 %i.z, %.val.val.val
  %i.ab = mul i32 %i.aa, %i.u
  %i.ac = add i32 %i.ab, %i.x
  %i.ad = add i32 %i.z, %.val.val.val17
  %i.ae = mul i32 %i.ad, %i.v
  %i.af = add i32 %i.ae, %i.x
  %i.ag = getelementptr inbounds nuw i8, ptr %.val16, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.val16, i64 176
  tail call void @ff_fill_rectangle(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, ptr noundef %i.g, ptr noundef nonnull %i.n, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %.val.val.val, i32 noundef %.val.val.val17) #5
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !32
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.q, align 8, !tbaa !32
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !32
  %i.al = load i32, ptr %i.i, align 4, !tbaa !29
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !30 ; 2 uses
  store i32 %i.ao, ptr %i.h, align 8, !tbaa !32
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  tail call void @av_frame_free(ptr noundef nonnull %i.ap) #5
  %i.aq = tail call ptr @av_frame_clone(ptr noundef %i.g) #5
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ar = tail call i32 @ff_filter_frame(ptr noundef %i.e, ptr noundef %i.g) #5
  store ptr null, ptr %i.f, align 8, !tbaa !41
  ret i32 %i.ar
}

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.f) #5 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %.not9 = icmp eq ptr %i.l, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc i32 @end_last_frame(ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.m, %bb.d ], [ -541478725, %bb.c ], [ -541478725, %bb.b ], [ %i.g, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_props(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25   ; 4 uses
  %i.i = add i32 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %i.l = mul i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28
  %i.o = shl i32 %i.n, 1                          ; 2 uses
  %i.p = add i32 %i.o, %i.l                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26   ; 4 uses
  %i.s = add i32 %i.r, -1
  %i.t = mul i32 %i.s, %i.k
  %i.u = add i32 %i.t, %i.o                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !45   ; 3 uses
  %i.x = sub i32 2147483647, %i.p
  %i.y = udiv i32 %i.x, %i.h
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.h, i32 noundef %i.w) #5
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !46 ; 3 uses
  %i.ac = sub i32 2147483647, %i.u
  %i.ad = udiv i32 %i.ac, %i.r
  %i.ae = icmp ugt i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.r, i32 noundef %i.ab) #5
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.af = mul i32 %i.w, %i.h
  %i.ag = add i32 %i.af, %i.p
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !45
  %i.ai = mul i32 %i.ab, %i.r
  %i.aj = add i32 %i.ai, %i.u
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.an = load i64, ptr %i.am, align 8
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !30
  %i.au = sub i32 %i.ar, %i.at
  %.sroa.2.0.insert.ext.i = zext i32 %i.au to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = tail call i64 @av_mul_q(i64 %i.av, i64 %.sroa.0.0.insert.insert.i) #6
  store i64 %i.aw, ptr %i.ao, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ay = tail call i32 @ff_draw_init_from_link(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.f, i32 noundef 0) #5 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.5) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  tail call void @ff_draw_color(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.d ], [ %i.ay, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_mul_q(i64, i64) local_unnamed_addr #3

declare i32 @ff_draw_init_from_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_draw_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_set_common_formats2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_draw_supported_pixel_formats(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS18AVPixFmtDescriptor", !9, i64 0}
!21 = !{!"FFDrawContext", !20, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 41, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !5, i64 64}
!22 = !{!"FFDrawColor", !5, i64 0, !5, i64 4}
!23 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!24 = !{!"TileContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !21, i64 40, !22, i64 176, !23, i64 248, !23, i64 256, !5, i64 264}
!25 = !{!24, !6, i64 8}
!26 = !{!24, !6, i64 12}
!27 = !{!24, !6, i64 20}
!28 = !{!24, !6, i64 16}
!29 = !{!24, !6, i64 36}
!30 = !{!24, !6, i64 24}
!31 = !{!24, !6, i64 28}
!32 = !{!24, !6, i64 32}
!33 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!34 = !{!"AVRational", !6, i64 0, !6, i64 4}
!35 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!36 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!37 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!38 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!39 = !{!"AVFilterFormatsConfig", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!40 = !{!"AVFilterLink", !33, i64 0, !13, i64 8, !33, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !34, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !35, i64 72, !34, i64 96, !36, i64 104, !6, i64 112, !6, i64 116, !39, i64 120, !39, i64 168}
!41 = !{!24, !23, i64 248}
!42 = !{!18, !15, i64 56}
!43 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!40, !6, i64 40}
!46 = !{!40, !6, i64 44}
!47 = !{!24, !23, i64 256}
!48 = !{!18, !15, i64 32}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!40, !33, i64 0}
!51 = distinct !{!51, !49}
!52 = !{!23, !23, i64 0}
!53 = !{!40, !33, i64 16}
!54 = !{!"p2 omnipotent char", !14, i64 0}
!55 = !{!"long", !5, i64 0}
!56 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!57 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!58 = !{!"AVFrame", !5, i64 0, !5, i64 64, !54, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !34, i64 124, !55, i64 136, !55, i64 144, !34, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !56, i64 248, !6, i64 256, !36, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !55, i64 304, !57, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !55, i64 344, !55, i64 352, !55, i64 360, !55, i64 368, !9, i64 376, !35, i64 384, !55, i64 408, !6, i64 416}
!59 = !{!58, !6, i64 104}
!60 = !{!58, !6, i64 108}
!61 = distinct !{!61, !49}
end_hunk_0
