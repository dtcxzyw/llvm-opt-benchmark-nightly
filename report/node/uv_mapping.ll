inline.NumInlined: 5
begin_hunk_0_@uvwasi__translate_uv_error:bb.a
  br label %bb.bg

bb.g:                                             ; preds = %bb.a
  br label %bb.bg

bb.h:                                             ; preds = %bb.a
  br label %bb.bg

bb.i:                                             ; preds = %bb.a
  br label %bb.bg

bb.j:                                             ; preds = %bb.a
  br label %bb.bg

bb.k:                                             ; preds = %bb.a
  br label %bb.bg

bb.l:                                             ; preds = %bb.a
  br label %bb.bg

bb.m:                                             ; preds = %bb.a
  br label %bb.bg

bb.n:                                             ; preds = %bb.a
  br label %bb.bg

bb.o:                                             ; preds = %bb.a
  br label %bb.bg

bb.p:                                             ; preds = %bb.a
  br label %bb.bg

bb.q:                                             ; preds = %bb.a
  br label %bb.bg

bb.r:                                             ; preds = %bb.a
  br label %bb.bg

bb.s:                                             ; preds = %bb.a
  br label %bb.bg

bb.t:                                             ; preds = %bb.a
  br label %bb.bg

bb.u:                                             ; preds = %bb.a
  br label %bb.bg

bb.v:                                             ; preds = %bb.a
  br label %bb.bg

bb.w:                                             ; preds = %bb.a
  br label %bb.bg

bb.x:                                             ; preds = %bb.a
  br label %bb.bg

bb.y:                                             ; preds = %bb.a
  br label %bb.bg

bb.z:                                             ; preds = %bb.a
  br label %bb.bg

bb.aa:                                            ; preds = %bb.a
  br label %bb.bg

bb.ab:                                            ; preds = %bb.a
  br label %bb.bg

bb.ac:                                            ; preds = %bb.a
  br label %bb.bg

bb.ad:                                            ; preds = %bb.a
  br label %bb.bg

bb.ae:                                            ; preds = %bb.a
  br label %bb.bg

bb.af:                                            ; preds = %bb.a
  br label %bb.bg

bb.ag:                                            ; preds = %bb.a
  br label %bb.bg

bb.ah:                                            ; preds = %bb.a
  br label %bb.bg

bb.ai:                                            ; preds = %bb.a
  br label %bb.bg

bb.aj:                                            ; preds = %bb.a
  br label %bb.bg

bb.ak:                                            ; preds = %bb.a
  br label %bb.bg

bb.al:                                            ; preds = %bb.a
  br label %bb.bg

bb.am:                                            ; preds = %bb.a
  br label %bb.bg

bb.an:                                            ; preds = %bb.a
  br label %bb.bg

bb.ao:                                            ; preds = %bb.a
  br label %bb.bg

bb.ap:                                            ; preds = %bb.a
  br label %bb.bg

bb.aq:                                            ; preds = %bb.a
  br label %bb.bg

bb.ar:                                            ; preds = %bb.a
  br label %bb.bg

bb.as:                                            ; preds = %bb.a
  br label %bb.bg

bb.at:                                            ; preds = %bb.a
  br label %bb.bg

bb.au:                                            ; preds = %bb.a
  br label %bb.bg

bb.av:                                            ; preds = %bb.a
  br label %bb.bg

bb.aw:                                            ; preds = %bb.a
  br label %bb.bg

bb.ax:                                            ; preds = %bb.a
  br label %bb.bg

bb.ay:                                            ; preds = %bb.a
  br label %bb.bg

bb.az:                                            ; preds = %bb.a
  br label %bb.bg

bb.ba:                                            ; preds = %bb.a
  br label %bb.bg

bb.bb:                                            ; preds = %bb.a
  br label %bb.bg

bb.bc:                                            ; preds = %bb.a
  br label %bb.bg

bb.bd:                                            ; preds = %bb.a
  br label %bb.bg

bb.be:                                            ; preds = %bb.a
  br label %bb.bg

bb.bf:                                            ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 0
  %i.b = trunc i32 %0 to i16
  %spec.select = select i1 %i.a, i16 %i.b, i16 52
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.a, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i16 [ %spec.select, %bb.bf ], [ 1, %bb.a ], [ 0, %bb.be ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 10, %bb.i ], [ 11, %bb.j ], [ 13, %bb.k ], [ 14, %bb.l ], [ 15, %bb.m ], [ 17, %bb.n ], [ 20, %bb.o ], [ 21, %bb.p ], [ 22, %bb.q ], [ 23, %bb.r ], [ 27, %bb.s ], [ 28, %bb.t ], [ 29, %bb.u ], [ 30, %bb.v ], [ 31, %bb.w ], [ 32, %bb.x ], [ 33, %bb.y ], [ 34, %bb.z ], [ 35, %bb.aa ], [ 37, %bb.ab ], [ 38, %bb.ac ], [ 40, %bb.ad ], [ 41, %bb.ae ], [ 42, %bb.af ], [ 43, %bb.ag ], [ 44, %bb.ah ], [ 48, %bb.ai ], [ 50, %bb.aj ], [ 51, %bb.ak ], [ 52, %bb.al ], [ 53, %bb.am ], [ 54, %bb.an ], [ 55, %bb.ao ], [ 57, %bb.ap ], [ 58, %bb.aq ], [ 60, %bb.ar ], [ 63, %bb.as ], [ 64, %bb.at ], [ 65, %bb.au ], [ 66, %bb.av ], [ 67, %bb.aw ], [ 68, %bb.ax ], [ 69, %bb.ay ], [ 70, %bb.az ], [ 71, %bb.ba ], [ 73, %bb.bb ], [ 74, %bb.bc ], [ 75, %bb.bd ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 -1, 32) i32 @uvwasi__translate_to_uv_signal(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %0, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 30
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.uvwasi__translate_to_uv_signal, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @uvwasi__timespec_to_timestamp(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9
  %i.b = mul i64 %i.a, 1000000000
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  %i.e = add i64 %i.b, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext range(i8 0, 8) i8 @uvwasi__stat_to_filetype(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 61440
  %i.d = add nsw i64 %i.c, -4096                  ; 2 uses
  %i.e = icmp ult i64 %i.d, 49152
  br i1 %i.e, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %1 = lshr exact i64 %i.d, 12
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uvwasi__get_filetype_by_fd, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @uvwasi__stat_to_filestat(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 17), (24, 64)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !15
  store i64 %i.a, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.i, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = and i64 %i.l, 61440
  %i.n = add nsw i64 %i.m, -4096                  ; 2 uses
  %i.o = icmp ult i64 %i.n, 49152
  br i1 %i.o, label %switch.lookup, label %uvwasi__stat_to_filetype.exit

switch.lookup:                                    ; preds = %bb.a
  %2 = lshr exact i64 %i.n, 12
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uvwasi__get_filetype_by_fd, i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %uvwasi__stat_to_filetype.exit

uvwasi__stat_to_filetype.exit:                    ; preds = %bb.a, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.0.i, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = mul i64 %i.r, 1000000000
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = add i64 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9
  %i.z = mul i64 %i.y, 1000000000
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.ac = add i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.ag = mul i64 %i.af, 1000000000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.aj = add i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i16 @uvwasi__get_filetype_by_fd(i32 noundef %0, ptr noundef captures(none) initializes((0, 1)) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.uv_fs_s, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = call i32 @uv_fs_fstat(ptr noundef null, ptr noundef nonnull %2, i32 noundef %0, ptr noundef null) #6 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #6
  %i.b = call i32 @uv_guess_handle(i32 noundef %0) #6
  switch i32 %i.b, label %bb.d [
    i32 17, label %bb.c
    i32 14, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  store i8 2, ptr %1, align 1, !tbaa !28
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 1, !tbaa !28
  %i.c = call zeroext i16 @uvwasi__translate_uv_error(i32 noundef %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = and i64 %i.e, 61440
  %i.g = add nsw i64 %i.f, -4096                  ; 2 uses
  %i.h = icmp ult i64 %i.g, 49152
  br i1 %i.h, label %switch.lookup, label %uvwasi__stat_to_filetype.exit

switch.lookup:                                    ; preds = %bb.e
  %3 = lshr exact i64 %i.g, 12
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uvwasi__get_filetype_by_fd, i64 %3
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %uvwasi__stat_to_filetype.exit

uvwasi__stat_to_filetype.exit:                    ; preds = %bb.e, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.e ]
  store i8 %.0.i, ptr %1, align 1, !tbaa !28
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #6
  %i.i = load i8, ptr %1, align 1, !tbaa !28
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %uvwasi__stat_to_filetype.exit
  %i.k = call i32 @uv_guess_handle(i32 noundef %0) #6
  %i.l = icmp eq i32 %i.k, 15
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 5, ptr %1, align 1, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %uvwasi__stat_to_filetype.exit, %bb.f, %bb.g, %bb.c, %bb.d
  %.1 = phi i16 [ %i.c, %bb.d ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %uvwasi__stat_to_filetype.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i16 %.1
}

declare i32 @uv_fs_fstat(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @uv_fs_req_cleanup(ptr noundef) local_unnamed_addr #5

declare i32 @uv_guess_handle(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!14, !11, i64 8}
!14 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!15 = !{!14, !11, i64 0}
!16 = !{!17, !11, i64 0}
!17 = !{!"uvwasi_filestat_s", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!18 = !{!14, !11, i64 48}
!19 = !{!17, !11, i64 8}
!20 = !{!14, !11, i64 16}
!21 = !{!17, !11, i64 24}
!22 = !{!14, !11, i64 56}
!23 = !{!17, !11, i64 32}
!24 = !{!17, !7, i64 16}
!25 = !{!17, !11, i64 40}
!26 = !{!17, !11, i64 48}
!27 = !{!17, !11, i64 56}
!28 = !{!7, !7, i64 0}
end_hunk_0
