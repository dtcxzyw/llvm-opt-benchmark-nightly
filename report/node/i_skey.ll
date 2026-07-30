inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @IDEA_set_encrypt_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 216)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8                  ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.a, align 1, !tbaa !10
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  store i32 %i.h, ptr %1, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.e, align 1, !tbaa !10
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.i, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.071 = getelementptr i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.071.1 = getelementptr i8, ptr %1, i64 64
  %4 = getelementptr i8, ptr %1, i64 72
  %5 = getelementptr i8, ptr %1, i64 80
  %6 = getelementptr i8, ptr %1, i64 88
  %.071.2 = getelementptr i8, ptr %1, i64 96
  %7 = getelementptr i8, ptr %1, i64 104
  %8 = getelementptr i8, ptr %1, i64 112
  %9 = getelementptr i8, ptr %1, i64 120
  %.071.3 = getelementptr i8, ptr %1, i64 128
  %10 = getelementptr i8, ptr %1, i64 136
  %11 = getelementptr i8, ptr %1, i64 144
  %12 = getelementptr i8, ptr %1, i64 152
  %.071.4 = getelementptr i8, ptr %1, i64 160
  %i.ai = zext i8 %i.o to i32                     ; 2 uses
  %i.aj = or disjoint i32 %i.l, %i.ai             ; 2 uses
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !11
  %i.ak = load i8, ptr %i.n, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8                ; 2 uses
  store i32 %i.am, ptr %i.q, align 4, !tbaa !11
  %i.an = load i8, ptr %i.p, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  store i32 %i.ap, ptr %i.q, align 4, !tbaa !11
  %i.aq = load i8, ptr %i.r, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8                ; 2 uses
  store i32 %i.as, ptr %i.t, align 4, !tbaa !11
  %i.at = load i8, ptr %i.s, align 1, !tbaa !10
  %13 = load i32, ptr %1, align 4, !tbaa !11      ; 2 uses
  %14 = lshr i32 %13, 7
  %15 = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %16 = insertelement <2 x i32> %15, i32 %i.ao, i64 1
  %17 = shl nuw nsw <2 x i32> %16, splat (i32 9)
  %i.au = shl i32 %13, 9
  %18 = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %19 = lshr i32 %i.aj, 7                         ; 2 uses
  %20 = and <2 x i32> %17, splat (i32 65024)
  %.masked77 = and i32 %i.au, 65024
  %21 = or disjoint i32 %.masked77, %19           ; 2 uses
  %22 = zext i8 %i.at to i32                      ; 2 uses
  %23 = or disjoint i32 %i.as, %22                ; 2 uses
  store i32 %23, ptr %i.t, align 4, !tbaa !11
  %24 = load i8, ptr %i.u, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %i.av = shl nuw nsw i32 %25, 8                  ; 2 uses
  store i32 %i.av, ptr %i.w, align 4, !tbaa !11
  %26 = load i8, ptr %i.v, align 1, !tbaa !10
  %27 = zext i8 %26 to i32                        ; 2 uses
  %i.aw = or disjoint i32 %i.av, %27              ; 2 uses
  store i32 %i.aw, ptr %i.w, align 4, !tbaa !11
  %28 = load i8, ptr %i.x, align 1, !tbaa !10
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8                    ; 2 uses
  store i32 %30, ptr %i.z, align 4, !tbaa !11
  %31 = load i8, ptr %i.y, align 1, !tbaa !10
  %32 = insertelement <2 x i32> poison, i32 %22, i64 0
  %33 = insertelement <2 x i32> %32, i32 %27, i64 1
  %34 = shl nuw nsw <2 x i32> %33, splat (i32 9)
  %35 = insertelement <2 x i32> poison, i32 %i.aw, i64 0
  %36 = insertelement <2 x i32> %18, i32 %23, i64 1
  %37 = lshr <2 x i32> %36, splat (i32 7)         ; 2 uses
  %38 = and <2 x i32> %34, splat (i32 65024)
  %39 = or disjoint <2 x i32> %37, %20            ; 2 uses
  %40 = zext i8 %31 to i32                        ; 2 uses
  %i.ax = or disjoint i32 %30, %40                ; 2 uses
  store i32 %i.ax, ptr %i.z, align 4, !tbaa !11
  %41 = load i8, ptr %i.aa, align 1, !tbaa !10
  %42 = zext i8 %41 to i32
  %i.ay = shl nuw nsw i32 %42, 8                  ; 2 uses
  store i32 %i.ay, ptr %i.ac, align 4, !tbaa !11
  %43 = load i8, ptr %i.ab, align 1, !tbaa !10
  %44 = zext i8 %43 to i32                        ; 2 uses
  %45 = or disjoint i32 %i.ay, %44                ; 2 uses
  store i32 %45, ptr %i.ac, align 4, !tbaa !11
  %46 = load i8, ptr %i.ad, align 1, !tbaa !10
  %47 = zext i8 %46 to i32
  %i.az = shl nuw nsw i32 %47, 8                  ; 2 uses
  store i32 %i.az, ptr %i.af, align 4, !tbaa !11
  %48 = load i8, ptr %i.ae, align 1, !tbaa !10
  %49 = zext i8 %48 to i32                        ; 2 uses
  %50 = or disjoint i32 %i.az, %49                ; 2 uses
  store i32 %50, ptr %i.af, align 4, !tbaa !11
  %i.ba = shl nuw nsw i32 %49, 9
  %51 = or i32 %14, %i.ba
  %52 = insertelement <2 x i32> poison, i32 %40, i64 0
  %53 = insertelement <2 x i32> %52, i32 %44, i64 1
  %54 = shl nuw nsw <2 x i32> %53, splat (i32 9)
  %55 = insertelement <2 x i32> poison, i32 %45, i64 0
  %56 = insertelement <2 x i32> %55, i32 %50, i64 1
  %57 = lshr <2 x i32> %56, splat (i32 7)         ; 2 uses
  %58 = insertelement <2 x i32> %35, i32 %i.ax, i64 1
  %59 = lshr <2 x i32> %58, splat (i32 7)         ; 2 uses
  %60 = and <2 x i32> %54, splat (i32 65024)
  %61 = and i32 %51, 65535                        ; 2 uses
  %62 = or disjoint <2 x i32> %57, %60            ; 2 uses
  %63 = or disjoint <2 x i32> %59, %38            ; 2 uses
  store <2 x i32> %39, ptr %.071, align 4, !tbaa !11
  store <2 x i32> %63, ptr %i.ag, align 4, !tbaa !11
  store <2 x i32> %62, ptr %i.ah, align 4, !tbaa !11
  store i32 %61, ptr %2, align 4, !tbaa !11
  store i32 %21, ptr %3, align 4, !tbaa !11
  %64 = insertelement <8 x i32> poison, i32 %61, i64 0 ; 2 uses
  %65 = insertelement <8 x i32> %64, i32 %19, i64 1
  %66 = shufflevector <2 x i32> %37, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %67 = shufflevector <8 x i32> %65, <8 x i32> %66, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %68 = shufflevector <2 x i32> %59, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %69 = shufflevector <8 x i32> %67, <8 x i32> %68, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %70 = shufflevector <2 x i32> %57, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %71 = shufflevector <8 x i32> %69, <8 x i32> %70, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %72 = shl nuw nsw <8 x i32> %71, splat (i32 9)
  %73 = insertelement <8 x i32> %64, i32 %21, i64 1
  %74 = shufflevector <2 x i32> %39, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %75 = shufflevector <8 x i32> %73, <8 x i32> %74, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %76 = shufflevector <2 x i32> %63, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %77 = shufflevector <8 x i32> %75, <8 x i32> %76, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %78 = shufflevector <2 x i32> %62, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %79 = shufflevector <8 x i32> %77, <8 x i32> %78, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %80 = lshr <8 x i32> %79, splat (i32 7)         ; 2 uses
  %81 = and <8 x i32> %72, splat (i32 65024)
  %82 = shufflevector <8 x i32> %80, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0>
  %83 = or <8 x i32> %81, %82                     ; 5 uses
  %84 = shufflevector <8 x i32> %83, <8 x i32> poison, <2 x i32> <i32 3, i32 4>
  store <2 x i32> %84, ptr %.071.1, align 4, !tbaa !11
  %85 = shufflevector <8 x i32> %83, <8 x i32> poison, <2 x i32> <i32 5, i32 6>
  store <2 x i32> %85, ptr %4, align 4, !tbaa !11
  %86 = shufflevector <8 x i32> %83, <8 x i32> poison, <2 x i32> <i32 7, i32 0>
  store <2 x i32> %86, ptr %5, align 4, !tbaa !11
  %87 = shufflevector <8 x i32> %83, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %87, ptr %6, align 4, !tbaa !11
  %88 = shl nuw nsw <8 x i32> %80, splat (i32 9)
  %89 = lshr <8 x i32> %83, splat (i32 7)         ; 2 uses
  %90 = and <8 x i32> %88, splat (i32 65024)
  %91 = or <8 x i32> %90, %89                     ; 5 uses
  %92 = shufflevector <8 x i32> %91, <8 x i32> poison, <2 x i32> <i32 5, i32 6>
  store <2 x i32> %92, ptr %.071.2, align 4, !tbaa !11
  %93 = shufflevector <8 x i32> %91, <8 x i32> poison, <2 x i32> <i32 7, i32 0>
  store <2 x i32> %93, ptr %7, align 4, !tbaa !11
  %94 = shufflevector <8 x i32> %91, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %94, ptr %8, align 4, !tbaa !11
  %95 = shufflevector <8 x i32> %91, <8 x i32> poison, <2 x i32> <i32 3, i32 4>
  store <2 x i32> %95, ptr %9, align 4, !tbaa !11
  %96 = shl nuw nsw <8 x i32> %89, splat (i32 9)
  %97 = lshr <8 x i32> %91, splat (i32 7)         ; 2 uses
  %98 = and <8 x i32> %96, splat (i32 65024)
  %99 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0>
  %100 = or <8 x i32> %98, %99                    ; 6 uses
  %101 = shufflevector <8 x i32> %100, <8 x i32> poison, <2 x i32> <i32 6, i32 7>
  store <2 x i32> %101, ptr %.071.3, align 4, !tbaa !11
  %102 = shufflevector <8 x i32> %100, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %102, ptr %10, align 4, !tbaa !11
  %103 = shufflevector <8 x i32> %100, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %103, ptr %11, align 4, !tbaa !11
  %104 = shufflevector <8 x i32> %100, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  store <2 x i32> %104, ptr %12, align 4, !tbaa !11
  %105 = shl nuw nsw <8 x i32> %97, splat (i32 9)
  %106 = lshr <8 x i32> %100, splat (i32 7)       ; 3 uses
  %107 = and <8 x i32> %105, splat (i32 65024)
  %108 = or <8 x i32> %107, %106                  ; 4 uses
  store <8 x i32> %108, ptr %.071.4, align 4, !tbaa !11
  %.071.5 = getelementptr i8, ptr %1, i64 192
  %109 = getelementptr i8, ptr %1, i64 200
  %110 = shufflevector <8 x i32> %100, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  %111 = shl nuw nsw <2 x i32> %110, splat (i32 2)
  %i.bb = shufflevector <8 x i32> %108, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %112 = lshr <2 x i32> %i.bb, splat (i32 7)
  %113 = and <2 x i32> %111, splat (i32 65024)
  %114 = or <2 x i32> %112, %113
  store <2 x i32> %114, ptr %.071.5, align 4, !tbaa !11
  %115 = getelementptr i8, ptr %1, i64 208
  %116 = shufflevector <8 x i32> %106, <8 x i32> poison, <2 x i32> <i32 3, i32 4>
  %117 = shl nuw nsw <2 x i32> %116, splat (i32 9)
  %118 = shufflevector <8 x i32> %108, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %119 = lshr <2 x i32> %118, splat (i32 7)
  %120 = and <2 x i32> %117, splat (i32 65024)
  %121 = or <2 x i32> %119, %120
  store <2 x i32> %121, ptr %109, align 4, !tbaa !11
  %122 = shufflevector <8 x i32> %106, <8 x i32> poison, <2 x i32> <i32 5, i32 6>
  %123 = shl nuw nsw <2 x i32> %122, splat (i32 9)
  %124 = shufflevector <8 x i32> %108, <8 x i32> poison, <2 x i32> <i32 6, i32 7>
  %125 = lshr <2 x i32> %124, splat (i32 7)
  %126 = and <2 x i32> %123, splat (i32 65024)
  %127 = or <2 x i32> %125, %126
  store <2 x i32> %127, ptr %115, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @IDEA_set_decrypt_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.029 = phi ptr [ %i.a, %bb.a ], [ %i.at, %bb.e ] ; 7 uses
  %.028 = phi ptr [ %1, %bb.a ], [ %i.az, %bb.e ] ; 7 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ba, %bb.e ]    ; 2 uses
  %i.b = load i32, ptr %.029, align 4, !tbaa !11  ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %inverse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = urem i32 65537, %i.b                     ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %inverse.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %.zext.i = zext nneg i32 %i.d to i64
  %i.f = zext i32 %i.b to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %.lr.ph.i
  %i.g = icmp slt i64 %i.n, 0
  %i.h = add nsw i64 %i.n, 65537
  %spec.select.i = select i1 %i.g, i64 %i.h, i64 %i.n
  %i.i = trunc i64 %spec.select.i to i32
  br label %inverse.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.j = phi i64 [ %i.o, %.lr.ph.i ], [ %.zext.i, %.lr.ph.i.preheader ] ; 3 uses
  %.034.i = phi i64 [ %.02331.i, %.lr.ph.i ], [ 65537, %.lr.ph.i.preheader ]
  %.01933.i = phi i64 [ %i.n, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.02132.i = phi i64 [ %.01933.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.02331.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.k = sub nsw i64 %.034.i, %i.j
  %i.l = sdiv i64 %i.k, %.02331.i
  %i.m = mul nsw i64 %i.l, %.01933.i
  %.fr38.i = freeze i64 %i.m
  %i.n = sub i64 %.02132.i, %.fr38.i              ; 4 uses
  %i.o = urem i64 %.02331.i, %i.j                 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread.i, label %.lr.ph.i, !llvm.loop !12

inverse.exit:                                     ; preds = %bb.c, %.thread.i, %bb.b
  %.2.i = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.i, %.thread.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 4
  store i32 %.2.i, ptr %.028, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = sub i32 0, %i.s
  %i.u = and i32 %i.t, 65535
  %i.v = getelementptr inbounds nuw i8, ptr %.028, i64 8
  store i32 %i.u, ptr %i.q, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = sub i32 0, %i.x
  %i.z = and i32 %i.y, 65535
  %i.aa = getelementptr inbounds nuw i8, ptr %.028, i64 12
  store i32 %i.z, ptr %i.v, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %inverse.exit41, label %bb.d

bb.d:                                             ; preds = %inverse.exit
  %i.ae = urem i32 65537, %i.ac                   ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %inverse.exit41, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.d
  %.zext.i30 = zext nneg i32 %i.ae to i64
  %i.ag = zext i32 %i.ac to i64
  br label %.lr.ph.i31

.thread.i37:                                      ; preds = %.lr.ph.i31
  %i.ah = icmp slt i64 %i.ao, 0
  %i.ai = add nsw i64 %i.ao, 65537
  %spec.select.i38 = select i1 %i.ah, i64 %i.ai, i64 %i.ao
  %i.aj = trunc i64 %spec.select.i38 to i32
  br label %inverse.exit41

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %i.ak = phi i64 [ %i.ap, %.lr.ph.i31 ], [ %.zext.i30, %.lr.ph.i31.preheader ] ; 3 uses
  %.034.i32 = phi i64 [ %.02331.i35, %.lr.ph.i31 ], [ 65537, %.lr.ph.i31.preheader ]
  %.01933.i33 = phi i64 [ %i.ao, %.lr.ph.i31 ], [ 1, %.lr.ph.i31.preheader ] ; 2 uses
  %.02132.i34 = phi i64 [ %.01933.i33, %.lr.ph.i31 ], [ 0, %.lr.ph.i31.preheader ]
  %.02331.i35 = phi i64 [ %i.ak, %.lr.ph.i31 ], [ %i.ag, %.lr.ph.i31.preheader ] ; 3 uses
  %i.al = sub nsw i64 %.034.i32, %i.ak
  %i.am = sdiv i64 %i.al, %.02331.i35
  %i.an = mul nsw i64 %i.am, %.01933.i33
  %.fr38.i36 = freeze i64 %i.an
  %i.ao = sub i64 %.02132.i34, %.fr38.i36         ; 4 uses
  %i.ap = urem i64 %.02331.i35, %i.ak             ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread.i37, label %.lr.ph.i31, !llvm.loop !12

inverse.exit41:                                   ; preds = %bb.d, %.thread.i37, %inverse.exit
  %.2.i40 = phi i32 [ 0, %inverse.exit ], [ 1, %bb.d ], [ %i.aj, %.thread.i37 ]
  store i32 %.2.i40, ptr %i.aa, align 4, !tbaa !11
  %i.ar = icmp eq i32 %.0, 8
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %inverse.exit41
  %i.as = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.at = getelementptr inbounds i8, ptr %.029, i64 -24
  %i.au = getelementptr inbounds i8, ptr %.029, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %.028, i64 20
  store i32 %i.av, ptr %i.as, align 4, !tbaa !11
  %i.ax = getelementptr inbounds i8, ptr %.029, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %.028, i64 24
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !11
  %i.ba = add nuw nsw i32 %.0, 1
  br label %bb.b, !llvm.loop !14

bb.f:                                             ; preds = %inverse.exit41
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !11
  %i.bd = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !11
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
end_hunk_0
