Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/uuencode?download=true
inline.NumInlined: 15
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c" \0Aend\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"begin 640 \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"uuencode.c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Usage: uuencode [infile]\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 32, 96) i32 @encode_char(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %0, 63
  %narrow = add nuw nsw i8 %i.a, 32
  %i.b = zext nneg i8 %narrow to i32
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @encode_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i32 %2 to i8
  %i.b = and i8 %i.a, 63
  %narrow.i = add nuw nsw i8 %i.b, 32
  store i8 %narrow.i, ptr %3, align 1, !tbaa !10
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 6 uses
  %4 = udiv i32 %2, 3
  %.neg = mul i32 %2, -1431655765
  %5 = add i32 %.neg, -1
  %6 = tail call i32 @llvm.umin.i32(i32 %4, i32 %5) ; 2 uses
  %7 = zext nneg i32 %6 to i64                    ; 3 uses
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %6, 16
  br i1 %min.iters.check, label %.lr.ph.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %9 = getelementptr i8, ptr %3, i64 1
  %10 = shl nuw nsw i64 %7, 2
  %11 = getelementptr i8, ptr %3, i64 %10
  %12 = getelementptr i8, ptr %11, i64 5
  %13 = getelementptr i8, ptr %0, i64 %i.d
  %14 = mul nuw nsw i64 %7, 3
  %15 = getelementptr i8, ptr %0, i64 %14
  %16 = getelementptr i8, ptr %15, i64 %i.d
  %17 = getelementptr i8, ptr %16, i64 3
  %bound0 = icmp ult ptr %9, %17
  %bound1 = icmp ult ptr %13, %12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %18 = and i64 %8, 15                            ; 2 uses
  %19 = icmp eq i64 %18, 0
  %20 = select i1 %19, i64 16, i64 %18
  %n.vec = sub nsw i64 %8, %20                    ; 4 uses
  %21 = mul nsw i64 %n.vec, 3
  %22 = add nsw i64 %21, %i.d
  %23 = shl nsw i64 %n.vec, 2
  %24 = or disjoint i64 %23, 1
  %25 = trunc i64 %n.vec to i32
  %26 = mul i32 %25, -3
  %27 = add i32 %2, %26
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %28 = mul i64 %index, 3
  %29 = add i64 %28, %i.d                         ; 16 uses
  %30 = shl nuw i64 %index, 2
  %31 = getelementptr inbounds i8, ptr %0, i64 %29 ; 3 uses
  %32 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %33 = getelementptr i8, ptr %32, i64 3
  %34 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %35 = getelementptr i8, ptr %34, i64 6
  %36 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %37 = getelementptr i8, ptr %36, i64 9
  %38 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %39 = getelementptr i8, ptr %38, i64 12
  %40 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %41 = getelementptr i8, ptr %40, i64 15
  %42 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %43 = getelementptr i8, ptr %42, i64 18
  %44 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %45 = getelementptr i8, ptr %44, i64 21
  %46 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %47 = getelementptr i8, ptr %46, i64 24
  %48 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %49 = getelementptr i8, ptr %48, i64 27
  %50 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %51 = getelementptr i8, ptr %50, i64 30
  %52 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %53 = getelementptr i8, ptr %52, i64 33
  %54 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %55 = getelementptr i8, ptr %54, i64 36
  %56 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %57 = getelementptr i8, ptr %56, i64 39
  %58 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %59 = getelementptr i8, ptr %58, i64 42
  %60 = getelementptr i8, ptr %0, i64 %29         ; 3 uses
  %61 = getelementptr i8, ptr %60, i64 45
  %62 = load i8, ptr %31, align 1, !tbaa !10, !alias.scope !17
  %63 = load i8, ptr %33, align 1, !tbaa !10, !alias.scope !17
  %64 = load i8, ptr %35, align 1, !tbaa !10, !alias.scope !17
  %65 = load i8, ptr %37, align 1, !tbaa !10, !alias.scope !17
  %66 = load i8, ptr %39, align 1, !tbaa !10, !alias.scope !17
  %67 = load i8, ptr %41, align 1, !tbaa !10, !alias.scope !17
  %68 = load i8, ptr %43, align 1, !tbaa !10, !alias.scope !17
  %69 = load i8, ptr %45, align 1, !tbaa !10, !alias.scope !17
  %70 = load i8, ptr %47, align 1, !tbaa !10, !alias.scope !17
  %71 = load i8, ptr %49, align 1, !tbaa !10, !alias.scope !17
  %72 = load i8, ptr %51, align 1, !tbaa !10, !alias.scope !17
  %73 = load i8, ptr %53, align 1, !tbaa !10, !alias.scope !17
  %74 = load i8, ptr %55, align 1, !tbaa !10, !alias.scope !17
  %75 = load i8, ptr %57, align 1, !tbaa !10, !alias.scope !17
  %76 = load i8, ptr %59, align 1, !tbaa !10, !alias.scope !17
  %77 = load i8, ptr %61, align 1, !tbaa !10, !alias.scope !17
  %78 = insertelement <16 x i8> poison, i8 %62, i64 0
  %79 = insertelement <16 x i8> %78, i8 %63, i64 1
  %80 = insertelement <16 x i8> %79, i8 %64, i64 2
  %81 = insertelement <16 x i8> %80, i8 %65, i64 3
  %82 = insertelement <16 x i8> %81, i8 %66, i64 4
  %83 = insertelement <16 x i8> %82, i8 %67, i64 5
  %84 = insertelement <16 x i8> %83, i8 %68, i64 6
  %85 = insertelement <16 x i8> %84, i8 %69, i64 7
  %86 = insertelement <16 x i8> %85, i8 %70, i64 8
  %87 = insertelement <16 x i8> %86, i8 %71, i64 9
  %88 = insertelement <16 x i8> %87, i8 %72, i64 10
  %89 = insertelement <16 x i8> %88, i8 %73, i64 11
  %90 = insertelement <16 x i8> %89, i8 %74, i64 12
  %91 = insertelement <16 x i8> %90, i8 %75, i64 13
  %92 = insertelement <16 x i8> %91, i8 %76, i64 14
  %93 = insertelement <16 x i8> %92, i8 %77, i64 15 ; 2 uses
  %94 = lshr <16 x i8> %93, splat (i8 2)
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 %30
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 1
  %97 = shl <16 x i8> %93, splat (i8 4)
  %98 = getelementptr i8, ptr %31, i64 1
  %99 = getelementptr i8, ptr %32, i64 4
  %100 = getelementptr i8, ptr %34, i64 7
  %101 = getelementptr i8, ptr %36, i64 10
  %102 = getelementptr i8, ptr %38, i64 13
  %103 = getelementptr i8, ptr %40, i64 16
  %104 = getelementptr i8, ptr %42, i64 19
  %105 = getelementptr i8, ptr %44, i64 22
  %106 = getelementptr i8, ptr %46, i64 25
  %107 = getelementptr i8, ptr %48, i64 28
  %108 = getelementptr i8, ptr %50, i64 31
  %109 = getelementptr i8, ptr %52, i64 34
  %110 = getelementptr i8, ptr %54, i64 37
  %111 = getelementptr i8, ptr %56, i64 40
  %112 = getelementptr i8, ptr %58, i64 43
  %113 = getelementptr i8, ptr %60, i64 46
  %114 = load i8, ptr %98, align 1, !tbaa !10, !alias.scope !17
  %115 = load i8, ptr %99, align 1, !tbaa !10, !alias.scope !17
  %116 = load i8, ptr %100, align 1, !tbaa !10, !alias.scope !17
  %117 = load i8, ptr %101, align 1, !tbaa !10, !alias.scope !17
  %118 = load i8, ptr %102, align 1, !tbaa !10, !alias.scope !17
  %119 = load i8, ptr %103, align 1, !tbaa !10, !alias.scope !17
  %120 = load i8, ptr %104, align 1, !tbaa !10, !alias.scope !17
  %121 = load i8, ptr %105, align 1, !tbaa !10, !alias.scope !17
  %122 = load i8, ptr %106, align 1, !tbaa !10, !alias.scope !17
  %123 = load i8, ptr %107, align 1, !tbaa !10, !alias.scope !17
  %124 = load i8, ptr %108, align 1, !tbaa !10, !alias.scope !17
  %125 = load i8, ptr %109, align 1, !tbaa !10, !alias.scope !17
  %126 = load i8, ptr %110, align 1, !tbaa !10, !alias.scope !17
  %127 = load i8, ptr %111, align 1, !tbaa !10, !alias.scope !17
  %128 = load i8, ptr %112, align 1, !tbaa !10, !alias.scope !17
  %129 = load i8, ptr %113, align 1, !tbaa !10, !alias.scope !17
  %130 = insertelement <16 x i8> poison, i8 %114, i64 0
  %131 = insertelement <16 x i8> %130, i8 %115, i64 1
  %132 = insertelement <16 x i8> %131, i8 %116, i64 2
  %133 = insertelement <16 x i8> %132, i8 %117, i64 3
  %134 = insertelement <16 x i8> %133, i8 %118, i64 4
  %135 = insertelement <16 x i8> %134, i8 %119, i64 5
  %136 = insertelement <16 x i8> %135, i8 %120, i64 6
  %137 = insertelement <16 x i8> %136, i8 %121, i64 7
  %138 = insertelement <16 x i8> %137, i8 %122, i64 8
  %139 = insertelement <16 x i8> %138, i8 %123, i64 9
  %140 = insertelement <16 x i8> %139, i8 %124, i64 10
  %141 = insertelement <16 x i8> %140, i8 %125, i64 11
  %142 = insertelement <16 x i8> %141, i8 %126, i64 12
  %143 = insertelement <16 x i8> %142, i8 %127, i64 13
  %144 = insertelement <16 x i8> %143, i8 %128, i64 14
  %145 = insertelement <16 x i8> %144, i8 %129, i64 15 ; 2 uses
  %146 = ashr <16 x i8> %145, splat (i8 4)
  %147 = or <16 x i8> %146, %97
  %148 = and <16 x i8> %147, splat (i8 63)
  %149 = shl <16 x i8> %145, splat (i8 2)
  %150 = getelementptr i8, ptr %31, i64 2
  %151 = getelementptr i8, ptr %32, i64 5
  %152 = getelementptr i8, ptr %34, i64 8
  %153 = getelementptr i8, ptr %36, i64 11
  %154 = getelementptr i8, ptr %38, i64 14
  %155 = getelementptr i8, ptr %40, i64 17
  %156 = getelementptr i8, ptr %42, i64 20
  %157 = getelementptr i8, ptr %44, i64 23
  %158 = getelementptr i8, ptr %46, i64 26
  %159 = getelementptr i8, ptr %48, i64 29
  %160 = getelementptr i8, ptr %50, i64 32
  %161 = getelementptr i8, ptr %52, i64 35
  %162 = getelementptr i8, ptr %54, i64 38
  %163 = getelementptr i8, ptr %56, i64 41
  %164 = getelementptr i8, ptr %58, i64 44
  %165 = getelementptr i8, ptr %60, i64 47
  %166 = load i8, ptr %150, align 1, !tbaa !10, !alias.scope !17
  %167 = load i8, ptr %151, align 1, !tbaa !10, !alias.scope !17
  %168 = load i8, ptr %152, align 1, !tbaa !10, !alias.scope !17
  %169 = load i8, ptr %153, align 1, !tbaa !10, !alias.scope !17
  %170 = load i8, ptr %154, align 1, !tbaa !10, !alias.scope !17
  %171 = load i8, ptr %155, align 1, !tbaa !10, !alias.scope !17
  %172 = load i8, ptr %156, align 1, !tbaa !10, !alias.scope !17
  %173 = load i8, ptr %157, align 1, !tbaa !10, !alias.scope !17
  %174 = load i8, ptr %158, align 1, !tbaa !10, !alias.scope !17
  %175 = load i8, ptr %159, align 1, !tbaa !10, !alias.scope !17
  %176 = load i8, ptr %160, align 1, !tbaa !10, !alias.scope !17
  %177 = load i8, ptr %161, align 1, !tbaa !10, !alias.scope !17
  %178 = load i8, ptr %162, align 1, !tbaa !10, !alias.scope !17
  %179 = load i8, ptr %163, align 1, !tbaa !10, !alias.scope !17
  %180 = load i8, ptr %164, align 1, !tbaa !10, !alias.scope !17
  %181 = load i8, ptr %165, align 1, !tbaa !10, !alias.scope !17
  %182 = insertelement <16 x i8> poison, i8 %166, i64 0
  %183 = insertelement <16 x i8> %182, i8 %167, i64 1
  %184 = insertelement <16 x i8> %183, i8 %168, i64 2
  %185 = insertelement <16 x i8> %184, i8 %169, i64 3
  %186 = insertelement <16 x i8> %185, i8 %170, i64 4
  %187 = insertelement <16 x i8> %186, i8 %171, i64 5
  %188 = insertelement <16 x i8> %187, i8 %172, i64 6
  %189 = insertelement <16 x i8> %188, i8 %173, i64 7
  %190 = insertelement <16 x i8> %189, i8 %174, i64 8
  %191 = insertelement <16 x i8> %190, i8 %175, i64 9
  %192 = insertelement <16 x i8> %191, i8 %176, i64 10
  %193 = insertelement <16 x i8> %192, i8 %177, i64 11
  %194 = insertelement <16 x i8> %193, i8 %178, i64 12
  %195 = insertelement <16 x i8> %194, i8 %179, i64 13
  %196 = insertelement <16 x i8> %195, i8 %180, i64 14
  %197 = insertelement <16 x i8> %196, i8 %181, i64 15 ; 2 uses
  %198 = ashr <16 x i8> %197, splat (i8 6)
  %199 = or <16 x i8> %198, %149
  %200 = shufflevector <16 x i8> %94, <16 x i8> %148, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %201 = shufflevector <16 x i8> %199, <16 x i8> %197, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %202 = and <32 x i8> %201, splat (i8 63)
  %203 = shufflevector <32 x i8> %200, <32 x i8> %202, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  %interleaved.vec = add nuw nsw <64 x i8> %203, splat (i8 32)
  store <64 x i8> %interleaved.vec, ptr %96, align 1, !tbaa !10, !alias.scope !18, !noalias !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %204 = icmp eq i64 %index.next, %n.vec
  br i1 %204, label %.lr.ph.preheader104, label %vector.body, !llvm.loop !15

.lr.ph.preheader104:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv84.ph = phi i64 [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %22, %vector.body ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %24, %vector.body ]
  %.07181.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %27, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader104, %bb.e
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.e ], [ %indvars.iv84.ph, %.lr.ph.preheader104 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.ph, %.lr.ph.preheader104 ] ; 4 uses
  %.07181 = phi i32 [ %i.aw, %bb.e ], [ %.07181.ph, %.lr.ph.preheader104 ] ; 4 uses
  %i.e = icmp samesign ugt i32 %.07181, 2
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i32 %.07181, 1
  %i.g = getelementptr inbounds i8, ptr %0, i64 %indvars.iv84 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = lshr i8 %i.h, 2
  %narrow.i76 = add nuw nsw i8 %i.i, 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 5 uses
  store i8 %narrow.i76, ptr %i.j, align 1, !tbaa !10
  %i.k = load i8, ptr %i.g, align 1, !tbaa !10
  %i.l = shl i8 %i.k, 4                           ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = and i8 %i.l, 48
  %narrow.i77 = add nuw nsw i8 %i.m, 32
  %i.n = getelementptr i8, ptr %i.j, i64 1
  store i8 %narrow.i77, ptr %i.n, align 1, !tbaa !10
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = ashr i8 %i.p, 4
  %i.r = or i8 %i.q, %i.l
  %i.s = and i8 %i.r, 63
  %narrow.i79 = add nuw nsw i8 %i.s, 32
  %i.t = getelementptr i8, ptr %i.j, i64 1
  store i8 %narrow.i79, ptr %i.t, align 1, !tbaa !10
  %i.u = load i8, ptr %i.o, align 1, !tbaa !10
  %i.v = shl i8 %i.u, 2
  %i.w = and i8 %i.v, 60
  %narrow.i80 = add nuw nsw i8 %i.w, 32
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ 61, %bb.c ], [ %narrow.i80, %bb.d ]
  %i.x = getelementptr i8, ptr %i.j, i64 2
  store i8 %.sink, ptr %i.x, align 1, !tbaa !10
  %i.y = getelementptr i8, ptr %i.j, i64 3
  store i8 61, ptr %i.y, align 1, !tbaa !10
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv, 4
  br label %._crit_edge

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds i8, ptr %0, i64 %indvars.iv84 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = lshr i8 %i.aa, 2
  %narrow.i72 = add nuw nsw i8 %i.ab, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 4 uses
  store i8 %narrow.i72, ptr %i.ac, align 1, !tbaa !10
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ae = shl i8 %i.ad, 4
  %i.af = getelementptr i8, ptr %i.z, i64 1       ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10
  %i.ah = ashr i8 %i.ag, 4
  %i.ai = or i8 %i.ah, %i.ae
  %i.aj = and i8 %i.ai, 63
  %narrow.i73 = add nuw nsw i8 %i.aj, 32
  %i.ak = getelementptr i8, ptr %i.ac, i64 1
  store i8 %narrow.i73, ptr %i.ak, align 1, !tbaa !10
  %i.al = load i8, ptr %i.af, align 1, !tbaa !10
  %i.am = shl i8 %i.al, 2
  %i.an = getelementptr i8, ptr %i.z, i64 2       ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ap = ashr i8 %i.ao, 6
  %i.aq = or i8 %i.ap, %i.am
  %i.ar = and i8 %i.aq, 63
  %narrow.i74 = add nuw nsw i8 %i.ar, 32
  %i.as = getelementptr i8, ptr %i.ac, i64 2
  store i8 %narrow.i74, ptr %i.as, align 1, !tbaa !10
  %i.at = load i8, ptr %i.an, align 1, !tbaa !10
  %i.au = and i8 %i.at, 63
  %narrow.i75 = add nuw nsw i8 %i.au, 32
  %i.av = getelementptr i8, ptr %i.ac, i64 3
  store i8 %narrow.i75, ptr %i.av, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 3
  %i.aw = add nsw i32 %.07181, -3
  %.not = icmp eq i32 %.07181, 3
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.e, %.thread, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %indvars.iv.next89, %.thread ], [ %indvars.iv.next, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa ; 2 uses
  store i8 10, ptr %i.ax, align 1, !tbaa !10
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.ay, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @encode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [63 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.022 = phi i32 [ %.1, %bb.e ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.01521 = phi ptr [ %i.af, %bb.e ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %i.e = sub nsw i32 %1, %.022                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 44
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  store i8 77, ptr %i.a, align 16, !tbaa !10
  %i.g = zext nneg i32 %.022 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv84.i = phi i64 [ %i.g, %bb.b ], [ %indvars.iv.next85.i, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.07181.i = phi i32 [ 45, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv84.i ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.k = shl i8 %i.i, 4
  %i.l = getelementptr i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10    ; 2 uses
  %i.n = ashr i8 %i.m, 4
  %i.o = or i8 %i.n, %i.k
  %i.p = shl i8 %i.m, 2
  %i.q = getelementptr i8, ptr %i.h, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10    ; 2 uses
  %i.s = ashr i8 %i.r, 6
  %i.t = or i8 %i.s, %i.p
  %i.u = lshr i8 %i.i, 2
  %i.v = insertelement <4 x i8> poison, i8 %i.u, i64 0
  %i.w = insertelement <4 x i8> %i.v, i8 %i.o, i64 1
  %i.x = insertelement <4 x i8> %i.w, i8 %i.t, i64 2
  %i.y = insertelement <4 x i8> %i.x, i8 %i.r, i64 3
  %i.z = and <4 x i8> %i.y, <i8 -1, i8 63, i8 63, i8 63>
  %i.aa = add nuw nsw <4 x i8> %i.z, splat (i8 32)
  store <4 x i8> %i.aa, ptr %i.j, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 3
  %i.ab = add nsw i32 %.07181.i, -3
  %.not.i = icmp eq i32 %.07181.i, 3
  br i1 %.not.i, label %encode_line.exit, label %bb.c, !llvm.loop !0

encode_line.exit:                                 ; preds = %bb.c
  store i8 10, ptr %i.c, align 1, !tbaa !10
  store i8 0, ptr %i.d, align 2, !tbaa !10
  %i.ac = add nuw nsw i32 %.022, 45
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  call void @encode_line(ptr noundef %0, i32 noundef %.022, i32 noundef %i.e, ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %encode_line.exit
  %.1 = phi i32 [ %i.ac, %encode_line.exit ], [ %1, %bb.d ] ; 2 uses
  %i.ad = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01521, ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 0 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01521) #13
  %i.af = getelementptr inbounds nuw i8, ptr %.01521, i64 %i.ae ; 2 uses
  %i.ag = icmp slt i32 %.1, %1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.015.lcssa = phi ptr [ %2, %bb.a ], [ %i.af, %bb.e ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.015.lcssa)
  %endptr = getelementptr inbounds i8, ptr %.015.lcssa, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @do_encode(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 11)) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #12
  %i.a = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %3) #12 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr = getelementptr inbounds i8, ptr %1, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  tail call void @encode(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %i.c)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [63 x i8], align 16               ; 13 uses
  %2 = alloca %struct.timeval, align 8            ; 2 uses
  %3 = alloca %struct.timeval, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = tail call noalias dereferenceable_or_null(1000000) ptr @malloc(i64 noundef 1000000) #14 ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(2000000) ptr @malloc(i64 noundef 2000000) #14 ; 15 uses
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call noalias ptr @fopen(ptr noundef %i.f, ptr noundef nonnull @.str.3) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @perror(ptr noundef %i.i) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = add nsw i32 %0, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stdin, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015 = phi ptr [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  %.0 = phi i32 [ %i.j, %bb.d ], [ %0, %bb.e ]
  %.not = icmp eq i32 %.0, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 2) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = tail call noundef i64 @fread(ptr noundef %i.b, i64 noundef 1, i64 noundef 1000000, ptr noundef %.015)
  %i.m = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #12 ; 0 uses
  %i.n = trunc i64 %i.l to i32                    ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  br i1 %i.o, label %.lr.ph.preheader.i.us, label %encode.exit

.lr.ph.preheader.i.us:                            ; preds = %bb.h, %encode.exit.loopexit.us
  %.01425.us = phi i32 [ %i.cp, %encode.exit.loopexit.us ], [ 0, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #12
  %strlen.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.us = getelementptr inbounds i8, ptr %i.c, i64 %strlen.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr.us, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %strlen.i.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.i.us = getelementptr inbounds i8, ptr %i.c, i64 %strlen.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i.us, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.p, %.lr.ph.preheader.i.us
  %.022.i.us = phi i32 [ %.1.i.us, %bb.p ], [ 0, %.lr.ph.preheader.i.us ] ; 4 uses
  %.01521.i.us = phi ptr [ %i.cn, %bb.p ], [ %i.s, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.t = sub nsw i32 %i.n, %.022.i.us             ; 4 uses
  %i.u = icmp sgt i32 %i.t, 44
  br i1 %i.u, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.v = trunc i32 %i.t to i8
  %i.w = and i8 %i.v, 63
  %narrow.i.i.us = add nuw nsw i8 %i.w, 32
  store i8 %narrow.i.i.us, ptr %i.a, align 16, !tbaa !10
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %.lr.ph.preheader.i20.us, label %encode_line.exit.us

.lr.ph.preheader.i20.us:                          ; preds = %bb.i
  %i.y = zext nneg i32 %.022.i.us to i64
  br label %.lr.ph.i21.us

.lr.ph.i21.us:                                    ; preds = %bb.j, %.lr.ph.preheader.i20.us
  %indvars.iv84.i.us = phi i64 [ %i.y, %.lr.ph.preheader.i20.us ], [ %indvars.iv.next85.i.us, %bb.j ] ; 3 uses
  %indvars.iv.i.us = phi i64 [ 1, %.lr.ph.preheader.i20.us ], [ %indvars.iv.next.i.us, %bb.j ] ; 4 uses
  %.07181.i.us = phi i32 [ %i.t, %.lr.ph.preheader.i20.us ], [ %i.au, %bb.j ] ; 4 uses
  %i.z = icmp samesign ugt i32 %.07181.i.us, 2
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i21.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.us ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.us
  %i.ad = shl i8 %i.ab, 4
  %i.ae = getelementptr i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10  ; 2 uses
  %i.ag = ashr i8 %i.af, 4
  %i.ah = or i8 %i.ag, %i.ad
  %i.ai = shl i8 %i.af, 2
  %i.aj = getelementptr i8, ptr %i.aa, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10  ; 2 uses
  %i.al = ashr i8 %i.ak, 6
  %i.am = or i8 %i.al, %i.ai
  %i.an = lshr i8 %i.ab, 2
  %i.ao = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ah, i64 1
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 2
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.ak, i64 3
  %i.as = and <4 x i8> %i.ar, <i8 -1, i8 63, i8 63, i8 63>
  %i.at = add nuw nsw <4 x i8> %i.as, splat (i8 32)
  store <4 x i8> %i.at, ptr %i.ac, align 1, !tbaa !10
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %indvars.iv.next85.i.us = add nuw nsw i64 %indvars.iv84.i.us, 3
  %i.au = add nsw i32 %.07181.i.us, -3
  %.not.i.us = icmp eq i32 %.07181.i.us, 3
  br i1 %.not.i.us, label %encode_line.exit.us, label %.lr.ph.i21.us, !llvm.loop !0

bb.k:                                             ; preds = %.lr.ph.i21.us
  %i.av = icmp eq i32 %.07181.i.us, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.us ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10  ; 2 uses
  %i.ay = lshr i8 %i.ax, 2
  %narrow.i76.i.us = add nuw nsw i8 %i.ay, 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.us ; 4 uses
  store i8 %narrow.i76.i.us, ptr %i.az, align 1, !tbaa !10
  %i.ba = shl i8 %i.ax, 4                         ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %i.aw, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10  ; 2 uses
  %i.bd = ashr i8 %i.bc, 4
  %i.be = or i8 %i.bd, %i.ba
  %i.bf = and i8 %i.be, 63
  %i.bg = shl i8 %i.bc, 2
  %i.bh = and i8 %i.bg, 60
  %narrow.i80.i.us = add nuw nsw i8 %i.bh, 32
  br label %.thread.i.us

bb.m:                                             ; preds = %bb.k
  %i.bi = and i8 %i.ba, 48
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.m, %bb.l
  %narrow.i79.i.us.sink.in = phi i8 [ %i.bi, %bb.m ], [ %i.bf, %bb.l ]
  %.sink.i.us = phi i8 [ 61, %bb.m ], [ %narrow.i80.i.us, %bb.l ]
  %narrow.i79.i.us.sink = add nuw nsw i8 %narrow.i79.i.us.sink.in, 32
  %i.bj = getelementptr i8, ptr %i.az, i64 1
  store i8 %narrow.i79.i.us.sink, ptr %i.bj, align 1, !tbaa !10
  %i.bk = getelementptr i8, ptr %i.az, i64 2
  store i8 %.sink.i.us, ptr %i.bk, align 1, !tbaa !10
  %i.bl = getelementptr i8, ptr %i.az, i64 3
  store i8 61, ptr %i.bl, align 1, !tbaa !10
  %indvars.iv.next89.i.us = add nuw nsw i64 %indvars.iv.i.us, 4
  br label %encode_line.exit.us

encode_line.exit.us:                              ; preds = %bb.j, %.thread.i.us, %bb.i
  %.0.lcssa.i.us = phi i64 [ 1, %bb.i ], [ %indvars.iv.next89.i.us, %.thread.i.us ], [ %indvars.iv.next.i.us, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.us ; 2 uses
  store i8 10, ptr %i.bm, align 1, !tbaa !10
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  store i8 0, ptr %i.bn, align 1, !tbaa !10
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.us
  store i8 77, ptr %i.a, align 16, !tbaa !10
  %i.bo = zext nneg i32 %.022.i.us to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv84.i.i.us = phi i64 [ %i.bo, %bb.n ], [ %indvars.iv.next85.i.i.us, %bb.o ] ; 2 uses
  %indvars.iv.i.i.us = phi i64 [ 1, %bb.n ], [ %indvars.iv.next.i.i.us, %bb.o ] ; 2 uses
  %.07181.i.i.us = phi i32 [ 45, %bb.n ], [ %i.cj, %bb.o ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.i.us ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.us
  %i.bs = shl i8 %i.bq, 4
  %i.bt = getelementptr i8, ptr %i.bp, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10  ; 2 uses
  %i.bv = ashr i8 %i.bu, 4
  %i.bw = or i8 %i.bv, %i.bs
  %i.bx = shl i8 %i.bu, 2
  %i.by = getelementptr i8, ptr %i.bp, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10  ; 2 uses
  %i.ca = ashr i8 %i.bz, 6
  %i.cb = or i8 %i.ca, %i.bx
  %i.cc = lshr i8 %i.bq, 2
  %i.cd = insertelement <4 x i8> poison, i8 %i.cc, i64 0
  %i.ce = insertelement <4 x i8> %i.cd, i8 %i.bw, i64 1
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.cb, i64 2
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.bz, i64 3
  %i.ch = and <4 x i8> %i.cg, <i8 -1, i8 63, i8 63, i8 63>
  %i.ci = add nuw nsw <4 x i8> %i.ch, splat (i8 32)
  store <4 x i8> %i.ci, ptr %i.br, align 1, !tbaa !10
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 4
  %indvars.iv.next85.i.i.us = add nuw nsw i64 %indvars.iv84.i.i.us, 3
  %i.cj = add nsw i32 %.07181.i.i.us, -3
  %.not.i.i.us = icmp eq i32 %.07181.i.i.us, 3
  br i1 %.not.i.i.us, label %encode_line.exit.i.us, label %bb.o, !llvm.loop !0

encode_line.exit.i.us:                            ; preds = %bb.o
  store i8 10, ptr %i.p, align 1, !tbaa !10
  store i8 0, ptr %i.q, align 2, !tbaa !10
  %i.ck = add nuw nsw i32 %.022.i.us, 45
  br label %bb.p

bb.p:                                             ; preds = %encode_line.exit.i.us, %encode_line.exit.us
  %.1.i.us = phi i32 [ %i.ck, %encode_line.exit.i.us ], [ %i.n, %encode_line.exit.us ] ; 2 uses
  %i.cl = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01521.i.us, ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 0 uses
  %i.cm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01521.i.us) #13
  %i.cn = getelementptr inbounds nuw i8, ptr %.01521.i.us, i64 %i.cm ; 3 uses
  %i.co = icmp slt i32 %.1.i.us, %i.n
  br i1 %i.co, label %.lr.ph.i.us, label %encode.exit.loopexit.us, !llvm.loop !1

encode.exit.loopexit.us:                          ; preds = %bb.p
  %strlen.i18.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.cn)
  %endptr.i19.us = getelementptr inbounds i8, ptr %i.cn, i64 %strlen.i18.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i19.us, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cp = add nuw nsw i32 %.01425.us, 1           ; 2 uses
  %exitcond33.not = icmp eq i32 %i.cp, 1000
  br i1 %exitcond33.not, label %.split28.us, label %.lr.ph.preheader.i.us, !llvm.loop !21

encode.exit:                                      ; preds = %bb.h, %encode.exit
  %.01425 = phi i32 [ %i.cs, %encode.exit ], [ 0, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #12
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr = getelementptr inbounds i8, ptr %i.c, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.i = getelementptr inbounds i8, ptr %i.c, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.cq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %strlen.i18 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.cr)
  %endptr.i19 = getelementptr inbounds i8, ptr %i.cr, i64 %strlen.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i19, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cs = add nuw nsw i32 %.01425, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, 1000
  br i1 %exitcond.not, label %.split28.us, label %encode.exit, !llvm.loop !21

.split28.us:                                      ; preds = %encode.exit, %encode.exit.loopexit.us
  %i.ct = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cu) ; 0 uses
  tail call void @exit(i32 noundef 0) #17
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, i1 false, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !11, !19, !20}
!16 = distinct !{!16, !11, !19}
!17 = !{!13}
!18 = !{!14}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !11}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!26 = !{!25, !25, i64 0}
end_hunk_0
