Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_tree?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lv_tree_node_class = local_unnamed_addr constant { ptr, i32, [4 x i8], ptr, ptr } { ptr null, i32 32, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8

; Function Attrs: nounwind uwtable
define nonnull ptr @lv_tree_node_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader9

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader9:                                      ; preds = %bb.a, %bb.b
  %.07.i.i = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %get_instance_size.exit.i

bb.b:                                             ; preds = %.preheader9
  %i.d = load ptr, ptr %.07.i.i, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %.critedge6.i.i, label %.preheader9, !llvm.loop !22

.critedge6.i.i:                                   ; preds = %bb.b, %.critedge6.i.i
  br label %.critedge6.i.i

get_instance_size.exit.i:                         ; preds = %.preheader9
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = tail call ptr @lv_malloc(i64 noundef %i.e) #2 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_lv_tree_class_create_node.exit.a, label %bb.c

bb.c:                                             ; preds = %get_instance_size.exit.i
  tail call void @lv_memset(ptr noundef nonnull %i.f, i8 noundef zeroext 0, i64 noundef range(i64 0, 4294967296) %i.e) #2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %0, ptr %i.h, align 8, !tbaa !17
  store ptr %1, ptr %i.f, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 4, ptr %i.i, align 4, !tbaa !24
  %i.j = tail call ptr @lv_malloc(i64 noundef 32) #2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !19
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 3 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.n, 1                          ; 2 uses
  store i32 %i.r, ptr %i.o, align 4, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = zext i32 %i.r to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call ptr @lv_realloc(ptr noundef %i.t, i64 noundef %i.v) #2 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !19
  %.pre29.i = load i32, ptr %i.l, align 8, !tbaa !20
  %i.x = add i32 %.pre29.i, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.y = phi i32 [ %i.m, %._crit_edge.i ], [ %i.x, %bb.e ]
  %i.z = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.w, %bb.e ]
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  store ptr %i.f, ptr %i.ab, align 8, !tbaa !21
  br label %bb.g

_lv_tree_class_create_node.exit.a:                ; preds = %get_instance_size.exit.i, %_lv_tree_class_create_node.exit.a
  br label %_lv_tree_class_create_node.exit.a

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !17
  tail call fastcc void @_lv_tree_node_construct(ptr noundef %i.ac, ptr noundef %i.f)
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_lv_tree_node_construct(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !17
  tail call fastcc void @_lv_tree_node_construct(ptr noundef %0, ptr noundef %1)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.e(ptr noundef %0, ptr noundef nonnull %1) #2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_tree_node_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 5 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %0, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue25, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue25 ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x ptr>, ptr %i.f, align 8, !tbaa !21
  %wide.load19 = load <2 x ptr>, ptr %i.g, align 8, !tbaa !21
  %i.h = icmp eq <2 x ptr> %wide.load, %broadcast.splat ; 2 uses
  %i.i = icmp eq <2 x ptr> %wide.load19, %broadcast.splat ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  br i1 %i.j, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store ptr null, ptr %i.f, align 8, !tbaa !21
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.k = extractelement <2 x i1> %i.h, i64 1
  br i1 %i.k, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !21
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %i.n = extractelement <2 x i1> %i.i, i64 0
  br i1 %i.n, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !21
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.q = extractelement <2 x i1> %i.i, i64 1
  br i1 %i.q, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr null, ptr %i.s, align 8, !tbaa !21
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %pred.store.continue25
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %scalar.ph
  store ptr null, ptr %i.u, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !27

.loopexit:                                        ; preds = %bb.d, %middle.block, %.preheader, %bb.b
  %i.x = tail call zeroext i1 @lv_tree_walk(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull @_lv_tree_node_destructor_cb, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @lv_tree_walk(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %1, 0                         ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call zeroext i1 %3(ptr noundef nonnull %0, ptr noundef %5) #2
  br i1 %i.d, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call zeroext i1 %2(ptr noundef nonnull %0, ptr noundef %5) #2
  br i1 %i.e, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %.not55 = icmp eq i32 %i.g, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !20
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.h, label %._crit_edge, !llvm.loop !30

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call zeroext i1 @lv_tree_walk(ptr noundef %i.n, i8 noundef zeroext %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br i1 %i.o, label %bb.g, label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.p = icmp ne ptr %4, null                     ; 2 uses
  %or.cond3 = and i1 %i.c, %i.p
  br i1 %or.cond3, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.q = icmp eq i8 %1, 1
  br i1 %i.q, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %.not49 = icmp eq ptr %3, null
  br i1 %.not49, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call zeroext i1 %3(ptr noundef nonnull %0, ptr noundef %5) #2
  br i1 %i.r, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = tail call zeroext i1 %2(ptr noundef nonnull %0, ptr noundef %5) #2 ; 2 uses
  %brmerge.not = and i1 %i.p, %i.s
  br i1 %brmerge.not, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.l, %._crit_edge
  tail call void %4(ptr noundef nonnull %0, ptr noundef %5) #2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.sink.split, %bb.l, %bb.a, %bb.i, %bb.k, %bb.e, %bb.d
  %.1 = phi i1 [ %i.s, %bb.l ], [ false, %bb.k ], [ false, %bb.e ], [ true, %bb.a ], [ true, %.loopexit.sink.split ], [ false, %bb.d ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @_lv_tree_node_destructor_cb(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.e, %bb.b
  %i.b = phi ptr [ %i.f, %bb.e ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %tailrecurse.i
  tail call void %i.d(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #2, !inline_history !31
  %.pre10.i = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %tailrecurse.i
  %i.e = phi ptr [ %.pre10.i, %bb.c ], [ %i.b, %tailrecurse.i ]
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %_lv_tree_node_destruct.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.a, align 8, !tbaa !17
  br label %tailrecurse.i

_lv_tree_node_destruct.exit:                      ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void @lv_free(ptr noundef %i.h) #2
  tail call void @lv_free(ptr noundef nonnull %0) #2
  br label %bb.f

bb.f:                                             ; preds = %_lv_tree_node_destruct.exit, %bb.a
  ret i1 true
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #1

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare void @lv_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS16_lv_tree_class_t", !8, i64 0}
!10 = !{!"_lv_tree_class_t", !9, i64 0, !5, i64 8, !8, i64 16, !8, i64 24}
!11 = !{!10, !9, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"p1 _ZTS15_lv_tree_node_t", !8, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 _ZTS15_lv_tree_node_t", !14, i64 0}
!16 = !{!"_lv_tree_node_t", !13, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !9, i64 24}
!17 = !{!16, !9, i64 24}
!18 = !{!16, !13, i64 0}
!19 = !{!16, !15, i64 8}
!20 = !{!16, !5, i64 16}
!21 = !{!13, !13, i64 0}
!22 = distinct !{!22, !12}
!23 = !{!10, !5, i64 8}
!24 = !{!16, !5, i64 20}
!25 = !{!10, !8, i64 16}
!26 = distinct !{!26, !12, !28, !29}
!27 = distinct !{!27, !12, !29, !28}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !12}
!31 = distinct !{null}
!32 = !{!10, !8, i64 24}
end_hunk_0
