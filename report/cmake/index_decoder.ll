Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/index_decoder?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@index_decode:bb.a
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !28
  %i.ba = tail call i32 @lzma_crc32(ptr noundef %i.av, i64 noundef %i.ax, i32 noundef %i.az) #7
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !28
  store i32 7, ptr %0, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.p
  %.promoted = phi i64 [ %i.aw, %bb.p ], [ %i.j, %bb.b ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = icmp eq i64 %.promoted, %4
  br i1 %i.bc, label %.thread, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %.loopexit
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !28
  %.promoted153 = load i64, ptr %i.d, align 8, !tbaa !27
  br label %.lr.ph142

bb.q:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %i.bj, %4
  br i1 %i.be, label %.thread.loopexit, label %.lr.ph142, !llvm.loop !30

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %bb.q
  %i.bf = phi i64 [ %i.bn, %bb.q ], [ %.promoted153, %.lr.ph142.preheader ] ; 2 uses
  %i.bg = phi i64 [ %i.bj, %bb.q ], [ %.promoted, %.lr.ph142.preheader ] ; 2 uses
  %.tr = trunc i64 %i.bf to i32
  %i.bh = shl i32 %.tr, 3
  %i.bi = lshr i32 %i.bd, %i.bh
  %i.bj = add i64 %i.bg, 1                        ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !32
  %i.bm = trunc i32 %i.bi to i8
  %.not94 = icmp eq i8 %i.bl, %i.bm
  br i1 %.not94, label %bb.r, label %.thread.loopexit

bb.r:                                             ; preds = %.lr.ph142
  %i.bn = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.d, align 8, !tbaa !27
  %i.bo = icmp ult i64 %i.bn, 4
  br i1 %i.bo, label %bb.q, label %bb.s, !llvm.loop !30

bb.s:                                             ; preds = %bb.r
  store i64 %i.bj, ptr %3, align 8, !tbaa !29
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !22
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !23
  store ptr null, ptr %i.c, align 8, !tbaa !21
  br label %.thread

.sink.split:                                      ; preds = %bb.j, %bb.l, %bb.c, %bb.g
  %storemerge.sink = phi i32 [ 1, %bb.c ], [ %i.w, %bb.g ], [ %i.al, %bb.l ], [ 4, %bb.j ] ; 2 uses
  store i32 %storemerge.sink, ptr %0, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.o
  %i.bs = phi i32 [ 6, %bb.o ], [ %storemerge.sink, %.sink.split ]
  %i.bt = load i64, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %4
  br i1 %i.bu, label %bb.b, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.d, %bb.t, %bb.f, %bb.h
  %.3.ph = phi i32 [ %i.n, %bb.d ], [ %i.z, %bb.h ], [ 6, %bb.f ], [ 0, %bb.t ] ; 2 uses
  %.pre121 = load i64, ptr %3, align 8, !tbaa !29 ; 2 uses
  %.not99 = icmp eq i64 %.pre121, %i.a
  br i1 %.not99, label %.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.bv = sub i64 %.pre121, %i.a
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !28
  %i.bz = tail call i32 @lzma_crc32(ptr noundef %i.bw, i64 noundef %i.bv, i32 noundef %i.by) #7
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !28
  br label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph142, %bb.q
  %.5.ph = phi i32 [ 0, %bb.q ], [ 9, %.lr.ph142 ]
  store i64 %i.bj, ptr %3, align 8, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %bb.b, %bb.o, %bb.c, %.thread.loopexit, %.loopexit, %bb.a, %._crit_edge, %bb.u, %bb.s
  %.5 = phi i32 [ 0, %bb.a ], [ 1, %bb.s ], [ %.3.ph, %bb.u ], [ %.3.ph, %._crit_edge ], [ %.5.ph, %.thread.loopexit ], [ 0, %.loopexit ], [ %i.ah, %bb.k ], [ 9, %bb.o ], [ 9, %bb.c ], [ 9, %bb.j ], [ 11, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal void @index_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @lzma_index_end(ptr noundef %i.b, ptr noundef %1) #6
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 7) i32 @index_decoder_memconfig(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %i.b) #6
  store i64 %i.c, ptr %1, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.e, ptr %2, align 8, !tbaa !29
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !29
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %3, ptr %i.d, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_index_decoder(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call i32 @lzma_strm_init(ptr noundef %0) #6 ; 2 uses
  %.not20.not = icmp eq i32 %i.a, 0
  br i1 %.not20.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12
  %.not.i = icmp eq i64 %i.g, ptrtoint (ptr @lzma_index_decoder_init to i64)
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lzma_next_end(ptr noundef nonnull %i.c, ptr noundef %i.e) #6, !inline_history !41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 ptrtoint (ptr @lzma_index_decoder_init to i64), ptr %i.f, align 8, !tbaa !12
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @lzma_alloc(i64 noundef 72, ptr noundef %i.e) #6, !inline_history !41 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.j, ptr %i.c, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @index_decode, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @index_decoder_end, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @index_decoder_memconfig, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !21
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  tail call void @lzma_index_end(ptr noundef %i.q, ptr noundef %i.e) #6, !inline_history !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ %i.j, %bb.i ], [ %i.h, %bb.j ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %1, ptr %i.r, align 8, !tbaa !22
  store ptr null, ptr %1, align 8, !tbaa !23
  %i.s = tail call ptr @lzma_index_init(ptr noundef %i.e) #6, !inline_history !41 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !21
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.f
  %.1.i.ph = phi i32 [ 5, %bb.k ], [ 5, %bb.h ], [ 11, %bb.f ]
  tail call void @lzma_end(ptr noundef nonnull %0) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %.0.i, align 8, !tbaa !24
  %i.v = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 0, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store i64 0, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !28
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i8 1, ptr %i.ab, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 99
  store i8 1, ptr %i.ac, align 1, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.c, %bb.m
  %.2 = phi i32 [ 0, %bb.m ], [ %.1.i.ph, %bb.l ], [ %i.a, %bb.c ]
  ret i32 %.2
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @lzma_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 2, 1) i32 @lzma_index_buffer_decode(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.lzma_index_coder, align 8   ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %3, null
  %or.cond3 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %4, null
  %or.cond5 = or i1 %or.cond3, %i.c
  br i1 %or.cond5, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %4, align 8, !tbaa !29
  %i.e = icmp ugt i64 %i.d, %5
  br i1 %i.e, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.f = load i64, ptr %1, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.g, align 8, !tbaa !22
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.h = tail call ptr @lzma_index_init(ptr noundef %2) #6 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !21
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %index_decoder_reset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %6, align 8, !tbaa !24
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 0, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !28
  %i.p = load i64, ptr %4, align 8, !tbaa !29
  %i.q = call i32 @index_decode(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef %5, ptr poison, ptr poison, i64 poison, i32 poison) ; 3 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %index_decoder_reset.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !21
  call void @lzma_index_end(ptr noundef %i.s, ptr noundef %2) #6
  store i64 %i.p, ptr %4, align 8, !tbaa !29
  switch i32 %i.q, label %.fold.split [
    i32 0, label %index_decoder_reset.exit
    i32 6, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.m, align 8, !tbaa !26
  %i.u = call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %i.t) #6
  store i64 %i.u, ptr %1, align 8, !tbaa !29
  br label %index_decoder_reset.exit

.fold.split:                                      ; preds = %bb.f
  br label %index_decoder_reset.exit

index_decoder_reset.exit:                         ; preds = %bb.d, %bb.g, %bb.e, %.fold.split, %bb.f
  %.1 = phi i32 [ %i.q, %.fold.split ], [ 9, %bb.f ], [ 0, %bb.e ], [ 6, %bb.g ], [ 5, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %index_decoder_reset.exit
  %.2 = phi i32 [ %.1, %index_decoder_reset.exit ], [ 11, %bb.c ], [ 11, %bb.b ], [ 11, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i64 @lzma_index_memusage(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lzma_index_prealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"lzma_next_coder_s", !9, i64 0, !10, i64 8, !10, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!12 = !{!11, !10, i64 16}
!13 = !{!11, !9, i64 0}
!14 = !{!11, !9, i64 24}
!15 = !{!11, !9, i64 32}
!16 = !{!11, !9, i64 56}
!17 = !{!"p1 _ZTS12lzma_index_s", !9, i64 0}
!18 = !{!"any p2 pointer", !9, i64 0}
!19 = !{!"p2 _ZTS12lzma_index_s", !18, i64 0}
!20 = !{!"", !6, i64 0, !10, i64 8, !17, i64 16, !19, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !6, i64 64}
!21 = !{!20, !17, i64 16}
!22 = !{!20, !19, i64 24}
!23 = !{!17, !17, i64 0}
!24 = !{!20, !6, i64 0}
!25 = !{!20, !10, i64 8}
!26 = !{!20, !10, i64 32}
!27 = !{!20, !10, i64 56}
!28 = !{!20, !6, i64 64}
!29 = !{!10, !10, i64 0}
!30 = distinct !{!30, !35}
!31 = distinct !{!31, !35}
!32 = !{!5, !5, i64 0}
!33 = !{!20, !10, i64 40}
!34 = !{!20, !10, i64 48}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 omnipotent char", !9, i64 0}
!37 = !{!"p1 _ZTS15lzma_internal_s", !9, i64 0}
!38 = !{!"", !36, i64 0, !10, i64 8, !10, i64 16, !36, i64 24, !10, i64 32, !10, i64 40, !9, i64 48, !37, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !6, i64 128, !6, i64 132}
!39 = !{!38, !37, i64 56}
!40 = !{!38, !9, i64 48}
!41 = !{ptr @lzma_index_decoder_init}
!42 = !{!"_Bool", !5, i64 0}
!43 = !{!42, !42, i64 0}
end_hunk_0
