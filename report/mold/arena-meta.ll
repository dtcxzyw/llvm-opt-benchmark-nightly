Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/arena-meta?download=true
inline.NumInlined: 20
inline.NumDeleted: 12
begin_hunk_0_@_mi_meta_zalloc:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.al = load atomic ptr, ptr %i.ak seq_cst, align 8, !tbaa !11
  %i.am = call ptr @_mi_arenas_alloc_aligned(ptr noundef %i.al, i64 noundef 65536, i64 noundef 65536, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef null, i64 noundef 0, i32 noundef -1, ptr noundef nonnull %3) #7 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %mi_meta_page_zalloc.exit.thread, label %bb.e

mi_meta_page_zalloc.exit.thread:                  ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !22, !range !23, !noundef !24
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_mi_memzero_aligned.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.am, i64 8) ]
  %i.ar = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !8
  %.not.i.i.i.i = icmp ult i64 %i.ar, 65536
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.as = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.am, i64 range(i64 0, 549755813761) 65536) #6, !srcloc !26 ; 0 uses
  br label %_mi_memzero_aligned.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.am, i8 0, i64 range(i64 0, 549755813761) 65536, i1 false)
  br label %_mi_memzero_aligned.exit.i

_mi_memzero_aligned.exit.i:                       ; preds = %bb.h, %bb.g, %bb.e
  %i.at = call i64 @_mi_os_secure_guard_page_size() #7
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 7 uses
  %i.ax = call i64 @mi_bbitmap_init(ptr noundef nonnull %0, ptr noundef nonnull %i.aw, i64 noundef 512, i1 noundef zeroext true) #7 ; 0 uses
  %i.ay = call i64 @mi_bbitmap_size(i64 noundef 512, ptr noundef null) #7
  %i.az = add i64 %i.ay, 191
  %i.ba = lshr i64 %i.az, 7                       ; 2 uses
  %i.bb = call i64 @_mi_os_secure_guard_page_size() #7
  %i.bc = add i64 %i.bb, 127
  %i.bd = lshr i64 %i.bc, 7                       ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  %.neg26.i = mul nsw i64 %i.bd, -2
  %reass.sub = sub nsw i64 %.neg26.i, %i.ba
  %i.bf = add nsw i64 %reass.sub, 512
  call void @mi_bbitmap_unsafe_setN(ptr noundef nonnull %i.aw, i64 noundef %i.be, i64 noundef %i.bf) #7
  %i.bg = load atomic ptr, ptr %i.g acquire, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_mi_memzero_aligned.exit.i
  %.024.i = phi ptr [ %i.bg, %_mi_memzero_aligned.exit.i ], [ %i.bj, %bb.i ] ; 2 uses
  store atomic ptr %.024.i, ptr %i.au release, align 64
  %i.bh = cmpxchg weak ptr %i.g, ptr %.024.i, ptr %i.au acq_rel acquire, align 8 ; 2 uses
  %i.bi = extractvalue { ptr, i1 } %i.bh, 1
  %i.bj = extractvalue { ptr, i1 } %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.i, !llvm.loop !30

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %trunc73 = trunc nuw i64 %i.f to i8
  switch i8 %trunc73, label %bb.k [
    i8 1, label %.split65
    i8 8, label %mi_bbitmap_try_find_and_clearN.exit46
    i8 0, label %.thread70
  ]

.split65:                                         ; preds = %bb.j
  %i.bk = call zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef nonnull %i.aw, i64 noundef 0, ptr noundef nonnull %i.b) #7
  br i1 %i.bk, label %bb.m, label %.thread70

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp ult i64 %i.c, 8320
  br i1 %i.bl, label %.split68, label %bb.l

.split68:                                         ; preds = %bb.k
  %i.bm = call zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef range(i64 0, 144115188075855872) %i.f, ptr noundef nonnull %i.b) #7
  br i1 %i.bm, label %bb.m, label %.thread70

bb.l:                                             ; preds = %bb.k
  %i.bn = icmp ult i64 %i.c, 65664
  br i1 %i.bn, label %.split67, label %.split69

.split67:                                         ; preds = %bb.l
  %i.bo = call zeroext i1 @mi_bbitmap_try_find_and_clearNC(ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef range(i64 0, 144115188075855872) %i.f, ptr noundef nonnull %i.b) #7
  br i1 %i.bo, label %bb.m, label %.thread70

.split69:                                         ; preds = %bb.l
  %i.bp = call zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef range(i64 0, 144115188075855872) %i.f, ptr noundef nonnull %i.b) #7
  br i1 %i.bp, label %bb.m, label %.thread70

mi_bbitmap_try_find_and_clearN.exit46:            ; preds = %bb.j
  %i.bq = call zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef nonnull %i.aw, i64 noundef 0, ptr noundef nonnull %i.b) #7
  br i1 %i.bq, label %bb.m, label %.thread70

.thread70:                                        ; preds = %mi_bbitmap_try_find_and_clearN.exit46, %.split65, %.split67, %.split68, %.split69, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.n

bb.m:                                             ; preds = %mi_bbitmap_try_find_and_clearN.exit46, %.split65, %.split67, %.split68, %.split69
  %i.br = load i64, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = trunc nuw i64 %i.f to i32
  store ptr %i.au, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bs, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.bt, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !10
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 282578783305731, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bu = call i64 @_mi_os_secure_guard_page_size() #7
  %i.bv = sub i64 0, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.au, i64 %i.bv
  %i.bx = shl i64 %i.br, 7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.o

bb.n:                                             ; preds = %.thread70, %mi_meta_page_zalloc.exit.thread
  %i.bz = call ptr @_mi_os_zalloc(ptr noundef nonnull %0, i64 noundef %i.d, ptr noundef %2) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %.thread, %bb.c, %bb.n, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %i.ag, %.thread ], [ %i.aj, %bb.c ], [ %i.bz, %bb.n ], [ %i.by, %bb.m ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_mi_os_zalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nooutline nounwind uwtable
define hidden void @_mi_meta_free(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !10
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.l = tail call i64 @_mi_os_secure_guard_page_size() #7
  %i.m = sub i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = shl nuw nsw i64 %i.j, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 3 uses
  %i.q = shl nuw nsw i64 %i.g, 7                  ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.p, i64 8) ]
  %i.r = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !8
  %.not.i.i.i = icmp ugt i64 %i.q, %i.r
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.s = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr %i.p, i64 range(i64 0, 549755813761) %i.q) #6, !srcloc !26 ; 0 uses
  br label %_mi_memzero_aligned.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 range(i64 0, 549755813761) %i.q, i1 false)
  br label %_mi_memzero_aligned.exit

_mi_memzero_aligned.exit:                         ; preds = %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.u = tail call zeroext i1 @mi_bbitmap_setN(ptr noundef nonnull %i.t, i64 noundef %i.j, i64 noundef %i.g) #7 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_mi_arenas_free(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %3) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %_mi_memzero_aligned.exit
  ret void
}

declare zeroext i1 @mi_bbitmap_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_mi_arenas_free(ptr noundef, ptr noundef, i64 noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

; Function Attrs: nooutline norecurse nounwind uwtable
define hidden zeroext i1 @_mi_meta_is_meta_page(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 3 uses
  %.not10 = icmp ne ptr %i.b, null                ; 2 uses
  %2 = icmp ne ptr %i.b, %1
  %or.cond.not11 = and i1 %2, %.not10
  br i1 %or.cond.not11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.c, %.lr.ph ], [ %i.b, %bb.a ]
  %i.c = load atomic ptr, ptr %.012 acquire, align 64 ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  %3 = icmp ne ptr %i.c, %1
  %or.cond.not = and i1 %3, %.not
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ %.not10, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.not.lcssa
}

declare zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mi_bbitmap_try_find_and_clearNC(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i64 @_mi_os_secure_guard_page_size() local_unnamed_addr #2

declare ptr @_mi_arenas_alloc_aligned(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @mi_bbitmap_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @mi_bbitmap_size(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @mi_bbitmap_unsafe_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nooutline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind "no-builtin-malloc" }
attributes #8 = { "no-builtin-malloc" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !6, i64 1368}
!12 = !{!"mi_subproc_s", !9, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !15, i64 1320, !6, i64 1360, !6, i64 1368, !16, i64 1376, !15, i64 1384, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !17, i64 1456, !13, i64 1480, !19, i64 1488}
!13 = !{!"p1 _ZTS12mi_subproc_s", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"mi_lock_s", !6, i64 0}
!16 = !{!"p1 _ZTS9mi_heap_s", !14, i64 0}
!17 = !{!"mi_memid_s", !6, i64 0, !5, i64 16, !18, i64 20, !18, i64 21, !18, i64 22}
!18 = !{!"_Bool", !6, i64 0}
!19 = !{!"mi_stats_s", !9, i64 0, !9, i64 8, !20, i64 16, !20, i64 40, !20, i64 64, !21, i64 88, !21, i64 96, !20, i64 104, !20, i64 128, !20, i64 152, !20, i64 176, !20, i64 200, !20, i64 224, !21, i64 248, !21, i64 256, !21, i64 264, !21, i64 272, !21, i64 280, !21, i64 288, !21, i64 296, !21, i64 304, !21, i64 312, !21, i64 320, !21, i64 328, !21, i64 336, !21, i64 344, !21, i64 352, !20, i64 360, !20, i64 384, !20, i64 408, !20, i64 432, !20, i64 456, !20, i64 480, !21, i64 504, !21, i64 512, !21, i64 520, !21, i64 528, !21, i64 536, !6, i64 544, !6, i64 640, !6, i64 672, !6, i64 2448, !6, i64 4224}
!20 = !{!"mi_stat_count_s", !9, i64 0, !9, i64 8, !9, i64 16}
!21 = !{!"mi_stat_counter_s", !9, i64 0}
!22 = !{!17, !18, i64 22}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{i64 143521}
!27 = !{i64 0, i64 16, !10, i64 16, i64 4, !28, i64 20, i64 1, !29, i64 21, i64 1, !29, i64 22, i64 1, !29}
!28 = !{!5, !5, i64 0}
!29 = !{!18, !18, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!17, !5, i64 16}
!33 = distinct !{!33, !31}
end_hunk_0
