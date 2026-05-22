inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@picture_structure = external local_unnamed_addr global i32, align 4
@top_field_first = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @motion_vectors(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %8, %5
  %or.cond.not = icmp eq i32 %i.b, 0
  br i1 %or.cond.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = sext i32 %3 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @Get_Bits(i32 noundef 1) #3 ; 2 uses
  %i.d = sext i32 %3 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d
  store i32 %i.c, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.d
  store i32 %i.c, ptr %i.g, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.d, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  tail call void @motion_vector(ptr noundef %i.h, ptr noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.pre-phi
  %i.k = load <2 x i32>, ptr %i.h, align 4, !tbaa !4
  store <2 x i32> %i.k, ptr %i.j, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = tail call i32 @Get_Bits(i32 noundef 1) #3
  %i.m = sext i32 %3 to i64                       ; 4 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m
  store i32 %i.l, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m
  tail call void @motion_vector(ptr noundef %i.o, ptr noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0)
  %i.p = tail call i32 @Get_Bits(i32 noundef 1) #3
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.m
  store i32 %i.p, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.m
  tail call void @motion_vector(ptr noundef nonnull %i.t, ptr noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare i32 @Get_Bits(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @motion_vector(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Get_motion_code() #3      ; 5 uses
  %i.b = icmp ne i32 %2, 0
  %i.c = icmp ne i32 %i.a, 0
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @Get_Bits(i32 noundef %2) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.f = shl i32 16, %2                           ; 2 uses
  %.not.i = icmp ne i32 %6, 0
  %i.g = load i32, ptr %0, align 4, !tbaa !4
  %i.h = zext i1 %.not.i to i32                   ; 6 uses
  %i.i = ashr i32 %i.g, %i.h                      ; 3 uses
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.a, -1
  %i.l = shl i32 %i.k, %2
  %i.m = add i32 %i.l, 1
  %i.n = add i32 %i.m, %i.e
  %i.o = add nsw i32 %i.n, %i.i                   ; 3 uses
  %.not33.i = icmp slt i32 %i.o, %i.f
  br i1 %.not33.i, label %decode_motion_vector.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.neg34.i = shl i32 -32, %2
  %i.p = add i32 %i.o, %.neg34.i
  br label %decode_motion_vector.exit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.a, 0
  br i1 %i.q, label %bb.g, label %decode_motion_vector.exit

bb.g:                                             ; preds = %bb.f
  %i.r = xor i32 %i.a, -1
  %i.s = shl i32 %i.r, %2
  %i.t = add nsw i32 %i.e, %i.s
  %.neg.i = xor i32 %i.t, -1
  %i.u = add i32 %i.i, %.neg.i                    ; 3 uses
  %i.v = sub nsw i32 0, %i.f
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %bb.h, label %decode_motion_vector.exit

bb.h:                                             ; preds = %bb.g
  %i.x = shl i32 32, %2
  %i.y = add nsw i32 %i.u, %i.x
  br label %decode_motion_vector.exit

decode_motion_vector.exit:                        ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.p, %bb.e ], [ %i.o, %bb.d ], [ %i.y, %bb.h ], [ %i.u, %bb.g ], [ %i.i, %bb.f ]
  %i.z = shl i32 %.0.i, %i.h
  store i32 %i.z, ptr %0, align 4, !tbaa !4
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %decode_motion_vector.exit
  %i.aa = tail call i32 @Get_dmvector() #3
  store i32 %i.aa, ptr %1, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %decode_motion_vector.exit
  %i.ab = tail call i32 @Get_motion_code() #3     ; 9 uses
  %i.ac = icmp ne i32 %3, 0
  %i.ad = icmp ne i32 %i.ab, 0
  %or.cond3 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.k, label %7

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i32 @Get_Bits(i32 noundef %3) #3
  br label %7

7:                                                ; preds = %bb.j, %bb.k
  %8 = phi i32 [ %i.ae, %bb.k ], [ 0, %bb.j ]     ; 4 uses
  %.not27 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  br i1 %.not27, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %7
  %i.af = load i32, ptr %9, align 4, !tbaa !4
  %i.ag = ashr i32 %i.af, 1
  %i.ah = shl i32 16, %3                          ; 2 uses
  %i.ai = ashr i32 %i.ag, %i.h                    ; 3 uses
  %i.aj = icmp sgt i32 %i.ab, 0
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %i.ak = add nsw i32 %i.ab, -1
  %i.al = shl i32 %i.ak, %3
  %i.am = add i32 %i.al, 1
  %i.an = add i32 %i.am, %8
  %i.ao = add nsw i32 %i.an, %i.ai                ; 3 uses
  %.not33.i31 = icmp slt i32 %i.ao, %i.ah
  br i1 %.not33.i31, label %decode_motion_vector.exit33, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg34.i32 = shl i32 -32, %3
  %i.ap = add i32 %i.ao, %.neg34.i32
  br label %decode_motion_vector.exit33

bb.n:                                             ; preds = %._crit_edge
  %i.aq = icmp slt i32 %i.ab, 0
  br i1 %i.aq, label %bb.o, label %decode_motion_vector.exit33

bb.o:                                             ; preds = %bb.n
  %i.ar = xor i32 %i.ab, -1
  %i.as = shl i32 %i.ar, %3
  %i.at = add nsw i32 %8, %i.as
  %.neg.i30 = xor i32 %i.at, -1
  %i.au = add i32 %i.ai, %.neg.i30                ; 3 uses
  %i.av = sub nsw i32 0, %i.ah
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.p, label %decode_motion_vector.exit33

bb.p:                                             ; preds = %bb.o
  %i.ax = shl i32 32, %3
  %i.ay = add nsw i32 %i.au, %i.ax
  br label %decode_motion_vector.exit33

decode_motion_vector.exit33:                      ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i29 = phi i32 [ %i.ap, %bb.m ], [ %i.ao, %bb.l ], [ %i.ay, %bb.p ], [ %i.au, %bb.o ], [ %i.ai, %bb.n ]
  %10 = shl i32 %.0.i29, %i.h
  %11 = shl i32 %10, 1
  br label %35

.critedge:                                        ; preds = %7
  %12 = shl i32 16, %3                            ; 2 uses
  %13 = load i32, ptr %9, align 4, !tbaa !4
  %14 = ashr i32 %13, %i.h                        ; 3 uses
  %15 = icmp sgt i32 %i.ab, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %.critedge
  %17 = add nsw i32 %i.ab, -1
  %18 = shl i32 %17, %3
  %19 = add i32 %18, 1
  %20 = add i32 %19, %8
  %21 = add nsw i32 %20, %14                      ; 3 uses
  %.not33.i37 = icmp slt i32 %21, %12
  br i1 %.not33.i37, label %decode_motion_vector.exit39, label %22

22:                                               ; preds = %16
  %.neg34.i38 = shl i32 -32, %3
  %23 = add i32 %21, %.neg34.i38
  br label %decode_motion_vector.exit39

24:                                               ; preds = %.critedge
  %25 = icmp slt i32 %i.ab, 0
  br i1 %25, label %decode_motion_vector.exit33.a, label %decode_motion_vector.exit39

decode_motion_vector.exit33.a:                    ; preds = %24
  %26 = xor i32 %i.ab, -1
  %i.az = shl i32 %26, %3
  %27 = add nsw i32 %8, %i.az
  %.neg.i36 = xor i32 %27, -1
  %28 = add i32 %14, %.neg.i36                    ; 3 uses
  %29 = sub nsw i32 0, %12
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %decode_motion_vector.exit39

31:                                               ; preds = %decode_motion_vector.exit33.a
  %32 = shl i32 32, %3
  %33 = add nsw i32 %28, %32
  br label %decode_motion_vector.exit39

decode_motion_vector.exit39:                      ; preds = %16, %22, %24, %decode_motion_vector.exit33.a, %31
  %.0.i35 = phi i32 [ %23, %22 ], [ %21, %16 ], [ %33, %31 ], [ %28, %decode_motion_vector.exit33.a ], [ %14, %24 ]
  %34 = shl i32 %.0.i35, %i.h
  br label %35

35:                                               ; preds = %decode_motion_vector.exit39, %decode_motion_vector.exit33
  %.sink = phi i32 [ %34, %decode_motion_vector.exit39 ], [ %11, %decode_motion_vector.exit33 ]
  store i32 %.sink, ptr %9, align 4, !tbaa !4
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %35
  %i.ba = tail call i32 @Get_dmvector() #3
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %35
  ret void
}

declare i32 @Get_motion_code() local_unnamed_addr #1

declare i32 @Get_dmvector() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Dual_Prime_Arithmetic(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @picture_structure, align 4, !tbaa !4
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @top_field_first, align 4, !tbaa !4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %2, 0
  %i.e = zext i1 %i.d to i32                      ; 2 uses
  %i.f = add nsw i32 %2, %i.e
  %i.g = ashr i32 %i.f, 1
  %i.h = load i32, ptr %1, align 4, !tbaa !4
  %i.i = add nsw i32 %i.h, %i.g
  store i32 %i.i, ptr %0, align 4, !tbaa !4
  %i.j = icmp sgt i32 %3, 0
  %i.k = zext i1 %i.j to i32                      ; 2 uses
  %i.l = add nsw i32 %3, %i.k
  %i.m = ashr i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add nsw i32 %i.m, -1
  %i.q = add i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %i.s = mul nsw i32 %2, 3
  %i.t = add nsw i32 %i.s, %i.e
  %i.u = ashr i32 %i.t, 1
  %i.v = load i32, ptr %1, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = mul nsw i32 %3, 3
  %i.z = add nsw i32 %i.y, %i.k
  %i.aa = ashr i32 %i.z, 1
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !4
  %i.ac = add nsw i32 %i.aa, 1
  %i.ad = add i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.af = mul nsw i32 %2, 3
  %i.ag = icmp sgt i32 %2, 0
  %i.ah = zext i1 %i.ag to i32                    ; 2 uses
  %i.ai = add nsw i32 %i.af, %i.ah
  %i.aj = ashr i32 %i.ai, 1
  %i.ak = load i32, ptr %1, align 4, !tbaa !4
  %i.al = add nsw i32 %i.ak, %i.aj
  store i32 %i.al, ptr %0, align 4, !tbaa !4
  %i.am = mul nsw i32 %3, 3
  %i.an = icmp sgt i32 %3, 0
  %i.ao = zext i1 %i.an to i32                    ; 2 uses
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = ashr i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = add nsw i32 %i.aq, -1
  %i.au = add i32 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.au, ptr %i.av, align 4, !tbaa !4
  %i.aw = add nsw i32 %2, %i.ah
  %i.ax = ashr i32 %i.aw, 1
  %i.ay = load i32, ptr %1, align 4, !tbaa !4
  %i.az = add nsw i32 %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  %i.bb = add nsw i32 %3, %i.ao
  %i.bc = ashr i32 %i.bb, 1
  %i.bd = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.be = add nsw i32 %i.bc, 1
  %i.bf = add i32 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !4
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.bh = icmp sgt i32 %2, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = add nsw i32 %2, %i.bi
  %i.bk = ashr i32 %i.bj, 1
  %i.bl = load i32, ptr %1, align 4, !tbaa !4
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %0, align 4, !tbaa !4
  %i.bn = icmp sgt i32 %3, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = add nsw i32 %3, %i.bo
  %i.bq = ashr i32 %i.bp, 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = add nsw i32 %i.bs, %i.bq                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bv = load i32, ptr @picture_structure, align 4, !tbaa !4
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bx = add nsw i32 %i.bt, -1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.by = add nsw i32 %i.bt, 1
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
end_hunk_0
