inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_color_from_rgb(ptr noundef captures(none) initializes((8, 10)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !11
  %i.d = icmp eq i16 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i16, ptr %i.e, align 2, !tbaa !12
  %i.g = icmp eq i16 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.a, ptr %i.h, align 2, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink11 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink11, ptr %i.i, align 1, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink11, ptr %i.j, align 2, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i16 @gx_color_luminance(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 2, !tbaa !8
  %i.d = zext i16 %i.c to i32
  %i.e = mul nuw nsw i32 %i.d, 30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11
  %i.h = zext i16 %i.g to i32
  %i.i = mul nuw nsw i32 %i.h, 59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i16, ptr %i.j, align 2, !tbaa !12
  %i.l = zext i16 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 11
  %i.n = add nuw nsw i32 %i.e, 50
  %i.o = add nuw nsw i32 %i.n, %i.i
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = udiv i32 %i.p, 100
  %i.r = trunc nuw i32 %i.q to i16                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.r, ptr %i.s, align 2, !tbaa !13
  store i8 1, ptr %i.a, align 1, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.t = phi i16 [ %.pre, %._crit_edge ], [ %i.r, %bb.b ]
  ret i16 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_color_to_hsb(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 6)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 2, !tbaa !15
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %1, align 2, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %i.c, align 2, !tbaa !16
  %i.d = load i16, ptr %0, align 2, !tbaa !8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 2, !tbaa !8      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %i.h, align 2, !tbaa !12   ; 3 uses
  %i.j = zext i16 %i.e to i32                     ; 2 uses
  %i.k = zext i16 %i.g to i32                     ; 2 uses
  %i.l = tail call i16 @llvm.umax.i16(i16 %i.e, i16 %i.g)
  %i.m = zext i16 %i.i to i32                     ; 2 uses
  %spec.select = tail call i16 @llvm.umax.i16(i16 %i.i, i16 %i.l) ; 4 uses
  %i.n = tail call i16 @llvm.umin.i16(i16 %i.e, i16 %i.g)
  %.043 = tail call i16 @llvm.umin.i16(i16 %i.i, i16 %i.n)
  %i.o = zext i16 %spec.select to i64             ; 2 uses
  %i.p = zext i16 %.043 to i64
  %i.q = sub nsw i64 %i.o, %i.p                   ; 4 uses
  %i.r = icmp eq i16 %spec.select, %i.e
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i32 %i.k, %i.m
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 65535
  %i.v = sdiv i64 %i.u, %i.q
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i16 %spec.select, %i.g
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = sub nsw i32 %i.m, %i.j
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 65535
  %i.aa = sdiv i64 %i.z, %i.q
  %i.ab = add nsw i64 %i.aa, 131070
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = sub nsw i32 %i.j, %i.k
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, 65535
  %i.af = sdiv i64 %i.ae, %i.q
  %i.ag = add nsw i64 %i.af, 262140
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.0 = phi i64 [ %i.v, %bb.d ], [ %i.ab, %bb.f ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ah = icmp slt i64 %.0, 0
  %i.ai = add nsw i64 %.0, 393210
  %spec.select47 = select i1 %i.ah, i64 %i.ai, i64 %.0
  %i.aj = sdiv i64 %spec.select47, 6
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %1, align 2, !tbaa !16
  %i.al = mul nsw i64 %i.q, 65535
  %i.am = sdiv i64 %i.al, %i.o
  %i.an = trunc i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %spec.select.sink = phi i16 [ %spec.select, %bb.h ], [ %i.d, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %spec.select.sink, ptr %i.ap, align 2, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_color_from_hsb(ptr noundef writeonly captures(none) initializes((0, 6), (8, 10)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i16 %2, 0
  br i1 %i.a, label %.thread50, label %bb.b

.thread50:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %3, ptr %i.b, align 2, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %3, ptr %i.c, align 2, !tbaa !11
  store i16 %3, ptr %0, align 2, !tbaa !8
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.e = insertelement <2 x i16> %i.d, i16 %2, i64 1
  %i.f = uitofp <2 x i16> %i.e to <2 x float>
  %4 = fdiv <2 x float> %i.f, splat (float 6.553500e+04) ; 2 uses
  %5 = extractelement <2 x float> %4, i64 0       ; 9 uses
  %i.g = udiv i16 %1, 10923
  %i.h = urem i16 %1, 10923
  %i.i = uitofp nneg i16 %i.h to float
  %i.j = fdiv float %i.i, 1.092300e+04            ; 2 uses
  %i.k = extractelement <2 x float> %4, i64 1     ; 2 uses
  %6 = fsub nnan float 1.000000e+00, %i.k
  %7 = fmul float %5, %6                          ; 6 uses
  %i.l = fneg float %i.k                          ; 2 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.j, float 1.000000e+00)
  %8 = fmul float %5, %i.m                        ; 3 uses
  %9 = fsub nnan float 1.000000e+00, %i.j
  %10 = tail call float @llvm.fmuladd.f32(float %i.l, float %9, float 1.000000e+00)
  %i.n = fmul float %5, %10                       ; 3 uses
  switch i16 %i.g, label %bb.h [
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.043 = phi float [ %5, %bb.g ], [ %8, %bb.c ], [ %7, %bb.d ], [ %7, %bb.e ], [ %i.n, %bb.f ], [ %5, %bb.b ]
  %.042 = phi float [ %7, %bb.g ], [ %5, %bb.c ], [ %5, %bb.d ], [ %8, %bb.e ], [ %7, %bb.f ], [ %i.n, %bb.b ]
  %.0 = phi float [ %8, %bb.g ], [ %7, %bb.c ], [ %i.n, %bb.d ], [ %5, %bb.e ], [ %5, %bb.f ], [ %7, %bb.b ]
  %11 = fmul float %.043, 6.553500e+04
  %12 = fptoui float %11 to i16                   ; 2 uses
  store i16 %12, ptr %0, align 2, !tbaa !8
  %13 = fmul float %.042, 6.553500e+04
  %14 = fptoui float %13 to i16                   ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %14, ptr %15, align 2, !tbaa !11
  %16 = fmul float %.0, 6.553500e+04
  %17 = fptoui float %16 to i16                   ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %17, ptr %18, align 2, !tbaa !12
  %19 = icmp ne i16 %12, %14
  %i.o = icmp ne i16 %14, %17
  %brmerge = select i1 %19, i1 true, i1 %i.o
  br i1 %brmerge, label %gx_color_from_rgb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread50
  %i.p = phi i16 [ %3, %.thread50 ], [ %17, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.p, ptr %i.q, align 2, !tbaa !13
  br label %gx_color_from_rgb.exit

gx_color_from_rgb.exit:                           ; preds = %bb.h, %bb.i
  %.sink11.i = phi i8 [ 1, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink11.i, ptr %i.r, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink11.i, ptr %i.s, align 2, !tbaa !15
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gx_sort_ht_order(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = lshr i32 %1, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.046 = phi i32 [ %.147, %.critedge ], [ %i.b, %.preheader.preheader ] ; 3 uses
  %.0 = phi i32 [ %.1, %.critedge ], [ %i.c, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = add nsw i32 %.0, -1                      ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = load <2 x i16>, ptr %i.f, align 2, !tbaa !16
  br label %bb.e

bb.c:                                             ; preds = %.preheader
  %i.h = zext i32 %.046 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = load <2 x i16>, ptr %i.i, align 2, !tbaa !16 ; 3 uses
  %i.k = load i32, ptr %0, align 2
  store i32 %i.k, ptr %i.i, align 2
  %i.l = add i32 %.046, -1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = extractelement <2 x i16> %i.j, i64 0
  store i16 %i.n, ptr %0, align 2, !tbaa !16
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = extractelement <2 x i16> %i.j, i64 1
  store i16 %i.o, ptr %.sroa.6.0..sroa_idx8, align 2, !tbaa !16
  br label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  %.147 = phi i32 [ %.046, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %.1 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ]     ; 2 uses
  %i.p = phi <2 x i16> [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.q = extractelement <2 x i16> %i.p, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.044 = phi i32 [ %.1, %bb.e ], [ %.145, %bb.j ] ; 3 uses
  %i.r = shl i32 %.044, 1                         ; 2 uses
  %i.s = or disjoint i32 %i.r, 1                  ; 4 uses
  %i.t = icmp ult i32 %i.s, %.147
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !17
  %i.y = add nuw i32 %i.r, 2                      ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !17
  %i.ad = icmp ult i16 %i.x, %i.ac
  %spec.select = select i1 %i.ad, i32 %i.y, i32 %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.145 = phi i32 [ %i.s, %bb.f ], [ %spec.select, %bb.g ] ; 3 uses
  %i.ae = icmp ugt i32 %.145, %.147
  br i1 %i.ae, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = zext i32 %.145 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !17
  %.not51 = icmp ult i16 %i.q, %i.ai
  br i1 %.not51, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h
  %i.aj = zext i32 %.044 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  store <2 x i16> %i.p, ptr %i.ak, align 2, !tbaa !16
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.al = zext i32 %.044 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.ag, align 2
  store i32 %i.an, ptr %i.am, align 2
  br label %bb.f

bb.k:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"gs_color_s", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !6, i64 8, !6, i64 9}
!10 = !{!"short", !6, i64 0}
!11 = !{!9, !10, i64 2}
!12 = !{!9, !10, i64 4}
!13 = !{!9, !10, i64 6}
!14 = !{!9, !6, i64 9}
!15 = !{!9, !6, i64 8}
!16 = !{!10, !10, i64 0}
!17 = !{!18, !10, i64 2}
!18 = !{!"ht_bit_s", !10, i64 0, !10, i64 2}
end_hunk_0
