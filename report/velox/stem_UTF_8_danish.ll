inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@danish_UTF_8_stem:bb.a
  %i.aa = icmp slt i32 %i.w, %i.z
  br i1 %i.aa, label %bb.m, label %bb.e

bb.e:                                             ; preds = %r_mark_regions.exit
  store i32 %i.z, ptr %i.v, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.w, ptr %i.ab, align 8, !tbaa !18
  %.not.i = icmp sgt i32 %i.w, %i.z
  br i1 %.not.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %.mask.i = and i32 %i.ah, 224
  %.not45.i = icmp eq i32 %.mask.i, 96
  br i1 %.not45.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ai = and i32 %i.ah, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = and i32 %i.aj, 1851440
  %.not46.i = icmp eq i32 %i.ak, 0
  br i1 %.not46.i, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_0, i32 noundef 32) #3 ; 2 uses
  %.not47.i = icmp eq i32 %i.al, 0
  br i1 %.not47.i, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.a, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !20
  store i32 %i.b, ptr %i.v, align 8, !tbaa !17
  switch i32 %i.al, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %bb.m, label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_s_ending, i32 noundef 97, i32 noundef 229, i32 noundef 0) #3
  %.not48.i = icmp eq i32 %i.aq, 0
  br i1 %.not48.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.m, label %bb.af

.sink.split:                                      ; preds = %bb.h, %bb.e, %bb.f, %bb.g
  store i32 %i.b, ptr %i.v, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i, %bb.j, %bb.l, %r_mark_regions.exit, %bb.k
  %i.at = load i32, ptr %i.c, align 4, !tbaa !14
  store i32 %i.at, ptr %i.a, align 8, !tbaa !7
  %i.au = tail call fastcc i32 @r_consonant_pair(ptr noundef nonnull %0) ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.af, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !18
  %i.ay = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_0) #3
  %.not.i72 = icmp eq i32 %i.ay, 0
  br i1 %.not.i72, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !20
  %i.bb = tail call i32 @eq_s_b(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @s_1) #3
  %.not79.i = icmp eq i32 %i.bb, 0
  br i1 %.not79.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load i32, ptr %i.c, align 4, !tbaa !14  ; 4 uses
  store i32 %i.be, ptr %i.a, align 8, !tbaa !7
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 3 uses
  %i.bi = icmp slt i32 %i.be, %i.bh
  br i1 %i.bi, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  store i32 %i.bh, ptr %i.v, align 8, !tbaa !17
  store i32 %i.be, ptr %i.ax, align 8, !tbaa !18
  %i.bk = add nsw i32 %i.be, -1                   ; 2 uses
  %.not80.i = icmp sgt i32 %i.bk, %i.bh
  br i1 %.not80.i, label %bb.s, label %.sink.split114

bb.s:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %0, align 8, !tbaa !16
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %.mask.i73 = and i32 %i.bp, 224
  %.not81.i = icmp eq i32 %.mask.i73, 96
  br i1 %.not81.i, label %bb.t, label %.sink.split114

bb.t:                                             ; preds = %bb.s
  %i.bq = and i32 %i.bp, 31
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = and i32 %i.br, 1572992
  %.not82.i = icmp eq i32 %i.bs, 0
  br i1 %.not82.i, label %.sink.split114, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_2, i32 noundef 5) #3 ; 2 uses
  %.not83.i = icmp eq i32 %i.bt, 0
  br i1 %.not83.i, label %.sink.split114, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !20
  store i32 %i.bj, ptr %i.v, align 8, !tbaa !17
  switch i32 %i.bt, label %bb.z [
    i32 1, label %bb.w
    i32 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.bw = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.by = tail call fastcc i32 @r_consonant_pair(ptr noundef nonnull %0) ; 2 uses
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.z, label %bb.af

bb.y:                                             ; preds = %bb.v
  %i.ca = tail call i32 @slice_from_s(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @s_2) #3 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.z, label %bb.af

.sink.split114:                                   ; preds = %bb.u, %bb.r, %bb.s, %bb.t
  store i32 %i.bj, ptr %i.v, align 8, !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %.sink.split114, %bb.x, %bb.v, %bb.y, %bb.q
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !14  ; 3 uses
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !7
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %i.cg = icmp slt i32 %i.cc, %i.cf
  br i1 %i.cg, label %select.unfold, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i32, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  store i32 %i.cf, ptr %i.v, align 8, !tbaa !17
  store i32 %i.cc, ptr %i.ax, align 8, !tbaa !18
  %i.ci = tail call i32 @in_grouping_b_U(ptr noundef nonnull %0, ptr noundef nonnull @g_c, i32 noundef 98, i32 noundef 122, i32 noundef 0) #3
  %.not.i74 = icmp eq i32 %i.ci, 0
  br i1 %.not.i74, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ch, ptr %i.v, align 8, !tbaa !17
  br label %select.unfold

bb.ac:                                            ; preds = %bb.aa
  %i.cj = load i32, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22
  %i.co = tail call ptr @slice_to(ptr noundef nonnull %0, ptr noundef %i.cn) #3 ; 3 uses
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !21
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !22
  %i.cq = icmp eq ptr %i.co, null
  br i1 %i.cq, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.ch, ptr %i.v, align 8, !tbaa !17
  %i.cr = tail call i32 @eq_v_b(ptr noundef nonnull %0, ptr noundef nonnull %i.co) #3
  %.not29.i = icmp eq i32 %i.cr, 0
  br i1 %.not29.i, label %select.unfold, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = tail call i32 @slice_del(ptr noundef nonnull %0) #3
  %.fr = freeze i32 %i.cs                         ; 2 uses
  %i.ct = icmp sgt i32 %.fr, -1
  br i1 %i.ct, label %select.unfold, label %bb.af

select.unfold:                                    ; preds = %bb.ae, %bb.ab, %bb.z, %bb.ad
  %i.cu = load i32, ptr %i.v, align 8, !tbaa !17
  store i32 %i.cu, ptr %i.a, align 8, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.j, %bb.l, %bb.ac, %bb.p, %bb.y, %bb.w, %bb.x, %bb.m, %select.unfold
  %.5 = phi i32 [ 1, %select.unfold ], [ %i.by, %bb.x ], [ %i.au, %bb.m ], [ -1, %bb.ac ], [ %i.bc, %bb.p ], [ %i.ca, %bb.y ], [ %i.bw, %bb.w ], [ %i.ao, %bb.j ], [ %i.ar, %bb.l ], [ %.fr, %bb.ae ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @r_consonant_pair(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7    ; 4 uses
  %.neg = sub i32 %i.d, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 3 uses
  %i.i = icmp slt i32 %i.d, %i.h
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  store i32 %i.h, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %i.l, align 8, !tbaa !18
  %i.m = add nsw i32 %i.d, -1                     ; 2 uses
  %.not = icmp sgt i32 %i.m, %i.h
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !16
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  switch i8 %i.q, label %bb.d [
    i8 100, label %bb.e
    i8 116, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.k, ptr %i.j, align 8, !tbaa !17
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.r = tail call i32 @find_among_b(ptr noundef nonnull %0, ptr noundef nonnull @a_1, i32 noundef 4) #3
  %.not52 = icmp eq i32 %i.r, 0
  br i1 %.not52, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr %i.j, align 8, !tbaa !17
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.c, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !20
  store i32 %i.k, ptr %i.j, align 8, !tbaa !17
  %i.u = load i32, ptr %i.a, align 4, !tbaa !14
  %i.v = add i32 %i.u, %.neg                      ; 2 uses
  store i32 %i.v, ptr %i.c, align 8, !tbaa !7
  %i.w = load ptr, ptr %0, align 8, !tbaa !16
  %i.x = tail call i32 @skip_b_utf8(ptr noundef %i.w, i32 noundef %i.v, i32 noundef %i.k, i32 noundef 1) #3 ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.x, ptr %i.c, align 8, !tbaa !7
  store i32 %i.x, ptr %i.t, align 4, !tbaa !20
  %i.z = tail call i32 @slice_del(ptr noundef nonnull %0) #3 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.z, i32 0)
  %spec.select = select i1 %i.aa, i32 1, i32 %.
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %bb.h
  %.3 = phi i32 [ 0, %bb.g ], [ %spec.select, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define ptr @danish_UTF_8_create_env() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SN_create_env(i32 noundef 1, i32 noundef 2) #3
  ret ptr %i.a
}

declare ptr @SN_create_env(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @danish_UTF_8_close_env(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @SN_close_env(ptr noundef %0, i32 noundef 1) #3
  ret void
}

declare void @SN_close_env(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @skip_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @out_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @in_grouping_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @find_among_b(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slice_del(ptr noundef) local_unnamed_addr #1

declare i32 @in_grouping_b_U(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @skip_b_utf8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @eq_s_b(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slice_from_s(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slice_to(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @eq_v_b(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!7 = !{!8, !4, i64 8}
!8 = !{!"SN_env", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !11, i64 32, !13, i64 40}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p2 omnipotent char", !12, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!8, !4, i64 12}
!15 = !{!8, !13, i64 40}
!16 = !{!8, !9, i64 0}
!17 = !{!8, !4, i64 16}
!18 = !{!8, !4, i64 24}
!19 = !{!5, !5, i64 0}
!20 = !{!8, !4, i64 20}
!21 = !{!8, !11, i64 32}
!22 = !{!9, !9, i64 0}
end_hunk_0
