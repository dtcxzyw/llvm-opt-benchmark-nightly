Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/stem_UTF_8_nepali?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@nepali_UTF_8_stem:bb.a
  store i32 %i.b, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 12 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 %i.e, ptr %i.f, align 8, !tbaa !17
  %i.g = tail call i32 @find_among_b(ptr noundef %0, ptr noundef nonnull @a_0, i32 noundef 17) #2 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.thread41.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.h, ptr %i.i, align 4, !tbaa !18
  switch i32 %i.g, label %.thread41.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %.thread41.i, label %.thread108

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.d, align 4, !tbaa !16
  %i.m = sub nsw i32 %i.l, %i.h                   ; 2 uses
  %i.n = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_0) #2
  %.not35.i = icmp eq i32 %i.n, 0
  br i1 %.not35.i, label %bb.e, label %.thread41.i

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.d, align 4, !tbaa !16
  %i.p = sub nsw i32 %i.o, %i.m
  store i32 %i.p, ptr %i.a, align 8, !tbaa !14
  %i.q = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @s_1) #2
  %.not36.i = icmp eq i32 %i.q, 0
  br i1 %.not36.i, label %bb.f, label %.thread41.i

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.d, align 4, !tbaa !16
  %i.s = sub nsw i32 %i.r, %i.m
  store i32 %i.s, ptr %i.a, align 8, !tbaa !14
  %i.t = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread108, label %.thread41.i

.thread41.i:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.333.i = phi i32 [ 0, %bb.a ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %i.v = load i32, ptr %i.d, align 4, !tbaa !16
  store i32 %i.v, ptr %i.a, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %r_remove_category_3.exit, %.thread41.i
  %.159 = phi i32 [ %.333.i, %.thread41.i ], [ %..462, %r_remove_category_3.exit ]
  %i.x = load i32, ptr %i.d, align 4, !tbaa !16
  %i.y = load i32, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.z = sub nsw i32 %i.x, %i.y                   ; 2 uses
  store i32 %i.y, ptr %i.f, align 8, !tbaa !17
  %i.aa = add nsw i32 %i.y, -2
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !15
  %.not.i70 = icmp sgt i32 %i.aa, %i.ab
  br i1 %.not.i70, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8, !tbaa !19
  %i.ad = sext i32 %i.y to i64
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %.mask.i = and i32 %i.ah, 224
  %.not11.i = icmp eq i32 %.mask.i, 128
  br i1 %.not11.i, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.ai = and i32 %i.ah, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = and i32 %i.aj, 262
  %.not12.i = icmp eq i32 %i.ak, 0
  br i1 %.not12.i, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 3) #2
  %.not13.i = icmp eq i32 %i.al, 0
  br i1 %.not13.i, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.a, align 8, !tbaa !14
  store i32 %i.am, ptr %i.w, align 4, !tbaa !18
  %i.an = load i32, ptr %i.d, align 4, !tbaa !16
  %i.ao = sub nsw i32 %i.an, %i.z                 ; 4 uses
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !14
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !17
  %i.ap = add nsw i32 %i.ao, -2
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !15
  %.not.i71 = icmp sgt i32 %i.ap, %i.aq
  br i1 %.not.i71, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %0, align 8, !tbaa !19
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %.mask.i72 = and i32 %i.aw, 224
  %.not44.i = icmp eq i32 %.mask.i72, 128
  br i1 %.not44.i, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = and i32 %i.ay, 262
  %.not45.i = icmp eq i32 %i.az, 0
  br i1 %.not45.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 3) #2 ; 2 uses
  %.not46.i = icmp eq i32 %i.ba, 0
  br i1 %.not46.i, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  store i32 %i.bb, ptr %i.w, align 4, !tbaa !18
  switch i32 %i.ba, label %bb.w [
    i32 1, label %bb.p
    i32 2, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !16
  %i.bd = sub nsw i32 %i.bc, %i.bb                ; 3 uses
  %i.be = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @s_2) #2
  %.not48.i = icmp eq i32 %i.be, 0
  br i1 %.not48.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !16
  %i.bg = sub nsw i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !14
  %i.bh = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @s_3) #2
  %.not49.i = icmp eq i32 %i.bh, 0
  br i1 %.not49.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !16
  %i.bj = sub nsw i32 %i.bi, %i.bd
  store i32 %i.bj, ptr %i.a, align 8, !tbaa !14
  %i.bk = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @s_4) #2
  %.not50.i = icmp eq i32 %i.bk, 0
  br i1 %.not50.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !16
  %i.bm = sub nsw i32 %i.bl, %i.bd
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !14
  %i.bn = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull @s_5) #2
  %.not51.i = icmp eq i32 %i.bn, 0
  br i1 %.not51.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.bo = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.w, label %.thread108

bb.u:                                             ; preds = %bb.o
  %i.bq = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull @s_6) #2
  %.not47.i = icmp eq i32 %i.bq, 0
  br i1 %.not47.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  br i1 %i.bs, label %bb.w, label %.thread108

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.o, %bb.s, %bb.l, %bb.m, %bb.n, %bb.u, %bb.k, %bb.j, %bb.h, %bb.i, %bb.g
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !16
  %i.bu = sub nsw i32 %i.bt, %i.z                 ; 2 uses
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !14
  store i32 %i.bu, ptr %i.f, align 8, !tbaa !17
  %i.bv = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_3, i32 noundef 91) #2
  %.not.i73 = icmp eq i32 %i.bv, 0
  br i1 %.not.i73, label %.loopexit, label %r_remove_category_3.exit

r_remove_category_3.exit:                         ; preds = %bb.w
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !14
  store i32 %i.bw, ptr %i.w, align 4, !tbaa !18
  %i.bx = tail call i32 @slice_del(ptr noundef nonnull %0) #2 ; 3 uses
  %i.by = icmp slt i32 %i.bx, 0
  %..462 = select i1 %i.by, i32 %i.bx, i32 %.159  ; 2 uses
  %cond = icmp sgt i32 %i.bx, -1
  br i1 %cond, label %bb.g, label %.thread108

.loopexit:                                        ; preds = %bb.w
  %i.bz = load i32, ptr %i.c, align 8, !tbaa !15
  store i32 %i.bz, ptr %i.a, align 8, !tbaa !14
  br label %.thread108

.thread108:                                       ; preds = %bb.v, %bb.t, %r_remove_category_3.exit, %bb.f, %bb.c, %.loopexit
  %.765 = phi i32 [ 1, %.loopexit ], [ %i.j, %bb.c ], [ %i.t, %bb.f ], [ %i.bo, %bb.t ], [ %i.br, %bb.v ], [ %..462, %r_remove_category_3.exit ]
  ret i32 %.765
}

; Function Attrs: nounwind uwtable
define ptr @nepali_UTF_8_create_env() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SN_create_env(i32 noundef 0, i32 noundef 0) #2
  ret ptr %i.a
}

declare ptr @SN_create_env(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @nepali_UTF_8_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_close_env(ptr noundef %0, i32 noundef 0) #2
  ret void
}

declare void @SN_close_env(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_del(ptr noundef) local_unnamed_addr #1

declare i32 @eq_s_b(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"any p2 pointer", !8, i64 0}
!11 = !{!"p2 omnipotent char", !10, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"SN_env", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !11, i64 32, !12, i64 40}
!14 = !{!13, !5, i64 8}
!15 = !{!13, !5, i64 16}
!16 = !{!13, !5, i64 12}
!17 = !{!13, !5, i64 24}
!18 = !{!13, !5, i64 20}
!19 = !{!13, !9, i64 0}
!20 = !{!4, !4, i64 0}
end_hunk_0
