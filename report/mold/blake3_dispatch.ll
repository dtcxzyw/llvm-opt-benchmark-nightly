Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/blake3_dispatch?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_cpu_features = internal unnamed_addr global i32 1073741824, align 4

; Function Attrs: nounwind uwtable
define hidden void @blake3_compress_in_place(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !9 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !10
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
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !11
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
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !12
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
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !9
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
define hidden void @blake3_compress_xof(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !9 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !10
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
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !11
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
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !12
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
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !9
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
define hidden void @blake3_xof_many(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %6, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !9 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 1073741824
  br i1 %.not.i, label %bb.c, label %get_cpu_features.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.d = extractvalue { i32, i32, i32, i32 } %i.c, 0
  %i.e = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !10
  %i.f = extractvalue { i32, i32, i32, i32 } %i.e, 2 ; 4 uses
  %7 = lshr i32 %i.f, 8
  %8 = and i32 %7, 2
  %9 = lshr i32 %i.f, 17
  %10 = and i32 %9, 4
  %.1.v.i = or disjoint i32 %8, %10
  %.1.i = or disjoint i32 %.1.v.i, 1              ; 3 uses
  %i.g = and i32 %i.f, 134217728
  %.not26.i = icmp eq i32 %i.g, 0
  br i1 %.not26.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !11
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = and i64 %i.j, 6
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %i.f, 25
  %i.n = and i32 %i.m, 8
  %spec.select31.i = or disjoint i32 %.1.i, %i.n  ; 2 uses
  %i.o = icmp sgt i32 %i.d, 6
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !12
  %i.q = extractvalue { i32, i32, i32, i32 } %i.p, 1 ; 3 uses
  %i.r = lshr i32 %i.q, 1
  %i.s = and i32 %i.r, 16
  %spec.select32.i = or disjoint i32 %i.s, %spec.select31.i ; 2 uses
  %i.t = and i64 %i.j, 224
  %i.u = icmp eq i64 %i.t, 224
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = lshr i32 %i.q, 25
  %i.w = and i32 %i.v, 64
  %i.x = lshr i32 %i.q, 11
  %i.y = and i32 %i.x, 32
  %i.z = or disjoint i32 %i.w, %i.y
  %spec.select34.i = or disjoint i32 %i.z, %spec.select32.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.6.i = phi i32 [ %.1.i, %bb.c ], [ %.1.i, %bb.d ], [ %spec.select34.i, %bb.g ], [ %spec.select32.i, %bb.f ], [ %spec.select31.i, %bb.e ] ; 2 uses
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !9
  br label %get_cpu_features.exit

get_cpu_features.exit:                            ; preds = %bb.b, %bb.h
  %.022.i = phi i32 [ %.6.i, %bb.h ], [ %i.b, %bb.b ]
  %i.aa = and i32 %.022.i, 64
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %.preheader, label %bb.i

bb.i:                                             ; preds = %get_cpu_features.exit
  tail call void @blake3_xof_many_avx512(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6) #2
  br label %.loopexit

.preheader:                                       ; preds = %get_cpu_features.exit, %.preheader
  %.020 = phi i64 [ %i.ae, %.preheader ], [ 0, %get_cpu_features.exit ] ; 3 uses
  %i.ab = add i64 %.020, %3
  %i.ac = shl i64 %.020, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %i.ac
  tail call void @blake3_compress_xof(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %i.ab, i8 noundef zeroext %4, ptr noundef %i.ad)
  %i.ae = add nuw i64 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %6
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !13

.loopexit:                                        ; preds = %.preheader, %bb.i, %bb.a
  ret void
}

declare void @blake3_xof_many_avx512(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @blake3_hash_many(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !9 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !10
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
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !11
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
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !12
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
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !9
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
define hidden range(i64 1, 17) i64 @blake3_simd_degree() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @g_cpu_features seq_cst, align 4, !tbaa !9 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 1073741824
  br i1 %.not.i, label %bb.b, label %get_cpu_features.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !10
  %i.c = extractvalue { i32, i32, i32, i32 } %i.b, 0
  %i.d = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 1) #2, !srcloc !10
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
  %i.g = tail call { i32, i32 } asm sideeffect "xgetbv\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !11
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
  %i.o = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid\0A", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #2, !srcloc !12
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
  store atomic i32 %.6.i, ptr @g_cpu_features seq_cst, align 4, !tbaa !9
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{i64 1669}
!11 = !{i64 1171}
!12 = !{i64 2242}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
