Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/quantization?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @meshopt_quantizeHalf(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast float %0 to i32
  %i.b = lshr i32 %i.a, 16
  %i.c = and i32 %i.b, 32768
  %i.d = tail call float @llvm.fabs.f32(float %0)
  %i.e = bitcast float %i.d to i32                ; 4 uses
  %i.f = add nsw i32 %i.e, -939520000
  %i.g = lshr i32 %i.f, 13
  %i.h = icmp samesign ult i32 %i.e, 947912704
  %i.i = select i1 %i.h, i32 947912704, i32 %i.g
  %i.j = icmp samesign ugt i32 %i.e, 1199570943
  %i.k = select i1 %i.j, i32 31744, i32 %i.i
  %i.l = icmp samesign ugt i32 %i.e, 2139095040
  %i.m = select i1 %i.l, i32 32256, i32 %i.k
  %i.n = or i32 %i.m, %i.c
  %i.o = trunc i32 %i.n to i16
  ret i16 %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @meshopt_quantizeFloat(float noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 3 uses
  %i.b = sub nsw i32 23, %1
  %i.c = shl nuw i32 1, %i.b                      ; 2 uses
  %i.d = ashr i32 %i.c, 1
  %i.e = and i32 %i.a, 2139095040                 ; 2 uses
  %i.f = add i32 %i.d, %i.a
  %i.g = sub i32 0, %i.c
  %i.h = and i32 %i.f, %i.g
  %i.i = icmp eq i32 %i.e, 2139095040
  %i.j = select i1 %i.i, i32 %i.a, i32 %i.h
  %i.k = icmp eq i32 %i.e, 0
  %i.l = bitcast i32 %i.j to float
  %i.m = select i1 %i.k, float 0.000000e+00, float %i.l
  ret float %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local float @meshopt_dequantizeHalf(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.signext = sext i16 %0 to i32
  %i.a = and i32 %.signext, -2147483648
  %i.b = and i16 %0, 32767                        ; 3 uses
  %i.c = zext nneg i16 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 13
  %i.e = add nuw nsw i32 %i.d, 939524096
  %i.f = icmp samesign ult i16 %i.b, 1024
  %i.g = icmp samesign ugt i16 %i.b, 31743
  %i.h = select i1 %i.g, i32 939524096, i32 0
  %i.i = add nuw nsw i32 %i.e, %i.h
  %1 = select i1 %i.f, i32 0, i32 %i.i
  %i.j = or disjoint i32 %1, %i.a
  %i.k = bitcast i32 %i.j to float
  ret float %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local i32 @meshopt_computePositionExponent(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.d = tail call float @llvm.fabs.f32(float %i.c)
  %i.e = fcmp one float %i.c, 0.000000e+00
  %..0 = select i1 %i.e, float %i.d, float 0.000000e+00 ; 2 uses
  %i.f = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %i.f) ; 2 uses
  %i.h = fcmp olt float %..0, %i.g
  %i.i = select i1 %i.h, float %i.g, float %..0   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !10 ; 2 uses
  %i.l = tail call float @llvm.fabs.f32(float %i.k) ; 2 uses
  %i.m = fcmp olt float %i.i, %i.l
  %..0.1 = select i1 %i.m, float %i.l, float %i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = tail call float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.q = fcmp olt float %..0.1, %i.p
  %i.r = select i1 %i.q, float %i.p, float %..0.1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !10 ; 2 uses
  %i.u = tail call float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = fcmp olt float %i.r, %i.u
  %..0.2 = select i1 %i.v, float %i.u, float %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !10 ; 2 uses
  %i.y = tail call float @llvm.fabs.f32(float %i.x) ; 2 uses
  %i.z = fcmp olt float %..0.2, %i.y
  %i.aa = select i1 %i.z, float %i.y, float %..0.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.ab = call float @frexpf(float noundef %i.aa, ptr noundef nonnull %i.a) #6
  %i.ac = fcmp oge float %i.ab, f0x3F7FFFFF
  %.neg = select i1 %i.ac, i32 -22, i32 -23
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !11
  %i.ae = add i32 %.neg, %i.ad
  %i.af = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.ae) ; 2 uses
  %i.ag = sub nsw i32 0, %i.af
  %i.ah = tail call float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.ag) #6 ; 6 uses
  %i.ai = fmul float %i.ah, %i.c
  %i.aj = tail call float @llvm.floor.f32(float %i.ai)
  %i.ak = fmul float %i.ah, %i.f
  %i.al = tail call float @llvm.ceil.f32(float %i.ak)
  %i.am = fsub float %i.al, %i.aj                 ; 2 uses
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  %i.ao = select i1 %i.an, float %i.am, float 0.000000e+00 ; 2 uses
  %i.ap = fmul float %i.ah, %i.k
  %i.aq = tail call float @llvm.floor.f32(float %i.ap)
  %i.ar = fmul float %i.ah, %i.o
  %i.as = tail call float @llvm.ceil.f32(float %i.ar)
  %i.at = fsub float %i.as, %i.aq                 ; 2 uses
  %i.au = fcmp olt float %i.ao, %i.at
  %i.av = select i1 %i.au, float %i.at, float %i.ao ; 2 uses
  %i.aw = fmul float %i.ah, %i.t
  %i.ax = tail call float @llvm.floor.f32(float %i.aw)
  %i.ay = fmul float %i.ah, %i.x
  %i.az = tail call float @llvm.ceil.f32(float %i.ay)
  %i.ba = fsub float %i.az, %i.ax                 ; 2 uses
  %i.bb = fcmp olt float %i.av, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.bd = call float @frexpf(float noundef %i.bc, ptr noundef nonnull %i.b) #6
  %i.be = load i32, ptr %i.b, align 4, !tbaa !11  ; 2 uses
  %i.bf = icmp sgt i32 %i.be, %3
  br i1 %i.bf, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bg = sub nsw i32 %i.be, %3
  %notmask = shl nsw i32 -1, %3
  %i.bh = xor i32 %notmask, -1
  %i.bi = uitofp nneg i32 %i.bh to float
  %i.bj = fdiv float 1.000000e+00, %i.bi
  %i.bk = fsub float 1.000000e+00, %i.bj
  %i.bl = fcmp oge float %i.bd, %i.bk
  %i.bm = zext i1 %i.bl to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bn = phi i32 [ %i.bg, %bb.b ], [ 0, %bb.a ]
  %i.bo = phi i32 [ %i.bm, %bb.b ], [ 0, %bb.a ]
  %i.bp = add nsw i32 %i.bn, %i.af
  %i.bq = add nsw i32 %i.bp, %i.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.bq
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare float @frexpf(float noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
end_hunk_0
