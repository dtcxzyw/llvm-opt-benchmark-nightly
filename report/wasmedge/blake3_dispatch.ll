Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/blake3_dispatch?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_cpu_features = internal unnamed_addr global i32 1073741824, align 4

; Function Attrs: nounwind uwtable
define void @blake3_compress_in_place(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !8 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !9
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !9
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 2 ; 4 uses
  %5 = lshr i32 %i.e, 8
  %6 = and i32 %5, 2
  %7 = lshr i32 %i.e, 17
  %8 = and i32 %7, 4
  %.1.v.i = or disjoint i32 %6, %8
  %.1.i = or disjoint i32 %.1.v.i, 1              ; 3 uses
  %i.f = and i32 %i.e, 134217728
  %.not26.i = icmp eq i32 %i.f, 0
  br i1 %.not26.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = and i64 %i.i, 6
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i32 %i.e, 25
  %i.m = and i32 %i.l, 8
  %spec.select31.i = or disjoint i32 %.1.i, %i.m  ; 2 uses
  %i.n = icmp sgt i32 %i.c, 6
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !11
  %i.p = extractvalue { i32, i32, i32, i32 } %i.o, 1 ; 3 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 16
  %spec.select32.i = or disjoint i32 %i.r, %spec.select31.i ; 2 uses
  %i.s = and i64 %i.i, 224
  %i.t = icmp eq i64 %i.s, 224
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.p, 25
  %i.v = and i32 %i.u, 64
  %i.w = lshr i32 %i.p, 11
  %i.x = and i32 %i.w, 32
  %i.y = or disjoint i32 %i.v, %i.x
  %spec.select34.i = or disjoint i32 %i.y, %spec.select32.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.6.i = phi i32 [ %.1.i, %bb.b ], [ %.1.i, %bb.c ], [ %spec.select34.i, %bb.f ], [ %spec.select32.i, %bb.e ], [ %spec.select31.i, %bb.d ] ; 2 uses
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !8
  br label %get_cpu_features.exit

get_cpu_features.exit:                            ; preds = %bb.a, %bb.g
  %.022.i = phi i32 [ %.6.i, %bb.g ], [ %i.a, %bb.a ] ; 3 uses
  %i.z = and i32 %.022.i, 64
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_cpu_features.exit
  tail call void @blake3_compress_in_place_avx512(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4) #2
  br label %bb.n

bb.i:                                             ; preds = %get_cpu_features.exit
  %i.aa = and i32 %.022.i, 4
  %.not22 = icmp eq i32 %i.aa, 0
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @blake3_compress_in_place_sse41(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4) #2
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ab = and i32 %.022.i, 1
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @blake3_compress_in_place_sse2(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4) #2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @blake3_compress_in_place_portable(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4) #2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h
  ret void
}

declare void @blake3_compress_in_place_avx512(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @blake3_compress_in_place_sse41(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @blake3_compress_in_place_sse2(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @blake3_compress_in_place_portable(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @blake3_compress_xof(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !8 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !9
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !9
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 2 ; 4 uses
  %6 = lshr i32 %i.e, 8
  %7 = and i32 %6, 2
  %8 = lshr i32 %i.e, 17
  %9 = and i32 %8, 4
  %.1.v.i = or disjoint i32 %7, %9
  %.1.i = or disjoint i32 %.1.v.i, 1              ; 3 uses
  %i.f = and i32 %i.e, 134217728
  %.not26.i = icmp eq i32 %i.f, 0
  br i1 %.not26.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = and i64 %i.i, 6
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i32 %i.e, 25
  %i.m = and i32 %i.l, 8
  %spec.select31.i = or disjoint i32 %.1.i, %i.m  ; 2 uses
  %i.n = icmp sgt i32 %i.c, 6
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !11
  %i.p = extractvalue { i32, i32, i32, i32 } %i.o, 1 ; 3 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 16
  %spec.select32.i = or disjoint i32 %i.r, %spec.select31.i ; 2 uses
  %i.s = and i64 %i.i, 224
  %i.t = icmp eq i64 %i.s, 224
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.p, 25
  %i.v = and i32 %i.u, 64
  %i.w = lshr i32 %i.p, 11
  %i.x = and i32 %i.w, 32
  %i.y = or disjoint i32 %i.v, %i.x
  %spec.select34.i = or disjoint i32 %i.y, %spec.select32.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.6.i = phi i32 [ %.1.i, %bb.b ], [ %.1.i, %bb.c ], [ %spec.select34.i, %bb.f ], [ %spec.select32.i, %bb.e ], [ %spec.select31.i, %bb.d ] ; 2 uses
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !8
  br label %get_cpu_features.exit

get_cpu_features.exit:                            ; preds = %bb.a, %bb.g
  %.022.i = phi i32 [ %.6.i, %bb.g ], [ %i.a, %bb.a ] ; 3 uses
  %i.z = and i32 %.022.i, 64
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_cpu_features.exit
  tail call void @blake3_compress_xof_avx512(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5) #2
  br label %bb.n

bb.i:                                             ; preds = %get_cpu_features.exit
  %i.aa = and i32 %.022.i, 4
  %.not26 = icmp eq i32 %i.aa, 0
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @blake3_compress_xof_sse41(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5) #2
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ab = and i32 %.022.i, 1
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @blake3_compress_xof_sse2(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5) #2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @blake3_compress_xof_portable(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5) #2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h
  ret void
}

declare void @blake3_compress_xof_avx512(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @blake3_compress_xof_sse41(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @blake3_compress_xof_sse2(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @blake3_compress_xof_portable(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @blake3_hash_many(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !8 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !9
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !9
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 2 ; 4 uses
  %10 = lshr i32 %i.e, 8
  %11 = and i32 %10, 2
  %12 = lshr i32 %i.e, 17
  %13 = and i32 %12, 4
  %.1.v.i = or disjoint i32 %11, %13
  %.1.i = or disjoint i32 %.1.v.i, 1              ; 3 uses
  %i.f = and i32 %i.e, 134217728
  %.not26.i = icmp eq i32 %i.f, 0
  br i1 %.not26.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = and i64 %i.i, 6
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i32 %i.e, 25
  %i.m = and i32 %i.l, 8
  %spec.select31.i = or disjoint i32 %.1.i, %i.m  ; 2 uses
  %i.n = icmp sgt i32 %i.c, 6
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !11
  %i.p = extractvalue { i32, i32, i32, i32 } %i.o, 1 ; 3 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 16
  %spec.select32.i = or disjoint i32 %i.r, %spec.select31.i ; 2 uses
  %i.s = and i64 %i.i, 224
  %i.t = icmp eq i64 %i.s, 224
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.p, 25
  %i.v = and i32 %i.u, 64
  %i.w = lshr i32 %i.p, 11
  %i.x = and i32 %i.w, 32
  %i.y = or disjoint i32 %i.v, %i.x
  %spec.select34.i = or disjoint i32 %i.y, %spec.select32.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.6.i = phi i32 [ %.1.i, %bb.b ], [ %.1.i, %bb.c ], [ %spec.select34.i, %bb.f ], [ %spec.select32.i, %bb.e ], [ %spec.select31.i, %bb.d ] ; 2 uses
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !8
  br label %get_cpu_features.exit

get_cpu_features.exit:                            ; preds = %bb.a, %bb.g
  %.022.i = phi i32 [ %.6.i, %bb.g ], [ %i.a, %bb.a ] ; 4 uses
  %i.z = and i32 %.022.i, 96
  %i.aa = icmp eq i32 %i.z, 96
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %get_cpu_features.exit
  tail call void @blake3_hash_many_avx512(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) #2
  br label %bb.p

bb.i:                                             ; preds = %get_cpu_features.exit
  %i.ab = and i32 %.022.i, 16
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @blake3_hash_many_avx2(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) #2
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ac = and i32 %.022.i, 4
  %.not53 = icmp eq i32 %i.ac, 0
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @blake3_hash_many_sse41(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) #2
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ad = and i32 %.022.i, 1
  %.not54 = icmp eq i32 %i.ad, 0
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @blake3_hash_many_sse2(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) #2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @blake3_hash_many_portable(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) #2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.h
  ret void
}

declare void @blake3_hash_many_avx512(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @blake3_hash_many_avx2(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @blake3_hash_many_sse41(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @blake3_hash_many_sse2(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @blake3_hash_many_portable(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i64 1, 17) i64 @blake3_simd_degree() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !8 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !9
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !9
  %i.e = extractvalue { i32, i32, i32, i32 } %i.d, 2 ; 4 uses
  %0 = lshr i32 %i.e, 8
  %1 = and i32 %0, 2
  %2 = lshr i32 %i.e, 17
  %3 = and i32 %2, 4
  %.1.v.i = or disjoint i32 %1, %3
  %.1.i = or disjoint i32 %.1.v.i, 1              ; 3 uses
  %i.f = and i32 %i.e, 134217728
  %.not26.i = icmp eq i32 %i.f, 0
  br i1 %.not26.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = and i64 %i.i, 6
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i32 %i.e, 25
  %i.m = and i32 %i.l, 8
  %spec.select31.i = or disjoint i32 %.1.i, %i.m  ; 2 uses
  %i.n = icmp sgt i32 %i.c, 6
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !11
  %i.p = extractvalue { i32, i32, i32, i32 } %i.o, 1 ; 3 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 16
  %spec.select32.i = or disjoint i32 %i.r, %spec.select31.i ; 2 uses
  %i.s = and i64 %i.i, 224
  %i.t = icmp eq i64 %i.s, 224
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.p, 25
  %i.v = and i32 %i.u, 64
  %i.w = lshr i32 %i.p, 11
  %i.x = and i32 %i.w, 32
  %i.y = or disjoint i32 %i.v, %i.x
  %spec.select34.i = or disjoint i32 %i.y, %spec.select32.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.6.i = phi i32 [ %.1.i, %bb.b ], [ %.1.i, %bb.c ], [ %spec.select34.i, %bb.f ], [ %spec.select32.i, %bb.e ], [ %spec.select31.i, %bb.d ] ; 2 uses
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !8
  br label %get_cpu_features.exit

get_cpu_features.exit:                            ; preds = %bb.a, %bb.g
  %.022.i = phi i32 [ %.6.i, %bb.g ], [ %i.a, %bb.a ] ; 4 uses
  %i.z = and i32 %.022.i, 96
  %i.aa = icmp eq i32 %i.z, 96
  br i1 %i.aa, label %bb.k, label %bb.h

bb.h:                                             ; preds = %get_cpu_features.exit
  %i.ab = and i32 %.022.i, 16
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = and i32 %.022.i, 4
  %.not5 = icmp eq i32 %i.ac, 0
  br i1 %.not5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = and i32 %.022.i, 1
  %.not6 = icmp eq i32 %i.ad, 0
  %. = select i1 %.not6, i64 1, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %get_cpu_features.exit
  %.0 = phi i64 [ 4, %bb.i ], [ 16, %get_cpu_features.exit ], [ 8, %bb.h ], [ %., %bb.j ]
  ret i64 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{i64 1639}
!10 = !{i64 1141}
!11 = !{i64 2212}
end_hunk_0
