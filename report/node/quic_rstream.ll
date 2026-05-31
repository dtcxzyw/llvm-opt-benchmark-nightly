inline.NumInlined: 24
inline.NumDeleted: 13
begin_hunk_0_@ossl_quic_rstream_get_record:bb.a
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %ring_buf_get_ptr.exit.thread, label %bb.i, !prof !31

bb.i:                                             ; preds = %ring_buf_get_ptr.exit
  %i.ab = icmp ult i64 %i.z, %i.l
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add i64 %i.z, %i.j
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  %i.ad = phi ptr [ %i.aa, %bb.j ], [ %i.aa, %bb.i ], [ %i.m, %bb.f ]
  %.0 = phi i64 [ %i.z, %bb.j ], [ %i.l, %bb.i ], [ %i.l, %bb.f ]
  store i64 %.0, ptr %2, align 8, !tbaa !27
  store ptr %i.ad, ptr %1, align 8, !tbaa !29
  br label %ring_buf_get_ptr.exit.thread

ring_buf_get_ptr.exit.thread:                     ; preds = %bb.g, %bb.h, %ring_buf_get_ptr.exit, %bb.e, %bb.d, %bb.k, %bb.b
  %.022 = phi i32 [ 1, %bb.k ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.b ], [ 0, %ring_buf_get_ptr.exit ], [ 0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.022
}

declare i32 @ossl_sframe_list_lock_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_sframe_list_drop_frames(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rstream_release_record(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ossl_rtt_info_st, align 8   ; 4 uses
  %i.a = tail call i32 @ossl_sframe_list_is_head_locked(ptr noundef %0) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not22 = icmp eq i64 %1, -1
  br i1 %.not22, label %bb.e, label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.h = add i64 %i.e, %1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.020 = phi i64 [ %i.h, %bb.d ], [ %i.d, %bb.c ] ; 7 uses
  %i.i = tail call i32 @ossl_sframe_list_drop_frames(ptr noundef nonnull %0, i64 noundef %.020) #8
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not24 = icmp eq i64 %.020, 0
  br i1 %.not24, label %ring_buf_cpop_range.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = add i64 %.020, -1                        ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22   ; 3 uses
  %i.n = icmp ugt i64 %i.k, 4611686018427387903
  br i1 %i.n, label %ring_buf_cpop_range.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20   ; 3 uses
  %.not45.i = icmp ne i64 %i.r, 0
  %i.s = icmp ugt i64 %i.k, %i.m
  %or.cond.i = select i1 %.not45.i, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.t = urem i64 %i.m, %i.r                      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %.not46.i = icmp ult i64 %i.k, %i.v
  %spec.select.i = select i1 %.not46.i, i64 %.020, i64 %i.v
  %i.w = sub i64 %spec.select.i, %i.m             ; 3 uses
  %i.x = sub i64 %i.r, %i.t                       ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  tail call void @OPENSSL_cleanse(ptr noundef %i.aa, i64 noundef %i.x) #8
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !20
  %.neg.i = add i64 %i.w, %i.t
  %i.ac = sub i64 %.neg.i, %i.ab
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.036.i = phi i64 [ 0, %bb.k ], [ %i.t, %bb.j ]
  %.0.i = phi i64 [ %i.ac, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %.not47.i = icmp eq i64 %.0.i, 0
  br i1 %.not47.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.036.i
  tail call void @OPENSSL_cleanse(ptr noundef %i.ae, i64 noundef %.0.i) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h
  store i64 %.020, ptr %i.l, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !21
  %.not48.i = icmp ugt i64 %i.ag, %i.k
  br i1 %.not48.i, label %ring_buf_cpop_range.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.020, ptr %i.af, align 8, !tbaa !21
  br label %ring_buf_cpop_range.exit

ring_buf_cpop_range.exit:                         ; preds = %bb.o, %bb.n, %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %.not25 = icmp eq ptr %i.ai, null
  br i1 %.not25, label %bb.r, label %bb.p

bb.p:                                             ; preds = %ring_buf_cpop_range.exit
  %i.aj = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %.not.i27 = icmp eq ptr %.val, null
  br i1 %.not.i27, label %get_rtt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @ossl_statm_get_rtt_info(ptr noundef nonnull %.val, ptr noundef nonnull %2) #8
  %.sroa.02.0.copyload.i = load i64, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !9
  br label %get_rtt.exit

get_rtt.exit:                                     ; preds = %bb.p, %bb.q
  %i.ak = phi ptr [ %.pre, %bb.q ], [ %i.ai, %bb.p ]
  %.sroa.02.0.i = phi i64 [ %.sroa.02.0.copyload.i, %bb.q ], [ 0, %bb.p ]
  %i.al = call i32 @ossl_quic_rxfc_on_retire(ptr noundef %i.ak, i64 noundef %.020, i64 %.sroa.02.0.i) #8
  %.not26.not = icmp eq i32 %i.al, 0
  br i1 %.not26.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %get_rtt.exit, %ring_buf_cpop_range.exit
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.c, %bb.a, %get_rtt.exit, %bb.r
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.r ], [ 0, %get_rtt.exit ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i32 %.1
}

declare i32 @ossl_sframe_list_is_head_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_rstream_move_to_rbuf(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr i8, ptr %0, i64 96
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.d, align 8, !tbaa !22
  %.neg.i = sub i64 %i.b, %.val.i
  %i.e = sub i64 0, %.val2.i
  %i.f = icmp eq i64 %.neg.i, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = tail call i32 @ossl_sframe_list_move_data(ptr noundef nonnull %0, ptr noundef nonnull @write_at_ring_buf_cb, ptr noundef nonnull %i.g) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @ossl_sframe_list_move_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @write_at_ring_buf_cb(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 16         ; 5 uses
  %.val.i.i = load i64, ptr %i.c, align 8, !tbaa !21 ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 24
  %.val2.i.i = load i64, ptr %i.d, align 8, !tbaa !22 ; 3 uses
  %i.e = icmp ult i64 %0, %.val2.i.i
  br i1 %i.e, label %ring_buf_write_at.exit, label %safe_add_u64.exit.i

safe_add_u64.exit.i:                              ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !20   ; 4 uses
  %.neg.i.i = sub i64 %.val2.i.i, %.val.i.i
  %i.g = add i64 %.neg.i.i, %i.f
  %i.h = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %2)
  %4 = extractvalue { i64, i1 } %i.h, 1
  %5 = add i64 %2, %0
  %i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val.i.i, i64 %i.g) ; 2 uses
  %6 = extractvalue { i64, i1 } %i.i, 1           ; 2 uses
  %7 = add i64 %i.f, %.val2.i.i
  %i.j = extractvalue { i64, i1 } %i.i, 0
  %.0.i45.i = select i1 %6, i64 %7, i64 %i.j
  %i.k = icmp ugt i64 %5, %.0.i45.i
  br i1 %i.k, label %ring_buf_write_at.exit, label %8

8:                                                ; preds = %safe_add_u64.exit.i
  %9 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.val.i.i, i64 %2) ; 2 uses
  %10 = extractvalue { i64, i1 } %9, 1
  br i1 %10, label %ring_buf_write_at.exit, label %safe_add_u64.exit48.i

safe_add_u64.exit48.i:                            ; preds = %8
  %i.l = extractvalue { i64, i1 } %9, 0
  %i.m = icmp ugt i64 %i.l, 4611686018427387904
  %i.n = or i1 %4, %i.m
  %or.cond.i = or i1 %i.n, %6
  br i1 %or.cond.i, label %ring_buf_write_at.exit, label %.preheader.i

.preheader.i:                                     ; preds = %safe_add_u64.exit48.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %ring_buf_write_at.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.o = urem i64 %0, %i.f                        ; 2 uses
  %i.p = sub i64 %i.f, %i.o                       ; 2 uses
  %spec.select.i.peel = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.p) ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %1, i64 %spec.select.i.peel, i1 false)
  %i.r = load i64, ptr %i.c, align 8, !tbaa !21
  %i.s = add i64 %spec.select.i.peel, %0          ; 4 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.preheader
  store i64 %i.s, ptr %i.c, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.preheader
  %.not.not = icmp ugt i64 %2, %i.p
  br i1 %.not.not, label %.lr.ph.i, label %ring_buf_write_at.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.u = sub i64 %2, %spec.select.i.peel
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i.peel
  %i.w = load i64, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.x = urem i64 %i.s, %i.w                      ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.y) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.v, i64 %spec.select.i, i1 false)
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !21
  %i.ab = add i64 %spec.select.i, %i.s            ; 2 uses
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %ring_buf_write_at.exit

bb.d:                                             ; preds = %.lr.ph.i
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !21
  br label %ring_buf_write_at.exit

ring_buf_write_at.exit:                           ; preds = %bb.c, %.lr.ph.i, %bb.d, %bb.a, %safe_add_u64.exit.i, %8, %safe_add_u64.exit48.i, %.preheader.i
  %.037.i = phi i32 [ 0, %bb.a ], [ 0, %safe_add_u64.exit48.i ], [ 0, %safe_add_u64.exit.i ], [ 0, %8 ], [ 1, %.preheader.i ], [ 1, %bb.d ], [ 1, %.lr.ph.i ], [ 1, %bb.c ]
  ret i32 %.037.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rstream_resize_rbuf(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_sframe_list_is_head_locked(ptr noundef %0) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = tail call fastcc i32 @ring_buf_resize(ptr noundef nonnull %i.b, i64 noundef %1, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_quic_rstream_set_cleanse(ptr noundef writeonly captures(none) initializes((44, 48)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %i.a, align 4, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_statm_get_rtt_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!9 = !{!10, !15, i64 48}
!10 = !{!"quic_rstream_st", !11, i64 0, !15, i64 48, !16, i64 56, !17, i64 64, !18, i64 80}
!11 = !{!"sframe_list_st", !12, i64 0, !12, i64 8, !6, i64 16, !14, i64 24, !14, i64 32, !6, i64 40, !6, i64 44}
!12 = !{!"p1 _ZTS15stream_frame_st", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"p1 _ZTS12quic_rxfc_st", !13, i64 0}
!16 = !{!"p1 _ZTS13ossl_statm_st", !13, i64 0}
!17 = !{!"uint_range_st", !14, i64 0, !14, i64 8}
!18 = !{!"ring_buf", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!19 = !{!10, !16, i64 56}
!20 = !{!18, !14, i64 8}
!21 = !{!18, !14, i64 16}
!22 = !{!18, !14, i64 24}
!23 = !{!18, !13, i64 0}
!24 = !{!10, !6, i64 44}
!25 = !{!17, !14, i64 0}
!26 = !{!17, !14, i64 8}
!27 = !{!14, !14, i64 0}
!28 = !{!13, !13, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!32 = !{!"branch_weights", i32 4000000, i32 4001}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!10, !14, i64 72}
!36 = !{!10, !14, i64 64}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
