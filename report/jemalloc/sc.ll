Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/sc?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @je_reg_size_compute(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %0 to i64
  %i.b = shl nuw i64 1, %i.a
  %i.c = sext i32 %2 to i64
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl i64 %i.c, %i.d
  %i.f = add i64 %i.e, %i.b
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @je_sc_data_init(ptr nofree noundef writeonly captures(none) initializes((76, 94), (96, 122), (124, 150), (152, 178), (180, 206), (208, 216)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  store <4 x i32> <i32 0, i32 3, i32 3, i32 0>, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 1, ptr %i.c, align 1, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1, i32 3, i32 1, i32 3>, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 3, ptr %i.e, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 1, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.g, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.h, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <4 x i32> <i32 1, i32 3, i32 2, i32 4>, ptr %i.i, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.j, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 0, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 1, ptr %i.m, align 1, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <4 x i32> <i32 1, i32 4, i32 3, i32 4>, ptr %i.n, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 4, ptr %i.o, align 4, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 2, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.q, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.r, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i32> <i32 3, i32 4, i32 4, i32 4>, ptr %i.s, align 4, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 4, ptr %i.t, align 4, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 3, ptr %i.u, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 0, ptr %i.v, align 4, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 205
  store i8 1, ptr %i.w, align 1, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 1, ptr %i.x, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 4, ptr %i.y, align 4, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv224.i = phi i64 [ 6, %bb.a ], [ %indvars.iv.next225.i, %bb.g ] ; 4 uses
  %indvars.iv222.i = phi i64 [ 4, %bb.a ], [ %indvars.iv.next223.i, %bb.g ] ; 6 uses
  %.0132209.i = phi i32 [ 0, %bb.a ], [ %.2.i.lcssa, %bb.g ]
  %.0134208.i = phi i64 [ 0, %bb.a ], [ %.2136.i.lcssa, %bb.g ]
  %.0137207.i = phi i64 [ 0, %bb.a ], [ %.2139.i.lcssa, %bb.g ]
  %.3204.i = phi i32 [ 5, %bb.a ], [ %i.bh, %bb.g ] ; 4 uses
  %.6203.i = phi i32 [ 0, %bb.a ], [ %.8.i.lcssa, %bb.g ]
  %.6163202.i = phi i32 [ 5, %bb.a ], [ %.8165.i.lcssa, %bb.g ]
  %.2169201.i = phi i32 [ 1, %bb.a ], [ %.4171.i.lcssa, %bb.g ]
  %i.z = icmp eq i64 %indvars.iv224.i, 62
  %..i = select i1 %i.z, i32 3, i32 4             ; 2 uses
  %i.aa = shl nuw nsw i64 1, %indvars.iv224.i     ; 4 uses
  %indvars.iv.next225.i = add nuw nsw i64 %indvars.iv224.i, 1 ; 3 uses
  %i.ab = sext i32 %.3204.i to i64                ; 5 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv222.i to i32 ; 8 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv224.i to i32 ; 4 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv.next225.i to i32 ; 4 uses
  %i.af = add nuw nsw i32 %..i, 1                 ; 3 uses
  %1 = getelementptr inbounds [28 x i8], ptr %i.a, i64 %i.ab ; 9 uses
  store i32 %.3204.i, ptr %1, align 4, !tbaa !28
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ad, ptr %2, align 4, !tbaa !18
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ac, ptr %3, align 4, !tbaa !15
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %4, align 4, !tbaa !16
  %5 = shl nuw i64 1, %indvars.iv222.i
  %6 = add nuw i64 %5, %i.aa                      ; 7 uses
  %7 = and i64 %6, 4095
  %8 = icmp eq i64 %7, 0                          ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 4, !tbaa !26
  %11 = icmp ult i64 %6, 16384
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  br i1 %11, label %13, label %.thread.i183.i

13:                                               ; preds = %bb.b
  store i8 1, ptr %12, align 1, !tbaa !14
  br label %14

14:                                               ; preds = %14, %13
  %.02122.i.i185.i = phi i64 [ 4096, %13 ], [ %15, %14 ] ; 3 uses
  %15 = add i64 %.02122.i.i185.i, 4096
  %16 = urem i64 %.02122.i.i185.i, %6
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %14, !llvm.loop !23

.thread.i183.i:                                   ; preds = %bb.b
  store i8 0, ptr %12, align 1, !tbaa !14
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %18, align 4, !tbaa !17
  br label %size_class.exit186.i

19:                                               ; preds = %14
  %20 = lshr exact i64 %.02122.i.i185.i, 12
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %21, ptr %22, align 4, !tbaa !17
  %23 = icmp samesign ult i64 %6, 4097
  %spec.select.i = select i1 %23, i32 %i.ac, i32 0
  br label %size_class.exit186.i

size_class.exit186.i:                             ; preds = %19, %.thread.i183.i
  %24 = phi i8 [ 1, %19 ], [ 0, %.thread.i183.i ] ; 2 uses
  %.sink.i184.i = phi i32 [ %spec.select.i, %19 ], [ 0, %.thread.i183.i ] ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sink.i184.i, ptr %25, align 4, !tbaa !27
  %.not175.i = icmp eq i32 %.sink.i184.i, 0       ; 2 uses
  %indvars.iv.next218.i = add nsw i64 %i.ab, 1    ; 4 uses
  %26 = trunc i64 %indvars.iv.next218.i to i32
  %.4171.i = select i1 %.not175.i, i32 %.2169201.i, i32 %26 ; 2 uses
  %.2139.i = select i1 %.not175.i, i64 %.0137207.i, i64 %6 ; 2 uses
  %27 = zext i1 %8 to i32
  %.8.i = add nsw i32 %.6203.i, %27               ; 2 uses
  %28 = trunc nuw i8 %24 to i1                    ; 2 uses
  %29 = zext nneg i8 %24 to i32
  %.8165.i = add nsw i32 %.6163202.i, %29         ; 2 uses
  %.2136.i = select i1 %28, i64 %6, i64 %.0134208.i ; 2 uses
  %.2.i = select i1 %28, i32 %i.ae, i32 %.0132209.i ; 2 uses
  %exitcond = icmp eq i32 %i.af, 2
  br i1 %exitcond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %size_class.exit186.i
  %i.ag = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next218.i ; 9 uses
  %i.ah = trunc nsw i64 %indvars.iv.next218.i to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.ac, ptr %i.aj, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 2, ptr %i.ak, align 4, !tbaa !16
  %i.al = shl i64 2, %indvars.iv222.i
  %i.am = add nuw i64 %i.al, %i.aa                ; 7 uses
  %i.an = and i64 %i.am, 4095
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 4, !tbaa !26
  %i.ar = icmp ult i64 %i.am, 16384
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 17 ; 2 uses
  br i1 %i.ar, label %bb.d, label %.thread.i183.i.1

.thread.i183.i.1:                                 ; preds = %bb.c
  store i8 0, ptr %i.as, align 1, !tbaa !14
  %30 = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 0, ptr %30, align 4, !tbaa !17
  br label %size_class.exit186.i.1

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.as, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.02122.i.i185.i.a = phi i64 [ 4096, %bb.d ], [ %i.at, %bb.e ] ; 3 uses
  %i.at = add i64 %.02122.i.i185.i.a, 4096
  %i.au = urem i64 %.02122.i.i185.i.a, %i.am
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %31, label %bb.e, !llvm.loop !23

31:                                               ; preds = %bb.e
  %32 = lshr exact i64 %.02122.i.i185.i.a, 12
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 %33, ptr %34, align 4, !tbaa !17
  %35 = icmp samesign ult i64 %i.am, 4097
  %spec.select.i.1 = select i1 %35, i32 %i.ac, i32 0
  br label %size_class.exit186.i.1

size_class.exit186.i.1:                           ; preds = %31, %.thread.i183.i.1
  %36 = phi i8 [ 1, %31 ], [ 0, %.thread.i183.i.1 ] ; 2 uses
  %.sink.i184.i.1 = phi i32 [ %spec.select.i.1, %31 ], [ 0, %.thread.i183.i.1 ] ; 2 uses
  %37 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %.sink.i184.i.1, ptr %37, align 4, !tbaa !27
  %.not175.i.1 = icmp eq i32 %.sink.i184.i.1, 0   ; 2 uses
  %indvars.iv.next218.i.1 = add nsw i64 %i.ab, 2  ; 4 uses
  %38 = trunc i64 %indvars.iv.next218.i.1 to i32
  %.4171.i.1 = select i1 %.not175.i.1, i32 %.4171.i, i32 %38 ; 2 uses
  %.2139.i.1 = select i1 %.not175.i.1, i64 %.2139.i, i64 %i.am ; 2 uses
  %39 = zext i1 %i.ao to i32
  %.8.i.1 = add nsw i32 %.8.i, %39                ; 2 uses
  %40 = trunc nuw i8 %36 to i1                    ; 2 uses
  %41 = zext nneg i8 %36 to i32
  %.8165.i.1 = add nsw i32 %.8165.i, %41          ; 2 uses
  %.2136.i.1 = select i1 %40, i64 %i.am, i64 %.2136.i ; 2 uses
  %.2.i.1 = select i1 %40, i32 %i.ae, i32 %.2.i   ; 2 uses
  %exitcond.1 = icmp eq i32 %i.af, 3
  br i1 %exitcond.1, label %bb.g, label %42

42:                                               ; preds = %size_class.exit186.i.1
  %43 = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next218.i.1 ; 9 uses
  %44 = trunc nsw i64 %indvars.iv.next218.i.1 to i32
  store i32 %44, ptr %43, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 4
  store i32 %i.ad, ptr %45, align 4, !tbaa !18
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %i.ac, ptr %46, align 4, !tbaa !15
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 12
  store i32 3, ptr %47, align 4, !tbaa !16
  %48 = shl i64 3, %indvars.iv222.i
  %49 = add i64 %48, %i.aa                        ; 7 uses
  %50 = and i64 %49, 4095
  %51 = icmp eq i64 %50, 0                        ; 2 uses
  %52 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %53 = zext i1 %51 to i8
  store i8 %53, ptr %52, align 4, !tbaa !26
  %54 = icmp ult i64 %49, 16384
  %55 = getelementptr inbounds nuw i8, ptr %43, i64 17 ; 2 uses
  br i1 %54, label %56, label %.thread.i183.i.a

.thread.i183.i.a:                                 ; preds = %42
  store i8 0, ptr %55, align 1, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i32 0, ptr %i.aw, align 4, !tbaa !17
  br label %size_class.exit186.i.a

56:                                               ; preds = %42
  store i8 1, ptr %55, align 1, !tbaa !14
  br label %57

57:                                               ; preds = %57, %56
  %.02122.i.i185.i.2 = phi i64 [ 4096, %56 ], [ %58, %57 ] ; 3 uses
  %58 = add i64 %.02122.i.i185.i.2, 4096
  %59 = urem i64 %.02122.i.i185.i.2, %49
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %bb.f, label %57, !llvm.loop !23

bb.f:                                             ; preds = %57
  %i.ax = lshr exact i64 %.02122.i.i185.i.2, 12
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !17
  %i.ba = icmp samesign ult i64 %49, 4097
  %spec.select.i.a = select i1 %i.ba, i32 %i.ac, i32 0
  br label %size_class.exit186.i.a

size_class.exit186.i.a:                           ; preds = %bb.f, %.thread.i183.i.a
  %i.bb = phi i8 [ 1, %bb.f ], [ 0, %.thread.i183.i.a ] ; 2 uses
  %.sink.i184.i.a = phi i32 [ %spec.select.i.a, %bb.f ], [ 0, %.thread.i183.i.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %43, i64 24
  store i32 %.sink.i184.i.a, ptr %i.bc, align 4, !tbaa !27
  %.not175.i.a = icmp eq i32 %.sink.i184.i.a, 0   ; 2 uses
  %indvars.iv.next218.i.a = add nsw i64 %i.ab, 3  ; 4 uses
  %i.bd = trunc i64 %indvars.iv.next218.i.a to i32
  %.4171.i.a = select i1 %.not175.i.a, i32 %.4171.i.1, i32 %i.bd ; 2 uses
  %.2139.i.a = select i1 %.not175.i.a, i64 %.2139.i.1, i64 %49 ; 2 uses
  %i.be = zext i1 %51 to i32
  %.8.i.a = add nsw i32 %.8.i.1, %i.be            ; 2 uses
  %i.bf = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bg = zext nneg i8 %i.bb to i32
  %.8165.i.a = add nsw i32 %.8165.i.1, %i.bg      ; 2 uses
  %.2136.i.a = select i1 %i.bf, i64 %49, i64 %.2136.i.1 ; 2 uses
  %.2.i.a = select i1 %i.bf, i32 %i.ae, i32 %.2.i.1 ; 2 uses
  %exitcond.a = icmp eq i32 %i.af, 4
  br i1 %exitcond.a, label %bb.g, label %61

61:                                               ; preds = %size_class.exit186.i.a
  %62 = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv.next218.i.a ; 9 uses
  %63 = trunc nsw i64 %indvars.iv.next218.i.a to i32
  store i32 %63, ptr %62, align 4, !tbaa !28
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 4
  store i32 %i.ad, ptr %64, align 4, !tbaa !18
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i32 %i.ac, ptr %65, align 4, !tbaa !15
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 12
  store i32 4, ptr %66, align 4, !tbaa !16
  %67 = shl i64 4, %indvars.iv222.i
  %68 = add nuw i64 %67, %i.aa                    ; 7 uses
  %69 = and i64 %68, 4095
  %70 = icmp eq i64 %69, 0                        ; 2 uses
  %71 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 4, !tbaa !26
  %73 = icmp ult i64 %68, 16384
  %74 = getelementptr inbounds nuw i8, ptr %62, i64 17 ; 2 uses
  br i1 %73, label %76, label %.thread.i183.i.3

.thread.i183.i.3:                                 ; preds = %61
  store i8 0, ptr %74, align 1, !tbaa !14
  %75 = getelementptr inbounds nuw i8, ptr %62, i64 20
  store i32 0, ptr %75, align 4, !tbaa !17
  br label %size_class.exit186.i.3

76:                                               ; preds = %61
  store i8 1, ptr %74, align 1, !tbaa !14
  br label %77

77:                                               ; preds = %77, %76
  %.02122.i.i185.i.3 = phi i64 [ 4096, %76 ], [ %78, %77 ] ; 3 uses
  %78 = add i64 %.02122.i.i185.i.3, 4096
  %79 = urem i64 %.02122.i.i185.i.3, %68
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %77, !llvm.loop !23

81:                                               ; preds = %77
  %82 = lshr exact i64 %.02122.i.i185.i.3, 12
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds nuw i8, ptr %62, i64 20
  store i32 %83, ptr %84, align 4, !tbaa !17
  %85 = icmp samesign ult i64 %68, 4097
  %spec.select.i.3 = select i1 %85, i32 %i.ac, i32 0
  br label %size_class.exit186.i.3

size_class.exit186.i.3:                           ; preds = %81, %.thread.i183.i.3
  %86 = phi i8 [ 1, %81 ], [ 0, %.thread.i183.i.3 ] ; 2 uses
  %.sink.i184.i.3 = phi i32 [ %spec.select.i.3, %81 ], [ 0, %.thread.i183.i.3 ] ; 2 uses
  %87 = getelementptr inbounds nuw i8, ptr %62, i64 24
  store i32 %.sink.i184.i.3, ptr %87, align 4, !tbaa !27
  %.not175.i.3 = icmp eq i32 %.sink.i184.i.3, 0   ; 2 uses
  %indvars.iv.next218.i.3 = add i32 %.3204.i, 4
  %.4171.i.3 = select i1 %.not175.i.3, i32 %.4171.i.a, i32 %indvars.iv.next218.i.3
  %.2139.i.3 = select i1 %.not175.i.3, i64 %.2139.i.a, i64 %68
  %88 = zext i1 %70 to i32
  %.8.i.3 = add nsw i32 %.8.i.a, %88
  %89 = trunc nuw i8 %86 to i1                    ; 2 uses
  %90 = zext nneg i8 %86 to i32
  %.8165.i.3 = add nsw i32 %.8165.i.a, %90
  %.2136.i.3 = select i1 %89, i64 %68, i64 %.2136.i.a
  %.2.i.3 = select i1 %89, i32 %i.ae, i32 %.2.i.a
  br label %bb.g

bb.g:                                             ; preds = %size_class.exit186.i.3, %size_class.exit186.i.a, %size_class.exit186.i.1, %size_class.exit186.i
  %.4171.i.lcssa = phi i32 [ %.4171.i, %size_class.exit186.i ], [ %.4171.i.1, %size_class.exit186.i.1 ], [ %.4171.i.a, %size_class.exit186.i.a ], [ %.4171.i.3, %size_class.exit186.i.3 ] ; 2 uses
  %.2139.i.lcssa = phi i64 [ %.2139.i, %size_class.exit186.i ], [ %.2139.i.1, %size_class.exit186.i.1 ], [ %.2139.i.a, %size_class.exit186.i.a ], [ %.2139.i.3, %size_class.exit186.i.3 ] ; 2 uses
  %.8.i.lcssa = phi i32 [ %.8.i, %size_class.exit186.i ], [ %.8.i.1, %size_class.exit186.i.1 ], [ %.8.i.a, %size_class.exit186.i.a ], [ %.8.i.3, %size_class.exit186.i.3 ] ; 2 uses
  %.8165.i.lcssa = phi i32 [ %.8165.i, %size_class.exit186.i ], [ %.8165.i.1, %size_class.exit186.i.1 ], [ %.8165.i.a, %size_class.exit186.i.a ], [ %.8165.i.3, %size_class.exit186.i.3 ] ; 2 uses
  %.2136.i.lcssa = phi i64 [ %.2136.i, %size_class.exit186.i ], [ %.2136.i.1, %size_class.exit186.i.1 ], [ %.2136.i.a, %size_class.exit186.i.a ], [ %.2136.i.3, %size_class.exit186.i.3 ] ; 2 uses
  %.2.i.lcssa = phi i32 [ %.2.i, %size_class.exit186.i ], [ %.2.i.1, %size_class.exit186.i.1 ], [ %.2.i.a, %size_class.exit186.i.a ], [ %.2.i.3, %size_class.exit186.i.3 ] ; 3 uses
  %indvars.iv217.i.lcssa = phi i64 [ %i.ab, %size_class.exit186.i ], [ %indvars.iv.next218.i, %size_class.exit186.i.1 ], [ %indvars.iv.next218.i.1, %size_class.exit186.i.a ], [ %indvars.iv.next218.i.a, %size_class.exit186.i.3 ]
  %.lcssa = phi i64 [ %6, %size_class.exit186.i ], [ %i.am, %size_class.exit186.i.1 ], [ %49, %size_class.exit186.i.a ], [ %68, %size_class.exit186.i.3 ]
  %i.bh = add i32 %.3204.i, %..i
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next225.i, 63
  br i1 %exitcond229.not.i, label %size_classes.exit, label %bb.b, !llvm.loop !24

size_classes.exit:                                ; preds = %bb.g
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %indvars.iv217.i.lcssa, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = sub nuw nsw i32 64, %i.bj
  store i32 1, ptr %0, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.4171.i.lcssa, ptr %i.bl, align 4, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.8165.i.lcssa, ptr %i.bm, align 8, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 232, ptr %i.bn, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bk, ptr %i.bo, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.8.i.lcssa, ptr %i.bp, align 4, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3, ptr %i.bq, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2139.i.lcssa, ptr %i.br, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.2136.i.lcssa, ptr %i.bs, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.2.i.lcssa, ptr %i.bt, align 8, !tbaa !37
  %i.bu = zext nneg i32 %.2.i.lcssa to i64
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.lcssa, ptr %i.bx, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.by, align 8, !tbaa !40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @je_sc_data_update_slab_size(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sc_data_update_sc_slab_size.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sc_data_update_sc_slab_size.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14, !range !42, !noundef !43
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = zext nneg i32 %i.k to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = sext i32 %i.o to i64
  %i.s = zext nneg i32 %i.m to i64
  %i.t = shl i64 %i.r, %i.s
  %i.u = add i64 %i.t, %i.q                       ; 5 uses
  %.not = icmp ugt i64 %1, %i.u
  %.not18 = icmp ugt i64 %i.u, %2
  %or.cond = or i1 %.not, %.not18
  br i1 %or.cond, label %sc_data_update_sc_slab_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i64 %i.u, 12
  %i.w = and i64 %i.u, 4095
  %.not.i = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not.i to i64
  %spec.select.i = add nuw nsw i64 %i.v, %i.x     ; 2 uses
  %i.y = lshr i64 %i.u, 3                         ; 2 uses
  %i.z = icmp ugt i64 %spec.select.i, %i.e
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc i64 %spec.select.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = and i64 %i.y, 4503599627370495
  %i.ad = icmp ult i64 %i.ac, %i.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = trunc i64 %i.y to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

bb.h:                                             ; preds = %bb.f
  store i32 %3, ptr %i.ae, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

sc_data_update_sc_slab_size.exit:                 ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !41

.critedge:                                        ; preds = %sc_data_update_sc_slab_size.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @je_sc_boot(ptr nofree noundef writeonly captures(none) initializes((76, 94), (96, 122), (124, 150), (152, 178), (180, 206), (208, 216)) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @je_sc_data_init(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_Bool", !8, i64 0}
!13 = !{!"sc_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16, !12, i64 17, !9, i64 20, !9, i64 24}
!14 = !{!13, !12, i64 17}
!15 = !{!13, !9, i64 8}
!16 = !{!13, !9, i64 12}
!17 = !{!13, !9, i64 20}
!18 = !{!13, !9, i64 4}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"long", !8, i64 0}
!21 = !{!"sc_data_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !20, i64 32, !20, i64 40, !9, i64 48, !20, i64 56, !20, i64 64, !12, i64 72, !8, i64 76}
!22 = !{!21, !9, i64 12}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = !{!9, !9, i64 0}
!26 = !{!13, !12, i64 16}
!27 = !{!13, !9, i64 24}
!28 = !{!13, !9, i64 0}
!29 = !{!21, !9, i64 0}
!30 = !{!21, !9, i64 4}
!31 = !{!21, !9, i64 8}
!32 = !{!21, !9, i64 16}
!33 = !{!21, !9, i64 20}
!34 = !{!21, !9, i64 24}
!35 = !{!21, !20, i64 32}
!36 = !{!21, !20, i64 40}
!37 = !{!21, !9, i64 48}
!38 = !{!21, !20, i64 56}
!39 = !{!21, !20, i64 64}
!40 = !{!21, !12, i64 72}
!41 = distinct !{!41, !19}
!42 = !{i8 0, i8 2}
!43 = !{}
end_hunk_0
