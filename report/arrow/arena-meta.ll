inline.NumInlined: 19
inline.NumDeleted: 11
begin_hunk_0_@_mi_meta_zalloc:bb.a
mi_bbitmap_try_find_and_clearN.exit.thread.us77:  ; preds = %.lr.ph.split.split.split.us
  %i.r = load atomic ptr, ptr %.03365.us76 acquire, align 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.not.us78 = icmp eq ptr %i.r, null
  br i1 %.not.us78, label %._crit_edge, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %mi_bbitmap_try_find_and_clearN.exit.thread
  %.03365 = phi ptr [ %i.ac, %mi_bbitmap_try_find_and_clearN.exit.thread ], [ %i.g, %.lr.ph.split.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.s = getelementptr inbounds nuw i8, ptr %.03365, i64 64
  %i.t = call zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef nonnull %i.s, i64 noundef 0, i64 noundef range(i64 0, 144115188075855872) %i.f, ptr noundef nonnull %i.a) #6
  br i1 %i.t, label %.thread, label %mi_bbitmap_try_find_and_clearN.exit.thread

.thread:                                          ; preds = %mi_bbitmap_try_find_and_clearN.exit.us, %.lr.ph.split.us, %.lr.ph.split.split.split, %.lr.ph.split.split.split.us
  %.us-phi = phi ptr [ %.03365.us76, %.lr.ph.split.split.split.us ], [ %.03365, %.lr.ph.split.split.split ], [ %.03365.us, %.lr.ph.split.us ], [ %.03365.us67, %mi_bbitmap_try_find_and_clearN.exit.us ] ; 2 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = trunc nuw nsw i64 %i.f to i32
  store ptr %.us-phi, ptr %1, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.v, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.w, ptr %.sroa.545.0..sroa_idx, align 4, !tbaa !9
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 282578783305731, ptr %.sroa.646.0..sroa_idx, align 8
  %i.x = call i64 @_mi_os_secure_guard_page_size() #6
  %i.y = sub i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.us-phi, i64 %i.y
  %i.aa = shl i64 %i.u, 7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.q

mi_bbitmap_try_find_and_clearN.exit.thread:       ; preds = %.lr.ph.split.split.split
  %i.ac = load atomic ptr, ptr %.03365 acquire, align 64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.split.split

._crit_edge:                                      ; preds = %mi_bbitmap_try_find_and_clearN.exit.thread.us68, %mi_bbitmap_try_find_and_clearN.exit.thread.us, %mi_bbitmap_try_find_and_clearN.exit.thread, %mi_bbitmap_try_find_and_clearN.exit.thread.us77, %mi_bbitmap_try_find_and_clearN.exit.thread.us74, %bb.b
  %i.ad = load atomic ptr, ptr @mi_meta_pages acquire, align 64
  %.not37 = icmp eq ptr %i.ad, %i.g
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ae = call ptr @_mi_meta_zalloc(i64 noundef %i.d, ptr noundef %1)
  br label %bb.q

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.af = call ptr @_mi_subproc() #6
  %i.ag = call ptr @_mi_arenas_alloc_aligned(ptr noundef %i.af, i64 noundef 65536, i64 noundef 65536, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, i64 noundef 0, i32 noundef -1, ptr noundef nonnull %2) #6 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %mi_meta_page_zalloc.exit.thread, label %bb.e

mi_meta_page_zalloc.exit.thread:                  ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !10, !range !13, !noundef !14
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 8) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.ag, i8 0, i64 range(i64 0, 549755813761) 65536, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = call i64 @_mi_os_secure_guard_page_size() #6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 6 uses
  %i.ap = call i64 @mi_bbitmap_init(ptr noundef nonnull %i.ao, i64 noundef 512, i1 noundef zeroext true) #6 ; 0 uses
  %i.aq = call i64 @mi_bbitmap_size(i64 noundef 512, ptr noundef null) #6
  %i.ar = add i64 %i.aq, 191
  %i.as = lshr i64 %i.ar, 7                       ; 2 uses
  %i.at = call i64 @_mi_os_secure_guard_page_size() #6
  %i.au = add i64 %i.at, 127
  %i.av = lshr i64 %i.au, 7                       ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %i.as
  %.neg22.i = mul nsw i64 %i.av, -2
  %reass.sub = sub nsw i64 %.neg22.i, %i.as
  %i.ax = add nsw i64 %reass.sub, 512
  call void @mi_bbitmap_unsafe_setN(ptr noundef nonnull %i.ao, i64 noundef %i.aw, i64 noundef %i.ax) #6
  %i.ay = load atomic ptr, ptr @mi_meta_pages acquire, align 64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.020.i = phi ptr [ %i.ay, %bb.g ], [ %i.bb, %bb.h ] ; 2 uses
  store atomic ptr %.020.i, ptr %i.am release, align 64
  %i.az = cmpxchg weak ptr @mi_meta_pages, ptr %.020.i, ptr %i.am acq_rel acquire, align 64 ; 2 uses
  %i.ba = extractvalue { ptr, i1 } %i.az, 1
  %i.bb = extractvalue { ptr, i1 } %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.h, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %trunc62 = trunc nuw i64 %i.f to i8
  switch i8 %trunc62, label %bb.k [
    i8 1, label %bb.j
    i8 8, label %mi_bbitmap_try_find_and_clearN.exit42
  ]

bb.j:                                             ; preds = %bb.i
  %i.bc = call zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef nonnull %i.ao, i64 noundef 0, ptr noundef nonnull %i.b) #6
  br i1 %i.bc, label %bb.o, label %.thread59

bb.k:                                             ; preds = %bb.i
  %or.cond.i41 = icmp eq i64 %i.f, 0
  br i1 %or.cond.i41, label %.thread59, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp ult i64 %i.c, 8320
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = call zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef nonnull %i.ao, i64 noundef 0, i64 noundef range(i64 0, 144115188075855872) %i.f, ptr noundef nonnull %i.b) #6
  br i1 %i.be, label %bb.o, label %.thread59

bb.n:                                             ; preds = %bb.l
  %i.bf = call zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef nonnull %i.ao, i64 noundef 0, i64 noundef range(i64 0, 144115188075855872) %i.f, ptr noundef nonnull %i.b) #6
  br i1 %i.bf, label %bb.o, label %.thread59

mi_bbitmap_try_find_and_clearN.exit42:            ; preds = %bb.i
  %i.bg = call zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef nonnull %i.ao, i64 noundef 0, ptr noundef nonnull %i.b) #6
  br i1 %i.bg, label %bb.o, label %.thread59

.thread59:                                        ; preds = %mi_bbitmap_try_find_and_clearN.exit42, %bb.j, %bb.m, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.p

bb.o:                                             ; preds = %mi_bbitmap_try_find_and_clearN.exit42, %bb.j, %bb.m, %bb.n
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = trunc nuw nsw i64 %i.f to i32
  store ptr %i.am, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bj, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 282578783305731, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bk = call i64 @_mi_os_secure_guard_page_size() #6
  %i.bl = sub i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.am, i64 %i.bl
  %i.bn = shl i64 %i.bh, 7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.q

bb.p:                                             ; preds = %.thread59, %mi_meta_page_zalloc.exit.thread
  %i.bp = call ptr @_mi_os_alloc(i64 noundef %i.d, ptr noundef %1) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.thread, %bb.c, %bb.p, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %i.ab, %.thread ], [ %i.ae, %bb.c ], [ %i.bp, %bb.p ], [ %i.bo, %bb.o ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_mi_os_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define hidden void @_mi_meta_free(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.l = tail call i64 @_mi_os_secure_guard_page_size() #6
  %i.m = sub i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = shl nuw nsw i64 %i.j, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  %3 = shl nuw nsw i64 %i.g, 7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 range(i64 0, 549755813761) %3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.r = tail call zeroext i1 @mi_bbitmap_setN(ptr noundef nonnull %i.q, i64 noundef %i.j, i64 noundef %i.g) #6 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_mi_arenas_free(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

declare zeroext i1 @mi_bbitmap_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_mi_arenas_free(ptr noundef, i64 noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define hidden zeroext i1 @_mi_meta_is_meta_page(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic ptr, ptr @mi_meta_pages acquire, align 64 ; 3 uses
  %.not9 = icmp ne ptr %i.a, null                 ; 2 uses
  %i.b = icmp ne ptr %i.a, %0
  %or.cond.not10 = and i1 %i.b, %.not9
  br i1 %or.cond.not10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %i.c, %.lr.ph ], [ %i.a, %bb.a ]
  %i.c = load atomic ptr, ptr %.011 acquire, align 64 ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  %i.d = icmp ne ptr %i.c, %0
  %or.cond.not = and i1 %i.d, %.not
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ %.not9, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.not.lcssa
}

declare zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i64 @_mi_os_secure_guard_page_size() local_unnamed_addr #2

declare ptr @_mi_arenas_alloc_aligned(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_mi_subproc() local_unnamed_addr #2

declare i64 @mi_bbitmap_init(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @mi_bbitmap_size(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @mi_bbitmap_unsafe_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !12, i64 22}
!11 = !{!"mi_memid_s", !5, i64 0, !4, i64 16, !12, i64 20, !12, i64 21, !12, i64 22}
!12 = !{!"_Bool", !5, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{i64 0, i64 16, !9, i64 16, i64 4, !3, i64 20, i64 1, !16, i64 21, i64 1, !16, i64 22, i64 1, !16}
!16 = !{!12, !12, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !4, i64 16}
!20 = distinct !{!20, !18}
end_hunk_0
