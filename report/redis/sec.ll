Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sec?download=true
inline.NumInlined: 71
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@je_sec_postfork_child:bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.05 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ]  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.d, i64 %.05
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef %i.e) #8
  %i.f = add nuw i64 %.05, 1                      ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %._crit_edge, !llvm.loop !87
}

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sec_batch_fill_and_alloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((0, 1)) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.edata_list_active_t, align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr null, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !52
  %i.f = add i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = call i64 %i.h(ptr noundef %0, ptr noundef %i.c, i64 noundef %4, i64 noundef %i.f, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #8, !inline_history !88 ; 2 uses
  %.val = load ptr, ptr %5, align 8, !tbaa !51    ; 6 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %edata_list_active_remove.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 3 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !51
  %i.l = icmp eq ptr %i.k, %.val
  br i1 %i.l, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.n, ptr %i.q, align 8, !tbaa !41
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.r, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  store ptr %i.v, ptr %i.o, align 8, !tbaa !41
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.w, ptr %i.z, align 8, !tbaa !41
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %.val, ptr %i.ab, align 8, !tbaa !41
  br label %edata_list_active_remove.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %5, align 8, !tbaa !51
  br label %edata_list_active_remove.exit

edata_list_active_remove.exit:                    ; preds = %bb.c, %.thread.i, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ad = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ac) #8
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %edata_list_active_remove.exit
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %2) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 1, ptr %i.ae monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %edata_list_active_remove.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.aj, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.ai, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.e, %bb.f
  store i8 0, ptr %3, align 8, !tbaa !32
  %i.an = icmp ult i64 %i.i, 2
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %malloc_mutex_lock.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 0, ptr %i.ao monotonic, align 8
  %i.ap = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #8 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %malloc_mutex_lock.exit
  %i.aq = add i64 %i.i, -1
  %i.ar = mul i64 %i.aq, %4                       ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !51 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = load ptr, ptr %5, align 8, !tbaa !51    ; 4 uses
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.av, ptr %i.as, align 8, !tbaa !51
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %edata_list_active_concat.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !41
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !41 ; 2 uses
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !41
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !51 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !41
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %i.av, ptr %i.bm, align 8, !tbaa !41
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.i
  store ptr null, ptr %5, align 8, !tbaa !51
  br label %edata_list_active_concat.exit

edata_list_active_concat.exit:                    ; preds = %bb.j, %.sink.split.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !53
  %i.bp = add i64 %i.bo, %i.ar
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !33
  %i.bs = add i64 %i.br, %i.ar                    ; 2 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !54
  %i.bv = icmp ugt i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %edata_list_active_concat.exit
  call fastcc void @sec_flush_some_and_unlock(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %edata_list_active_concat.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 0, ptr %i.bw monotonic, align 8
  %i.bx = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret ptr %.val
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sec_flush_some_and_unlock(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.edata_list_active_t, align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr null, ptr %3, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !92
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %edata_list_active_concat.exit
  %i.j = phi i64 [ %i.d, %.lr.ph ], [ %i.at, %edata_list_active_concat.exit ] ; 2 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.au, %edata_list_active_concat.exit ] ; 6 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.m = load i32, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n ; 2 uses
  %i.p = add i32 %i.m, 1                          ; 2 uses
  %i.q = load i32, ptr %i.i, align 8, !tbaa !38
  %i.r = icmp eq i32 %i.p, %i.q
  %spec.store.select = select i1 %i.r, i32 0, i32 %i.p
  store i32 %spec.store.select, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %edata_list_active_concat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = sub i64 %i.j, %i.t                       ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !33
  store i64 0, ptr %i.s, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.k, null
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !51   ; 4 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.x, ptr %3, align 8, !tbaa !51
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %edata_list_active_concat.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !41
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !41
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !41
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.k, ptr %i.an, align 8, !tbaa !41
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !51  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !41
  %.pre.pre = load i64, ptr %i.b, align 8, !tbaa !33
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.d
  %.pre = phi i64 [ %.pre.pre, %bb.f ], [ %i.u, %bb.d ]
  %i.as = phi ptr [ %i.k, %bb.f ], [ %i.x, %bb.d ]
  store ptr null, ptr %i.v, align 8, !tbaa !51
  br label %edata_list_active_concat.exit

edata_list_active_concat.exit:                    ; preds = %.sink.split.i, %bb.e, %bb.b
  %i.at = phi i64 [ %.pre, %.sink.split.i ], [ %i.u, %bb.e ], [ %i.j, %bb.b ] ; 2 uses
  %i.au = phi ptr [ %i.as, %.sink.split.i ], [ %i.k, %bb.e ], [ %i.k, %bb.b ]
  %4 = load i64, ptr %i.c, align 8, !tbaa !92
  %i.av = icmp ugt i64 %i.at, %4
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %edata_list_active_concat.exit, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104
  store atomic i8 0, ptr %i.aw monotonic, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ay = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ax) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !56
  call void %i.bc(ptr noundef %0, ptr noundef %i.ba, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #8, !inline_history !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

declare void @je_nstime_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @je_nstime_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !35}
!1 = distinct !{null, null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!"sec_opts_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"pai_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48}
!18 = !{!"p1 _ZTS5pai_s", !16, i64 0}
!19 = !{!"p1 _ZTS11sec_shard_s", !16, i64 0}
!20 = !{!"sec_s", !17, i64 0, !18, i64 56, !14, i64 64, !19, i64 104, !11, i64 112}
!21 = !{!20, !19, i64 104}
!22 = !{!"malloc_mutex_s", !10, i64 0}
!23 = !{!"_Bool", !10, i64 0}
!24 = !{!"p1 _ZTS9sec_bin_s", !16, i64 0}
!25 = !{!"sec_shard_s", !22, i64 0, !23, i64 112, !24, i64 120, !13, i64 128, !11, i64 136}
!26 = !{!25, !23, i64 112}
!27 = !{!25, !24, i64 120}
!28 = !{!"p1 _ZTS7edata_s", !16, i64 0}
!29 = !{!"", !28, i64 0}
!30 = !{!"", !29, i64 0}
!31 = !{!"sec_bin_s", !23, i64 0, !13, i64 8, !30, i64 16}
!32 = !{!31, !23, i64 0}
!33 = !{!25, !13, i64 128}
!34 = !{!25, !11, i64 136}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!20, !18, i64 56}
!37 = !{!13, !13, i64 0}
!38 = !{!20, !11, i64 112}
!39 = !{!20, !13, i64 64}
!40 = !{!20, !13, i64 72}
!41 = !{!10, !10, i64 0}
!42 = !{!"", !13, i64 0}
!43 = !{!"", !11, i64 0}
!44 = !{!"p1 _ZTS6tsdn_s", !16, i64 0}
!45 = !{!"", !42, i64 0, !42, i64 8, !13, i64 16, !13, i64 24, !11, i64 32, !43, i64 36, !13, i64 40, !44, i64 48, !13, i64 56}
!46 = !{!45, !13, i64 56}
!47 = !{!45, !44, i64 48}
!48 = !{!45, !13, i64 40}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!30, !28, i64 0}
!52 = !{!20, !13, i64 96}
!53 = !{!31, !13, i64 8}
!54 = !{!20, !13, i64 80}
!55 = !{!23, !23, i64 0}
!56 = !{!17, !16, i64 40}
!57 = distinct !{!57, !62}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = !{!14, !13, i64 8}
!61 = !{!14, !13, i64 0}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !37, i64 32, i64 8, !37}
!64 = !{!20, !16, i64 0}
!65 = !{!20, !16, i64 8}
!66 = !{!20, !16, i64 16}
!67 = !{!20, !16, i64 24}
!68 = !{!20, !16, i64 32}
!69 = !{!20, !16, i64 40}
!70 = distinct !{null}
!71 = !{!17, !16, i64 0}
!72 = distinct !{null}
!73 = !{!17, !16, i64 16}
!74 = distinct !{null}
!75 = !{!17, !16, i64 24}
!76 = distinct !{null}
!77 = !{!17, !16, i64 32}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = distinct !{!80, !35}
!81 = !{!"sec_stats_s", !13, i64 0}
!82 = !{!81, !13, i64 0}
!83 = distinct !{!83, !35}
!84 = !{!45, !11, i64 32}
!85 = distinct !{!85, !35}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !35}
!88 = distinct !{null}
!89 = !{!17, !16, i64 8}
!90 = distinct !{!90, !35}
!91 = distinct !{null}
!92 = !{!20, !13, i64 88}
end_hunk_0
