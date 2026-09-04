Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/hash-lookup?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@the_repository = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"hash-lookup.c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"assertion failed in binary search\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"overflow: -1 - %lu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @oid_pos(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  switch i64 %2, label %.preheader [
    i64 0, label %.loopexit
    i64 1, label %.thread.preheader
  ]

.thread.preheader:                                ; preds = %bb.b, %.preheader, %bb.h, %bb.a
  %.3.ph = phi i64 [ 0, %bb.a ], [ %i.az, %bb.h ], [ 0, %.preheader ], [ 0, %bb.b ]
  br label %.thread

.preheader:                                       ; preds = %bb.a
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %.thread.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = add i64 %2, -1                           ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  %i.g = add i64 %.094, 2                         ; 2 uses
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43
  %i.m = add i64 %i.l, -2
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %.thread.preheader, !llvm.loop !46

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.094 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.b ] ; 4 uses
  %i.o = tail call ptr %3(i64 noundef 0, ptr noundef %1) #5
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.094 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !45
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = getelementptr i8, ptr %i.p, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !45
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v               ; 3 uses
  %i.x = tail call ptr %3(i64 noundef %i.f, ptr noundef %1) #5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.094 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !45
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr i8, ptr %i.y, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.094 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !45
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr i8, ptr %i.ag, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !45
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am            ; 3 uses
  %i.ao = icmp samesign ult i32 %i.an, %i.w
  br i1 %i.ao, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp samesign ult i32 %i.af, %i.an
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp ugt i64 %2, 2147483647
  br i1 %i.aq, label %bb.f, label %index_pos_to_insert_pos.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i64 noundef %2) #6
  unreachable

index_pos_to_insert_pos.exit:                     ; preds = %bb.e
  %i.ar = trunc nuw nsw i64 %2 to i32
  %i.as = xor i32 %i.ar, -1
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %.not69 = icmp eq i32 %i.w, %i.af
  br i1 %.not69, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = zext nneg i32 %i.w to i64               ; 2 uses
  %i.au = zext nneg i32 %i.af to i64
  %i.av = zext nneg i32 %i.an to i64
  %i.aw = sub nuw nsw i64 %i.av, %i.at
  %i.ax = mul i64 %i.aw, %i.f
  %i.ay = sub nuw nsw i64 %i.au, %i.at
  %i.az = udiv i64 %i.ax, %i.ay                   ; 2 uses
  %i.ba = icmp ult i64 %i.az, %2
  br i1 %i.ba, label %.thread.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.1) #6
  unreachable

.thread:                                          ; preds = %.thread.preheader, %bb.j
  %.054 = phi i64 [ %.155, %bb.j ], [ %2, %.thread.preheader ]
  %.051 = phi i64 [ %.152, %bb.j ], [ 0, %.thread.preheader ]
  %.3 = phi i64 [ %i.bi, %bb.j ], [ %.3.ph, %.thread.preheader ] ; 4 uses
  %i.bb = tail call ptr %3(i64 noundef %.3, ptr noundef %1) #5
  %i.bc = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(32) %i.bb, ptr noundef nonnull readonly dereferenceable(32) %0, i64 noundef 32) #7 ; 2 uses
  %.not70.not = icmp eq i32 %i.bc, 0
  br i1 %.not70.not, label %.thread75, label %bb.j

.thread75:                                        ; preds = %.thread
  %i.bd = trunc i64 %.3 to i32
  br label %.loopexit

bb.j:                                             ; preds = %.thread
  %i.be = icmp sgt i32 %i.bc, 0                   ; 2 uses
  %i.bf = add i64 %.3, 1
  %.155 = select i1 %i.be, i64 %.3, i64 %.054     ; 3 uses
  %.152 = select i1 %i.be, i64 %.051, i64 %i.bf   ; 7 uses
  %i.bg = sub i64 %.155, %.152
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = add i64 %i.bh, %.152
  %i.bj = icmp ult i64 %.152, %.155
  br i1 %i.bj, label %.thread, label %bb.k, !llvm.loop !47

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp ugt i64 %.152, 2147483647
  br i1 %i.bk, label %bb.l, label %index_pos_to_insert_pos.exit71

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i64 noundef %.152) #6
  unreachable

index_pos_to_insert_pos.exit71:                   ; preds = %bb.k
  %i.bl = trunc nuw nsw i64 %.152 to i32
  %i.bm = xor i32 %i.bl, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.thread75, %index_pos_to_insert_pos.exit, %bb.a, %index_pos_to_insert_pos.exit71
  %.461 = phi i32 [ %i.bm, %index_pos_to_insert_pos.exit71 ], [ %i.bd, %.thread75 ], [ -1, %bb.a ], [ %i.as, %index_pos_to_insert_pos.exit ], [ -1, %bb.c ]
  ret i32 %.461
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @bsearch_hash(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !45      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  %i.f = icmp eq i8 %i.a, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = add nuw nsw i64 %i.b, 4294967295
  %6 = and i64 %5, 4294967295
  %7 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %i.g = load i32, ptr %7, align 4, !tbaa !49
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.j = icmp ult i32 %i.i, %i.e
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = load ptr, ptr @the_repository, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val = load i64, ptr %i.n, align 8, !tbaa !43
  %i.o = icmp eq i64 %.val, 32
  %..i = select i1 %i.o, i64 32, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.02542 = phi i32 [ %i.i, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %.02641 = phi i32 [ %i.e, %.lr.ph ], [ %.127, %bb.f ] ; 2 uses
  %i.p = sub nuw i32 %.02641, %.02542
  %i.q = lshr i32 %i.p, 1
  %i.r = add i32 %i.q, %.02542                    ; 4 uses
  %i.s = zext i32 %i.r to i64
  %i.t = mul i64 %3, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  %i.v = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(20) %i.u, ptr noundef nonnull readonly dereferenceable(20) %0, i64 noundef %..i) #7 ; 2 uses
  %.not36.not = icmp eq i32 %i.v, 0
  br i1 %.not36.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not37 = icmp eq ptr %4, null
  br i1 %.not37, label %.thread, label %.thread.sink.split

bb.f:                                             ; preds = %bb.d
  %i.w = icmp sgt i32 %i.v, 0                     ; 2 uses
  %i.x = add i32 %i.r, 1
  %.127 = select i1 %i.w, i32 %i.r, i32 %.02641   ; 2 uses
  %.1 = select i1 %i.w, i32 %.02542, i32 %i.x     ; 3 uses
  %i.y = icmp ult i32 %.1, %.127
  br i1 %i.y, label %bb.d, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.025.lcssa = phi i32 [ %i.i, %bb.c ], [ %.1, %bb.f ]
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %._crit_edge, %bb.e
  %.lcssa.sink = phi i32 [ %i.r, %bb.e ], [ %.025.lcssa, %._crit_edge ]
  %.231.ph = phi i32 [ 1, %bb.e ], [ 0, %._crit_edge ]
  store i32 %.lcssa.sink, ptr %4, align 4, !tbaa !49
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e, %._crit_edge
  %.231 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.e ], [ %.231.ph, %.thread.sink.split ]
  ret i32 %.231
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!13 = !{!"p1 _ZTS10repository", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTS15object_database", !12, i64 0}
!17 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!18 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!19 = !{!"_Bool", !8, i64 0}
!20 = !{!"any p2 pointer", !12, i64 0}
!21 = !{!"p2 _ZTS13hashmap_entry", !20, i64 0}
!22 = !{!"hashmap", !21, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!23 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!24 = !{!"strmap", !22, i64 0, !23, i64 48, !9, i64 56}
!25 = !{!"repo_path_cache", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!26 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!27 = !{!"long", !8, i64 0}
!28 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !26, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !9, i64 128, !15, i64 136}
!29 = !{!"p1 _ZTS10config_set", !12, i64 0}
!30 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!31 = !{!"p1 _ZTS11index_state", !12, i64 0}
!32 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!33 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!34 = !{!"repo_config_values", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!35 = !{!"p1 _ZTS6strmap", !12, i64 0}
!36 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!37 = !{!"string_list", !36, i64 0, !27, i64 8, !27, i64 16, !9, i64 24, !12, i64 32}
!38 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!39 = !{!"repository", !15, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !19, i64 40, !24, i64 48, !24, i64 112, !25, i64 176, !15, i64 232, !15, i64 240, !15, i64 248, !19, i64 256, !19, i64 257, !15, i64 264, !28, i64 272, !29, i64 416, !30, i64 424, !31, i64 432, !32, i64 440, !33, i64 448, !33, i64 456, !34, i64 464, !9, i64 512, !15, i64 520, !9, i64 528, !9, i64 532, !35, i64 536, !9, i64 544, !24, i64 552, !37, i64 616, !15, i64 656, !38, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !19, i64 689, !19, i64 690}
!40 = !{!39, !33, i64 448}
!41 = !{!"p1 _ZTS9object_id", !12, i64 0}
!42 = !{!"git_hash_algo", !15, i64 0, !9, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !33, i64 104}
!43 = !{!42, !27, i64 16}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!8, !8, i64 0}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !44}
!49 = !{!9, !9, i64 0}
end_hunk_0
