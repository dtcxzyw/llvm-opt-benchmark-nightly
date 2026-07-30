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
  %2 = zext i8 %i.o to i32                        ; 2 uses
  %3 = or disjoint i32 %i.l, %2                   ; 2 uses
  store i32 %3, ptr %i.m, align 4, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %4 = load i8, ptr %i.n, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %6, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %7 = load i8, ptr %i.p, align 1, !tbaa !10
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
  %8 = shl nuw nsw i32 %2, 9
  %.masked = and i32 %8, 65024
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 44
  %9 = zext i8 %7 to i32                          ; 2 uses
  %10 = or disjoint i32 %6, %9                    ; 2 uses
  store i32 %10, ptr %i.q, align 4, !tbaa !11
  %11 = load i8, ptr %i.r, align 1, !tbaa !10
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8                    ; 2 uses
  store i32 %13, ptr %i.t, align 4, !tbaa !11
  %14 = load i8, ptr %i.s, align 1, !tbaa !10
  %15 = zext i8 %14 to i32                        ; 2 uses
  %16 = lshr i32 %10, 7                           ; 2 uses
  %17 = or disjoint i32 %13, %15                  ; 2 uses
  store i32 %17, ptr %i.t, align 4, !tbaa !11
  %18 = load i8, ptr %i.u, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8                    ; 2 uses
  store i32 %20, ptr %i.w, align 4, !tbaa !11
  %21 = load i8, ptr %i.v, align 1, !tbaa !10
  %i.ai = zext i8 %21 to i32                      ; 2 uses
  %i.aj = or disjoint i32 %20, %i.ai              ; 2 uses
  store i32 %i.aj, ptr %i.w, align 4, !tbaa !11
  %i.ak = load i8, ptr %i.x, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8                ; 2 uses
  store i32 %i.am, ptr %i.z, align 4, !tbaa !11
  %i.an = load i8, ptr %i.y, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  store i32 %i.ap, ptr %i.z, align 4, !tbaa !11
  %i.aq = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8                ; 2 uses
  store i32 %i.as, ptr %i.ac, align 4, !tbaa !11
  %i.at = load i8, ptr %i.ab, align 1, !tbaa !10
  %22 = zext i8 %i.at to i32                      ; 2 uses
  %23 = or disjoint i32 %i.as, %22                ; 3 uses
  store i32 %23, ptr %i.ac, align 4, !tbaa !11
  %24 = load i8, ptr %i.ad, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %i.au = shl nuw nsw i32 %25, 8                  ; 2 uses
  store i32 %i.au, ptr %i.af, align 4, !tbaa !11
  %26 = load i8, ptr %i.ae, align 1, !tbaa !10
  %27 = zext i8 %26 to i32                        ; 2 uses
  %28 = or disjoint i32 %i.au, %27                ; 2 uses
  store i32 %28, ptr %i.af, align 4, !tbaa !11
  %29 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %30 = insertelement <4 x i32> %29, i32 %9, i64 1
  %31 = insertelement <4 x i32> %30, i32 %15, i64 2
  %32 = insertelement <4 x i32> %31, i32 %i.ai, i64 3
  %33 = shl nuw nsw <4 x i32> %32, splat (i32 9)
  %34 = insertelement <4 x i32> poison, i32 %23, i64 0
  %35 = insertelement <4 x i32> %34, i32 %17, i64 1
  %36 = insertelement <4 x i32> %35, i32 %i.aj, i64 2
  %37 = insertelement <4 x i32> %36, i32 %i.ap, i64 3
  %38 = lshr <4 x i32> %37, splat (i32 7)         ; 2 uses
  %39 = and <4 x i32> %33, splat (i32 65024)
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.av = shl nuw nsw i32 %22, 9
  %41 = lshr i32 %28, 7                           ; 2 uses
  %.masked76 = and i32 %i.av, 65024
  %42 = load i32, ptr %1, align 4, !tbaa !11      ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %44 = shl nuw nsw i32 %27, 9
  %45 = lshr i32 %42, 7
  %i.aw = or i32 %45, %44
  %46 = and i32 %i.aw, 65535                      ; 3 uses
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %46, ptr %43, align 4, !tbaa !11
  %48 = shl i32 %42, 9
  %49 = lshr i32 %3, 7                            ; 2 uses
  %.masked77 = and i32 %48, 65024
  %50 = or disjoint i32 %.masked77, %49           ; 2 uses
  store i32 %50, ptr %47, align 4, !tbaa !11
  %.071.1 = getelementptr i8, ptr %1, i64 64
  %51 = getelementptr i8, ptr %1, i64 72
  %52 = getelementptr i8, ptr %1, i64 76
  %53 = getelementptr i8, ptr %1, i64 80
  %54 = shl nuw nsw i32 %41, 9
  %55 = lshr i32 %46, 7                           ; 2 uses
  %.masked82 = and i32 %54, 65024
  %56 = or disjoint i32 %55, %.masked82           ; 2 uses
  %57 = getelementptr i8, ptr %1, i64 84
  store i32 %56, ptr %53, align 4, !tbaa !11
  %58 = shl nuw nsw i32 %46, 9
  %59 = lshr i32 %50, 7                           ; 2 uses
  %.masked83 = and i32 %58, 65024
  %i.ax = or i32 %59, %.masked83                  ; 2 uses
  store i32 %i.ax, ptr %57, align 4, !tbaa !11
  %60 = getelementptr i8, ptr %1, i64 88
  %61 = getelementptr i8, ptr %1, i64 92
  %.071.2 = getelementptr i8, ptr %1, i64 96
  %62 = getelementptr i8, ptr %1, i64 104
  %63 = lshr i32 %56, 7                           ; 2 uses
  %64 = getelementptr i8, ptr %1, i64 108
  %i.ay = shl nuw nsw i32 %55, 9
  %65 = lshr i32 %i.ax, 7                         ; 2 uses
  %.masked89 = and i32 %i.ay, 65024
  %66 = or i32 %65, %.masked89                    ; 2 uses
  %67 = getelementptr i8, ptr %1, i64 112
  store i32 %66, ptr %64, align 4, !tbaa !11
  %68 = shl nuw nsw i32 %59, 9
  %.masked90 = and i32 %68, 65024
  %69 = getelementptr i8, ptr %1, i64 116
  %70 = getelementptr i8, ptr %1, i64 124
  %.071.3 = getelementptr i8, ptr %1, i64 128
  %71 = getelementptr i8, ptr %1, i64 132
  %i.az = shl nuw nsw i32 %63, 9
  %72 = lshr i32 %66, 7                           ; 2 uses
  %.masked95 = and i32 %i.az, 65024
  %73 = or i32 %72, %.masked95                    ; 2 uses
  %74 = getelementptr i8, ptr %1, i64 136
  store i32 %73, ptr %71, align 4, !tbaa !11
  %i.ba = shl nuw nsw i32 %65, 9
  %.masked96 = and i32 %i.ba, 65024
  %75 = getelementptr i8, ptr %1, i64 140
  %76 = getelementptr i8, ptr %1, i64 144
  %.071.4 = getelementptr i8, ptr %1, i64 160
  %77 = shl nuw nsw i32 %72, 9
  %.masked102 = and i32 %77, 65024
  %78 = getelementptr i8, ptr %1, i64 164
  %79 = getelementptr i8, ptr %1, i64 168
  %80 = getelementptr i8, ptr %1, i64 176
  %81 = getelementptr i8, ptr %1, i64 184
  %82 = getelementptr i8, ptr %1, i64 188
  %83 = lshr i32 %73, 7
  %.071.5 = getelementptr i8, ptr %1, i64 192
  %84 = getelementptr i8, ptr %1, i64 208
  %85 = or disjoint i32 %16, %.masked             ; 2 uses
  store i32 %85, ptr %.071, align 4, !tbaa !11
  %86 = or disjoint <4 x i32> %38, %39            ; 4 uses
  %87 = or disjoint i32 %41, %.masked76           ; 2 uses
  %88 = shufflevector <4 x i32> %86, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %88, ptr %i.ag, align 4, !tbaa !11
  %89 = shufflevector <4 x i32> %86, <4 x i32> poison, <2 x i32> <i32 3, i32 0>
  store <2 x i32> %89, ptr %i.ah, align 4, !tbaa !11
  store i32 %87, ptr %40, align 4, !tbaa !11
  %90 = shl nuw nsw i32 %23, 2
  %91 = lshr i32 %87, 7                           ; 2 uses
  %92 = insertelement <4 x i32> %38, i32 %16, i64 0 ; 2 uses
  %93 = shl nuw nsw <4 x i32> %92, splat (i32 9)
  %94 = insertelement <4 x i32> %92, i32 %49, i64 3
  %95 = shl nuw nsw <4 x i32> %94, splat (i32 9)
  %.masked81 = and i32 %90, 65024
  %96 = lshr <4 x i32> %86, splat (i32 7)
  %97 = shufflevector <4 x i32> %96, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %98 = insertelement <4 x i32> %86, i32 %85, i64 0
  %99 = lshr <4 x i32> %98, splat (i32 7)         ; 2 uses
  %100 = and <4 x i32> %93, splat (i32 65024)
  %101 = and <4 x i32> %95, splat (i32 65024)
  %102 = shufflevector <4 x i32> %101, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %103 = or i32 %91, %.masked81                   ; 2 uses
  %104 = or <4 x i32> %100, %97                   ; 4 uses
  %105 = or <4 x i32> %102, %99                   ; 2 uses
  %106 = extractelement <4 x i32> %105, i64 0     ; 2 uses
  %107 = shufflevector <4 x i32> %104, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %107, ptr %.071.1, align 4, !tbaa !11
  %108 = extractelement <4 x i32> %104, i64 3
  store i32 %108, ptr %51, align 4, !tbaa !11
  store i32 %103, ptr %52, align 4, !tbaa !11
  store i32 %106, ptr %60, align 4, !tbaa !11
  %109 = extractelement <4 x i32> %104, i64 0
  store i32 %109, ptr %61, align 4, !tbaa !11
  %110 = shl nuw nsw <4 x i32> %97, splat (i32 9)
  %111 = shl nuw nsw <4 x i32> %99, splat (i32 9)
  %112 = lshr i32 %103, 7                         ; 2 uses
  %113 = lshr <4 x i32> %104, splat (i32 7)       ; 3 uses
  %114 = lshr i32 %106, 7
  %115 = and <4 x i32> %110, splat (i32 65024)
  %116 = and <4 x i32> %111, splat (i32 65024)
  %117 = insertelement <4 x i32> poison, i32 %112, i64 0
  %118 = shufflevector <4 x i32> %113, <4 x i32> %117, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %119 = or <4 x i32> %115, %118                  ; 5 uses
  %120 = extractelement <4 x i32> %119, i64 3
  %121 = or <4 x i32> %116, %113                  ; 2 uses
  %122 = shufflevector <4 x i32> %119, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %122, ptr %.071.2, align 4, !tbaa !11
  %123 = shl nuw nsw i32 %91, 9
  %.masked88 = and i32 %123, 65024
  %124 = or disjoint i32 %63, %.masked88          ; 2 uses
  store i32 %124, ptr %62, align 4, !tbaa !11
  %125 = or i32 %114, %.masked90                  ; 2 uses
  store i32 %125, ptr %67, align 4, !tbaa !11
  %126 = shufflevector <4 x i32> %121, <4 x i32> %119, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %126, ptr %69, align 4, !tbaa !11
  %127 = extractelement <4 x i32> %119, i64 1
  store i32 %127, ptr %70, align 4, !tbaa !11
  %128 = shl nuw nsw i32 %112, 9
  %129 = lshr i32 %124, 7                         ; 2 uses
  %.masked94 = and i32 %128, 65024
  %130 = or i32 %129, %.masked94                  ; 2 uses
  store i32 %130, ptr %.071.3, align 4, !tbaa !11
  %131 = lshr i32 %125, 7                         ; 2 uses
  %132 = or i32 %131, %.masked96                  ; 2 uses
  store i32 %132, ptr %74, align 4, !tbaa !11
  %133 = shl nuw nsw <4 x i32> %105, splat (i32 2)
  %134 = lshr <4 x i32> %121, splat (i32 7)       ; 2 uses
  %135 = shl nuw nsw <4 x i32> %113, splat (i32 9)
  %136 = and <4 x i32> %133, splat (i32 65024)
  %137 = lshr <4 x i32> %119, splat (i32 7)
  %138 = and <4 x i32> %135, splat (i32 65024)
  %139 = or <4 x i32> %134, %136                  ; 2 uses
  %140 = extractelement <4 x i32> %139, i64 0     ; 2 uses
  store i32 %140, ptr %75, align 4, !tbaa !11
  %141 = or <4 x i32> %138, %137                  ; 3 uses
  %142 = extractelement <4 x i32> %141, i64 3
  store <4 x i32> %141, ptr %76, align 4, !tbaa !11
  %143 = lshr i32 %132, 7
  %144 = or i32 %143, %.masked102
  store i32 %144, ptr %.071.4, align 4, !tbaa !11
  %145 = shl nuw nsw i32 %131, 9
  %.masked103 = and i32 %145, 65024
  %146 = lshr i32 %140, 7
  %147 = or i32 %146, %.masked103
  store i32 %147, ptr %78, align 4, !tbaa !11
  %148 = shl nuw nsw <4 x i32> %134, splat (i32 9)
  %149 = lshr <4 x i32> %141, splat (i32 7)
  %150 = and <4 x i32> %148, splat (i32 65024)
  %151 = or <4 x i32> %149, %150                  ; 3 uses
  %152 = shufflevector <4 x i32> %151, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %152, ptr %79, align 4, !tbaa !11
  %i.bb = shufflevector <4 x i32> %151, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %i.bb, ptr %80, align 4, !tbaa !11
  %153 = shl nuw nsw i32 %120, 2
  %154 = lshr i32 %130, 7                         ; 2 uses
  %.masked108 = and i32 %153, 65024
  %155 = or i32 %154, %.masked108                 ; 2 uses
  store i32 %155, ptr %81, align 4, !tbaa !11
  %156 = shl nuw nsw i32 %129, 9
  %.masked109 = and i32 %156, 65024
  %157 = or i32 %.masked109, %83                  ; 2 uses
  store i32 %157, ptr %82, align 4, !tbaa !11
  %158 = shl nuw nsw <4 x i32> %139, splat (i32 2)
  %159 = lshr <4 x i32> %151, splat (i32 7)
  %160 = and <4 x i32> %158, splat (i32 65024)
  %161 = or <4 x i32> %159, %160
  store <4 x i32> %161, ptr %.071.5, align 4, !tbaa !11
  %162 = shl nuw nsw i32 %142, 2
  %163 = lshr i32 %155, 7
  %.masked114 = and i32 %162, 65024
  %164 = or i32 %163, %.masked114
  %165 = getelementptr i8, ptr %1, i64 212
  store i32 %164, ptr %84, align 4, !tbaa !11
  %166 = shl nuw nsw i32 %154, 9
  %167 = lshr i32 %157, 7
  %.masked115 = and i32 %166, 65024
  %168 = or i32 %167, %.masked115
  store i32 %168, ptr %165, align 4, !tbaa !11
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
