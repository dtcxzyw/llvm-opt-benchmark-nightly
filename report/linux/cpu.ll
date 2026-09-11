Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cpu?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

@.str = private unnamed_addr constant [33 x i8] c"This kernel requires an %s CPU, \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"but only detected an %s CPU.\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"This kernel requires the following features not present on the CPU:\0A\00", align 1
@cpu_name.buf = internal global [6 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"x86-64\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"i%d86\00", align 1
@x86_cap_strs = internal constant [86 x i8] c"\00\00fpu\00\00\03pse\00\00\05msr\00\00\06pae\00\00\08cx8\00\00\0Dpge\00\00\0Fcmov\00\00\18fxsr\00\00\19sse\00\00\1Asse2\00\01\1Dlm\00\03\14nopl\00\03\19cpuid\00\15\1F\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%d:%d \00", align 1

; Function Attrs: nounwind optsize
define dso_local range(i32 -1, 1) i32 @validate_cpu() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.d = call i32 @check_cpu(ptr inreg noundef nonnull %i.b, ptr inreg noundef nonnull %i.c, ptr inreg noundef nonnull %i.a) #4 ; 0 uses
  %i.e = load i32, ptr %i.b, align 4
  %i.f = load i32, ptr %i.c, align 4              ; 4 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 64
  br i1 %i.h, label %cpu_name.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, 15
  %spec.store.select.i = select i1 %i.i, i32 6, i32 %i.f
  %i.j = call i32 (ptr, ptr, ...) @sprintf(ptr inreg noundef nonnull @cpu_name.buf, ptr inreg noundef nonnull @.str.4, i32 inreg noundef %spec.store.select.i) #4 ; 0 uses
  br label %cpu_name.exit

cpu_name.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ @cpu_name.buf, %bb.c ], [ @.str.3, %bb.b ]
  %i.k = call i32 (ptr, ...) @printf(ptr inreg noundef nonnull @.str, ptr inreg noundef nonnull %.0.i) #4 ; 0 uses
  %i.l = load i32, ptr %i.b, align 4              ; 3 uses
  %i.m = icmp eq i32 %i.l, 64
  br i1 %i.m, label %cpu_name.exit5, label %bb.d

bb.d:                                             ; preds = %cpu_name.exit
  %i.n = icmp eq i32 %i.l, 15
  %spec.store.select.i3 = select i1 %i.n, i32 6, i32 %i.l
  %i.o = call i32 (ptr, ptr, ...) @sprintf(ptr inreg noundef nonnull @cpu_name.buf, ptr inreg noundef nonnull @.str.4, i32 inreg noundef %spec.store.select.i3) #4 ; 0 uses
  br label %cpu_name.exit5

cpu_name.exit5:                                   ; preds = %cpu_name.exit, %bb.d
  %.0.i4 = phi ptr [ @cpu_name.buf, %bb.d ], [ @.str.3, %cpu_name.exit ]
  %i.p = call i32 (ptr, ...) @printf(ptr inreg noundef nonnull @.str.1, ptr inreg noundef nonnull %.0.i4) #4 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 4
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @puts(ptr inreg noundef nonnull @.str.2) #4
  %i.r = load ptr, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %bb.f
  %.02333.i = phi ptr [ @x86_cap_strs, %bb.f ], [ %.3.i, %bb.q ]
  %.02532.i = phi i32 [ 0, %bb.f ], [ %i.ao, %bb.q ] ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i32 %.02532.i
  %i.t = load i32, ptr %i.s, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %bb.g
  %.031.i = phi i32 [ %i.t, %bb.g ], [ %i.am, %bb.p ] ; 2 uses
  %.130.i = phi ptr [ %.02333.i, %bb.g ], [ %.3.i, %bb.p ] ; 3 uses
  %.02429.i = phi i32 [ 0, %bb.g ], [ %i.an, %bb.p ] ; 3 uses
  %i.u = load i8, ptr %.130.i, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = icmp samesign ugt i32 %.02532.i, %i.v
  br i1 %i.w, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.130.i, i32 2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.2.i = phi ptr [ %i.x, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.2.i, i32 1 ; 2 uses
  %i.z = load i8, ptr %.2.i, align 1
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.j, !llvm.loop !6

.loopexit.i:                                      ; preds = %bb.j, %bb.h
  %.3.i = phi ptr [ %.130.i, %bb.h ], [ %i.y, %bb.j ] ; 5 uses
  %i.aa = and i32 %.031.i, 1
  %.not27.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  %i.ab = load i8, ptr %.3.i, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp eq i32 %.02532.i, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.3.i, i32 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = icmp eq i32 %.02429.i, %i.ag
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.3.i, i32 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %.not28.i = icmp eq i8 %i.aj, 0
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = call i32 (ptr, ...) @printf(ptr inreg noundef nonnull @.str.5, ptr inreg noundef nonnull %i.ai) #4 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.al = call i32 (ptr, ...) @printf(ptr inreg noundef nonnull @.str.6, i32 inreg noundef %.02532.i, i32 inreg noundef %.02429.i) #4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.loopexit.i
  %i.am = lshr i32 %.031.i, 1
  %i.an = add nuw nsw i32 %.02429.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.an, 32
  br i1 %exitcond.not.i, label %bb.q, label %bb.h, !llvm.loop !7

bb.q:                                             ; preds = %bb.p
  %i.ao = add nuw nsw i32 %.02532.i, 1            ; 2 uses
  %exitcond34.not.i = icmp eq i32 %i.ao, 22
  br i1 %exitcond34.not.i, label %show_cap_strs.exit, label %bb.g, !llvm.loop !8

show_cap_strs.exit:                               ; preds = %bb.q
  call void @putchar(i32 inreg noundef 10) #4
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  %i.ap = call i32 @check_knl_erratum() #4
  %.not2 = icmp ne i32 %i.ap, 0
  %. = sext i1 %.not2 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %show_cap_strs.exit, %cpu_name.exit5
  %.0 = phi i32 [ -1, %cpu_name.exit5 ], [ -1, %show_cap_strs.exit ], [ %., %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: optsize
declare dso_local i32 @check_cpu(ptr inreg noundef, ptr inreg noundef, ptr inreg noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @printf(ptr inreg noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @puts(ptr inreg noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @putchar(i32 inreg noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @check_knl_erratum() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: optsize
declare dso_local i32 @sprintf(ptr inreg noundef, ptr inreg noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind optsize "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 3}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"override-stack-alignment", i32 4}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = distinct !{!6, !9}
!7 = distinct !{!7, !9}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
