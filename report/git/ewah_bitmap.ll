Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ewah_bitmap?download=true
inline.NumInlined: 79
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ewah_xor:bb.a
  br i1 %i.ch, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 177, ptr noundef nonnull @__PRETTY_FUNCTION__.add_empty_word) #12
  unreachable

bb.p:                                             ; preds = %bb.n
  store i64 2, ptr %i.cc, align 8, !tbaa !18
  br label %ewah_add.exit

bb.q:                                             ; preds = %.preheader
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !17  ; 3 uses
  %.val40.i = load i64, ptr %i.ci, align 8, !tbaa !18 ; 4 uses
  %i.cj = icmp ult i64 %.val40.i, 8589934592      ; 2 uses
  %i.ck = lshr i64 %.val40.i, 1
  %i.cl = and i64 %i.ck, 4294967295               ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %or.cond.i = and i1 %i.cj, %i.cm
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %storemerge.i.i = or i64 %.val40.i, 1           ; 2 uses
  store i64 %storemerge.i.i, ptr %i.ci, align 8, !tbaa !18
  br label %.thread.i

bb.s:                                             ; preds = %bb.q
  br i1 %i.cj, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.s, %bb.r
  %.val32.i = phi i64 [ %storemerge.i.i, %bb.r ], [ %.val40.i, %bb.s ] ; 2 uses
  %i.cn = trunc i64 %.val32.i to i1
  %i.co = icmp ne i64 %i.cl, 4294967295
  %or.cond3.i = and i1 %i.co, %i.cn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i
  %i.cp = or i64 %.val32.i, 8589934590
  %i.cq = shl nuw nsw i64 %i.cl, 1
  %i.cr = add nuw nsw i64 %i.cq, 2
  %i.cs = or i64 %i.cr, -8589934591
  %i.ct = and i64 %i.cp, %i.cs
  store i64 %i.ct, ptr %i.ci, align 8, !tbaa !18
  br label %ewah_add.exit

bb.u:                                             ; preds = %.thread.i, %bb.s
  %i.cu = load i64, ptr %i.j, align 8, !tbaa !19  ; 2 uses
  %i.cv = add i64 %i.cu, 1                        ; 3 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.cx = load i64, ptr %i.k, align 8, !tbaa !21  ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.v, label %buffer_push_rlw.exit.i

bb.v:                                             ; preds = %bb.u
  %i.cz = mul i64 %i.cx, 3
  %i.da = add i64 %i.cz, 48
  %i.db = lshr i64 %i.da, 1
  %..i.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 %i.cv) ; 4 uses
  store i64 %..i.i.i.i, ptr %i.k, align 8, !tbaa !21
  %mul.ov.i.i.i.i.i = icmp ugt i64 %..i.i.i.i, 2305843009213693951
  br i1 %mul.ov.i.i.i.i.i, label %bb.w, label %st_mult.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %..i.i.i.i) #12
  unreachable

st_mult.exit.i.i.i.i:                             ; preds = %bb.v
  %i.dc = shl nuw i64 %..i.i.i.i, 3
  %i.dd = call ptr @xrealloc(ptr noundef %i.cw, i64 noundef %i.dc) #13 ; 2 uses
  store ptr %i.dd, ptr %2, align 8, !tbaa !20
  %.pre.i.i.i = load i64, ptr %i.j, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i.i = add i64 %.pre.i.i.i, 1
  br label %buffer_push_rlw.exit.i

buffer_push_rlw.exit.i:                           ; preds = %st_mult.exit.i.i.i.i, %bb.u
  %.pre-phi.i.i.i = phi i64 [ %i.cv, %bb.u ], [ %.pre4.i.i.i, %st_mult.exit.i.i.i.i ]
  %i.de = phi i64 [ %i.cu, %bb.u ], [ %.pre.i.i.i, %st_mult.exit.i.i.i.i ]
  %i.df = phi ptr [ %i.cw, %bb.u ], [ %i.dd, %st_mult.exit.i.i.i.i ] ; 2 uses
  store i64 %.pre-phi.i.i.i, ptr %i.j, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de
  store i64 0, ptr %i.dg, align 8, !tbaa !18
  %i.dh = load i64, ptr %i.j, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 3 uses
  store ptr %i.dj, ptr %i.i, align 8, !tbaa !17
  %.val35.i = load i64, ptr %i.dj, align 8, !tbaa !18 ; 3 uses
  %i.dk = and i64 %.val35.i, 8589934590
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %buffer_push_rlw.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @__PRETTY_FUNCTION__.add_empty_word) #12
  unreachable

bb.y:                                             ; preds = %buffer_push_rlw.exit.i
  %i.dm = and i64 %.val35.i, 1
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 176, ptr noundef nonnull @__PRETTY_FUNCTION__.add_empty_word) #12
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.do = icmp eq i64 %.val35.i, 0
  br i1 %i.do, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 177, ptr noundef nonnull @__PRETTY_FUNCTION__.add_empty_word) #12
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i64 3, ptr %i.dj, align 8, !tbaa !18
  br label %ewah_add.exit

bb.ad:                                            ; preds = %.preheader
  %i.dp = call fastcc i64 @add_literal(ptr noundef nonnull %2, i64 noundef %i.ay) ; 0 uses
  br label %ewah_add.exit

ewah_add.exit:                                    ; preds = %bb.ac, %bb.t, %bb.p, %bb.g, %bb.ad
  %i.dq = add nuw i64 %.076, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.an
  br i1 %exitcond.not, label %bb.ae, label %.preheader, !llvm.loop !47

bb.ae:                                            ; preds = %ewah_add.exit
  call void @rlwit_discard_first_words(ptr noundef nonnull %3, i64 noundef %i.an) #13
  call void @rlwit_discard_first_words(ptr noundef nonnull %4, i64 noundef %i.an) #13
  %.val46.pre = load i32, ptr %i.a, align 8, !tbaa !51
  %.val47.pre = load i32, ptr %i.b, align 4, !tbaa !52
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %.val47 = phi i32 [ %.val47.pre, %bb.ae ], [ %.val4791, %._crit_edge ] ; 2 uses
  %.val46 = phi i32 [ %.val46.pre, %bb.ae ], [ %.val4688, %._crit_edge ] ; 2 uses
  %i.dr = sub i32 0, %.val46
  %.not = icmp eq i32 %.val47, %i.dr
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !48

.critedge:                                        ; preds = %bb.af, %bb.b, %bb.a
  %.sink = phi ptr [ %4, %bb.a ], [ %3, %bb.b ], [ %4, %bb.af ]
  %i.ds = call i64 @rlwit_discharge(ptr noundef nonnull %.sink, ptr noundef %2, i64 noundef -1, i32 noundef 0) #13 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !16
  %i.dx = call noundef i64 @llvm.umax.i64(i64 %i.du, i64 %i.dw)
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

declare void @rlwit_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rlwit_discharge(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @rlwit_discard_first_words(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ewah_pool_new() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @bitmap_pool_size, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %i.a, -1                         ; 2 uses
  store i64 %i.b, ptr @bitmap_pool_size, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @bitmap_pool, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @xmalloc(i64 noundef 40) #13 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 32, ptr %i.f, align 8, !tbaa !21
  %i.g = tail call ptr @xmalloc(i64 noundef 256) #13 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.h, align 8, !tbaa !19
  store i64 0, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.g, ptr %i.j, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @ewah_pool_free(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @bitmap_pool_size, align 8, !tbaa !18 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %ewah_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = icmp eq i64 %i.a, 16
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.c) #13
  br label %ewah_free.exit

ewah_free.exit:                                   ; preds = %bb.b, %bb.d
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !19
  %i.e = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.g, align 8, !tbaa !17
  %i.h = add nuw nsw i64 %i.a, 1
  store i64 %i.h, ptr @bitmap_pool_size, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @bitmap_pool, i64 %i.a
  store ptr %0, ptr %i.i, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %ewah_free.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ewah_checksum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %.not9 = icmp eq i64 %i.f, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.012 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.0711 = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %.0810 = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.y, %.lr.ph ] ; 5 uses
  %i.h = mul i32 %.0711, 31
  %i.i = getelementptr inbounds nuw i8, ptr %.0810, i64 1
  %i.j = load i8, ptr %.0810, align 1, !tbaa !57
  %i.k = zext i8 %i.j to i32
  %i.l = add i32 %i.h, %i.k
  %i.m = mul i32 %i.l, 31
  %i.n = getelementptr inbounds nuw i8, ptr %.0810, i64 2
  %i.o = load i8, ptr %i.i, align 1, !tbaa !57
  %i.p = zext i8 %i.o to i32
  %i.q = add i32 %i.m, %i.p
  %i.r = mul i32 %i.q, 31
  %i.s = getelementptr inbounds nuw i8, ptr %.0810, i64 3
  %i.t = load i8, ptr %i.n, align 1, !tbaa !57
  %i.u = zext i8 %i.t to i32
  %i.v = add i32 %i.r, %i.u
  %i.w = add i64 %.012, -4                        ; 2 uses
  %i.x = mul i32 %i.v, 31
  %i.y = getelementptr inbounds nuw i8, ptr %.0810, i64 4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !57
  %i.aa = zext i8 %i.z to i32
  %i.ab = add i32 %i.x, %i.aa                     ; 2 uses
  %.not.3 = icmp eq i64 %i.w, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.07.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.ab, %.lr.ph ]
  ret i32 %.07.lcssa
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 long", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"ewah_bitmap", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !13, i64 32}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !13, i64 32}
!18 = !{!14, !14, i64 0}
!19 = !{!15, !14, i64 8}
!20 = !{!15, !13, i64 0}
!21 = !{!15, !14, i64 16}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"ewah_iterator", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !9, i64 56}
!24 = !{!23, !14, i64 16}
!25 = !{!23, !14, i64 8}
!26 = !{!23, !14, i64 40}
!27 = !{!23, !9, i64 56}
!28 = !{!23, !14, i64 48}
!29 = !{!23, !13, i64 0}
!30 = !{!"p1 _ZTS13ewah_iterator", !12, i64 0}
!31 = !{!"ewah_or_iterator", !30, i64 0, !14, i64 8}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !14, i64 8}
!34 = !{!"p1 _ZTS11ewah_bitmap", !12, i64 0}
!35 = !{!34, !34, i64 0}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = !{!23, !14, i64 24}
!43 = !{!23, !14, i64 32}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = !{!"", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!50 = !{!"rlw_iterator", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !49, i64 32}
!51 = !{!50, !9, i64 40}
!52 = !{!50, !9, i64 44}
!53 = !{!50, !9, i64 52}
!54 = !{!50, !13, i64 0}
!55 = !{!50, !14, i64 24}
!56 = distinct !{!56, !22}
!57 = !{!8, !8, i64 0}
end_hunk_0
