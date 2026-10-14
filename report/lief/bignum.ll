Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum?download=true
inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_mpi = type { ptr, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [129 x i8] c"EFE021C2645FD1DC586E69184AF4A31ED5F53E93B5F123FA41680867BA110131944FE7952E2517337780CB0DB80E61AAE7C8DDC6C5C6AADEB34EB38A2F40D5E6\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"B2E7EFD37075B9F03FF989C7C5051C2034D2A323810251127E7BF8625A4F49A5F3E27F4DA8BD59C47D6DAABA4C8127BD5B5C25763222FEFCCFC38B832366C29E\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"0066A198186C18C10B2F5ED9B522752A9830B69916E535C8F047518A889A43A594B6BED27A168D31D4A52F88925AA8F5\00", align 1
@.str.6 = private unnamed_addr constant [223 x i8] c"602AB7ECA597A3D6B56FF9829A5E8B859E857EA95A03512E2BAE7391688D264AA5663B0341DB9CCFD2C4C5F421FEC8148001B72E848A38CAE1C65F78E56ABDEFE12D3C039B8A02D6BE593F0BBBDA56F1ECF677152EF804370C1A305CAF3B5BF130879B56C61DE584A0F53A2447A51E\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"  MPI test #1 (mul_mpi): \00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"256567336059E52CAE22925474705F39A94\00", align 1
@.str.11 = private unnamed_addr constant [95 x i8] c"6613F26162223DF488E9CD48CC132C7A0AC93C701B001B092E4E5B9F73BCD27B9EE50D0657C77F374E903CDFA4C642\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"  MPI test #2 (div_mpi): \00", align 1
@.str.13 = private unnamed_addr constant [95 x i8] c"36E139AEA55215609D2816998ED020BBBD96C37890F65171D948E9BC7CBAA4D9325D24D6A3C12710F10A09FA08AB87\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"  MPI test #3 (exp_mod): \00", align 1
@.str.15 = private unnamed_addr constant [97 x i8] c"003A0AAEDD7E784FC07D8F9EC6E3BFD5C3DBA76456363A10869622EAC2DD84ECC5B8A74DAC4D09E03B5E0BE779F2DF61\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"  MPI test #4 (inv_mod): \00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"  MPI test #5 (simple gcd): \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"failed at %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Unexpected error, return code = %08X\0A\00", align 1
@small_prime_gaps = internal unnamed_addr constant [167 x i8] c"\02\02\04\02\04\02\04\06\02\06\04\02\04\06\06\02\06\04\02\06\04\06\08\04\02\04\02\04\0E\04\06\02\0A\02\06\06\04\06\06\02\0A\02\04\02\0C\0C\04\02\04\06\02\0A\06\06\06\02\06\04\02\0A\0E\04\02\04\0E\06\0A\02\04\06\08\06\06\04\06\08\04\08\0A\02\0A\02\06\04\06\08\04\02\04\0C\08\04\08\04\06\0C\02\12\06\0A\06\06\02\06\0A\06\06\02\06\06\04\02\0C\0A\02\04\06\06\02\0C\04\06\08\0A\08\0A\08\06\06\04\08\06\04\08\04\0E\0A\0C\02\0A\02\04\02\0A\0E\04\02\04\0E\04\02\04\14\04\08\0A\08\04\06\06\0E\04\06\06\08\06\00", align 16
@str.4 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@str.8 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_mpi_lt_mpi_ct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !20
  %.not = icmp eq i16 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !21
  %i.g = lshr i16 %i.f, 1
  %i.h = and i16 %i.g, 1
  %i.i = zext nneg i16 %i.h to i64
  %i.j = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.i) #17, !srcloc !22 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !21
  %i.m = lshr i16 %i.l, 1
  %i.n = and i16 %i.m, 1
  %i.o = zext nneg i16 %i.n to i64
  %i.p = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.o) #17, !srcloc !22
  %i.q = xor i64 %i.p, %i.j                       ; 2 uses
  %i.r = and i64 %i.q, %i.j
  %i.s = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.u = and i64 %i.j, 1
  %.sroa.idx.not = icmp eq i64 %i.u, 0            ; 2 uses
  %.sroa.speculated = select i1 %.sroa.idx.not, ptr %i.s, ptr %i.t
  %.sroa.speculated8 = select i1 %.sroa.idx.not, ptr %i.t, ptr %i.s
  %i.v = load i16, ptr %i.a, align 2, !tbaa !20
  %i.w = zext i16 %i.v to i64
  %i.x = tail call i64 @mbedtls_mpi_core_lt_ct(ptr noundef %.sroa.speculated, ptr noundef %.sroa.speculated8, i64 noundef %i.w) #17
  %i.y = xor i64 %i.q, -1
  %i.z = and i64 %i.x, %i.y
  %i.aa = or i64 %i.z, %i.r
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1
  store i32 %i.ac, ptr %2, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -135, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @mbedtls_mpi_core_lt_ct(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_safe_cond_assign(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 4 uses
  %i.c = zext nneg i16 %i.b to i64
  %i.d = icmp ugt i16 %i.b, 10000
  br i1 %i.d, label %mbedtls_mpi_grow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !20   ; 2 uses
  %i.g = zext nneg i16 %i.f to i64
  %i.h = icmp ugt i16 %i.b, %i.f
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 8) #18 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %mbedtls_mpi_grow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.k, i64 %i.l, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.k, i64 noundef %i.l) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i16 %i.b, ptr %i.e, align 2, !tbaa !20
  store ptr %i.i, ptr %0, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.m = zext i8 %2 to i64
  %i.n = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.m) #17, !srcloc !22 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !21
  %i.s = sext i16 %i.p to i64
  %i.t = add nsw i64 %i.s, 1
  %i.u = sext i16 %i.r to i64
  %i.v = add nsw i64 %i.u, 1
  %i.w = and i64 %i.t, 4294967295
  %i.x = and i64 %i.v, 4294967295
  %i.y = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.n, i64 range(i64 0, 4294967296) %i.w, i64 range(i64 0, 4294967296) %i.x) #17, !srcloc !24
  %i.z = extractvalue { i64, i64, i64 } %i.y, 2
  %i.aa = trunc i64 %i.z to i16
  %i.ab = add i16 %i.aa, -1
  store i16 %i.ab, ptr %i.q, align 8, !tbaa !21
  %i.ac = load ptr, ptr %0, align 8, !tbaa !23
  %i.ad = load ptr, ptr %1, align 8, !tbaa !23
  %i.ae = load i16, ptr %i.a, align 2, !tbaa !20
  %i.af = zext i16 %i.ae to i64
  tail call void @mbedtls_mpi_core_cond_assign(ptr noundef %i.ac, ptr noundef %i.ad, i64 noundef %i.af, i64 noundef %i.n) #17
  %i.ag = xor i64 %i.n, -1                        ; 2 uses
  %i.ah = load i16, ptr %i.a, align 2, !tbaa !20  ; 2 uses
  %i.ai = load i16, ptr %i.e, align 2, !tbaa !20  ; 2 uses
  %i.aj = zext i16 %i.ai to i64                   ; 2 uses
  %i.ak = icmp ult i16 %i.ah, %i.ai
  br i1 %i.ak, label %.lr.ph, label %mbedtls_mpi_grow.exit

.lr.ph:                                           ; preds = %bb.g
  %i.al = zext i16 %i.ah to i64                   ; 4 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.an = sub nsw i64 %i.aj, %i.al                ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %i.ao = add nsw i64 %n.vec, %i.al
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !26
  %wide.load29 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !26
  %i.aq = and <2 x i64> %wide.load, %broadcast.splat
  %i.ar = and <2 x i64> %wide.load29, %broadcast.splat
  store <2 x i64> %i.aq, ptr %gep, align 8, !tbaa !26
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %mbedtls_mpi_grow.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.025.ph = phi i64 [ %i.al, %.lr.ph ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.025 = phi i64 [ %i.aw, %scalar.ph ], [ %.025.ph, %scalar.ph.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.025 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  %i.av = and i64 %i.au, %i.ag
  store i64 %i.av, ptr %i.at, align 8, !tbaa !26
  %i.aw = add nuw nsw i64 %.025, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.aj
  br i1 %exitcond.not, label %mbedtls_mpi_grow.exit, label %scalar.ph, !llvm.loop !31

mbedtls_mpi_grow.exit:                            ; preds = %scalar.ph, %middle.block, %bb.g, %bb.c, %bb.a
  %.0.i23 = phi i32 [ -141, %bb.a ], [ -141, %bb.c ], [ 0, %bb.g ], [ 0, %middle.block ], [ 0, %scalar.ph ]
  ret i32 %.0.i23
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_grow(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 10000
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = icmp samesign ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 8) #18 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, i64 %i.i, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.h, i64 noundef %i.i) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = trunc nuw nsw i64 %1 to i16
  store i16 %i.j, ptr %i.b, align 2, !tbaa !20
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c, %bb.a
  %.0 = phi i32 [ -141, %bb.c ], [ -141, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @mbedtls_mpi_core_cond_assign(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_safe_cond_swap(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %mbedtls_mpi_grow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %2 to i64
  %i.c = tail call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.b) #17, !srcloc !22 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20   ; 5 uses
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = icmp ugt i16 %i.e, 10000
  br i1 %i.g, label %mbedtls_mpi_grow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !20   ; 4 uses
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %i.k = icmp ugt i16 %i.e, %i.i
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #18 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %mbedtls_mpi_grow.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.n, i64 %i.o, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.n, i64 noundef %i.o) #17
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  store i16 %i.e, ptr %i.h, align 2, !tbaa !20
  store ptr %i.l, ptr %0, align 8, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.p = icmp ugt i16 %i.i, 10000
  br i1 %i.p, label %mbedtls_mpi_grow.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.q = phi i16 [ %i.e, %.thread ], [ %i.i, %bb.g ] ; 2 uses
  %.pre-phi43 = phi i64 [ %i.f, %.thread ], [ %i.j, %bb.g ]
  %i.r = load i16, ptr %i.d, align 2, !tbaa !20   ; 2 uses
  %i.s = zext nneg i16 %i.r to i64
  %i.t = icmp ugt i16 %i.q, %i.r
  br i1 %i.t, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.u = tail call noalias ptr @calloc(i64 noundef %.pre-phi43, i64 noundef 8) #18 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %.not.i28 = icmp eq ptr %i.w, null
  br i1 %.not.i28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.x, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.w, i64 noundef %i.x) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i16 %i.q, ptr %i.d, align 2, !tbaa !20
  store ptr %i.u, ptr %1, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !21
  %i.ac = sext i16 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 1
  %i.ae = sext i16 %i.z to i64
  %i.af = add nsw i64 %i.ae, 1
  %i.ag = and i64 %i.ad, 4294967295
  %i.ah = and i64 %i.af, 4294967295               ; 2 uses
  %i.ai = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.c, i64 range(i64 0, 4294967296) %i.ag, i64 range(i64 0, 4294967296) %i.ah) #17, !srcloc !24
  %i.aj = extractvalue { i64, i64, i64 } %i.ai, 2
  %i.ak = trunc i64 %i.aj to i16
  %i.al = add i16 %i.ak, -1
  store i16 %i.al, ptr %i.y, align 8, !tbaa !21
  %i.am = load i16, ptr %i.aa, align 8, !tbaa !21
  %i.an = sext i16 %i.am to i64
  %i.ao = add nsw i64 %i.an, 1
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = tail call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.c, i64 range(i64 0, 4294967296) %i.ah, i64 range(i64 0, 4294967296) %i.ap) #17, !srcloc !24
  %i.ar = extractvalue { i64, i64, i64 } %i.aq, 2
  %i.as = trunc i64 %i.ar to i16
  %i.at = add i16 %i.as, -1
  store i16 %i.at, ptr %i.aa, align 8, !tbaa !21
  %i.au = load ptr, ptr %0, align 8, !tbaa !23
  %i.av = load ptr, ptr %1, align 8, !tbaa !23
  %i.aw = load i16, ptr %i.h, align 2, !tbaa !20
  %i.ax = zext i16 %i.aw to i64
  tail call void @mbedtls_mpi_core_cond_swap(ptr noundef %i.au, ptr noundef %i.av, i64 noundef %i.ax, i64 noundef %i.c) #17
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.i, %bb.g, %bb.d, %bb.b, %bb.m, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ 0, %bb.m ], [ -141, %bb.b ], [ -141, %bb.d ], [ -141, %bb.i ], [ -141, %bb.g ]
  ret i32 %.021
}

declare void @mbedtls_mpi_core_cond_swap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_mpi_init(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.b, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_mpi_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !20
  %i.e = zext i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.b, i64 noundef %i.f) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.h, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @mbedtls_zeroize_and_free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_shrink(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 10000
  br i1 %i.a, label %mbedtls_mpi_grow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64                     ; 7 uses
  %.not = icmp samesign ult i64 %1, %i.d
  br i1 %.not, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.b
  %.041 = add nsw i64 %i.d, -1                    ; 2 uses
  %.not3042 = icmp eq i64 %.041, 0
  br i1 %.not3042, label %.preheader._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.preheader
  %i.e = load ptr, ptr %0, align 8, !tbaa !23
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %1, %i.d
  br i1 %i.f, label %bb.d, label %mbedtls_mpi_grow.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 8) #18 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %mbedtls_mpi_grow.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %mbedtls_mpi_grow.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.i, i64 %i.j, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.i, i64 noundef %i.j) #17
  br label %mbedtls_mpi_grow.exit.sink.split

.preheader:                                       ; preds = %.lr.ph
  %.0 = add nsw i64 %.044, -1                     ; 2 uses
  %.not30 = icmp eq i64 %.0, 0
  br i1 %.not30, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !34

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader
  %.044 = phi i64 [ %.0, %.preheader ], [ %.041, %.lr.ph.preheader ] ; 4 uses
  %.0.in43 = phi i64 [ %.044, %.preheader ], [ %i.d, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.044
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %.not31 = icmp eq i64 %i.l, 0
  br i1 %.not31, label %.preheader, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader._crit_edge, !llvm.loop !34

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge, %.preheader.preheader
  %.0.in.lcssa = phi i64 [ %.0.in43, %._crit_edge ], [ %i.d, %.preheader.preheader ], [ %.044, %.preheader ]
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0.in.lcssa, i64 %1) ; 4 uses
  %i.m = tail call noalias ptr @calloc(i64 noundef %spec.select, i64 noundef 8) #18 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %mbedtls_mpi_grow.exit, label %bb.g

bb.g:                                             ; preds = %.preheader._crit_edge
  %i.o = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not32 = icmp eq ptr %i.o, null
  br i1 %.not32, label %mbedtls_mpi_grow.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl nuw nsw i64 %spec.select, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.o, i64 %i.p, i1 false)
  %i.q = shl nuw nsw i64 %i.d, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.o, i64 noundef %i.q) #17
  br label %mbedtls_mpi_grow.exit.sink.split

mbedtls_mpi_grow.exit.sink.split:                 ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %.sink40 = phi i64 [ %1, %bb.e ], [ %1, %bb.f ], [ %spec.select, %bb.h ], [ %spec.select, %bb.g ]
  %.sink = phi ptr [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %i.r = trunc nuw i64 %.sink40 to i16
  store i16 %i.r, ptr %i.b, align 2, !tbaa !20
  store ptr %.sink, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %mbedtls_mpi_grow.exit.sink.split, %bb.d, %bb.c, %.preheader._crit_edge, %bb.a
  %.025 = phi i32 [ 0, %bb.c ], [ -141, %.preheader._crit_edge ], [ -141, %bb.a ], [ -141, %bb.d ], [ 0, %mbedtls_mpi_grow.exit.sink.split ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_copy(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %mbedtls_mpi_grow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20   ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = load i16, ptr %i.e, align 2, !tbaa !20   ; 2 uses
  %.not39 = icmp eq i16 %i.f, 0
  br i1 %.not39, label %mbedtls_mpi_grow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.g, align 8, !tbaa !21
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  %i.i = zext i16 %i.f to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.j, i1 false)
  br label %mbedtls_mpi_grow.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.k = zext i16 %i.c to i64                     ; 3 uses
  %.066 = add nsw i64 %i.k, -1                    ; 2 uses
  %.not67 = icmp eq i64 %.066, 0
  br i1 %.not67, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.l = load ptr, ptr %1, align 8, !tbaa !23
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %.0 = add nsw i64 %.069, -1                     ; 2 uses
  %.not = icmp eq i64 %.0, 0
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !35

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.069 = phi i64 [ %.0, %bb.f ], [ %.066, %.lr.ph.preheader ] ; 4 uses
  %.0.in68 = phi i64 [ %.069, %bb.f ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.069
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26
  %.not37 = icmp eq i64 %i.n, 0
  br i1 %.not37, label %bb.f, label %bb.g, !llvm.loop !35

bb.g:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.p, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !20
  %i.t = zext i16 %i.s to i64                     ; 3 uses
  %i.u = icmp ugt i64 %.0.in68, %i.t
  br i1 %i.u, label %bb.h, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.e
  %.0.in.lcssa = phi i64 [ %i.k, %bb.e ], [ %.069, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i16, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.w, ptr %i.x, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !20   ; 2 uses
  %i.aa = zext i16 %i.z to i64
  %i.ab = icmp eq i16 %i.z, 0
  br i1 %i.ab, label %.thread40, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp ugt i64 %.0.in68, 10000
  br i1 %i.ac, label %mbedtls_mpi_grow.exit.thread, label %.thread40

.thread40:                                        ; preds = %.thread, %bb.h
  %.0.in65 = phi i64 [ %.0.in68, %bb.h ], [ %.0.in.lcssa, %.thread ] ; 3 uses
  %i.ad = phi ptr [ %i.r, %bb.h ], [ %i.y, %.thread ]
  %i.ae = phi i64 [ %i.t, %bb.h ], [ 0, %.thread ]
  %i.af = tail call noalias ptr @calloc(i64 noundef %.0.in65, i64 noundef 8) #18 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %mbedtls_mpi_grow.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread40
  %i.ah = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ah, i64 %i.ai, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ah, i64 noundef %i.ai) #17
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.i, %bb.j
  %i.aj = trunc nuw nsw i64 %.0.in65 to i16
  store i16 %i.aj, ptr %i.ad, align 2, !tbaa !20
  store ptr %i.af, ptr %0, align 8, !tbaa !23
  br label %bb.l

bb.k:                                             ; preds = %.thread, %bb.g
  %.0.in64 = phi i64 [ %.0.in.lcssa, %.thread ], [ %.0.in68, %bb.g ] ; 3 uses
  %i.ak = phi i64 [ %i.aa, %.thread ], [ %i.t, %bb.g ]
  %i.al = load ptr, ptr %0, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0.in64
  %i.an = sub nuw nsw i64 %i.ak, %.0.in64
  %i.ao = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.ao, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %mbedtls_mpi_grow.exit, %bb.k
  %.0.in63 = phi i64 [ %.0.in65, %mbedtls_mpi_grow.exit ], [ %.0.in64, %bb.k ]
  %i.ap = phi ptr [ %i.af, %mbedtls_mpi_grow.exit ], [ %.pre, %bb.k ]
  %i.aq = load ptr, ptr %1, align 8, !tbaa !23
  %i.ar = shl nuw nsw i64 %.0.in63, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ap, ptr align 8 %i.aq, i64 %i.ar, i1 false)
  br label %mbedtls_mpi_grow.exit.thread

mbedtls_mpi_grow.exit.thread:                     ; preds = %bb.h, %.thread40, %bb.l, %bb.c, %bb.d, %bb.a
  %.028 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.l ], [ -141, %.thread40 ], [ -141, %bb.h ]
  ret i32 %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @mbedtls_mpi_swap(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.mbedtls_mpi, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_lset(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  %i.d = zext i16 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mbedtls_mpi_grow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.h, i64 noundef 0) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i16 1, ptr %i.a, align 2, !tbaa !20
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.i = phi i64 [ %i.e, %._crit_edge ], [ 8, %bb.e ]
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.e ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.i, i1 false)
  %.0.i7 = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %1, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !23
  store i64 %.0.i7, ptr %i.k, align 8, !tbaa !26
  %i.l = ashr i64 %1, 62
  %i.m = trunc nsw i64 %i.l to i16
  %i.n = or i16 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.n, ptr %i.o, align 8, !tbaa !21
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.b, %bb.f
  %.0.i10 = phi i32 [ 0, %bb.f ], [ -141, %bb.b ]
  ret i32 %.0.i10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @mbedtls_mpi_get_bit(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20
  %i.c = zext i16 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 6
  %.not = icmp ugt i64 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !23
  %i.f = lshr i64 %1, 6
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = and i64 %1, 63
  %i.j = lshr i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_set_bit(ptr nofree noundef captures(none) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 6                           ; 3 uses
  %i.b = and i64 %1, 63                           ; 2 uses
  %or.cond = icmp ugt i8 %2, 1
  br i1 %or.cond, label %mbedtls_mpi_grow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !20
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 6
  %.not = icmp ugt i64 %i.f, %1
  br i1 %.not, label %mbedtls_mpi_grow.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i8 %2, 0
  br i1 %i.g, label %mbedtls_mpi_grow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.i = icmp ugt i64 %1, 639999
  br i1 %i.i, label %mbedtls_mpi_grow.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not25 = icmp samesign ult i64 %i.a, %i.e
  br i1 %.not25, label %mbedtls_mpi_grow.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@mbedtls_mpi_lsb:bb.a
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define hidden i64 @mbedtls_mpi_bitlen(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64
  %i.e = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.a, i64 noundef %i.d) #17
  ret i64 %i.e
}

declare i64 @mbedtls_mpi_core_bitlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 2305843009213693952) i64 @mbedtls_mpi_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20
  %i.d = zext i16 %i.c to i64
  %i.e = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.a, i64 noundef %i.d) #17
  %i.f = add i64 %i.e, 7
  %i.g = lshr i64 %i.f, 3
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_read_string(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.b = add i32 %1, -17
  %or.cond = icmp ult i32 %i.b, -15
  br i1 %or.cond, label %mbedtls_mpi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.e = load i8, ptr %2, align 1, !tbaa !28      ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %mbedtls_mpi_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !20
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.h, i64 noundef %i.l) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_free.exit

bb.g:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.e, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.o to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx ; 3 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #19 ; 7 uses
  %i.q = icmp eq i32 %1, 16
  br i1 %i.q, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ugt i64 %i.p, 4611686018427387903
  br i1 %i.r, label %mbedtls_mpi_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw nsw i64 %i.p, 15
  %i.t = lshr i64 %i.s, 4                         ; 3 uses
  %i.u = icmp samesign ugt i64 %i.p, 160000
  br i1 %i.u, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !20   ; 3 uses
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = icmp samesign ugt i64 %i.t, %i.x
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 8) #18 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %mbedtls_mpi_grow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %.not.i67 = icmp eq ptr %i.ab, null
  br i1 %.not.i67, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = shl nuw nsw i64 %i.x, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ab, i64 %i.ac, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ab, i64 noundef %i.ac) #17
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m
  %i.ad = trunc nuw nsw i64 %i.t to i16           ; 2 uses
  store i16 %i.ad, ptr %i.v, align 2, !tbaa !20
  store ptr %i.z, ptr %0, align 8, !tbaa !23
  br label %._crit_edge.i

bb.n:                                             ; preds = %bb.j
  %i.ae = icmp eq i16 %i.w, 0
  br i1 %i.ae, label %bb.o, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread, %bb.n
  %i.af = phi i16 [ %i.ad, %.thread ], [ %i.w, %bb.n ]
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.ag = zext i16 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  br label %mbedtls_mpi_lset.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %mbedtls_mpi_grow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ak, i64 noundef 0) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i16 1, ptr %i.v, align 2, !tbaa !20
  store ptr %i.ai, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_lset.exit

mbedtls_mpi_lset.exit:                            ; preds = %._crit_edge.i, %bb.r
  %i.al = phi i64 [ %i.ah, %._crit_edge.i ], [ 8, %bb.r ]
  %i.am = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ai, %bb.r ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.al, i1 false)
  %i.an = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ao, align 8, !tbaa !21
  %.not6495 = icmp eq i64 %i.p, 0
  br i1 %.not6495, label %.loopexit, label %.lr.ph98

.lr.ph98:                                         ; preds = %mbedtls_mpi_lset.exit, %bb.s
  %.03997 = phi i64 [ %i.bk, %bb.s ], [ 0, %mbedtls_mpi_lset.exit ] ; 3 uses
  %.04096 = phi i64 [ %i.bj, %bb.s ], [ %i.p, %mbedtls_mpi_lset.exit ] ; 2 uses
  %i.ap = getelementptr i8, ptr %spec.select, i64 %.04096
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28  ; 4 uses
  %i.as = sext i8 %i.ar to i32                    ; 3 uses
  %i.at = add i8 %i.ar, -48
  %or.cond.i = icmp ult i8 %i.at, 10
  %i.au = add nsw i32 %i.as, -48
  %i.av = zext nneg i32 %i.au to i64
  %storemerge.i = select i1 %or.cond.i, i64 %i.av, i64 255
  %i.aw = add i8 %i.ar, -65
  %or.cond5.i = icmp ult i8 %i.aw, 6
  %i.ax = add nsw i32 %i.as, -55
  %i.ay = zext nneg i32 %i.ax to i64
  %storemerge24.i = select i1 %or.cond5.i, i64 %i.ay, i64 %storemerge.i
  %i.az = add i8 %i.ar, -97
  %or.cond8.i = icmp ult i8 %i.az, 6
  %i.ba = add nsw i32 %i.as, -87
  %i.bb = zext nneg i32 %i.ba to i64
  %storemerge25.i = select i1 %or.cond8.i, i64 %i.bb, i64 %storemerge24.i ; 2 uses
  %.not.i68 = icmp samesign ult i64 %storemerge25.i, 16
  br i1 %.not.i68, label %bb.s, label %mbedtls_mpi_grow.exit

bb.s:                                             ; preds = %.lr.ph98
  %i.bc = shl i64 %.03997, 2
  %i.bd = and i64 %i.bc, 60
  %i.be = shl nuw i64 %storemerge25.i, %i.bd
  %i.bf = lshr i64 %.03997, 4
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = or i64 %i.bh, %i.be
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26
  %i.bj = add nsw i64 %.04096, -1                 ; 2 uses
  %i.bk = add nuw i64 %.03997, 1
  %.not64 = icmp eq i64 %i.bj, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph98, !llvm.loop !36

bb.t:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !20 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.u, label %._crit_edge.i70

._crit_edge.i70:                                  ; preds = %bb.t
  %.pre.i71 = load ptr, ptr %0, align 8, !tbaa !23
  %i.bo = zext i16 %i.bm to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  br label %mbedtls_mpi_lset.exit74

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %mbedtls_mpi_grow.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bs, i64 noundef 0) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i16 1, ptr %i.bl, align 2, !tbaa !20
  store ptr %i.bq, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_lset.exit74

mbedtls_mpi_lset.exit74:                          ; preds = %._crit_edge.i70, %bb.x
  %i.bt = phi i64 [ %i.bp, %._crit_edge.i70 ], [ 8, %bb.x ]
  %i.bu = phi ptr [ %.pre.i71, %._crit_edge.i70 ], [ %i.bq, %bb.x ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.bt, i1 false)
  %i.bv = load ptr, ptr %0, align 8, !tbaa !23
  store i64 0, ptr %i.bv, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.bw, align 8, !tbaa !21
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %mbedtls_mpi_lset.exit74
  %i.bx = zext nneg i32 %1 to i64                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 10
  br label %bb.z

bb.y:                                             ; preds = %bb.ab
  %i.ca = add nuw i64 %.194, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.p
  br i1 %exitcond.not, label %.loopexit, label %bb.z, !llvm.loop !37

bb.z:                                             ; preds = %.lr.ph, %bb.y
  %.194 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.y ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.194
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28  ; 4 uses
  %i.cd = sext i8 %i.cc to i32                    ; 3 uses
  %i.ce = add i8 %i.cc, -48
  %or.cond.i75 = icmp ult i8 %i.ce, 10
  %i.cf = add nsw i32 %i.cd, -48
  %i.cg = zext nneg i32 %i.cf to i64
  %storemerge.i76 = select i1 %or.cond.i75, i64 %i.cg, i64 255
  %i.ch = add i8 %i.cc, -65
  %or.cond5.i77 = icmp ult i8 %i.ch, 6
  %i.ci = add nsw i32 %i.cd, -55
  %i.cj = zext nneg i32 %i.ci to i64
  %storemerge24.i78 = select i1 %or.cond5.i77, i64 %i.cj, i64 %storemerge.i76
  %i.ck = add i8 %i.cc, -97
  %or.cond8.i79 = icmp ult i8 %i.ck, 6
  %i.cl = add nsw i32 %i.cd, -87
  %i.cm = zext nneg i32 %i.cl to i64
  %storemerge25.i80 = select i1 %or.cond8.i79, i64 %i.cm, i64 %storemerge24.i78 ; 2 uses
  %.not.i81 = icmp samesign ult i64 %storemerge25.i80, %i.bx
  br i1 %.not.i81, label %bb.aa, label %mbedtls_mpi_grow.exit

bb.aa:                                            ; preds = %bb.z
  %i.cn = call i32 @mbedtls_mpi_mul_int(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef %i.bx) ; 2 uses
  %.not60 = icmp eq i32 %i.cn, 0
  br i1 %.not60, label %bb.ab, label %mbedtls_mpi_grow.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %storemerge25.i80, ptr %i.a, align 8, !tbaa !26
  store i16 1, ptr %i.by, align 8, !tbaa !21
  store i16 1, ptr %i.bz, align 2, !tbaa !20
  store ptr %i.a, ptr %3, align 8, !tbaa !23
  %i.co = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %3, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not61 = icmp eq i32 %i.co, 0
  br i1 %.not61, label %bb.y, label %mbedtls_mpi_grow.exit

.loopexit:                                        ; preds = %bb.y, %bb.s, %mbedtls_mpi_lset.exit74, %mbedtls_mpi_lset.exit
  br i1 %i.o, label %bb.ac, label %mbedtls_mpi_grow.exit

bb.ac:                                            ; preds = %.loopexit
  %i.cp = load ptr, ptr %0, align 8, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !20
  %i.cs = zext i16 %i.cr to i64
  %i.ct = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.cp, i64 noundef %i.cs) #17
  %.not65 = icmp eq i64 %i.ct, 0
  br i1 %.not65, label %mbedtls_mpi_grow.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.cu, align 8, !tbaa !21
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph98, %bb.u, %bb.o, %bb.k, %bb.i, %.loopexit, %bb.ac, %bb.ad
  %.3 = phi i32 [ -6, %.lr.ph98 ], [ -141, %bb.i ], [ -141, %bb.u ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %.loopexit ], [ -141, %bb.o ], [ -141, %bb.k ], [ %i.cn, %bb.aa ], [ -6, %bb.z ], [ %i.co, %bb.ab ] ; 2 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i83 = icmp eq ptr %i.cv, null
  br i1 %.not.i83, label %mbedtls_mpi_free.exit, label %bb.ae

bb.ae:                                            ; preds = %mbedtls_mpi_grow.exit
  %i.cw = load i16, ptr %i.d, align 2, !tbaa !20
  %i.cx = zext i16 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ae, %mbedtls_mpi_grow.exit, %bb.f, %bb.c, %bb.h, %bb.a
  %.044 = phi i32 [ 0, %bb.f ], [ -135, %bb.h ], [ -135, %bb.a ], [ 0, %bb.c ], [ %.3, %mbedtls_mpi_grow.exit ], [ %.3, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.044
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_mul_int(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %.not31 = icmp eq i16 %i.b, 0
  br i1 %.not31, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01932 = phi i64 [ %i.c, %.lr.ph ], [ %i.i, %bb.c ] ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.01932
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %.01932, -1                  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.critedge.thread, label %bb.b, !llvm.loop !38

.critedge:                                        ; preds = %bb.b
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %.critedge.thread, label %bb.i

.critedge.thread:                                 ; preds = %bb.c, %bb.a, %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !20   ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.critedge.thread
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.n = zext i16 %i.l to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  br label %bb.h

bb.d:                                             ; preds = %.critedge.thread
  %i.p = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mbedtls_mpi_lset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.r, i64 noundef 0) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i16 1, ptr %i.k, align 2, !tbaa !20
  store ptr %i.p, ptr %0, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.s = phi i64 [ %i.o, %._crit_edge.i ], [ 8, %bb.g ]
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.p, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.s, i1 false)
  %i.u = load ptr, ptr %0, align 8, !tbaa !23
  store i64 0, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.v, align 8, !tbaa !21
  br label %mbedtls_mpi_lset.exit

bb.i:                                             ; preds = %.critedge
  %i.w = add nuw nsw i64 %.01932, 1               ; 2 uses
  %i.x = icmp ugt i64 %.01932, 9999
  br i1 %i.x, label %mbedtls_mpi_lset.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !20
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %.not29 = icmp samesign ult i64 %.01932, %i.aa
  br i1 %.not29, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.w, i64 noundef 8) #18 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %mbedtls_mpi_lset.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.ad, i64 %i.ae, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.ae) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = trunc nuw nsw i64 %i.w to i16
  store i16 %i.af, ptr %i.y, align 2, !tbaa !20
  store ptr %i.ab, ptr %0, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ag = tail call i32 @mbedtls_mpi_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  %.not25 = icmp eq i32 %i.ag, 0
  br i1 %.not25, label %bb.p, label %mbedtls_mpi_lset.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %0, align 8, !tbaa !23
  %i.ai = load i16, ptr %i.y, align 2, !tbaa !20
  %i.aj = zext i16 %i.ai to i64
  %i.ak = load ptr, ptr %1, align 8, !tbaa !23
  %i.al = add i64 %2, -1
  %i.am = tail call i64 @mbedtls_mpi_core_mla(ptr noundef %i.ah, i64 noundef %i.aj, ptr noundef %i.ak, i64 noundef %.01932, i64 noundef %i.al) #17 ; 0 uses
  br label %mbedtls_mpi_lset.exit

mbedtls_mpi_lset.exit:                            ; preds = %bb.k, %bb.i, %bb.h, %bb.d, %bb.p, %bb.o
  %.020 = phi i32 [ 0, %bb.p ], [ -141, %bb.d ], [ %i.ag, %bb.o ], [ 0, %bb.h ], [ -141, %bb.k ], [ -141, %bb.i ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_add_int(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.0.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %2, i1 false)
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !26
  %i.b = ashr i64 %2, 62
  %i.c = trunc nsw i64 %i.b to i16
  %i.d = or i16 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.d, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 1, ptr %i.f, align 2, !tbaa !20
  store ptr %i.a, ptr %3, align 8, !tbaa !23
  %i.g = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef %0, ptr noundef readonly %1, ptr noundef nonnull readonly %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_write_string(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 10 uses
  %i.a = alloca [1 x i64], align 8                ; 8 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = add i32 %1, -17
  %or.cond = icmp ult i32 %i.b, -15
  br i1 %or.cond, label %mbedtls_mpi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20
  %i.f = zext i16 %i.e to i64
  %i.g = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.c, i64 noundef %i.f) #17
  %i.h = icmp samesign ugt i32 %1, 3
  %i.i = zext i1 %i.h to i64
  %spec.select = lshr i64 %i.g, %i.i
  %i.j = icmp samesign ugt i32 %1, 15
  %i.k = zext i1 %i.j to i64
  %.146 = lshr i64 %spec.select, %i.k
  %i.l = add i64 %.146, 3                         ; 2 uses
  %i.m = and i64 %i.l, 1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = icmp ult i64 %3, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.n, ptr %4, align 8, !tbaa !26
  br label %mbedtls_mpi_free.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i16 1, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 6 uses
  store i16 0, ptr %i.q, align 2, !tbaa !20
  store ptr null, ptr %6, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !21
  %i.t = icmp eq i16 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 45, ptr %2, align 1, !tbaa !28
  %i.v = add i64 %3, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.069 = phi ptr [ %i.u, %bb.e ], [ %2, %bb.d ]  ; 5 uses
  %.050 = phi i64 [ %i.v, %bb.e ], [ %3, %bb.d ]  ; 4 uses
  %i.w = icmp eq i32 %1, 16
  br i1 %i.w, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.x = load i16, ptr %i.d, align 2, !tbaa !20   ; 2 uses
  %.not5894 = icmp eq i16 %i.x, 0
  br i1 %.not5894, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %i.y = zext i16 %i.x to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %.097 = phi i64 [ %.2.7, %bb.p ], [ 0, %.preheader.preheader ]
  %.04496 = phi i64 [ %i.fl, %bb.p ], [ %i.y, %.preheader.preheader ] ; 16 uses
  %.17095 = phi ptr [ %.3.7, %bb.p ], [ %.069, %.preheader.preheader ] ; 11 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !23
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %.04496
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26 ; 10 uses
  %i.ad = lshr i64 %i.ac, 56                      ; 2 uses
  %i.ae = or i64 %i.ad, %.097
  %or.cond3.not77 = icmp ne i64 %i.ae, 0
  %.not60 = icmp eq i64 %.04496, -6
  %or.cond61 = or i1 %.not60, %or.cond3.not77
end_hunk_1
begin_hunk_2_@mbedtls_mpi_write_string:bb.a
  %.phi.trans.insert114 = getelementptr [8 x i8], ptr %.pre113, i64 %.04496
  %.phi.trans.insert115 = getelementptr i8, ptr %.phi.trans.insert114, i64 -8
  %.pre116 = load i64, ptr %.phi.trans.insert115, align 8, !tbaa !26
  %i.bf = lshr i64 %.pre116, 40                   ; 2 uses
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 255
  br label %.thread164

bb.i:                                             ; preds = %bb.h
  %i.bi = lshr i64 %i.ac, 40                      ; 2 uses
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 255                      ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 0
  %.not60.2 = icmp eq i64 %.04496, -4
  %i.bm = or i1 %i.bl, %.not60.2
  br i1 %i.bm, label %.thread164, label %bb.j

.thread164:                                       ; preds = %bb.i, %.thread156
  %i.bn = phi i32 [ %i.bh, %.thread156 ], [ %i.bk, %bb.i ]
  %i.bo = phi i64 [ %i.bf, %.thread156 ], [ %i.bi, %bb.i ]
  %.3.1161 = phi ptr [ %i.be, %.thread156 ], [ %.17095, %bb.i ] ; 3 uses
  %i.bp = lshr i32 %i.bn, 4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.3.1161, i64 1
  store i8 %i.bs, ptr %.3.1161, align 1, !tbaa !28
  %i.bu = and i64 %i.bo, 15
  %i.bv = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %.3.1161, i64 2
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !28
  %.pre117 = load ptr, ptr %0, align 8, !tbaa !23
  %.phi.trans.insert118 = getelementptr [8 x i8], ptr %.pre117, i64 %.04496
  %.phi.trans.insert119 = getelementptr i8, ptr %.phi.trans.insert118, i64 -8
  %.pre120 = load i64, ptr %.phi.trans.insert119, align 8, !tbaa !26
  %i.by = lshr i64 %.pre120, 32                   ; 2 uses
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 255
  br label %.thread172

bb.j:                                             ; preds = %bb.i
  %i.cb = lshr i64 %i.ac, 32                      ; 2 uses
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 255                      ; 2 uses
  %i.ce = icmp ne i32 %i.cd, 0
  %.not60.3 = icmp eq i64 %.04496, -3
  %i.cf = or i1 %i.ce, %.not60.3
  br i1 %i.cf, label %.thread172, label %bb.k

.thread172:                                       ; preds = %bb.j, %.thread164
  %i.cg = phi i32 [ %i.ca, %.thread164 ], [ %i.cd, %bb.j ]
  %i.ch = phi i64 [ %i.by, %.thread164 ], [ %i.cb, %bb.j ]
  %.3.2169 = phi ptr [ %i.bx, %.thread164 ], [ %.17095, %bb.j ] ; 3 uses
  %i.ci = lshr i32 %i.cg, 4
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %.3.2169, i64 1
  store i8 %i.cl, ptr %.3.2169, align 1, !tbaa !28
  %i.cn = and i64 %i.ch, 15
  %i.co = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %.3.2169, i64 2
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !28
  %.pre121 = load ptr, ptr %0, align 8, !tbaa !23
  %.phi.trans.insert122 = getelementptr [8 x i8], ptr %.pre121, i64 %.04496
  %.phi.trans.insert123 = getelementptr i8, ptr %.phi.trans.insert122, i64 -8
  %.pre124 = load i64, ptr %.phi.trans.insert123, align 8, !tbaa !26
  %i.cr = lshr i64 %.pre124, 24                   ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 255
  br label %.thread180

bb.k:                                             ; preds = %bb.j
  %i.cu = lshr i64 %i.ac, 24                      ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 255                      ; 2 uses
  %i.cx = icmp ne i32 %i.cw, 0
  %.not60.4 = icmp eq i64 %.04496, -2
  %i.cy = or i1 %i.cx, %.not60.4
  br i1 %i.cy, label %.thread180, label %bb.l

.thread180:                                       ; preds = %bb.k, %.thread172
  %i.cz = phi i32 [ %i.ct, %.thread172 ], [ %i.cw, %bb.k ]
  %i.da = phi i64 [ %i.cr, %.thread172 ], [ %i.cu, %bb.k ]
  %.3.3177 = phi ptr [ %i.cq, %.thread172 ], [ %.17095, %bb.k ] ; 3 uses
  %i.db = lshr i32 %i.cz, 4
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %.3.3177, i64 1
  store i8 %i.de, ptr %.3.3177, align 1, !tbaa !28
  %i.dg = and i64 %i.da, 15
  %i.dh = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = getelementptr inbounds nuw i8, ptr %.3.3177, i64 2
  store i8 %i.di, ptr %i.df, align 1, !tbaa !28
  %.pre125 = load ptr, ptr %0, align 8, !tbaa !23
  %.phi.trans.insert126 = getelementptr [8 x i8], ptr %.pre125, i64 %.04496
  %.phi.trans.insert127 = getelementptr i8, ptr %.phi.trans.insert126, i64 -8
  %.pre128 = load i64, ptr %.phi.trans.insert127, align 8, !tbaa !26
  %i.dk = lshr i64 %.pre128, 16                   ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 255
  br label %.thread188

bb.l:                                             ; preds = %bb.k
  %i.dn = lshr i64 %i.ac, 16                      ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = and i32 %i.do, 255                      ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 0
  %.not60.5 = icmp eq i64 %.04496, -1
  %i.dr = or i1 %i.dq, %.not60.5
  br i1 %i.dr, label %.thread188, label %bb.m

.thread188:                                       ; preds = %bb.l, %.thread180
  %i.ds = phi i32 [ %i.dm, %.thread180 ], [ %i.dp, %bb.l ]
  %i.dt = phi i64 [ %i.dk, %.thread180 ], [ %i.dn, %bb.l ]
  %.3.4185 = phi ptr [ %i.dj, %.thread180 ], [ %.17095, %bb.l ] ; 3 uses
  %i.du = lshr i32 %i.ds, 4
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %.3.4185, i64 1
  store i8 %i.dx, ptr %.3.4185, align 1, !tbaa !28
  %i.dz = and i64 %i.dt, 15
  %i.ea = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %.3.4185, i64 2
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !28
  %.pre129 = load ptr, ptr %0, align 8, !tbaa !23
  %.phi.trans.insert130 = getelementptr [8 x i8], ptr %.pre129, i64 %.04496
  %.phi.trans.insert131 = getelementptr i8, ptr %.phi.trans.insert130, i64 -8
  %.pre132 = load i64, ptr %.phi.trans.insert131, align 8, !tbaa !26
  %i.ed = lshr i64 %.pre132, 8                    ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 255
  br label %.thread195

bb.m:                                             ; preds = %bb.l
  %i.eg = lshr i64 %i.ac, 8                       ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 255                      ; 2 uses
  %.not214 = icmp eq i32 %i.ei, 0
  br i1 %.not214, label %bb.n, label %.thread195

.thread195:                                       ; preds = %bb.m, %.thread188
  %i.ej = phi i32 [ %i.ef, %.thread188 ], [ %i.ei, %bb.m ]
  %i.ek = phi i64 [ %i.ed, %.thread188 ], [ %i.eg, %bb.m ]
  %.3.5192 = phi ptr [ %i.ec, %.thread188 ], [ %.17095, %bb.m ] ; 3 uses
  %i.el = lshr i32 %i.ej, 4
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @.str, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !28
  %i.ep = getelementptr inbounds nuw i8, ptr %.3.5192, i64 1
  store i8 %i.eo, ptr %.3.5192, align 1, !tbaa !28
  %i.eq = and i64 %i.ek, 15
  %i.er = getelementptr inbounds nuw i8, ptr @.str, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !28
  %i.et = getelementptr inbounds nuw i8, ptr %.3.5192, i64 2
  store i8 %i.es, ptr %i.ep, align 1, !tbaa !28
  %.pre133 = load ptr, ptr %0, align 8, !tbaa !23
  %.phi.trans.insert134 = getelementptr [8 x i8], ptr %.pre133, i64 %.04496
  %.phi.trans.insert135 = getelementptr i8, ptr %.phi.trans.insert134, i64 -8
  %.pre136 = load i64, ptr %.phi.trans.insert135, align 8, !tbaa !26 ; 2 uses
  %i.eu = trunc i64 %.pre136 to i32
  %i.ev = and i32 %i.eu, 255
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ew = trunc i64 %i.ac to i32
  %i.ex = and i32 %i.ew, 255                      ; 2 uses
  %i.ey = icmp ne i32 %i.ex, 0
  %.not60.7 = icmp eq i64 %.04496, 1
  %i.ez = or i1 %i.ey, %.not60.7
  br i1 %i.ez, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread195, %bb.n
  %i.fa = phi i32 [ %i.ev, %.thread195 ], [ %i.ex, %bb.n ]
  %.3.6200 = phi ptr [ %i.et, %.thread195 ], [ %.17095, %bb.n ] ; 3 uses
  %i.fb = phi i64 [ %.pre136, %.thread195 ], [ %i.ac, %bb.n ]
  %i.fc = lshr i32 %i.fa, 4
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @.str, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !28
  %i.fg = getelementptr inbounds nuw i8, ptr %.3.6200, i64 1
  store i8 %i.ff, ptr %.3.6200, align 1, !tbaa !28
  %i.fh = and i64 %i.fb, 15
  %i.fi = getelementptr inbounds nuw i8, ptr @.str, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !28
  %i.fk = getelementptr inbounds nuw i8, ptr %.3.6200, i64 2
  store i8 %i.fj, ptr %i.fg, align 1, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3.7 = phi ptr [ %i.fk, %bb.o ], [ %.17095, %bb.n ] ; 2 uses
  %.2.7 = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.fl = add nsw i64 %.04496, -1                 ; 2 uses
  %.not58 = icmp eq i64 %i.fl, 0
  br i1 %.not58, label %.loopexit, label %.preheader, !llvm.loop !39

bb.q:                                             ; preds = %bb.f
  %i.fm = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %6, ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.fm, 0
  br i1 %.not, label %bb.r, label %mpi_write_hlp.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.fn = load i16, ptr %i.p, align 8, !tbaa !21  ; 2 uses
  %i.fo = icmp eq i16 %i.fn, -1
  %spec.store.select = select i1 %i.fo, i16 1, i16 %i.fn ; 2 uses
  store i16 %spec.store.select, ptr %i.p, align 8, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %.069, i64 %.050 ; 2 uses
  %i.fq = zext nneg i32 %1 to i64                 ; 9 uses
  %i.fr = icmp eq i32 %1, 2
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  %exitcond55.not.i232 = icmp eq i64 %.050, 0     ; 2 uses
  br i1 %i.fr, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  br i1 %exitcond55.not.i232, label %mpi_write_hlp.exit.thread, label %.lr.ph

.split.us.i.preheader:                            ; preds = %bb.r
  br i1 %exitcond55.not.i232, label %mpi_write_hlp.exit.thread, label %.lr.ph235

.split.us.i:                                      ; preds = %mbedtls_mpi_cmp_int.exit.us.i
  %exitcond55.not.i = icmp eq i64 %i.gd, %.050
  br i1 %exitcond55.not.i, label %mpi_write_hlp.exit.thread, label %.lr.ph235, !llvm.loop !40

.lr.ph235:                                        ; preds = %.split.us.i.preheader, %.split.us.i
  %.0.us.i234 = phi ptr [ %i.gc, %.split.us.i ], [ %i.fp, %.split.us.i.preheader ]
  %.019.us.i233 = phi i64 [ %i.gd, %.split.us.i ], [ 0, %.split.us.i.preheader ]
  %i.fu = load i16, ptr %i.q, align 2, !tbaa !20
  %i.fv = icmp eq i16 %i.fu, 0
  br i1 %i.fv, label %mbedtls_mpi_mod_int.exit.us.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph235
  %i.fw = load ptr, ptr %6, align 8, !tbaa !23
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !26
  %i.fy = trunc i64 %i.fx to i8
  %i.fz = and i8 %i.fy, 1
  %i.ga = or disjoint i8 %i.fz, 48
  br label %mbedtls_mpi_mod_int.exit.us.i

mbedtls_mpi_mod_int.exit.us.i:                    ; preds = %bb.s, %.lr.ph235
  %spec.select.sink.i.us.i = phi i8 [ 48, %.lr.ph235 ], [ %i.ga, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.fq, ptr %i.a, align 8, !tbaa !26
  store i16 1, ptr %i.fs, align 8, !tbaa !21
  store i16 1, ptr %i.ft, align 2, !tbaa !20
  store ptr %i.a, ptr %5, align 8, !tbaa !23
  %i.gb = call range(i32 -141, 1) i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull readonly %6, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not28.us.i = icmp eq i32 %i.gb, 0
  br i1 %.not28.us.i, label %bb.t, label %mpi_write_hlp.exit.thread

bb.t:                                             ; preds = %mbedtls_mpi_mod_int.exit.us.i
  %i.gc = getelementptr inbounds i8, ptr %.0.us.i234, i64 -1 ; 5 uses
  store i8 %spec.select.sink.i.us.i, ptr %i.gc, align 1, !tbaa !28
  %i.gd = add i64 %.019.us.i233, 1                ; 5 uses
  %i.ge = load i16, ptr %i.q, align 2, !tbaa !20  ; 2 uses
  %.not44.i.i.us.i = icmp eq i16 %i.ge, 0
  br i1 %.not44.i.i.us.i, label %mpi_write_hlp.exit, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.t
  %i.gf = zext i16 %i.ge to i64
  %i.gg = load ptr, ptr %6, align 8, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.i.us.i
  %.03545.i.i.us.i = phi i64 [ %i.gf, %.lr.ph.i.i.us.i ], [ %i.gk, %bb.v ] ; 2 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %.03545.i.i.us.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !26
  %.not39.i.i.us.i = icmp eq i64 %i.gj, 0
  br i1 %.not39.i.i.us.i, label %bb.v, label %mbedtls_mpi_cmp_int.exit.us.i

bb.v:                                             ; preds = %bb.u
  %i.gk = add nsw i64 %.03545.i.i.us.i, -1        ; 2 uses
  %.not.i.i.us.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i.us.i, label %mpi_write_hlp.exit, label %bb.u, !llvm.loop !1

mbedtls_mpi_cmp_int.exit.us.i:                    ; preds = %bb.u
  %i.gl = load i16, ptr %i.p, align 8, !tbaa !21
  %.not29.us.i = icmp eq i16 %i.gl, 0
  br i1 %.not29.us.i, label %mpi_write_hlp.exit, label %.split.us.i, !llvm.loop !40

.split.i:                                         ; preds = %mbedtls_mpi_cmp_int.exit.i
  %exitcond.not.i = icmp eq i64 %i.id, %.050
  br i1 %exitcond.not.i, label %mpi_write_hlp.exit.thread, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %.split.i.preheader, %.split.i
  %.0.i230 = phi ptr [ %i.ia, %.split.i ], [ %i.fp, %.split.i.preheader ]
  %.019.i229 = phi i64 [ %i.id, %.split.i ], [ 0, %.split.i.preheader ]
  %i.gm = phi i16 [ %i.il, %.split.i ], [ %spec.store.select, %.split.i.preheader ]
  %i.gn = load i16, ptr %i.q, align 2, !tbaa !20  ; 4 uses
  %i.go = icmp eq i16 %i.gn, 0
  br i1 %i.go, label %mbedtls_mpi_mod_int.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.gp = zext i16 %i.gn to i64                   ; 4 uses
  %i.gq = load ptr, ptr %6, align 8, !tbaa !23    ; 3 uses
  %xtraiter = and i64 %i.gp, 1
  %i.gr = icmp eq i16 %i.gn, 1
  br i1 %i.gr, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.w
  %unroll_iter = and i64 %i.gp, 65534
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.new
  %.042.i.i = phi i64 [ 0, %.new ], [ %i.hj, %bb.x ]
  %.03541.i.i = phi i64 [ %i.gp, %.new ], [ %i.hk, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.x ]
  %i.gs = getelementptr [8 x i8], ptr %i.gq, i64 %.03541.i.i
  %i.gt = getelementptr i8, ptr %i.gs, i64 -8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !26
  %.fr40.i.i = freeze i64 %i.gu                   ; 2 uses
  %i.gv = call i64 @llvm.fshl.i64(i64 %.042.i.i, i64 %.fr40.i.i, i64 32)
  %i.gw = urem i64 %i.gv, %i.fq
  %i.gx = and i64 %.fr40.i.i, 4294967295
  %i.gy = shl nuw nsw i64 %i.gw, 32
  %i.gz = or disjoint i64 %i.gy, %i.gx
  %i.ha = urem i64 %i.gz, %i.fq
  %i.hb = getelementptr [8 x i8], ptr %i.gq, i64 %.03541.i.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 -16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !26
  %.fr40.i.i.1 = freeze i64 %i.hd                 ; 2 uses
  %i.he = call i64 @llvm.fshl.i64(i64 %i.ha, i64 %.fr40.i.i.1, i64 32)
  %i.hf = urem i64 %i.he, %i.fq
  %i.hg = and i64 %.fr40.i.i.1, 4294967295
  %i.hh = shl nuw nsw i64 %i.hf, 32
  %i.hi = or disjoint i64 %i.hh, %i.hg
  %i.hj = urem i64 %i.hi, %i.fq                   ; 3 uses
  %i.hk = add nsw i64 %.03541.i.i, -2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.x, !llvm.loop !2

.unr-lcssa:                                       ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.y, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.w
  %.042.i.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.hj, %.unr-lcssa ]
  %.03541.i.i.epil.init = phi i64 [ %i.gp, %bb.w ], [ %i.hk, %.unr-lcssa ]
  %lcmp.mod252 = trunc i16 %i.gn to i1
  call void @llvm.assume(i1 %lcmp.mod252)
  %i.hl = getelementptr [8 x i8], ptr %i.gq, i64 %.03541.i.i.epil.init
  %i.hm = getelementptr i8, ptr %i.hl, i64 -8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !26
  %.fr40.i.i.epil = freeze i64 %i.hn              ; 2 uses
  %i.ho = call i64 @llvm.fshl.i64(i64 %.042.i.i.epil.init, i64 %.fr40.i.i.epil, i64 32)
  %i.hp = urem i64 %i.ho, %i.fq
  %i.hq = and i64 %.fr40.i.i.epil, 4294967295
  %i.hr = shl nuw nsw i64 %i.hp, 32
  %i.hs = or disjoint i64 %i.hr, %i.hq
  %i.ht = urem i64 %i.hs, %i.fq
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa246 = phi i64 [ %i.hj, %.unr-lcssa ], [ %i.ht, %.epil.preheader ] ; 3 uses
  %i.hu = icmp slt i16 %i.gm, 0
  %i.hv = icmp ne i64 %.lcssa246, 0
  %or.cond.i.i = select i1 %i.hu, i1 %i.hv, i1 false
  %i.hw = sub nsw i64 %i.fq, %.lcssa246
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.hw, i64 %.lcssa246
  br label %mbedtls_mpi_mod_int.exit.i

mbedtls_mpi_mod_int.exit.i:                       ; preds = %bb.y, %.lr.ph
  %spec.select.sink.i.i = phi i64 [ %spec.select.i.i, %bb.y ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.fq, ptr %i.a, align 8, !tbaa !26
  store i16 1, ptr %i.fs, align 8, !tbaa !21
  store i16 1, ptr %i.ft, align 2, !tbaa !20
  store ptr %i.a, ptr %5, align 8, !tbaa !23
  %i.hx = call range(i32 -141, 1) i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull readonly %6, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not28.i = icmp eq i32 %i.hx, 0
  br i1 %.not28.i, label %bb.z, label %mpi_write_hlp.exit.thread

bb.z:                                             ; preds = %mbedtls_mpi_mod_int.exit.i
  %i.hy = icmp ult i64 %spec.select.sink.i.i, 10
  %i.hz = trunc nsw i64 %spec.select.sink.i.i to i8 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.0.i230, i64 -1 ; 5 uses
  %i.ib = add nsw i8 %i.hz, 55
  %i.ic = or disjoint i8 %i.hz, 48
  %.sink.i = select i1 %i.hy, i8 %i.ic, i8 %i.ib
  store i8 %.sink.i, ptr %i.ia, align 1, !tbaa !28
  %i.id = add i64 %.019.i229, 1                   ; 5 uses
  %i.ie = load i16, ptr %i.q, align 2, !tbaa !20  ; 2 uses
  %.not44.i.i.i = icmp eq i16 %i.ie, 0
  br i1 %.not44.i.i.i, label %mpi_write_hlp.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.if = zext i16 %i.ie to i64
  %i.ig = load ptr, ptr %6, align 8, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i
  %.03545.i.i.i = phi i64 [ %i.if, %.lr.ph.i.i.i ], [ %i.ik, %bb.ab ] ; 2 uses
  %i.ih = getelementptr [8 x i8], ptr %i.ig, i64 %.03545.i.i.i
  %i.ii = getelementptr i8, ptr %i.ih, i64 -8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !26
  %.not39.i.i.i = icmp eq i64 %i.ij, 0
  br i1 %.not39.i.i.i, label %bb.ab, label %mbedtls_mpi_cmp_int.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ik = add nsw i64 %.03545.i.i.i, -1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i.i, label %mpi_write_hlp.exit, label %bb.aa, !llvm.loop !1

mbedtls_mpi_cmp_int.exit.i:                       ; preds = %bb.aa
  %i.il = load i16, ptr %i.p, align 8, !tbaa !21  ; 2 uses
  %.not29.i = icmp eq i16 %i.il, 0
  br i1 %.not29.i, label %mpi_write_hlp.exit, label %.split.i, !llvm.loop !40

mpi_write_hlp.exit:                               ; preds = %bb.z, %mbedtls_mpi_cmp_int.exit.i, %bb.ab, %bb.t, %mbedtls_mpi_cmp_int.exit.us.i, %bb.v
  %.138.i = phi ptr [ %i.gc, %bb.v ], [ %i.ia, %bb.ab ], [ %i.gc, %bb.t ], [ %i.gc, %mbedtls_mpi_cmp_int.exit.us.i ], [ %i.ia, %mbedtls_mpi_cmp_int.exit.i ], [ %i.ia, %bb.z ]
  %i.im = phi i64 [ %i.gd, %bb.v ], [ %i.id, %bb.ab ], [ %i.gd, %bb.t ], [ %i.gd, %mbedtls_mpi_cmp_int.exit.us.i ], [ %i.id, %mbedtls_mpi_cmp_int.exit.i ], [ %i.id, %bb.z ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.069, ptr noundef nonnull align 1 dereferenceable(1) %.138.i, i64 %i.im, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %.069, i64 %i.im
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.g, %mpi_write_hlp.exit
  %.4 = phi ptr [ %i.in, %mpi_write_hlp.exit ], [ %.069, %bb.g ], [ %.3.7, %bb.p ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 0, ptr %.4, align 1, !tbaa !28
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %2 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  store i64 %i.ir, ptr %4, align 8, !tbaa !26
  br label %mpi_write_hlp.exit.thread

mpi_write_hlp.exit.thread:                        ; preds = %mbedtls_mpi_mod_int.exit.i, %.split.i, %.split.us.i, %mbedtls_mpi_mod_int.exit.us.i, %.split.i.preheader, %.split.us.i.preheader, %bb.q, %.loopexit
  %.148 = phi i32 [ 0, %.loopexit ], [ %i.fm, %bb.q ], [ -138, %.split.i.preheader ], [ -138, %.split.us.i.preheader ], [ %i.gb, %mbedtls_mpi_mod_int.exit.us.i ], [ -138, %.split.us.i ], [ %i.hx, %mbedtls_mpi_mod_int.exit.i ], [ -138, %.split.i ] ; 2 uses
  %i.is = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i = icmp eq ptr %i.is, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.ac

bb.ac:                                            ; preds = %mpi_write_hlp.exit.thread
  %i.it = load i16, ptr %i.q, align 2, !tbaa !20
  %i.iu = zext i16 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.is, i64 noundef %i.iv) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ac, %mpi_write_hlp.exit.thread, %bb.a, %bb.c
  %.049 = phi i32 [ -135, %bb.a ], [ -138, %bb.c ], [ %.148, %mpi_write_hlp.exit.thread ], [ %.148, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_read_file(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2484 x i8], align 16             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = add i32 %1, -17
  %or.cond = icmp ult i32 %i.b, -15
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2484) %i.a, i8 0, i64 2484, i1 false)
  %i.c = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2483, ptr noundef %2)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19 ; 5 uses
  switch i64 %i.e, label %bb.d [
    i64 2482, label %bb.h
    i64 0, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28    ; 2 uses
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.e, label %.thread28

bb.e:                                             ; preds = %bb.d
  %i.j = add i64 %i.e, -1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !28
  %.not24 = icmp eq i64 %i.j, 0
  br i1 %.not24, label %.thread, label %..thread28_crit_edge

..thread28_crit_edge:                             ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %i.k, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !28
  br label %.thread28

.thread28:                                        ; preds = %..thread28_crit_edge, %bb.d
  %i.l = phi i8 [ %.pre, %..thread28_crit_edge ], [ %i.h, %bb.d ]
  %.02031 = phi i64 [ %i.j, %..thread28_crit_edge ], [ %i.e, %bb.d ] ; 2 uses
  %i.m = icmp eq i8 %i.l, 13
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %.thread28
  %i.n = add i64 %.02031, -1                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %.thread28, %bb.e
  %.1 = phi i64 [ %i.n, %bb.f ], [ %.02031, %.thread28 ], [ 0, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1 ; 2 uses
  %i.q = zext nneg i32 %1 to i64
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %._crit_edge35, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.r = icmp ugt ptr %i.s, %i.a
  br i1 %i.r, label %.lr.ph, label %._crit_edge35, !llvm.loop !41

.lr.ph:                                           ; preds = %.thread, %bb.g
  %.034 = phi ptr [ %i.s, %bb.g ], [ %i.p, %.thread ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.034, i64 -1 ; 4 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 4 uses
  %i.u = sext i8 %i.t to i32                      ; 3 uses
  %i.v = add i8 %i.t, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  %i.w = add nsw i32 %i.u, -48
  %i.x = zext nneg i32 %i.w to i64
  %storemerge.i = select i1 %or.cond.i, i64 %i.x, i64 255
  %i.y = add i8 %i.t, -65
  %or.cond5.i = icmp ult i8 %i.y, 6
  %i.z = add nsw i32 %i.u, -55
  %i.aa = zext nneg i32 %i.z to i64
  %storemerge24.i = select i1 %or.cond5.i, i64 %i.aa, i64 %storemerge.i
  %i.ab = add i8 %i.t, -97
  %or.cond8.i = icmp ult i8 %i.ab, 6
  %i.ac = add nsw i32 %i.u, -87
  %i.ad = zext nneg i32 %i.ac to i64
  %storemerge25.i = select i1 %or.cond8.i, i64 %i.ad, i64 %storemerge24.i
  %.not.i = icmp samesign ult i64 %storemerge25.i, %i.q
  br i1 %.not.i, label %bb.g, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge35, !llvm.loop !41

._crit_edge35:                                    ; preds = %bb.g, %._crit_edge, %.thread
  %.0.lcssa = phi ptr [ %.034, %._crit_edge ], [ %i.p, %.thread ], [ %i.s, %bb.g ]
  %i.ae = call i32 @mbedtls_mpi_read_string(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %.0.lcssa)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge35
  %.021 = phi i32 [ %i.ae, %._crit_edge35 ], [ -135, %bb.a ], [ -2, %bb.b ], [ -138, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.021
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_write_file(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [2484 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = add i32 %2, -17
  %or.cond = icmp ult i32 %i.c, -15
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2484) %i.b, i8 0, i64 2484, i1 false)
  %i.d = call i32 @mbedtls_mpi_write_string(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i64 noundef 2482, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %spec.store.select = select i1 %i.e, ptr @.str.1, ptr %0 ; 3 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #19 ; 2 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 2 uses
  store i8 13, ptr %i.h, align 1, !tbaa !28
  %i.i = add nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 1
  store i8 10, ptr %i.j, align 1, !tbaa !28
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i64 @fwrite(ptr noundef nonnull %spec.store.select, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %3)
  %.not22 = icmp eq i64 %i.k, %i.f
  br i1 %.not22, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.i, ptr noundef nonnull %3)
  %.not23 = icmp eq i64 %i.l, %i.i
  br i1 %.not23, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.g
  %.0 = phi i32 [ -135, %bb.a ], [ %i.d, %bb.g ], [ -2, %bb.e ], [ -2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_read_binary_le(ptr nofree noundef captures(none) initializes((8, 10)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 3
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !23  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre11, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !20
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.pre11, i64 noundef %i.j) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.l, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !20
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = icmp eq i64 %i.e, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.s, align 8, !tbaa !21
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %.not.i11.i = icmp eq ptr %i.q, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = shl nuw nsw i64 %i.o, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.q, i64 noundef %i.t) #17
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !21
  store i16 0, ptr %i.m, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.v = icmp samesign ugt i64 %i.e, 10000
  br i1 %i.v, label %mbedtls_mpi_resize_clear.exit, label %bb.i

bb.i:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.w = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.e, i64 noundef 8) #18 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %mbedtls_mpi_resize_clear.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = trunc nuw nsw i64 %i.e to i16
  store i16 %i.y, ptr %i.m, align 2, !tbaa !20
  store ptr %i.w, ptr %0, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.j
  %i.z = phi ptr [ null, %bb.d ], [ %.pre, %bb.f ], [ %i.w, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !20
  %i.ac = zext i16 %i.ab to i64
  %i.ad = tail call i32 @mbedtls_mpi_core_read_le(ptr noundef %i.z, i64 noundef %i.ac, ptr noundef %1, i64 noundef %2) #17
  br label %mbedtls_mpi_resize_clear.exit

mbedtls_mpi_resize_clear.exit:                    ; preds = %bb.i, %mbedtls_mpi_free.exit12.i, %bb.k
  %.0 = phi i32 [ %i.ad, %bb.k ], [ -141, %mbedtls_mpi_free.exit12.i ], [ -141, %bb.i ]
  ret i32 %.0
}

declare i32 @mbedtls_mpi_core_read_le(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_read_binary(ptr nofree noundef captures(none) initializes((8, 10)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 3
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !23  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre11, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !20
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.pre11, i64 noundef %i.j) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.l, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
end_hunk_2
begin_hunk_3_@mbedtls_mpi_cmp_mpi:bb.a
  %i.z = sub nsw i32 0, %i.y
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !21 ; 4 uses
  %i.ac = icmp sgt i16 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = icmp slt i16 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.preheader.preheader

bb.l:                                             ; preds = %bb.j
  %i.ag = icmp sgt i16 %i.ae, 0
  %i.ah = icmp ne i16 %i.ab, 0
  %or.cond43 = and i1 %i.ah, %i.ag
  br i1 %or.cond43, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k, %bb.l
  %.not4262 = icmp eq i64 %.035.lcssa, 0
  br i1 %.not4262, label %.loopexit, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %.preheader.preheader
  %i.ai = load ptr, ptr %0, align 8, !tbaa !23
  %i.aj = load ptr, ptr %1, align 8, !tbaa !23
  br label %.lr.ph64

.preheader:                                       ; preds = %bb.n
  %.not42 = icmp eq i64 %i.ak, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph64, !llvm.loop !7

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.preheader
  %.163 = phi i64 [ %i.ak, %.preheader ], [ %.035.lcssa, %.lr.ph64.preheader ]
  %i.ak = add nsw i64 %.163, -1                   ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph64
  %i.aq = sext i16 %i.ab to i32
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph64
  %i.ar = icmp ult i64 %i.am, %i.ao
  br i1 %i.ar, label %bb.o, label %.preheader, !llvm.loop !7

bb.o:                                             ; preds = %bb.n
  %i.as = sext i16 %i.ab to i32
  %i.at = sub nsw i32 0, %i.as
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %bb.l, %bb.k, %._crit_edge52, %bb.o, %bb.m, %bb.i, %bb.g
  %.036 = phi i32 [ -1, %bb.l ], [ %i.u, %bb.g ], [ %i.z, %bb.i ], [ 0, %._crit_edge52 ], [ 1, %bb.k ], [ %i.aq, %bb.m ], [ %i.at, %bb.o ], [ 0, %.preheader.preheader ], [ 0, %.preheader ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -32768, 32769) i32 @mbedtls_mpi_cmp_int(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.0.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %1, i1 false) ; 2 uses
  %i.a = ashr i64 %1, 62                          ; 3 uses
  %i.b = trunc nsw i64 %i.a to i32
  %i.c = or i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20   ; 2 uses
  %.not44.i = icmp eq i16 %i.e, 0
  br i1 %.not44.i, label %.lr.ph51.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = zext i16 %i.e to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.03545.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %.03545.i
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %.not39.i = icmp eq i64 %i.j, 0
  br i1 %.not39.i, label %bb.c, label %.lr.ph51.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %.03545.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.lr.ph51.i, label %bb.b, !llvm.loop !1

.lr.ph51.i:                                       ; preds = %bb.c, %bb.b, %bb.a
  %.035.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.03545.i, %bb.b ] ; 4 uses
  %.not41.i = icmp ne i64 %1, 0
  %spec.select = zext i1 %.not41.i to i64         ; 3 uses
  %i.l = or i64 %.035.lcssa.i, %spec.select
  %or.cond.i = icmp eq i64 %i.l, 0
  br i1 %or.cond.i, label %mbedtls_mpi_cmp_mpi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph51.i
  %i.m = icmp ugt i64 %.035.lcssa.i, %spec.select
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i16, ptr %i.n, align 8, !tbaa !21
  %i.p = sext i16 %i.o to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i64 %.035.lcssa.i, %spec.select
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sub nsw i32 0, %i.c
  br label %mbedtls_mpi_cmp_mpi.exit

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !21   ; 4 uses
  %i.u = icmp sgt i16 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = icmp slt i64 %i.a, 0
  br i1 %i.v, label %mbedtls_mpi_cmp_mpi.exit, label %.preheader.preheader.i

bb.j:                                             ; preds = %bb.h
  %i.w = icmp sgt i64 %i.a, -1
  %i.x = icmp ne i16 %i.t, 0
  %or.cond43.i = and i1 %i.w, %i.x
  br i1 %or.cond43.i, label %mbedtls_mpi_cmp_mpi.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j, %bb.i
  %i.y = icmp eq i64 %.035.lcssa.i, 0
  br i1 %i.y, label %mbedtls_mpi_cmp_mpi.exit, label %bb.k

bb.k:                                             ; preds = %.preheader.preheader.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !23
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, %.0.i
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = sext i16 %i.t to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp ult i64 %i.aa, %.0.i
  br i1 %i.ad, label %bb.n, label %mbedtls_mpi_cmp_mpi.exit, !llvm.loop !7

bb.n:                                             ; preds = %bb.m
  %i.ae = sext i16 %i.t to i32
  %i.af = sub nsw i32 0, %i.ae
  br label %mbedtls_mpi_cmp_mpi.exit

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %.preheader.preheader.i, %bb.m, %.lr.ph51.i, %bb.e, %bb.g, %bb.i, %bb.j, %bb.l, %bb.n
  %.036.i = phi i32 [ -1, %bb.j ], [ %i.p, %bb.e ], [ %i.r, %bb.g ], [ 0, %.lr.ph51.i ], [ 1, %bb.i ], [ %i.ac, %bb.l ], [ %i.af, %bb.n ], [ 0, %bb.m ], [ 0, %.preheader.preheader.i ]
  ret i32 %.036.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_add_abs(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %2                       ; 2 uses
  %spec.select62 = select i1 %i.a, ptr %1, ptr %2 ; 3 uses
  %.not70 = icmp eq ptr %1, %0
  %.not = or i1 %.not70, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not55 = icmp eq i32 %i.b, 0
  br i1 %.not55, label %bb.c, label %mbedtls_mpi_grow.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select62, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20   ; 2 uses
  %cond73 = icmp eq i16 %i.e, 0
  br i1 %cond73, label %mbedtls_mpi_grow.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = zext i16 %i.e to i64
  %i.g = load ptr, ptr %spec.select62, align 8, !tbaa !23 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.04174 = phi i64 [ %i.f, %.lr.ph ], [ %i.k, %bb.e ] ; 12 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %.04174
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %.not57 = icmp eq i64 %i.j, 0
  br i1 %.not57, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i64 %.04174, -1                  ; 2 uses
  %cond = icmp eq i64 %i.k, 0
  br i1 %cond, label %mbedtls_mpi_grow.exit, label %bb.d, !llvm.loop !42

bb.f:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %.04174, 10000
  br i1 %i.l, label %mbedtls_mpi_grow.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !20
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = icmp samesign ugt i64 %.04174, %i.o
  br i1 %i.p, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noalias ptr @calloc(i64 noundef %.04174, i64 noundef 8) #18 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %mbedtls_mpi_grow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.s, i64 %i.t, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.s, i64 noundef %i.t) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = trunc nuw nsw i64 %.04174 to i16
  store i16 %i.u, ptr %i.m, align 2, !tbaa !20
  store ptr %i.q, ptr %0, align 8, !tbaa !23
  %.pre86 = load ptr, ptr %spec.select62, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.v = phi ptr [ %i.g, %._crit_edge ], [ %.pre86, %bb.k ]
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.k ] ; 3 uses
  %i.x = tail call i64 @mbedtls_mpi_core_add(ptr noundef %i.w, ptr noundef %i.w, ptr noundef %i.v, i64 noundef %.04174) #17 ; 3 uses
  %.not5975 = icmp eq i64 %i.x, 0
  br i1 %.not5975, label %mbedtls_mpi_grow.exit, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.l
  %.pre87 = load i16, ptr %i.m, align 2, !tbaa !20 ; 3 uses
  %i.y = zext i16 %.pre87 to i64                  ; 3 uses
  %.not60.peel = icmp samesign ult i64 %.04174, %i.y
  %.pre91.peel = add nuw nsw i64 %.04174, 1       ; 3 uses
  br i1 %.not60.peel, label %._crit_edge90.peel, label %bb.m

bb.m:                                             ; preds = %.lr.ph79
  %i.z = icmp eq i64 %.04174, 10000
  br i1 %i.z, label %mbedtls_mpi_grow.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not112 = icmp ult i64 %.04174, %i.y
  br i1 %.not112, label %._crit_edge88.peel, label %bb.o

._crit_edge88.peel:                               ; preds = %bb.n
  %.pre89.peel = load ptr, ptr %0, align 8, !tbaa !23
  br label %._crit_edge90.peel

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call noalias ptr @calloc(i64 noundef %.pre91.peel, i64 noundef 8) #18 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %mbedtls_mpi_grow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %.not.i64.peel = icmp eq ptr %i.ac, null
  br i1 %.not.i64.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = shl nuw nsw i64 %i.y, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ac, i64 %i.ad, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ac, i64 noundef %i.ad) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = trunc nuw nsw i64 %.pre91.peel to i16   ; 2 uses
  store i16 %i.ae, ptr %i.m, align 2, !tbaa !20
  store ptr %i.aa, ptr %0, align 8, !tbaa !23
  br label %._crit_edge90.peel

._crit_edge90.peel:                               ; preds = %._crit_edge88.peel, %bb.r, %.lr.ph79
  %i.af = phi i16 [ %.pre87, %.lr.ph79 ], [ %i.ae, %bb.r ], [ %.pre87, %._crit_edge88.peel ]
  %.pn = phi ptr [ %i.w, %.lr.ph79 ], [ %i.aa, %bb.r ], [ %.pre89.peel, %._crit_edge88.peel ]
  %.1.peel = getelementptr inbounds nuw [8 x i8], ptr %.pn, i64 %.04174 ; 3 uses
  %i.ag = load i64, ptr %.1.peel, align 8, !tbaa !26
  %i.ah = add i64 %i.ag, %i.x                     ; 2 uses
  store i64 %i.ah, ptr %.1.peel, align 8, !tbaa !26
  %i.ai = icmp ult i64 %i.ah, %i.x
  br i1 %i.ai, label %.lr.ph79.peel.newph, label %mbedtls_mpi_grow.exit

.lr.ph79.peel.newph:                              ; preds = %._crit_edge90.peel, %._crit_edge90
  %i.aj = phi i16 [ %i.av, %._crit_edge90 ], [ %i.af, %._crit_edge90.peel ] ; 3 uses
  %.1.peel.pn = phi ptr [ %.1, %._crit_edge90 ], [ %.1.peel, %._crit_edge90.peel ]
  %.14276 = phi i64 [ %.pre91, %._crit_edge90 ], [ %.pre91.peel, %._crit_edge90.peel ] ; 3 uses
  %.04077 = getelementptr inbounds nuw i8, ptr %.1.peel.pn, i64 8
  %i.ak = zext i16 %i.aj to i64                   ; 3 uses
  %.not60 = icmp samesign ult i64 %.14276, %i.ak
  %.pre91 = add i64 %.14276, 1                    ; 5 uses
  br i1 %.not60, label %._crit_edge90, label %bb.s

bb.s:                                             ; preds = %.lr.ph79.peel.newph
  %i.al = icmp ugt i64 %.pre91, 10000
  br i1 %i.al, label %mbedtls_mpi_grow.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = icmp samesign ugt i64 %.pre91, %i.ak
  br i1 %i.am, label %bb.u, label %._crit_edge88

._crit_edge88:                                    ; preds = %bb.t
  %.pre89 = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.an = tail call noalias ptr @calloc(i64 noundef %.pre91, i64 noundef 8) #18 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %mbedtls_mpi_grow.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %.not.i64 = icmp eq ptr %i.ap, null
  br i1 %.not.i64, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = shl nuw nsw i64 %i.ak, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.ap, i64 %i.aq, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ap, i64 noundef %i.aq) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ar = trunc nuw nsw i64 %.pre91 to i16        ; 2 uses
  store i16 %i.ar, ptr %i.m, align 2, !tbaa !20
  store ptr %i.an, ptr %0, align 8, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge88, %bb.x
  %i.as = phi ptr [ %i.an, %bb.x ], [ %.pre89, %._crit_edge88 ]
  %i.at = phi i16 [ %i.ar, %bb.x ], [ %i.aj, %._crit_edge88 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.14276
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %.lr.ph79.peel.newph, %bb.y
  %i.av = phi i16 [ %i.at, %bb.y ], [ %i.aj, %.lr.ph79.peel.newph ]
  %.1 = phi ptr [ %i.au, %bb.y ], [ %.04077, %.lr.ph79.peel.newph ] ; 3 uses
  %i.aw = load i64, ptr %.1, align 8, !tbaa !26
  %i.ax = add i64 %i.aw, 1                        ; 2 uses
  store i64 %i.ax, ptr %.1, align 8, !tbaa !26
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph79.peel.newph, label %mbedtls_mpi_grow.exit, !llvm.loop !43

mbedtls_mpi_grow.exit:                            ; preds = %bb.e, %bb.m, %bb.o, %._crit_edge90.peel, %._crit_edge90, %bb.s, %bb.u, %bb.c, %bb.l, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ -141, %bb.h ], [ 0, %bb.l ], [ %i.b, %bb.b ], [ -141, %bb.f ], [ 0, %._crit_edge90 ], [ 0, %bb.c ], [ -141, %bb.m ], [ -141, %bb.o ], [ 0, %._crit_edge90.peel ], [ -141, %bb.u ], [ -141, %bb.s ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i64 @mbedtls_mpi_core_add(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_sub_abs(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %.not55 = icmp eq i16 %i.b, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %2, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.056 = phi i64 [ %i.c, %.lr.ph ], [ %i.h, %bb.c ] ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.056
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %.not48 = icmp eq i64 %i.g, 0
  br i1 %.not48, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.056, -1                    ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !45

._crit_edge.thread:                               ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !20   ; 2 uses
  %i.k = zext i16 %i.j to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.056, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !20   ; 2 uses
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %i.o = icmp ugt i64 %.0.lcssa, %i.n
  br i1 %i.o, label %mbedtls_mpi_grow.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.p = phi i64 [ %i.k, %._crit_edge.thread ], [ %i.n, %._crit_edge ] ; 2 uses
  %i.q = phi i16 [ %i.j, %._crit_edge.thread ], [ %i.m, %._crit_edge ] ; 5 uses
  %i.r = phi ptr [ %i.i, %._crit_edge.thread ], [ %i.l, %._crit_edge ] ; 2 uses
  %.0.lcssa79 = phi i64 [ 0, %._crit_edge.thread ], [ %.0.lcssa, %._crit_edge ] ; 7 uses
  %i.s = icmp ugt i16 %i.q, 10000
  br i1 %i.s, label %mbedtls_mpi_grow.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20   ; 3 uses
  %i.v = zext nneg i16 %i.u to i64
  %i.w = icmp ugt i16 %i.q, %i.u
  br i1 %i.w, label %bb.f, label %._crit_edge65

._crit_edge65:                                    ; preds = %bb.e
  %.pre62.pre63.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.p, i64 noundef 8) #18 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %mbedtls_mpi_grow.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = shl nuw nsw i64 %i.v, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.z, i64 %i.aa, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.z, i64 noundef %i.aa) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i16 %i.q, ptr %i.t, align 2, !tbaa !20
  store ptr %i.x, ptr %0, align 8, !tbaa !23
  %.pre = load i16, ptr %i.r, align 2, !tbaa !20  ; 2 uses
  %.pre67 = zext i16 %.pre to i64
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge65, %bb.i
  %.pre-phi = phi i64 [ %i.p, %._crit_edge65 ], [ %.pre67, %bb.i ] ; 2 uses
  %.pre62.pre63 = phi ptr [ %.pre62.pre63.pre, %._crit_edge65 ], [ %i.x, %bb.i ] ; 2 uses
  %i.ab = phi i16 [ %i.u, %._crit_edge65 ], [ %i.q, %bb.i ]
  %i.ac = phi i16 [ %i.q, %._crit_edge65 ], [ %.pre, %bb.i ]
  %i.ad = icmp samesign uge i64 %.0.lcssa79, %.pre-phi
  %.not50 = icmp eq ptr %1, %0
  %or.cond = or i1 %.not50, %i.ad
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre62.pre63, i64 %.0.lcssa79
  %i.af = load ptr, ptr %1, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0.lcssa79
  %i.ah = sub nuw nsw i64 %.pre-phi, %.0.lcssa79
  %i.ai = shl nuw nsw i64 %i.ah, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  %.pre59 = load i16, ptr %i.t, align 2, !tbaa !20
  %.pre60 = load i16, ptr %i.r, align 2, !tbaa !20
  %.pre62.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre62 = phi ptr [ %.pre62.pre, %bb.k ], [ %.pre62.pre63, %bb.j ] ; 2 uses
  %i.aj = phi i16 [ %.pre60, %bb.k ], [ %i.ac, %bb.j ] ; 3 uses
  %i.ak = phi i16 [ %.pre59, %bb.k ], [ %i.ab, %bb.j ] ; 2 uses
  %i.al = icmp ugt i16 %i.ak, %i.aj
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = zext i16 %i.aj to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.pre62, i64 %i.am
  %narrow = sub nuw i16 %i.ak, %i.aj
  %i.ao = zext i16 %narrow to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.ap, i1 false)
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi ptr [ %.pre61, %bb.m ], [ %.pre62, %bb.l ]
  %i.ar = load ptr, ptr %1, align 8, !tbaa !23
  %i.as = load ptr, ptr %2, align 8, !tbaa !23
  %i.at = tail call i64 @mbedtls_mpi_core_sub(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.as, i64 noundef %.0.lcssa79) #17 ; 2 uses
  %.not51 = icmp eq i64 %i.at, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %0, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.0.lcssa79 ; 2 uses
  %i.aw = load i16, ptr %i.t, align 2, !tbaa !20
  %i.ax = zext i16 %i.aw to i64
  %i.ay = sub nsw i64 %i.ax, %.0.lcssa79
  %i.az = tail call i64 @mbedtls_mpi_core_sub_int(ptr noundef %i.av, ptr noundef %i.av, i64 noundef %i.at, i64 noundef %i.ay) #17
  %.not52 = icmp eq i64 %i.az, 0
  br i1 %.not52, label %bb.p, label %mbedtls_mpi_grow.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ba, align 8, !tbaa !21
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.f, %bb.d, %bb.o, %._crit_edge, %bb.p
  %.039 = phi i32 [ 0, %bb.p ], [ -10, %bb.o ], [ -10, %._crit_edge ], [ -141, %bb.f ], [ -141, %bb.d ]
  ret i32 %.039
}

declare i64 @mbedtls_mpi_core_sub(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @mbedtls_mpi_core_sub_int(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_add_mpi(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @add_sub_mpi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef range(i32 -1, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !21
  %i.f = sext i16 %i.e to i32
  %i.g = mul nsw i32 %3, %i.c
  %i.h = mul nsw i32 %i.g, %i.f
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !20   ; 2 uses
  %.not32.i = icmp eq i16 %i.k, 0
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = zext i16 %i.k to i64
  %i.m = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.02433.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.q, %bb.d ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.02433.i
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %.not28.i = icmp eq i64 %i.p, 0
  br i1 %.not28.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i64 %.02433.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !3

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %.024.lcssa.i = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %.02433.i, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !20   ; 2 uses
  %.not2936.i = icmp eq i16 %i.s, 0
  br i1 %.not2936.i, label %._crit_edge40.i, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %._crit_edge.i
  %i.t = zext i16 %i.s to i64
  %i.u = load ptr, ptr %2, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph39.i
  %.037.i = phi i64 [ %i.t, %.lr.ph39.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.037.i
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %.not30.i = icmp eq i64 %i.x, 0
  br i1 %.not30.i, label %bb.f, label %._crit_edge40.i

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i64 %.037.i, -1                  ; 2 uses
  %.not29.i = icmp eq i64 %i.y, 0
  br i1 %.not29.i, label %._crit_edge40.i, label %bb.e, !llvm.loop !4

._crit_edge40.i:                                  ; preds = %bb.f, %bb.e, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.f ], [ %.037.i, %bb.e ] ; 2 uses
  %i.z = icmp ugt i64 %.024.lcssa.i, %.0.lcssa.i
  br i1 %i.z, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge40.i
  %i.aa = icmp ugt i64 %.0.lcssa.i, %.024.lcssa.i
  br i1 %i.aa, label %mbedtls_mpi_cmp_abs.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.g
  %.not31.i47 = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not31.i47, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.i.preheader
  %i.ab = load ptr, ptr %1, align 8, !tbaa !23
  %i.ac = load ptr, ptr %2, align 8, !tbaa !23
  br label %.lr.ph

.preheader.i:                                     ; preds = %bb.h
  %.not31.i = icmp eq i64 %i.ad, 0
  br i1 %.not31.i, label %.loopexit, label %.lr.ph, !llvm.loop !5

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader.i
  %.1.i48 = phi i64 [ %i.ad, %.preheader.i ], [ %.024.lcssa.i, %.lr.ph.preheader ]
  %i.ad = add nsw i64 %.1.i48, -1                 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.aj = icmp ult i64 %i.af, %i.ah
  br i1 %i.aj, label %mbedtls_mpi_cmp_abs.exit, label %.preheader.i, !llvm.loop !5

.loopexit:                                        ; preds = %.lr.ph, %.preheader.i, %.preheader.i.preheader, %._crit_edge40.i
  %i.ak = phi i16 [ %i.b, %._crit_edge40.i ], [ 1, %.preheader.i.preheader ], [ 1, %.preheader.i ], [ %i.b, %.lr.ph ]
  %i.al = tail call i32 @mbedtls_mpi_sub_abs(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not35 = icmp eq i32 %i.al, 0
  br i1 %.not35, label %.sink.split, label %bb.k

mbedtls_mpi_cmp_abs.exit:                         ; preds = %bb.h, %bb.g
  %i.am = tail call i32 @mbedtls_mpi_sub_abs(ptr noundef %0, ptr noundef %2, ptr noundef %1) ; 2 uses
  %.not34 = icmp eq i32 %i.am, 0
  br i1 %.not34, label %bb.i, label %bb.k

bb.i:                                             ; preds = %mbedtls_mpi_cmp_abs.exit
  %i.an = sub i16 0, %i.b
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %i.ao = tail call i32 @mbedtls_mpi_add_abs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %.loopexit, %bb.i
  %.sink = phi i16 [ %i.ak, %.loopexit ], [ %i.an, %bb.i ], [ %i.b, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.ap, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %mbedtls_mpi_cmp_abs.exit, %.loopexit
  %.2 = phi i32 [ %i.am, %mbedtls_mpi_cmp_abs.exit ], [ %i.ao, %bb.j ], [ %i.al, %.loopexit ], [ 0, %.sink.split ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_sub_mpi(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @add_sub_mpi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_sub_int(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.0.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %2, i1 false)
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !26
  %i.b = ashr i64 %2, 62
  %i.c = trunc nsw i64 %i.b to i16
  %i.d = or i16 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.d, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 1, ptr %i.f, align 2, !tbaa !20
  store ptr %i.a, ptr %3, align 8, !tbaa !23
  %i.g = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef %0, ptr noundef readonly %1, ptr noundef nonnull readonly %3, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_mul_mpi(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  store i16 0, ptr %i.b, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 3 uses
  store i16 0, ptr %i.d, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.e = icmp eq ptr %0, %1
  %.035.sroa.phi51.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.035.sroa.phi51.sroa.gep80 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.036.sroa.phi41.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.036.sroa.phi41.sroa.gep84 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %mbedtls_mpi_grow.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %.036.sroa.phi41.sroa.phi = phi ptr [ %.036.sroa.phi41.sroa.gep, %bb.a ], [ %i.b, %bb.b ]
  %.036.sroa.phi41.sroa.phi83 = phi ptr [ %.036.sroa.phi41.sroa.gep84, %bb.a ], [ %i.a, %bb.b ]
  %.036.sroa.phi41 = phi ptr [ %1, %bb.a ], [ %3, %bb.b ] ; 2 uses
  %i.g = icmp eq ptr %0, %2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %4, ptr noundef %2) ; 2 uses
  %.not66 = icmp eq i32 %i.h, 0
  br i1 %.not66, label %bb.e, label %mbedtls_mpi_grow.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.035.sroa.phi51.sroa.phi = phi ptr [ %.035.sroa.phi51.sroa.gep, %bb.c ], [ %i.d, %bb.d ]
  %.035.sroa.phi51.sroa.phi79 = phi ptr [ %.035.sroa.phi51.sroa.gep80, %bb.c ], [ %i.c, %bb.d ]
  %.035.sroa.phi51 = phi ptr [ %2, %bb.c ], [ %4, %bb.d ] ; 2 uses
  %i.i = load i16, ptr %.036.sroa.phi41.sroa.phi, align 2, !tbaa !20 ; 2 uses
  %cond90 = icmp eq i16 %i.i, 0
  br i1 %cond90, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = zext i16 %i.i to i64
  %i.k = load ptr, ptr %.036.sroa.phi41, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %.03391 = phi i64 [ %i.j, %.lr.ph ], [ %i.o, %bb.g ] ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %.03391
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26
  %.not68 = icmp eq i64 %i.n, 0
  br i1 %.not68, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i64 %.03391, -1                  ; 2 uses
  %cond = icmp eq i64 %i.o, 0
  br i1 %cond, label %._crit_edge, label %bb.f, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.f, %bb.g, %bb.e
  %.033.lcssa = phi i64 [ 0, %bb.e ], [ 0, %bb.g ], [ %.03391, %bb.f ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %bb.g ], [ 0, %bb.f ]
  %i.p = load i16, ptr %.035.sroa.phi51.sroa.phi, align 2, !tbaa !20 ; 2 uses
  %cond7496 = icmp eq i16 %i.p, 0
  br i1 %cond7496, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %._crit_edge
  %i.q = zext i16 %i.p to i64
  %i.r = load ptr, ptr %.035.sroa.phi51, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph99, %bb.i
  %.03297 = phi i64 [ %i.q, %.lr.ph99 ], [ %i.v, %bb.i ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %.03297
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26
  %.not70 = icmp eq i64 %i.u, 0
  br i1 %.not70, label %bb.i, label %._crit_edge100.loopexit

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i64 %.03297, -1                  ; 2 uses
  %cond74 = icmp eq i64 %i.v, 0
  br i1 %cond74, label %._crit_edge100.loopexit, label %bb.h, !llvm.loop !47

._crit_edge100.loopexit:                          ; preds = %bb.i, %bb.h
  %.032.lcssa.ph = phi i64 [ %.03297, %bb.h ], [ 0, %bb.i ]
  %.1.ph = phi i32 [ %.0, %bb.h ], [ 1, %bb.i ]
  %i.w = icmp eq i32 %.1.ph, 0
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %._crit_edge
  %.032.lcssa = phi i64 [ 0, %._crit_edge ], [ %.032.lcssa.ph, %._crit_edge100.loopexit ] ; 2 uses
  %.1 = phi i1 [ false, %._crit_edge ], [ %i.w, %._crit_edge100.loopexit ]
  %i.x = add nuw nsw i64 %.032.lcssa, %.033.lcssa ; 4 uses
  %i.y = icmp ugt i64 %i.x, 10000
  br i1 %i.y, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge100
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !20  ; 3 uses
  %i.ab = zext i16 %i.aa to i64                   ; 2 uses
  %i.ac = icmp samesign ugt i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ad = call noalias ptr @calloc(i64 noundef %i.x, i64 noundef 8) #18 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %mbedtls_mpi_grow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.af, i64 %i.ag, i1 false)
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.af, i64 noundef %i.ag) #17
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m
  %i.ah = trunc nuw nsw i64 %i.x to i16           ; 2 uses
  store i16 %i.ah, ptr %i.z, align 2, !tbaa !20
  store ptr %i.ad, ptr %0, align 8, !tbaa !23
  br label %._crit_edge.i

bb.n:                                             ; preds = %bb.j
  %i.ai = icmp eq i16 %i.aa, 0
  br i1 %i.ai, label %bb.o, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.thread, %bb.n
  %i.aj = phi i16 [ %i.ah, %.thread ], [ %i.aa, %bb.n ]
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.ak = zext i16 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.am = call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %mbedtls_mpi_grow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ao, i64 noundef 0) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i16 1, ptr %i.z, align 2, !tbaa !20
  store ptr %i.am, ptr %0, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %bb.r
  %i.ap = phi i64 [ %i.al, %._crit_edge.i ], [ 8, %bb.r ]
  %i.aq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.am, %bb.r ]
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.ap, i1 false)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 1, ptr %i.as, align 8, !tbaa !21
  %i.at = load ptr, ptr %.036.sroa.phi41, align 8, !tbaa !23
  %i.au = load ptr, ptr %.035.sroa.phi51, align 8, !tbaa !23
  call void @mbedtls_mpi_core_mul(ptr noundef nonnull %i.ar, ptr noundef %i.at, i64 noundef %.033.lcssa, ptr noundef %i.au, i64 noundef %.032.lcssa) #17
  br i1 %.1, label %bb.t, label %mbedtls_mpi_grow.exit.sink.split

bb.t:                                             ; preds = %bb.s
  %i.av = load i16, ptr %.036.sroa.phi41.sroa.phi83, align 8, !tbaa !21
  %i.aw = load i16, ptr %.035.sroa.phi51.sroa.phi79, align 8, !tbaa !21
  %i.ax = mul i16 %i.aw, %i.av
  br label %mbedtls_mpi_grow.exit.sink.split

mbedtls_mpi_grow.exit.sink.split:                 ; preds = %bb.s, %bb.t
  %.sink = phi i16 [ %i.ax, %bb.t ], [ 1, %bb.s ]
  store i16 %.sink, ptr %i.as, align 8, !tbaa !21
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %mbedtls_mpi_grow.exit.sink.split, %bb.o, %bb.k, %._crit_edge100, %bb.d, %bb.b
  %.034 = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.d ], [ -141, %bb.k ], [ -141, %._crit_edge100 ], [ -141, %bb.o ], [ 0, %mbedtls_mpi_grow.exit.sink.split ]
  %i.ay = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i75 = icmp eq ptr %i.ay, null
  br i1 %.not.i75, label %mbedtls_mpi_free.exit, label %bb.u

bb.u:                                             ; preds = %mbedtls_mpi_grow.exit
  %i.az = load i16, ptr %i.d, align 2, !tbaa !20
  %i.ba = zext i16 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_grow.exit, %bb.u
  %i.bc = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not.i76 = icmp eq ptr %i.bc, null
  br i1 %.not.i76, label %mbedtls_mpi_free.exit77, label %bb.v

bb.v:                                             ; preds = %mbedtls_mpi_free.exit
  %i.bd = load i16, ptr %i.b, align 2, !tbaa !20
  %i.be = zext i16 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #17
  br label %mbedtls_mpi_free.exit77

mbedtls_mpi_free.exit77:                          ; preds = %mbedtls_mpi_free.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.034
}

declare void @mbedtls_mpi_core_mul(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @mbedtls_mpi_core_mla(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_div_mpi(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 19 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 16 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 23 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  %i.a = alloca [3 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.c, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !23     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.03545.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.h, 0
  br i1 %.not39.i.i, label %bb.c, label %mbedtls_mpi_cmp_int.exit

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.b, !llvm.loop !1

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !21
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.d

bb.d:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i16 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 4 uses
  store i16 0, ptr %i.n, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i16 1, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 5 uses
  store i16 0, ptr %i.p, align 2, !tbaa !20
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.t, align 2, !tbaa !20
  store ptr null, ptr %7, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i16 3, ptr %i.v, align 2, !tbaa !20
  store ptr %i.a, ptr %8, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
end_hunk_3
begin_hunk_4_@mbedtls_mpi_div_mpi:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i64 %.02433.i, -1               ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.lr.ph39.i, label %bb.e, !llvm.loop !3

.lr.ph39.i:                                       ; preds = %bb.e, %bb.f, %bb.d
  %.024.lcssa.i = phi i64 [ 0, %bb.d ], [ 0, %bb.f ], [ %.02433.i, %bb.e ] ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph39.i
  %.037.i = phi i64 [ %i.d, %.lr.ph39.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.e, i64 %.037.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %.not30.i = icmp eq i64 %i.ag, 0
  br i1 %.not30.i, label %bb.h, label %._crit_edge40.i

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i64 %.037.i, -1                 ; 2 uses
  %.not29.i = icmp eq i64 %i.ah, 0
  br i1 %.not29.i, label %._crit_edge40.i, label %bb.g, !llvm.loop !4

._crit_edge40.i:                                  ; preds = %bb.h, %bb.g
  %.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %.037.i, %bb.g ] ; 2 uses
  %i.ai = icmp ugt i64 %.024.lcssa.i, %.0.lcssa.i
  br i1 %i.ai, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %._crit_edge40.i
  %i.aj = icmp ugt i64 %.0.lcssa.i, %.024.lcssa.i
  br i1 %i.aj, label %mbedtls_mpi_cmp_abs.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  %.not31.i239 = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not31.i239, label %.loopexit, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %.preheader.i.preheader
  %i.ak = load ptr, ptr %2, align 8, !tbaa !23
  br label %.lr.ph241

.preheader.i:                                     ; preds = %bb.j
  %.not31.i = icmp eq i64 %i.al, 0
  br i1 %.not31.i, label %.loopexit, label %.lr.ph241, !llvm.loop !5

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %.preheader.i
  %.1.i240 = phi i64 [ %i.al, %.preheader.i ], [ %.024.lcssa.i, %.lr.ph241.preheader ]
  %i.al = add nsw i64 %.1.i240, -1                ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.al
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26 ; 2 uses
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph241
  %i.ar = icmp ult i64 %i.an, %i.ap
  br i1 %i.ar, label %mbedtls_mpi_cmp_abs.exit, label %.preheader.i, !llvm.loop !5

mbedtls_mpi_cmp_abs.exit:                         ; preds = %bb.j, %bb.i
  %.not130 = icmp eq ptr %0, null
  br i1 %.not130, label %bb.p, label %bb.k

bb.k:                                             ; preds = %mbedtls_mpi_cmp_abs.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !20 ; 2 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.l, label %._crit_edge.i134

._crit_edge.i134:                                 ; preds = %bb.k
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  %i.av = zext i16 %i.at to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  br label %mbedtls_mpi_lset.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ax = call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #18 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %mbedtls_mpi_lset.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i.i135 = icmp eq ptr %i.az, null
  br i1 %.not.i.i135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.az, i64 noundef 0) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i16 1, ptr %i.as, align 2, !tbaa !20
  store ptr %i.ax, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_lset.exit.thread

mbedtls_mpi_lset.exit.thread:                     ; preds = %._crit_edge.i134, %bb.o
  %i.ba = phi i64 [ %i.aw, %._crit_edge.i134 ], [ 8, %bb.o ]
  %i.bb = phi ptr [ %.pre.i, %._crit_edge.i134 ], [ %i.ax, %bb.o ]
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.ba, i1 false)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !23
  store i64 0, ptr %i.bc, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.bd, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %mbedtls_mpi_lset.exit.thread, %mbedtls_mpi_cmp_abs.exit
  %.not132 = icmp eq ptr %1, null
  br i1 %.not132, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %.not133 = icmp eq i32 %i.be, 0
  br i1 %.not133, label %mbedtls_mpi_cmp_int.exit.thread, label %mbedtls_mpi_lset.exit

.loopexit:                                        ; preds = %.lr.ph241, %.preheader.i, %.preheader.i.preheader, %._crit_edge40.i
  %i.bf = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %4, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.r, label %mbedtls_mpi_lset.exit

bb.r:                                             ; preds = %.loopexit
  %i.bg = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %5, ptr noundef nonnull %3) ; 2 uses
  %.not108 = icmp eq i32 %i.bg, 0
  br i1 %.not108, label %bb.s, label %mbedtls_mpi_lset.exit

bb.s:                                             ; preds = %bb.r
  store i16 1, ptr %i.o, align 8, !tbaa !21
  store i16 1, ptr %i.m, align 8, !tbaa !21
  %i.bh = load i16, ptr %i.w, align 2, !tbaa !20  ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bi, 2                ; 24 uses
  %i.bk = icmp ugt i16 %i.bh, 9998
  br i1 %i.bk, label %mbedtls_mpi_lset.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = call noalias ptr @calloc(i64 noundef %i.bj, i64 noundef 8) #18 ; 27 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %mbedtls_mpi_lset.exit, label %._crit_edge.i137

._crit_edge.i137:                                 ; preds = %bb.t
  %i.bn = trunc nuw nsw i64 %i.bj to i16
  store i16 %i.bn, ptr %i.r, align 2, !tbaa !20
  store ptr %i.bl, ptr %6, align 8, !tbaa !23
  %i.bo = shl nuw nsw i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i8 0, i64 %i.bo, i1 false)
  store i64 0, ptr %i.bl, align 8, !tbaa !26
  store i16 1, ptr %i.q, align 8, !tbaa !21
  %i.bp = call i32 @mbedtls_mpi_grow(ptr noundef nonnull %7, i64 noundef %i.bj) ; 2 uses
  %.not111 = icmp eq i32 %i.bp, 0
  br i1 %.not111, label %bb.u, label %mbedtls_mpi_lset.exit

bb.u:                                             ; preds = %._crit_edge.i137
  %i.bq = load ptr, ptr %5, align 8, !tbaa !23
  %i.br = load i16, ptr %i.p, align 2, !tbaa !20  ; 2 uses
  %i.bs = zext i16 %i.br to i64
  %i.bt = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.bq, i64 noundef %i.bs) #17
  %i.bu = and i64 %i.bt, 63                       ; 2 uses
  %.not112 = icmp eq i64 %i.bu, 63
  br i1 %.not112, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = xor i64 %i.bu, 63                       ; 3 uses
  %i.bw = call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %4, i64 noundef %i.bv) ; 2 uses
  %.not113 = icmp eq i32 %i.bw, 0
  br i1 %.not113, label %bb.w, label %mbedtls_mpi_lset.exit

bb.w:                                             ; preds = %bb.v
  %i.bx = call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %5, i64 noundef %i.bv) ; 2 uses
  %.not114 = icmp eq i32 %i.bx, 0
  br i1 %.not114, label %._crit_edge182, label %mbedtls_mpi_lset.exit

._crit_edge182:                                   ; preds = %bb.w
  %.pre = load i16, ptr %i.p, align 2, !tbaa !20
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge182, %bb.u
  %i.by = phi i16 [ %.pre, %._crit_edge182 ], [ %i.br, %bb.u ]
  %.0 = phi i64 [ %i.bv, %._crit_edge182 ], [ 0, %bb.u ]
  %i.bz = load i16, ptr %i.n, align 2, !tbaa !20
  %i.ca = zext i16 %i.bz to i64                   ; 3 uses
  %.fr175 = freeze i16 %i.by
  %i.cb = zext i16 %.fr175 to i64                 ; 4 uses
  %i.cc = add nsw i64 %i.cb, -1                   ; 4 uses
  %i.cd = sub nsw i64 %i.ca, %i.cb                ; 2 uses
  %i.ce = shl nsw i64 %i.cd, 6                    ; 2 uses
  %i.cf = call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %5, i64 noundef %i.ce) ; 2 uses
  %.not115 = icmp eq i32 %i.cf, 0
  br i1 %.not115, label %.preheader, label %mbedtls_mpi_lset.exit

.preheader:                                       ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cd ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bb.z
  %i.ch = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !26
  %i.cl = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %4, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, i32 noundef -1) ; 2 uses
  %.not129 = icmp eq i32 %i.cl, 0
  br i1 %.not129, label %bb.y, label %mbedtls_mpi_lset.exit, !llvm.loop !48

bb.aa:                                            ; preds = %bb.y
  %i.cm = load i16, ptr %i.p, align 2, !tbaa !20  ; 2 uses
  %.not.i142 = icmp eq i16 %i.cm, 0
  br i1 %.not.i142, label %mbedtls_mpi_shift_r.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %5, align 8, !tbaa !23
  %i.co = zext i16 %i.cm to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.cn, i64 noundef %i.co, i64 noundef %i.ce) #17
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.aa, %bb.ab
  %.069169 = add nsw i64 %i.ca, -1                ; 2 uses
  %i.cp = icmp ugt i64 %.069169, %i.cc
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mbedtls_mpi_shift_r.exit
  %i.cq = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cc ; 3 uses
  %i.cs = xor i64 %i.cb, -1                       ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bl, i64 %i.cs
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cv = icmp eq i64 %i.cc, 0
  %i.cw = getelementptr [8 x i8], ptr %i.cq, i64 %i.cb
  %i.cx = getelementptr i8, ptr %i.cw, i64 -16
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ar
  %.069171 = phi i64 [ %.069169, %.lr.ph ], [ %.069, %bb.ar ] ; 4 uses
  %.069.in170 = phi i64 [ %i.ca, %.lr.ph ], [ %.069171, %bb.ar ] ; 5 uses
  %i.cy = load ptr, ptr %4, align 8, !tbaa !23    ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.069171 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !26 ; 2 uses
  %i.db = load i64, ptr %i.cr, align 8, !tbaa !26 ; 2 uses
  %.not120 = icmp ult i64 %i.da, %i.db
  br i1 %.not120, label %mbedtls_int_div_int.exit, label %bb.ad

mbedtls_int_div_int.exit:                         ; preds = %bb.ac
  %i.dc = getelementptr [8 x i8], ptr %i.cy, i64 %.069.in170
  %i.dd = getelementptr i8, ptr %i.dc, i64 -16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !26
  %i.df = zext i64 %i.da to i128
  %i.dg = shl nuw i128 %i.df, 64
  %i.dh = zext i64 %i.de to i128
  %i.di = or disjoint i128 %i.dg, %i.dh
  %i.dj = zext i64 %i.db to i128
  %i.dk = udiv i128 %i.di, %i.dj
  %spec.store.select.i = call i128 @llvm.umin.i128(i128 %i.dk, i128 18446744073709551615)
  %i.dl = trunc nuw i128 %spec.store.select.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %mbedtls_int_div_int.exit
  %.sink = phi i64 [ %i.dl, %mbedtls_int_div_int.exit ], [ -1, %bb.ac ]
  %gep173 = getelementptr [8 x i8], ptr %invariant.gep, i64 %.069.in170
  store i64 %.sink, ptr %gep173, align 8, !tbaa !26
  %i.dm = icmp ult i64 %.069171, 2
  br i1 %i.dm, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr [8 x i8], ptr %i.cy, i64 %.069.in170
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !26
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.dq = phi i64 [ %i.dp, %bb.ae ], [ 0, %bb.ad ]
  store i64 %i.dq, ptr %i.a, align 16, !tbaa !26
  %i.dr = getelementptr [8 x i8], ptr %i.cy, i64 %.069.in170
  %i.ds = getelementptr i8, ptr %i.dr, i64 -16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !26
  store i64 %i.dt, ptr %i.ct, align 8, !tbaa !26
  %i.du = load i64, ptr %i.cz, align 8, !tbaa !26
  store i64 %i.du, ptr %i.cu, align 16, !tbaa !26
  %i.dv = add i64 %.069.in170, %i.cs              ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.dv ; 11 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !26
  br i1 %i.cv, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.af, %bb.ah
  %i.dz = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.ea = add i64 %i.dz, -1
  store i64 %i.ea, ptr %i.dw, align 8, !tbaa !26
  %i.eb = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %7, i64 noundef 0) ; 2 uses
  %.not121.us = icmp eq i32 %i.eb, 0
  br i1 %.not121.us, label %bb.ag, label %mbedtls_mpi_lset.exit

bb.ag:                                            ; preds = %.split.us
  %i.ec = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  store i64 0, ptr %i.ec, align 8, !tbaa !26
  %i.ed = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !26
  %i.ef = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.eg = call i32 @mbedtls_mpi_mul_int(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef %i.ef) ; 2 uses
  %.not122.us = icmp eq i32 %i.eg, 0
  br i1 %.not122.us, label %bb.ah, label %mbedtls_mpi_lset.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eh = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.split.us, label %.split168.us, !llvm.loop !49

.split:                                           ; preds = %bb.af, %bb.aj
  %i.ej = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.ek = add i64 %i.ej, -1
  store i64 %i.ek, ptr %i.dw, align 8, !tbaa !26
  %i.el = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %7, i64 noundef 0) ; 2 uses
  %.not121 = icmp eq i32 %i.el, 0
  br i1 %.not121, label %bb.ai, label %mbedtls_mpi_lset.exit

bb.ai:                                            ; preds = %.split
  %i.em = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.en = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  store i64 %i.em, ptr %i.en, align 8, !tbaa !26
  %i.eo = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !26
  %i.eq = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.er = call i32 @mbedtls_mpi_mul_int(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef %i.eq) ; 2 uses
  %.not122 = icmp eq i32 %i.er, 0
  br i1 %.not122, label %bb.aj, label %mbedtls_mpi_lset.exit

bb.aj:                                            ; preds = %bb.ai
  %i.es = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.split, label %.split168.us, !llvm.loop !49

.split168.us:                                     ; preds = %bb.aj, %bb.ah
  %i.eu = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.ev = call i32 @mbedtls_mpi_mul_int(ptr noundef nonnull %7, ptr noundef nonnull %5, i64 noundef %i.eu) ; 2 uses
  %.not123 = icmp eq i32 %i.ev, 0
  br i1 %.not123, label %bb.ak, label %mbedtls_mpi_lset.exit

bb.ak:                                            ; preds = %.split168.us
  %i.ew = shl i64 %i.dv, 6                        ; 2 uses
  %i.ex = call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %7, i64 noundef %i.ew) ; 2 uses
  %.not124 = icmp eq i32 %i.ex, 0
  br i1 %.not124, label %bb.al, label %mbedtls_mpi_lset.exit

bb.al:                                            ; preds = %bb.ak
  %i.ey = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %4, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %7, i32 noundef -1) ; 2 uses
  %.not125 = icmp eq i32 %i.ey, 0
  br i1 %.not125, label %bb.am, label %mbedtls_mpi_lset.exit

bb.am:                                            ; preds = %bb.al
  %i.ez = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %4, i64 noundef 0)
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fb = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %7, ptr noundef nonnull %5) ; 2 uses
  %.not126 = icmp eq i32 %i.fb, 0
  br i1 %.not126, label %bb.ao, label %mbedtls_mpi_lset.exit

bb.ao:                                            ; preds = %bb.an
  %i.fc = call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %7, i64 noundef %i.ew) ; 2 uses
  %.not127 = icmp eq i32 %i.fc, 0
  br i1 %.not127, label %bb.ap, label %mbedtls_mpi_lset.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fd = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %4, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %7, i32 noundef 1) ; 2 uses
  %.not128 = icmp eq i32 %i.fd, 0
  br i1 %.not128, label %bb.aq, label %mbedtls_mpi_lset.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fe = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.ff = add i64 %i.fe, -1
  store i64 %i.ff, ptr %i.dw, align 8, !tbaa !26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.am, %bb.aq
  %.069 = add i64 %.069171, -1                    ; 2 uses
  %i.fg = icmp ugt i64 %.069, %i.cc
  br i1 %i.fg, label %bb.ac, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.ar, %mbedtls_mpi_shift_r.exit
  %.not116 = icmp eq ptr %0, null
  br i1 %.not116, label %bb.au, label %bb.as

bb.as:                                            ; preds = %._crit_edge
  %i.fh = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %0, ptr noundef nonnull %6) ; 2 uses
  %.not117 = icmp eq i32 %i.fh, 0
  br i1 %.not117, label %bb.at, label %mbedtls_mpi_lset.exit

bb.at:                                            ; preds = %bb.as
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fj = load i16, ptr %i.fi, align 8, !tbaa !21
  %i.fk = load i16, ptr %i.j, align 8, !tbaa !21
  %i.fl = mul i16 %i.fk, %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.fl, ptr %i.fm, align 8, !tbaa !21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge
  %.not118 = icmp eq ptr %1, null
  br i1 %.not118, label %mbedtls_mpi_lset.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = load i16, ptr %i.n, align 2, !tbaa !20  ; 2 uses
  %.not.i145 = icmp eq i16 %i.fn, 0
  br i1 %.not.i145, label %mbedtls_mpi_shift_r.exit146, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = load ptr, ptr %4, align 8, !tbaa !23
  %i.fp = zext i16 %i.fn to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.fo, i64 noundef %i.fp, i64 noundef %.0) #17
  br label %mbedtls_mpi_shift_r.exit146

mbedtls_mpi_shift_r.exit146:                      ; preds = %bb.av, %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = load i16, ptr %i.fq, align 8, !tbaa !21
  store i16 %i.fr, ptr %i.m, align 8, !tbaa !21
  %i.fs = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %1, ptr noundef nonnull %4) ; 2 uses
  %.not119 = icmp eq i32 %i.fs, 0
  br i1 %.not119, label %bb.ax, label %mbedtls_mpi_lset.exit

bb.ax:                                            ; preds = %mbedtls_mpi_shift_r.exit146
  %i.ft = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %1, i64 noundef 0)
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ay, label %mbedtls_mpi_lset.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.fv, align 8, !tbaa !21
  br label %mbedtls_mpi_lset.exit

mbedtls_mpi_lset.exit:                            ; preds = %bb.z, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %.split168.us, %.split, %bb.ai, %bb.ag, %.split.us, %bb.s, %bb.t, %bb.l, %bb.au, %bb.ay, %bb.ax, %mbedtls_mpi_shift_r.exit146, %bb.as, %bb.x, %bb.w, %bb.v, %._crit_edge.i137, %bb.r, %.loopexit, %bb.q
  %i.fw = phi i64 [ %i.bj, %bb.ay ], [ 0, %bb.q ], [ 0, %.loopexit ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.l ], [ %i.bj, %._crit_edge.i137 ], [ %i.bj, %bb.v ], [ %i.bj, %bb.w ], [ %i.bj, %bb.x ], [ %i.bj, %.split ], [ %i.bj, %bb.au ], [ %i.bj, %mbedtls_mpi_shift_r.exit146 ], [ 0, %bb.t ], [ %i.bj, %bb.as ], [ %i.bj, %bb.ax ], [ %i.bj, %bb.ap ], [ %i.bj, %bb.ag ], [ %i.bj, %.split.us ], [ %i.bj, %bb.ai ], [ %i.bj, %.split168.us ], [ %i.bj, %bb.ak ], [ %i.bj, %bb.al ], [ %i.bj, %bb.an ], [ %i.bj, %bb.ao ], [ %i.bj, %bb.z ]
  %i.fx = phi ptr [ %i.bl, %bb.ay ], [ null, %bb.q ], [ null, %.loopexit ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.l ], [ %i.bl, %._crit_edge.i137 ], [ %i.bl, %bb.v ], [ %i.bl, %bb.w ], [ %i.bl, %bb.x ], [ %i.bl, %.split ], [ %i.bl, %bb.au ], [ %i.bl, %mbedtls_mpi_shift_r.exit146 ], [ null, %bb.t ], [ %i.bl, %bb.as ], [ %i.bl, %bb.ax ], [ %i.bl, %bb.ap ], [ %i.bl, %bb.ag ], [ %i.bl, %.split.us ], [ %i.bl, %bb.ai ], [ %i.bl, %.split168.us ], [ %i.bl, %bb.ak ], [ %i.bl, %bb.al ], [ %i.bl, %bb.an ], [ %i.bl, %bb.ao ], [ %i.bl, %bb.z ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.ay ], [ %i.be, %bb.q ], [ %i.bf, %.loopexit ], [ %i.bg, %bb.r ], [ -141, %bb.s ], [ -141, %bb.l ], [ %i.bp, %._crit_edge.i137 ], [ %i.bw, %bb.v ], [ %i.bx, %bb.w ], [ %i.cf, %bb.x ], [ %i.el, %.split ], [ 0, %bb.au ], [ %i.fs, %mbedtls_mpi_shift_r.exit146 ], [ -141, %bb.t ], [ %i.fh, %bb.as ], [ 0, %bb.ax ], [ %i.fb, %bb.an ], [ %i.eg, %bb.ag ], [ %i.eb, %.split.us ], [ %i.er, %bb.ai ], [ %i.ey, %bb.al ], [ %i.ex, %bb.ak ], [ %i.ev, %.split168.us ], [ %i.fc, %bb.ao ], [ %i.fd, %bb.ap ], [ %i.cl, %bb.z ]
  %i.fy = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i147 = icmp eq ptr %i.fy, null
  br i1 %.not.i147, label %mbedtls_mpi_free.exit, label %bb.az

bb.az:                                            ; preds = %mbedtls_mpi_lset.exit
  %i.fz = load i16, ptr %i.n, align 2, !tbaa !20
  %i.ga = zext i16 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.fy, i64 noundef %i.gb) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_lset.exit, %bb.az
  %i.gc = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i148 = icmp eq ptr %i.gc, null
  br i1 %.not.i148, label %mbedtls_mpi_free.exit149, label %bb.ba

bb.ba:                                            ; preds = %mbedtls_mpi_free.exit
  %i.gd = load i16, ptr %i.p, align 2, !tbaa !20
  %i.ge = zext i16 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gc, i64 noundef %i.gf) #17
  br label %mbedtls_mpi_free.exit149

mbedtls_mpi_free.exit149:                         ; preds = %mbedtls_mpi_free.exit, %bb.ba
  %.not.i150 = icmp eq ptr %i.fx, null
  br i1 %.not.i150, label %mbedtls_mpi_free.exit151, label %bb.bb

bb.bb:                                            ; preds = %mbedtls_mpi_free.exit149
  %i.gg = shl nuw nsw i64 %i.fw, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.fx, i64 noundef %i.gg) #17
  br label %mbedtls_mpi_free.exit151

mbedtls_mpi_free.exit151:                         ; preds = %mbedtls_mpi_free.exit149, %bb.bb
  %i.gh = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i152 = icmp eq ptr %i.gh, null
  br i1 %.not.i152, label %mbedtls_mpi_free.exit153, label %bb.bc

bb.bc:                                            ; preds = %mbedtls_mpi_free.exit151
  %i.gi = load i16, ptr %i.t, align 2, !tbaa !20
  %i.gj = zext i16 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gh, i64 noundef %i.gk) #17
  br label %mbedtls_mpi_free.exit153

mbedtls_mpi_free.exit153:                         ; preds = %mbedtls_mpi_free.exit151, %bb.bc
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 24) #17
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.a, %bb.p, %bb.q, %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_free.exit153
  %.071 = phi i32 [ -12, %mbedtls_mpi_cmp_int.exit ], [ %.3, %mbedtls_mpi_free.exit153 ], [ 0, %bb.q ], [ 0, %bb.p ], [ -12, %bb.a ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.071
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_div_int(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.0.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %3, i1 false)
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !26
  %i.b = ashr i64 %3, 62
  %i.c = trunc nsw i64 %i.b to i16
  %i.d = or i16 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.d, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 1, ptr %i.f, align 2, !tbaa !20
  store ptr %i.a, ptr %4, align 8, !tbaa !23
  %i.g = call i32 @mbedtls_mpi_div_mpi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_mod_mpi(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.b, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %2, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.03545.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.g, 0
  br i1 %.not39.i.i, label %bb.c, label %mbedtls_mpi_cmp_int.exit

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.b, !llvm.loop !1

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !21
  %i.k = icmp slt i16 %i.j, 0
  br i1 %i.k, label %mbedtls_mpi_cmp_mpi.exit.thread39, label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.a, %mbedtls_mpi_cmp_int.exit
  %i.l = tail call i32 @mbedtls_mpi_div_mpi(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.preheader41, label %mbedtls_mpi_cmp_mpi.exit.thread39

.preheader41:                                     ; preds = %mbedtls_mpi_cmp_int.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader41, %bb.g
  %i.o = load i16, ptr %i.m, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i23 = icmp eq i16 %i.o, 0
  br i1 %.not44.i.i23, label %.preheader, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.d
  %i.p = zext i16 %i.o to i64
  %i.q = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i24
  %.03545.i.i25 = phi i64 [ %i.p, %.lr.ph.i.i24 ], [ %i.u, %bb.f ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.03545.i.i25
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26
  %.not39.i.i26 = icmp eq i64 %i.t, 0
  br i1 %.not39.i.i26, label %bb.f, label %mbedtls_mpi_cmp_int.exit32

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i64 %.03545.i.i25, -1            ; 2 uses
  %.not.i.i31 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i31, label %.preheader, label %bb.e, !llvm.loop !1

mbedtls_mpi_cmp_int.exit32:                       ; preds = %bb.e
  %i.v = load i16, ptr %i.n, align 8, !tbaa !21
  %i.w = icmp slt i16 %i.v, 0
  br i1 %i.w, label %bb.g, label %.preheader

bb.g:                                             ; preds = %mbedtls_mpi_cmp_int.exit32
  %i.x = tail call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %0, ptr noundef readonly %2, i32 noundef 1) ; 2 uses
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %bb.d, label %mbedtls_mpi_cmp_mpi.exit.thread39, !llvm.loop !51

.preheader:                                       ; preds = %mbedtls_mpi_cmp_int.exit32, %bb.d, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %mbedtls_mpi_cmp_mpi.exit.thread
  %i.z = load i16, ptr %i.m, align 2, !tbaa !20   ; 2 uses
  %.not44.i = icmp eq i16 %i.z, 0
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.aa = zext i16 %i.z to i64
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %.03545.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.af, %bb.j ] ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %.03545.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %.not39.i = icmp eq i64 %i.ae, 0
  br i1 %.not39.i, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i64 %.03545.i, -1               ; 2 uses
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.035.lcssa.i = phi i64 [ 0, %bb.h ], [ 0, %bb.j ], [ %.03545.i, %bb.i ] ; 6 uses
  %i.ag = load i16, ptr %i.a, align 2, !tbaa !20  ; 2 uses
  %.not4048.i = icmp eq i16 %i.ag, 0
  br i1 %.not4048.i, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i
  %i.ah = zext i16 %i.ag to i64
  %i.ai = load ptr, ptr %2, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph51.i
  %.049.i = phi i64 [ %i.ah, %.lr.ph51.i ], [ %i.am, %bb.l ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %.049.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26
  %.not41.i = icmp eq i64 %i.al, 0
  br i1 %.not41.i, label %bb.l, label %._crit_edge52.i

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i64 %.049.i, -1                 ; 2 uses
  %.not40.i = icmp eq i64 %i.am, 0
  br i1 %.not40.i, label %._crit_edge52.i, label %bb.k, !llvm.loop !6

._crit_edge52.i:                                  ; preds = %bb.l, %bb.k, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.l ], [ %.049.i, %bb.k ] ; 3 uses
  %i.an = or i64 %.0.lcssa.i, %.035.lcssa.i
  %or.cond.i = icmp eq i64 %i.an, 0
  br i1 %or.cond.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge52.i
  %i.ao = icmp ugt i64 %.035.lcssa.i, %.0.lcssa.i
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i16, ptr %i.n, align 8, !tbaa !21
  %i.aq = sext i16 %i.ap to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp ugt i64 %.0.lcssa.i, %.035.lcssa.i
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = load i16, ptr %i.y, align 8, !tbaa !21
  %i.at = sext i16 %i.as to i32
  %i.au = sub nsw i32 0, %i.at
  br label %mbedtls_mpi_cmp_mpi.exit

bb.q:                                             ; preds = %bb.o
  %i.av = load i16, ptr %i.n, align 8, !tbaa !21  ; 4 uses
  %i.aw = icmp sgt i16 %i.av, 0
  %i.ax = load i16, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp slt i16 %i.ax, 0
  %.not42.i66 = icmp eq i64 %.035.lcssa.i, 0
  %or.cond = or i1 %i.ay, %.not42.i66
  br i1 %or.cond, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph.preheader

bb.s:                                             ; preds = %bb.q
  %i.az = icmp sgt i16 %i.ax, 0
  %i.ba = icmp ne i16 %i.av, 0
  %or.cond43.i = and i1 %i.ba, %i.az
  br i1 %or.cond43.i, label %mbedtls_mpi_cmp_mpi.exit.thread39, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.s
  %.not42.i66.old = icmp eq i64 %.035.lcssa.i, 0
  br i1 %.not42.i66.old, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.preheader.i, %bb.r
  %i.bb = load ptr, ptr %0, align 8, !tbaa !23
  %i.bc = load ptr, ptr %2, align 8, !tbaa !23
  br label %.lr.ph

.preheader.i:                                     ; preds = %bb.u
  %.not42.i = icmp eq i64 %i.bd, 0
  br i1 %.not42.i, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader.i
  %.1.i67 = phi i64 [ %i.bd, %.preheader.i ], [ %.035.lcssa.i, %.lr.ph.preheader ]
  %i.bd = add nsw i64 %.1.i67, -1                 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !26 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.bi = icmp ugt i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.bj = sext i16 %i.av to i32
  br label %mbedtls_mpi_cmp_mpi.exit

bb.u:                                             ; preds = %.lr.ph
  %i.bk = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bk, label %bb.v, label %.preheader.i, !llvm.loop !7

bb.v:                                             ; preds = %bb.u
  %i.bl = sext i16 %i.av to i32
  %i.bm = sub nsw i32 0, %i.bl
  br label %mbedtls_mpi_cmp_mpi.exit

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %bb.n, %bb.p, %bb.t, %bb.v
  %.036.i = phi i32 [ %i.bm, %bb.v ], [ %i.aq, %bb.n ], [ %i.au, %bb.p ], [ %i.bj, %bb.t ]
  %i.bn = icmp sgt i32 %.036.i, -1
  br i1 %i.bn, label %mbedtls_mpi_cmp_mpi.exit.thread, label %mbedtls_mpi_cmp_mpi.exit.thread39

mbedtls_mpi_cmp_mpi.exit.thread:                  ; preds = %.preheader.i, %.preheader.preheader.i, %bb.r, %._crit_edge52.i, %mbedtls_mpi_cmp_mpi.exit
  %i.bo = tail call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef %0, ptr noundef readonly %0, ptr noundef readonly %2, i32 noundef -1) ; 2 uses
  %.not21 = icmp eq i32 %i.bo, 0
  br i1 %.not21, label %bb.h, label %mbedtls_mpi_cmp_mpi.exit.thread39, !llvm.loop !52

mbedtls_mpi_cmp_mpi.exit.thread39:                ; preds = %bb.g, %bb.s, %mbedtls_mpi_cmp_mpi.exit.thread, %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_cmp_int.exit.thread, %mbedtls_mpi_cmp_int.exit
  %.014 = phi i32 [ -10, %mbedtls_mpi_cmp_int.exit ], [ %i.l, %mbedtls_mpi_cmp_int.exit.thread ], [ %i.bo, %mbedtls_mpi_cmp_mpi.exit.thread ], [ 0, %bb.s ], [ 0, %mbedtls_mpi_cmp_mpi.exit ], [ %i.x, %bb.g ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -12, 1) i32 @mbedtls_mpi_mod_int(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20   ; 4 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i64 %2, 2
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %1, align 8, !tbaa !23
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = and i64 %i.i, 1
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.k = zext i16 %i.e to i64                     ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.m = icmp eq i16 %i.e, 1
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %i.k, 65534
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new
  %.042 = phi i64 [ 0, %.new ], [ %i.ae, %bb.h ]
  %.03541 = phi i64 [ %i.k, %.new ], [ %i.af, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.h ]
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %.03541
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %.fr40 = freeze i64 %i.p                        ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %.042, i64 %.fr40, i64 32)
  %i.r = urem i64 %i.q, %2
  %i.s = and i64 %.fr40, 4294967295
  %i.t = shl i64 %i.r, 32
  %i.u = or disjoint i64 %i.t, %i.s
  %i.v = urem i64 %i.u, %2
  %i.w = getelementptr [8 x i8], ptr %i.l, i64 %.03541
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26
  %.fr40.1 = freeze i64 %i.y                      ; 2 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %.fr40.1, i64 32)
  %i.aa = urem i64 %i.z, %2
  %i.ab = and i64 %.fr40.1, 4294967295
  %i.ac = shl i64 %i.aa, 32
  %i.ad = or disjoint i64 %i.ac, %i.ab
  %i.ae = urem i64 %i.ad, %2                      ; 3 uses
  %i.af = add nsw i64 %.03541, -2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.h, !llvm.loop !2

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.g
  %.042.epil.init = phi i64 [ 0, %bb.g ], [ %i.ae, %.unr-lcssa ]
  %.03541.epil.init = phi i64 [ %i.k, %bb.g ], [ %i.af, %.unr-lcssa ]
  %lcmp.mod45 = trunc i16 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.ag = getelementptr [8 x i8], ptr %i.l, i64 %.03541.epil.init
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26
  %.fr40.epil = freeze i64 %i.ai                  ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %.042.epil.init, i64 %.fr40.epil, i64 32)
  %i.ak = urem i64 %i.aj, %2
  %i.al = and i64 %.fr40.epil, 4294967295
  %i.am = shl i64 %i.ak, 32
  %i.an = or disjoint i64 %i.am, %i.al
  %i.ao = urem i64 %i.an, %2
  br label %bb.i

bb.i:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ae, %.unr-lcssa ], [ %i.ao, %.epil.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !21
  %i.ar = icmp slt i16 %i.aq, 0
  %i.as = icmp ne i64 %.lcssa, 0
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = sub nsw i64 %2, %.lcssa
  %spec.select = select i1 %or.cond, i64 %i.at, i64 %.lcssa
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.f, %bb.i
  %spec.select.sink = phi i64 [ %spec.select, %bb.i ], [ %i.j, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ]
  store i64 %spec.select.sink, ptr %0, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.036 = phi i32 [ -10, %bb.b ], [ -12, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_exp_mod(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 707406379) %3, ptr noundef %4, ptr nofree noundef captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 8 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.b, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.03545.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.g, 0
  br i1 %.not39.i.i, label %bb.c, label %mbedtls_mpi_cmp_int.exit

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.b, !llvm.loop !1

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !21
  %i.k = icmp slt i16 %i.j, 1
  br i1 %i.k, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.d

bb.d:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.l = load i64, ptr %i.d, align 8, !tbaa !26
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i92 = icmp eq i16 %i.p, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  br i1 %.not44.i.i92, label %mbedtls_mpi_cmp_int.exit101.thread, label %.lr.ph.i.i93

.lr.ph.i.i93:                                     ; preds = %bb.e
  %i.q = zext i16 %i.p to i64                     ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i93
  %.03545.i.i94 = phi i64 [ %i.q, %.lr.ph.i.i93 ], [ %i.u, %bb.g ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %.pre, i64 %.03545.i.i94
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26
  %.not39.i.i95 = icmp eq i64 %i.t, 0
  br i1 %.not39.i.i95, label %bb.g, label %mbedtls_mpi_cmp_int.exit101

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i64 %.03545.i.i94, -1            ; 2 uses
  %.not.i.i100 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i100, label %mbedtls_mpi_cmp_int.exit101.thread, label %bb.f, !llvm.loop !1

mbedtls_mpi_cmp_int.exit101:                      ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i16, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp slt i16 %i.w, 0
  br i1 %i.x, label %mbedtls_mpi_cmp_int.exit.thread, label %mbedtls_mpi_cmp_int.exit101.thread

mbedtls_mpi_cmp_int.exit101.thread:               ; preds = %bb.g, %bb.e, %mbedtls_mpi_cmp_int.exit101
  %.pre-phi = phi i64 [ %i.q, %mbedtls_mpi_cmp_int.exit101 ], [ 0, %bb.e ], [ %i.q, %bb.g ]
  %i.y = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %.pre, i64 noundef %.pre-phi) #17
  %i.z = icmp ugt i64 %i.y, 8192
  br i1 %i.z, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.h

bb.h:                                             ; preds = %mbedtls_mpi_cmp_int.exit101.thread
  %i.aa = load ptr, ptr %4, align 8, !tbaa !23
  %i.ab = load i16, ptr %i.a, align 2, !tbaa !20
  %i.ac = zext i16 %i.ab to i64
  %i.ad = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.aa, i64 noundef %i.ac) #17
  %i.ae = icmp ugt i64 %i.ad, 8192
  br i1 %i.ae, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr %i.o, align 2, !tbaa !20  ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call i32 @mbedtls_mpi_lset(ptr noundef %0, i64 noundef 1)
  br label %mbedtls_mpi_cmp_int.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = load i16, ptr %i.a, align 2, !tbaa !20
  %i.aj = zext i16 %i.ai to i64
  %i.ak = zext i16 %i.af to i64
  %i.al = tail call i64 @mbedtls_mpi_core_exp_mod_working_limbs(i64 noundef %i.aj, i64 noundef %i.ak) #17 ; 4 uses
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 8) #18 ; 8 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 1, ptr %i.ao, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  store i16 0, ptr %i.ap, align 2, !tbaa !20
  store ptr null, ptr %6, align 8, !tbaa !23
  %i.aq = icmp eq ptr %5, null                    ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %5, align 8, !tbaa !23
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.thread, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.at = call i32 @mbedtls_mpi_core_get_mont_r2_unsafe(ptr noundef nonnull %6, ptr noundef nonnull %4) #17 ; 2 uses
  %.not85 = icmp eq i32 %i.at, 0
  br i1 %.not85, label %bb.r, label %.thread129

.thread129:                                       ; preds = %bb.n
  %i.au = shl i64 %i.al, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.am, i64 noundef %i.au) #17
  br label %bb.ad

.thread:                                          ; preds = %bb.m
  %i.av = call i32 @mbedtls_mpi_core_get_mont_r2_unsafe(ptr noundef nonnull %6, ptr noundef nonnull %4) #17 ; 2 uses
  %.not85108 = icmp eq i32 %i.av, 0
  br i1 %.not85108, label %bb.o, label %.thread110

bb.o:                                             ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !55
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.aw = load i16, ptr %i.a, align 2, !tbaa !20
  %i.ax = zext i16 %i.aw to i64
  %i.ay = tail call i32 @mbedtls_mpi_grow(ptr noundef nonnull %5, i64 noundef %i.ax) ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.q, label %.thread110

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !55
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o
  %i.az = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not87 = icmp eq i32 %i.az, 0
  br i1 %.not87, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 1, ptr %i.ba, align 8, !tbaa !21
  %i.bb = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %0, ptr noundef nonnull %4)
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %4) ; 2 uses
  %.not88 = icmp eq i32 %i.bd, 0
  br i1 %.not88, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.be = load i16, ptr %i.a, align 2, !tbaa !20
  %i.bf = zext i16 %i.be to i64
  %i.bg = call i32 @mbedtls_mpi_grow(ptr noundef nonnull %0, i64 noundef %i.bf) ; 2 uses
  %.not89 = icmp eq i32 %i.bg, 0
  br i1 %.not89, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %4, align 8, !tbaa !23
  %i.bi = call i64 @mbedtls_mpi_core_montmul_init(ptr noundef %i.bh) #17 ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !23
  %i.bl = load i16, ptr %i.a, align 2, !tbaa !20
  %i.bm = zext i16 %i.bl to i64
  %i.bn = load ptr, ptr %6, align 8, !tbaa !23
  call void @mbedtls_mpi_core_to_mont_rep(ptr noundef %i.bj, ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef %i.bm, i64 noundef %i.bi, ptr noundef %i.bn, ptr noundef nonnull %i.am) #17
  %i.bo = icmp eq i32 %3, 707406378
  %i.bp = load ptr, ptr %0, align 8, !tbaa !23    ; 4 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.br = load i16, ptr %i.a, align 2, !tbaa !20
  %i.bs = zext i16 %i.br to i64                   ; 2 uses
  %i.bt = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.bu = load i16, ptr %i.o, align 2, !tbaa !20
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @mbedtls_mpi_core_exp_mod_unsafe(ptr noundef %i.bp, ptr noundef %i.bp, ptr noundef %i.bq, i64 noundef %i.bs, ptr noundef %i.bt, i64 noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull %i.am) #17
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @mbedtls_mpi_core_exp_mod(ptr noundef %i.bp, ptr noundef %i.bp, ptr noundef %i.bq, i64 noundef %i.bs, ptr noundef %i.bt, i64 noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull %i.am) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bx = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.by = load ptr, ptr %4, align 8, !tbaa !23
  %i.bz = load i16, ptr %i.a, align 2, !tbaa !20
  %i.ca = zext i16 %i.bz to i64
  call void @mbedtls_mpi_core_from_mont_rep(ptr noundef %i.bx, ptr noundef %i.bx, ptr noundef %i.by, i64 noundef %i.ca, i64 noundef %i.bi, ptr noundef nonnull %i.am) #17
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !21
  %i.cd = icmp eq i16 %i.cc, -1
  br i1 %i.cd, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %2, align 8, !tbaa !23
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !26
  %i.cg = and i64 %i.cf, 1
  %.not90 = icmp eq i64 %i.cg, 0
  br i1 %.not90, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = load ptr, ptr %0, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !20
  %i.ck = zext i16 %i.cj to i64
  %i.cl = call i64 @mbedtls_mpi_core_check_zero_ct(ptr noundef %i.ch, i64 noundef %i.ck) #17
  %i.cm = call { i64, i64, i64 } asm sideeffect "and  $0, $1                      \0A\09not  $0                              \0A\09and  $0, $2                      \0A\09or   $1, $2                            \0A\09", "=&{di},=&{si},=&{ax},0,1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.cl, i64 range(i64 0, 4294967296) 0, i64 range(i64 0, 4294967296) 2) #17, !srcloc !24
  %i.cn = extractvalue { i64, i64, i64 } %i.cm, 2
  %i.co = trunc i64 %i.cn to i16
  %i.cp = add i16 %i.co, -1
  store i16 %i.cp, ptr %i.ba, align 8, !tbaa !21
  %i.cq = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %0, i32 noundef 1)
  br label %bb.ab

.thread110:                                       ; preds = %.thread, %bb.p
  %.073.ph = phi i32 [ %i.av, %.thread ], [ %i.ay, %bb.p ]
  %i.cr = shl i64 %i.al, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.am, i64 noundef %i.cr) #17
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.z, %bb.u, %bb.t, %bb.r
  %.073 = phi i32 [ 0, %bb.z ], [ %i.az, %bb.r ], [ %i.bd, %bb.t ], [ %i.bg, %bb.u ], [ 0, %bb.y ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cs = shl i64 %i.al, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.am, i64 noundef %i.cs) #17
  br i1 %i.aq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread110, %bb.ab
  %.073113 = phi i32 [ %.073.ph, %.thread110 ], [ %.073, %bb.ab ] ; 2 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !23
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ad, label %mbedtls_mpi_free.exit

bb.ad:                                            ; preds = %.thread129, %bb.ac, %bb.ab
  %.073114 = phi i32 [ %.073113, %bb.ac ], [ %.073, %bb.ab ], [ %i.at, %.thread129 ] ; 2 uses
  %i.cv = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load i16, ptr %i.ap, align 2, !tbaa !20
  %i.cx = zext i16 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.073112 = phi i32 [ %.073113, %bb.ac ], [ %.073114, %bb.ad ], [ %.073114, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.a, %mbedtls_mpi_free.exit, %bb.k, %mbedtls_mpi_cmp_int.exit101.thread, %bb.h, %mbedtls_mpi_cmp_int.exit101, %mbedtls_mpi_cmp_int.exit, %bb.d, %bb.j
  %.2 = phi i32 [ -135, %mbedtls_mpi_cmp_int.exit101.thread ], [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %mbedtls_mpi_cmp_int.exit101 ], [ %i.ah, %bb.j ], [ -135, %bb.d ], [ -135, %bb.h ], [ %.073112, %mbedtls_mpi_free.exit ], [ -141, %bb.k ], [ -135, %bb.a ], [ -135, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_exp_mod_unsafe(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 707406378, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_gcd_modinv_odd(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null                    ; 6 uses
  %i.b = select i1 %.not, i64 4, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !20   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.d, 0
  br i1 %.not44.i.i, label %._crit_edge.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.03545.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.i, 0
  br i1 %.not39.i.i, label %bb.c, label %mbedtls_mpi_cmp_int.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.lr.ph.i.preheader, label %bb.b, !llvm.loop !1

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp slt i16 %i.l, 0
  br i1 %i.m, label %mbedtls_mpi_cmp_mpi.exit.thread133, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %mbedtls_mpi_cmp_int.exit
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.03545.i = phi i64 [ %i.q, %bb.d ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.03545.i
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %.not39.i = icmp eq i64 %i.p, 0
  br i1 %.not39.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i64 %.03545.i, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i, %bb.a
  %.035.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %.03545.i, %.lr.ph.i ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 6 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !20   ; 8 uses
  %.not4048.i = icmp eq i16 %i.s, 0               ; 2 uses
  br i1 %.not4048.i, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i
  %i.t = zext i16 %i.s to i64
  %i.u = load ptr, ptr %3, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph51.i
end_hunk_4
begin_hunk_5_@mbedtls_mpi_gcd_modinv_odd:bb.a
  br i1 %i.bz, label %.then113, label %.else114

.then113:                                         ; preds = %bb.ah
  %i.ct = load ptr, ptr %3, align 8, !tbaa !23
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.sroa.0.0.ph, ptr noundef %i.cp, ptr noundef nonnull %spec.select, i64 noundef %i.cs, ptr noundef %i.ct, i64 noundef %i.ck, ptr noundef nonnull %i.cm) #17
  br label %.cont112

.else114:                                         ; preds = %bb.ah
  %.else.val126 = load ptr, ptr %0, align 8, !tbaa !23
  %i.cu = load ptr, ptr %3, align 8, !tbaa !23
  call void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef %.else.val126, ptr noundef %i.cp, ptr noundef nonnull %spec.select, i64 noundef %i.cs, ptr noundef %i.cu, i64 noundef %i.ck, ptr noundef nonnull %i.cm) #17
  %.sroa.gep99 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %.sroa.gep99, align 8, !tbaa !21
  br label %.cont112

.cont112:                                         ; preds = %.else114, %.then113
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.cont112
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.cv, align 8, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.cont112
  br i1 %i.bz, label %.cont108, label %.cont108.thread

.cont108:                                         ; preds = %bb.aj
  %i.cw = load i16, ptr %i.r, align 2, !tbaa !20  ; 2 uses
  %i.cx = icmp ugt i16 %.sroa.9.0.ph, %i.cw
  br i1 %i.cx, label %.cont119, label %bb.ak

.cont108.thread:                                  ; preds = %bb.aj
  %.else.val111 = load i16, ptr %.sroa.gep104, align 2, !tbaa !20 ; 2 uses
  %i.cy = load i16, ptr %i.r, align 2, !tbaa !20  ; 2 uses
  %i.cz = icmp ugt i16 %.else.val111, %i.cy
  br i1 %i.cz, label %.else121, label %bb.ak

.else121:                                         ; preds = %.cont108.thread
  %.else.val122 = load ptr, ptr %0, align 8, !tbaa !23
  br label %.cont119

.cont119:                                         ; preds = %.cont108, %.else121
  %i.da = phi i16 [ %.else.val111, %.else121 ], [ %.sroa.9.0.ph, %.cont108 ]
  %i.db = phi i16 [ %i.cy, %.else121 ], [ %i.cw, %.cont108 ] ; 2 uses
  %i.dc = phi ptr [ %.else.val122, %.else121 ], [ %.sroa.0.0.ph, %.cont108 ]
  %i.dd = zext i16 %i.db to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  %narrow = sub nuw i16 %i.da, %i.db
  %i.df = zext i16 %narrow to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.de, i8 0, i64 %i.dg, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %.cont108.thread, %.cont119, %.cont108
  br i1 %.not, label %mbedtls_mpi_grow.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !20 ; 2 uses
  %i.dj = load i16, ptr %i.r, align 2, !tbaa !20  ; 3 uses
  %i.dk = icmp ugt i16 %i.di, %i.dj
  br i1 %i.dk, label %bb.am, label %mbedtls_mpi_grow.exit

bb.am:                                            ; preds = %bb.al
  %i.dl = load ptr, ptr %1, align 8, !tbaa !23
  %i.dm = zext i16 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %narrow82 = sub nuw i16 %i.di, %i.dj
  %i.do = zext i16 %narrow82 to i64
  %i.dp = shl nuw nsw i64 %i.do, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dn, i8 0, i64 %i.dp, i1 false)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.ae, %bb.ak, %bb.al, %bb.am, %bb.ad
  %.058 = phi ptr [ null, %bb.ae ], [ null, %bb.ad ], [ %i.cm, %bb.ak ], [ %i.cm, %bb.am ], [ %i.cm, %bb.al ] ; 2 uses
  %.1 = phi i32 [ -141, %bb.ae ], [ %i.ci, %bb.ad ], [ 0, %bb.ak ], [ 0, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %.not.i98 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i98, label %mbedtls_mpi_free.exit, label %bb.an

bb.an:                                            ; preds = %mbedtls_mpi_grow.exit
  %i.dq = zext nneg i16 %.sroa.9.0.ph to i64
  %i.dr = shl nuw nsw i64 %i.dq, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %.sroa.0.0.ph, i64 noundef %i.dr) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.z, %.thread142, %mbedtls_mpi_grow.exit, %bb.an
  %.1166 = phi i32 [ %.1, %bb.an ], [ %.1, %mbedtls_mpi_grow.exit ], [ -141, %.thread142 ], [ -141, %bb.z ]
  %.058165 = phi ptr [ %.058, %bb.an ], [ %.058, %mbedtls_mpi_grow.exit ], [ null, %.thread142 ], [ null, %bb.z ]
  call void @free(ptr noundef %.058165) #17
  br label %mbedtls_mpi_cmp_mpi.exit.thread133

mbedtls_mpi_cmp_mpi.exit.thread133:               ; preds = %bb.v, %mbedtls_mpi_cmp_mpi.exit.thread, %bb.l, %bb.x, %.thread170, %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_get_bit.exit, %mbedtls_mpi_cmp_int.exit95, %mbedtls_mpi_free.exit
  %.0 = phi i32 [ %.1166, %mbedtls_mpi_free.exit ], [ -135, %mbedtls_mpi_cmp_int.exit ], [ -135, %mbedtls_mpi_cmp_int.exit95 ], [ -135, %mbedtls_mpi_get_bit.exit ], [ -135, %mbedtls_mpi_cmp_mpi.exit ], [ -135, %.thread170 ], [ -135, %bb.x ], [ -135, %mbedtls_mpi_cmp_mpi.exit.thread ], [ -135, %bb.l ], [ -135, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare void @mbedtls_mpi_core_gcd_modinv_odd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_gcd(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 4 uses
  store i16 0, ptr %i.b, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 4 uses
  store i16 0, ptr %i.d, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.e = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %3, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %mbedtls_mpi_grow.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %4, ptr noundef %2) ; 2 uses
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.c, label %mbedtls_mpi_grow.exit

bb.c:                                             ; preds = %bb.b
  store i16 1, ptr %i.c, align 8, !tbaa !21
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.g = load i16, ptr %i.d, align 2, !tbaa !20   ; 5 uses
  %narrow = call i16 @llvm.umax.i16(i16 %i.g, i16 1) ; 4 uses
  %i.h = zext i16 %narrow to i64                  ; 2 uses
  %i.i = icmp ugt i16 %i.g, 10000
  br i1 %i.i, label %mbedtls_mpi_grow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr %i.b, align 2, !tbaa !20   ; 3 uses
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %i.l = icmp ugt i16 %narrow, %i.j
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 8) #18 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %mbedtls_mpi_grow.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %3, align 8, !tbaa !23     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.o, i64 %i.p, i1 false)
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.o, i64 noundef %i.p) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i16 %narrow, ptr %i.b, align 2, !tbaa !20
  store ptr %i.m, ptr %3, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pre-phi = phi i64 [ %i.h, %bb.h ], [ %i.k, %bb.d ] ; 6 uses
  %i.q = phi i16 [ %narrow, %bb.h ], [ %i.j, %bb.d ] ; 4 uses
  %i.r = icmp ugt i16 %i.q, 10000
  br i1 %i.r, label %mbedtls_mpi_grow.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = zext nneg i16 %i.g to i64
  %i.t = icmp samesign ugt i16 %i.q, %i.g
  br i1 %i.t, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.u = call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #18 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %mbedtls_mpi_grow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %4, align 8, !tbaa !23     ; 3 uses
  %.not.i27 = icmp eq ptr %i.w, null
  br i1 %.not.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.x, i1 false)
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.w, i64 noundef %i.x) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i16 %i.q, ptr %i.d, align 2, !tbaa !20
  store ptr %i.u, ptr %4, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.y = phi i16 [ %i.q, %bb.n ], [ %i.g, %bb.j ]
  %i.z = load ptr, ptr %3, align 8, !tbaa !23     ; 5 uses
  %i.aa = call i64 @mbedtls_mpi_core_check_zero_ct(ptr noundef %i.z, i64 noundef %.pre-phi) #17
  %i.ab = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #17, !srcloc !56
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ad = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %4)
  br label %mbedtls_mpi_grow.exit

bb.q:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr %4, align 8, !tbaa !23    ; 5 uses
  %i.af = zext nneg i16 %i.y to i64               ; 3 uses
  %i.ag = call i64 @mbedtls_mpi_core_check_zero_ct(ptr noundef %i.ae, i64 noundef %i.af) #17
  %i.ah = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #17, !srcloc !56
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.r, label %.lr.ph.i

bb.r:                                             ; preds = %bb.q
  %i.aj = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %3)
  br label %mbedtls_mpi_grow.exit

.lr.ph.i:                                         ; preds = %bb.q, %bb.t
  %.011.i = phi i64 [ %i.ap, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %.not.i29 = icmp eq i64 %i.al, 0
  br i1 %.not.i29, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.am = shl nuw nsw i64 %.011.i, 6
  %i.an = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.al, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.am
  br label %.lr.ph.i31.preheader

bb.t:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %.pre-phi
  br i1 %exitcond.not.i, label %.lr.ph.i31.preheader, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i31.preheader:                             ; preds = %bb.t, %bb.s
  %.08.i = phi i64 [ %i.ao, %bb.s ], [ 0, %bb.t ] ; 2 uses
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %bb.v
  %.011.i32 = phi i64 [ %i.av, %bb.v ], [ 0, %.lr.ph.i31.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.011.i32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %.not.i33 = icmp eq i64 %i.ar, 0
  br i1 %.not.i33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i31
  %i.as = shl nuw nsw i64 %.011.i32, 6
  %i.at = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ar, i1 true)
  %i.au = or disjoint i64 %i.at, %i.as
  br label %mbedtls_mpi_shift_r.exit39

bb.v:                                             ; preds = %.lr.ph.i31
  %i.av = add nuw nsw i64 %.011.i32, 1            ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %i.av, %i.af
  br i1 %exitcond.not.i35, label %mbedtls_mpi_shift_r.exit39, label %.lr.ph.i31, !llvm.loop !0

mbedtls_mpi_shift_r.exit39:                       ; preds = %bb.v, %bb.u
  %.08.i34 = phi i64 [ %i.au, %bb.u ], [ 0, %bb.v ] ; 2 uses
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.z, i64 noundef %.pre-phi, i64 noundef %.08.i) #17
  call void @mbedtls_mpi_core_shift_r(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef %.08.i34) #17
  %i.aw = call i64 @mbedtls_mpi_core_lt_ct(ptr noundef nonnull %i.ae, ptr noundef %i.z, i64 noundef %.pre-phi) #17
  call void @mbedtls_mpi_core_cond_swap(ptr noundef %i.z, ptr noundef nonnull %i.ae, i64 noundef %.pre-phi, i64 noundef %i.aw) #17
  %i.ax = call i32 @mbedtls_mpi_gcd_modinv_odd(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 2 uses
  %.not25 = icmp eq i32 %i.ax, 0
  br i1 %.not25, label %bb.w, label %mbedtls_mpi_grow.exit

bb.w:                                             ; preds = %mbedtls_mpi_shift_r.exit39
  %i.ay = call i64 @llvm.umin.i64(i64 %.08.i, i64 %.08.i34)
  %i.az = call i32 @mbedtls_mpi_shift_l(ptr noundef %0, i64 noundef %i.ay)
  br label %mbedtls_mpi_grow.exit

mbedtls_mpi_grow.exit:                            ; preds = %bb.k, %bb.i, %bb.e, %bb.c, %bb.w, %bb.r, %bb.p, %mbedtls_mpi_shift_r.exit39, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.f, %bb.b ], [ %i.ax, %mbedtls_mpi_shift_r.exit39 ], [ -141, %bb.c ], [ %i.ad, %bb.p ], [ %i.aj, %bb.r ], [ %i.az, %bb.w ], [ -141, %bb.e ], [ -141, %bb.k ], [ -141, %bb.i ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not.i40 = icmp eq ptr %i.ba, null
  br i1 %.not.i40, label %mbedtls_mpi_free.exit, label %bb.x

bb.x:                                             ; preds = %mbedtls_mpi_grow.exit
  %i.bb = load i16, ptr %i.b, align 2, !tbaa !20
  %i.bc = zext i16 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_grow.exit, %bb.x
  %i.be = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i41 = icmp eq ptr %i.be, null
  br i1 %.not.i41, label %mbedtls_mpi_free.exit42, label %bb.y

bb.y:                                             ; preds = %mbedtls_mpi_free.exit
  %i.bf = load i16, ptr %i.d, align 2, !tbaa !20
  %i.bg = zext i16 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.be, i64 noundef %i.bh) #17
  br label %mbedtls_mpi_free.exit42

mbedtls_mpi_free.exit42:                          ; preds = %mbedtls_mpi_free.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

declare i64 @mbedtls_mpi_core_check_zero_ct(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_fill_random(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %mbedtls_mpi_resize_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !20
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.h, i64 noundef %i.l) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %mbedtls_mpi_resize_clear.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !20
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = icmp eq i64 %i.e, %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !21
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.not.i11.i = icmp eq ptr %i.s, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = shl nuw nsw i64 %i.q, 3
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.s, i64 noundef %i.v) #17
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.w, align 8, !tbaa !21
  store i16 0, ptr %i.o, align 2, !tbaa !20
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.x = icmp samesign ugt i64 %i.e, 10000
  br i1 %i.x, label %mbedtls_mpi_resize_clear.exit, label %bb.j

bb.j:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.y = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.e, i64 noundef 8) #18 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %mbedtls_mpi_resize_clear.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = trunc nuw nsw i64 %i.e to i16
  store i16 %i.aa, ptr %i.o, align 2, !tbaa !20
  store ptr %i.y, ptr %0, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !20
  %i.ae = zext i16 %i.ad to i64
  %i.af = tail call i32 @mbedtls_mpi_core_fill_random(ptr noundef %i.ab, i64 noundef %i.ae, i64 noundef %1, ptr noundef %2, ptr noundef %3) #17
  br label %mbedtls_mpi_resize_clear.exit

mbedtls_mpi_resize_clear.exit:                    ; preds = %bb.b, %bb.e, %bb.j, %mbedtls_mpi_free.exit12.i, %bb.l
  %.011 = phi i32 [ -141, %bb.j ], [ %i.af, %bb.l ], [ -141, %mbedtls_mpi_free.exit12.i ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.011
}

declare i32 @mbedtls_mpi_core_fill_random(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_random(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %mbedtls_mpi_resize_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !20   ; 6 uses
  %.not44.i.i = icmp eq i16 %i.c, 0               ; 2 uses
  br i1 %.not44.i.i, label %.lr.ph51.i.i, label %.lr.ph.i.i
end_hunk_5
begin_hunk_6_@mbedtls_mpi_is_prime_ext:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -14, 2) i32 @mpi_check_small_factors(ptr nofree noundef readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %.fr36 = freeze i64 %i.b                        ; 3 uses
  %i.c = and i64 %.fr36, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mbedtls_mpi_mod_int.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge
  %.031 = phi i32 [ 3, %.preheader ], [ %i.br, %.critedge ] ; 5 uses
  %.01030 = phi i64 [ 0, %.preheader ], [ %i.bs, %.critedge ] ; 2 uses
  %i.g = zext i32 %.031 to i64                    ; 9 uses
  switch i32 %.031, label %bb.c [
    i32 0, label %mbedtls_mpi_mod_int.exit
    i32 1, label %..thread_crit_edge
  ]

..thread_crit_edge:                               ; preds = %bb.b
  %.pre = load i16, ptr %i.e, align 2, !tbaa !20
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 2, !tbaa !20   ; 5 uses
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.threadsplit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %.031, 2
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i16 %i.h to i64                     ; 4 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i16 %i.h, 1
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.k, 65534
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.042.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.f ]
  %.03541.i = phi i64 [ %i.k, %.new ], [ %i.ae, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.m = getelementptr [8 x i8], ptr %i.a, i64 %.03541.i
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %.fr40.i = freeze i64 %i.o                      ; 2 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %.042.i, i64 %.fr40.i, i64 32)
  %i.q = urem i64 %i.p, %i.g
  %i.r = and i64 %.fr40.i, 4294967295
  %i.s = shl nuw i64 %i.q, 32
  %i.t = or disjoint i64 %i.s, %i.r
  %i.u = urem i64 %i.t, %i.g
  %i.v = getelementptr [8 x i8], ptr %i.a, i64 %.03541.i
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %.fr40.i.1 = freeze i64 %i.x                    ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %.fr40.i.1, i64 32)
  %i.z = urem i64 %i.y, %i.g
  %i.aa = and i64 %.fr40.i.1, 4294967295
  %i.ab = shl nuw i64 %i.z, 32
  %i.ac = or disjoint i64 %i.ab, %i.aa
  %i.ad = urem i64 %i.ac, %i.g                    ; 3 uses
  %i.ae = add nsw i64 %.03541.i, -2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !2

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %.042.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.ad, %.unr-lcssa ]
  %.03541.i.epil.init = phi i64 [ %i.k, %bb.e ], [ %i.ae, %.unr-lcssa ]
  %lcmp.mod65 = trunc i16 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.af = getelementptr [8 x i8], ptr %i.a, i64 %.03541.i.epil.init
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26
  %.fr40.i.epil = freeze i64 %i.ah                ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %.042.i.epil.init, i64 %.fr40.i.epil, i64 32)
  %i.aj = urem i64 %i.ai, %i.g
  %i.ak = and i64 %.fr40.i.epil, 4294967295
  %i.al = shl nuw i64 %i.aj, 32
  %i.am = or disjoint i64 %i.al, %i.ak
  %i.an = urem i64 %i.am, %i.g
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ad, %.unr-lcssa ], [ %i.an, %.epil.preheader ] ; 3 uses
  %i.ao = load i16, ptr %i.f, align 8, !tbaa !21
  %i.ap = icmp slt i16 %i.ao, 0
  %i.aq = icmp ne i64 %.lcssa, 0
  %or.cond.i = and i1 %i.ap, %i.aq
  %i.ar = sub nsw i64 %i.g, %.lcssa
  %spec.select.i = select i1 %or.cond.i, i64 %i.ar, i64 %.lcssa
  %i.as = icmp eq i64 %spec.select.i, 0
  br i1 %i.as, label %.threadsplit, label %.critedge

.threadsplit:                                     ; preds = %bb.g, %bb.c
  %i.at = icmp ne i32 %.031, 0
  %i.au = zext i1 %i.at to i64
  br label %.thread

.thread:                                          ; preds = %.threadsplit, %..thread_crit_edge
  %i.av = phi i16 [ %.pre, %..thread_crit_edge ], [ %i.h, %.threadsplit ] ; 2 uses
  %.031.lcssa39 = phi i64 [ 1, %..thread_crit_edge ], [ %i.au, %.threadsplit ] ; 3 uses
  %.not44.i.i = icmp eq i16 %i.av, 0
  br i1 %.not44.i.i, label %.lr.ph51.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread
  %i.aw = zext i16 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.aw, %.lr.ph.i.i ], [ %i.ba, %bb.i ] ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.a, i64 %.03545.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.az, 0
  br i1 %.not39.i.i, label %bb.i, label %.lr.ph51.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i64 %.03545.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %.lr.ph51.i.i, label %bb.h, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.i, %bb.h, %.thread
  %.035.lcssa.i.i = phi i64 [ 0, %.thread ], [ %.03545.i.i, %bb.h ], [ 0, %bb.i ] ; 4 uses
  %i.bb = or i64 %.035.lcssa.i.i, %.031.lcssa39
  %or.cond.i.i = icmp eq i64 %i.bb, 0
  br i1 %or.cond.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph51.i.i
  %i.bc = icmp ugt i64 %.035.lcssa.i.i, %.031.lcssa39
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = load i16, ptr %i.f, align 8, !tbaa !21
  %i.be = sext i16 %i.bd to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = icmp samesign ult i64 %.035.lcssa.i.i, %.031.lcssa39
  br i1 %i.bf, label %mbedtls_mpi_mod_int.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load i16, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %or.cond = icmp slt i16 %i.bg, 0
  br i1 %or.cond, label %mbedtls_mpi_mod_int.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.m
  %i.bh = icmp eq i64 %.035.lcssa.i.i, 0          ; 2 uses
  %i.bi = icmp ugt i64 %.fr36, %i.g
  br i1 %i.bi, label %.preheader.i.i.us, label %.preheader.preheader.i.i.split

.preheader.i.i.us:                                ; preds = %.preheader.preheader.i.i
  br i1 %i.bh, label %mbedtls_mpi_cmp_int.exit.thread, label %.split.us

.preheader.preheader.i.i.split:                   ; preds = %.preheader.preheader.i.i
  %i.bj = icmp uge i64 %.fr36, %i.g
  %brmerge = or i1 %i.bj, %i.bh
  br i1 %brmerge, label %mbedtls_mpi_cmp_int.exit.thread, label %.split.us34, !llvm.loop !7

.split.us:                                        ; preds = %.preheader.i.i.us
  %i.bk = zext nneg i16 %i.bg to i32
  br label %mbedtls_mpi_cmp_int.exit

.split.us34:                                      ; preds = %.preheader.preheader.i.i.split
  %i.bl = zext nneg i16 %i.bg to i32
  %i.bm = sub nsw i32 0, %i.bl
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.k, %.split.us, %.split.us34
  %.036.i.i = phi i32 [ %i.bk, %.split.us ], [ %i.be, %bb.k ], [ %i.bm, %.split.us34 ]
  %.036.i.i.fr = freeze i32 %.036.i.i
  %i.bn = icmp eq i32 %.036.i.i.fr, 0
  br i1 %i.bn, label %mbedtls_mpi_cmp_int.exit.thread, label %mbedtls_mpi_mod_int.exit

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %.preheader.preheader.i.i.split, %.preheader.i.i.us, %.lr.ph51.i.i, %mbedtls_mpi_cmp_int.exit
  br label %mbedtls_mpi_mod_int.exit

.critedge:                                        ; preds = %bb.d, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr @small_prime_gaps, i64 %.01030
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !28
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %.031, %i.bq
  %i.bs = add nuw nsw i64 %.01030, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, 167
  br i1 %exitcond.not, label %mbedtls_mpi_mod_int.exit, label %bb.b, !llvm.loop !57

mbedtls_mpi_mod_int.exit:                         ; preds = %bb.b, %.critedge, %bb.m, %bb.l, %mbedtls_mpi_cmp_int.exit.thread, %mbedtls_mpi_cmp_int.exit, %bb.a
  %.012 = phi i32 [ -14, %bb.a ], [ -14, %bb.m ], [ -14, %bb.l ], [ 1, %mbedtls_mpi_cmp_int.exit.thread ], [ -14, %mbedtls_mpi_cmp_int.exit ], [ 0, %.critedge ], [ -12, %bb.b ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mpi_miller_rabin(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 11 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 9 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 22 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i16 1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 3 uses
  store i16 0, ptr %i.c, align 2, !tbaa !20
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 1, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 3 uses
  store i16 0, ptr %i.e, align 2, !tbaa !20
  store ptr null, ptr %6, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.g, align 2, !tbaa !20
  store ptr null, ptr %7, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i16 1, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 6 uses
  store i16 0, ptr %i.i, align 2, !tbaa !20
  store ptr null, ptr %8, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 1, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 2 uses
  store i16 0, ptr %i.k, align 2, !tbaa !20
  store ptr null, ptr %9, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 1, ptr %i.a, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 1, ptr %i.m, align 2, !tbaa !20
  store ptr %i.a, ptr %4, align 8, !tbaa !23
  %i.n = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %5, ptr noundef readonly %0, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %mbedtls_mpi_fill_random.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = load i16, ptr %i.c, align 2, !tbaa !20   ; 2 uses
  %i.p = zext i16 %i.o to i64                     ; 5 uses
  %.not12.i = icmp eq i16 %i.o, 0                 ; 4 uses
  br i1 %.not12.i, label %mbedtls_mpi_lsb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load ptr, ptr %5, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.011.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw nsw i64 %.011.i, 6
  %i.u = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.s, i1 true)
  %i.v = or disjoint i64 %i.u, %i.t
  br label %mbedtls_mpi_lsb.exit

bb.e:                                             ; preds = %bb.c
  %i.w = add nuw nsw i64 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.p
  br i1 %exitcond.not.i, label %mbedtls_mpi_lsb.exit, label %bb.c, !llvm.loop !0

mbedtls_mpi_lsb.exit:                             ; preds = %bb.e, %bb.b, %bb.d
  %.08.i = phi i64 [ %i.v, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ] ; 4 uses
  %i.x = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %6, ptr noundef nonnull %5) ; 2 uses
  %.not33 = icmp eq i32 %i.x, 0
  br i1 %.not33, label %bb.f, label %mbedtls_mpi_fill_random.exit.thread

bb.f:                                             ; preds = %mbedtls_mpi_lsb.exit
  %i.y = load i16, ptr %i.e, align 2, !tbaa !20   ; 2 uses
  %.not.i40 = icmp eq i16 %i.y, 0
  br i1 %.not.i40, label %mbedtls_mpi_shift_r.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %6, align 8, !tbaa !23
  %i.aa = zext i16 %i.y to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef %i.z, i64 noundef %i.aa, i64 noundef %.08.i) #17
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.f, %bb.g
  %.not161 = icmp eq i64 %1, 0
  br i1 %.not161, label %mbedtls_mpi_fill_random.exit.thread, label %.critedge.preheader.lr.ph

.critedge.preheader.lr.ph:                        ; preds = %mbedtls_mpi_shift_r.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = icmp ugt i64 %.08.i, 1
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.lr.ph, %mbedtls_mpi_cmp_mpi.exit65.thread
  %.promoted = phi i16 [ 0, %.critedge.preheader.lr.ph ], [ %.promoted176, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.019154 = phi i64 [ 0, %.critedge.preheader.lr.ph ], [ %i.gh, %mbedtls_mpi_cmp_mpi.exit65.thread ]
  %.promoted149 = load ptr, ptr %8, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.ad = phi ptr [ %.promoted149, %.critedge.preheader ], [ %i.au, %.critedge.backedge ] ; 6 uses
  %i.ae = phi i16 [ %.promoted, %.critedge.preheader ], [ %i.av, %.critedge.backedge ] ; 4 uses
  %.020 = phi i32 [ 0, %.critedge.preheader ], [ %i.bj, %.critedge.backedge ] ; 2 uses
  %i.af = load i16, ptr %i.ab, align 2, !tbaa !20 ; 5 uses
  %i.ag = zext i16 %i.af to i64                   ; 3 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = icmp eq i16 %i.af, 0
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.critedge
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %mbedtls_mpi_fill_random.exit.thread111, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = zext i16 %i.ae to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.ak) #17
  br label %mbedtls_mpi_fill_random.exit.thread111

bb.j:                                             ; preds = %.critedge
  %i.al = zext i16 %i.ae to i64                   ; 2 uses
  %i.am = icmp eq i16 %i.af, %i.ae
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %mbedtls_mpi_fill_random.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i11.i.i, label %mbedtls_mpi_free.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = shl nuw nsw i64 %i.al, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.an) #17
  br label %mbedtls_mpi_free.exit12.i.i

mbedtls_mpi_free.exit12.i.i:                      ; preds = %bb.m, %bb.l
  %i.ao = icmp ugt i16 %i.af, 10000
  br i1 %i.ao, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %bb.n

bb.n:                                             ; preds = %mbedtls_mpi_free.exit12.i.i
  %i.ap = call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.ag, i64 noundef 8) #18 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %mbedtls_mpi_fill_random.exit

mbedtls_mpi_fill_random.exit:                     ; preds = %bb.n, %bb.k
  %.pre-phi = phi i64 [ %i.ag, %bb.n ], [ %i.al, %bb.k ]
  %i.ar = phi ptr [ %i.ap, %bb.n ], [ %i.ad, %bb.k ] ; 3 uses
  %i.as = phi i16 [ %i.af, %bb.n ], [ %i.ae, %bb.k ] ; 2 uses
  %i.at = call i32 @mbedtls_mpi_core_fill_random(ptr noundef %i.ar, i64 noundef %.pre-phi, i64 noundef %i.ah, ptr noundef %2, ptr noundef %3) #17 ; 2 uses
  %.not34 = icmp eq i32 %i.at, 0
  br i1 %.not34, label %mbedtls_mpi_fill_random.exit.thread111, label %mbedtls_mpi_fill_random.exit.thread.loopexit139

mbedtls_mpi_fill_random.exit.thread111:           ; preds = %bb.i, %bb.h, %mbedtls_mpi_fill_random.exit
  %i.au = phi ptr [ %i.ar, %mbedtls_mpi_fill_random.exit ], [ null, %bb.h ], [ null, %bb.i ] ; 9 uses
  %i.av = phi i16 [ %i.as, %mbedtls_mpi_fill_random.exit ], [ 0, %bb.h ], [ 0, %bb.i ] ; 5 uses
  %i.aw = zext i16 %i.av to i64                   ; 4 uses
  %i.ax = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.au, i64 noundef %i.aw) #17
  %i.ay = load ptr, ptr %5, align 8, !tbaa !23    ; 7 uses
  %i.az = call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.ay, i64 noundef %i.p) #17 ; 2 uses
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mbedtls_mpi_fill_random.exit.thread111
  %i.bb = add nsw i64 %i.aw, -1                   ; 2 uses
  %i.bc = shl nsw i64 %i.bb, 6
  %i.bd = xor i64 %i.bc, -1
  %i.be = add i64 %i.az, %i.bd
  %notmask = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask, -1
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bb ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = and i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %mbedtls_mpi_fill_random.exit.thread111
  %i.bj = add nuw nsw i32 %.020, 1
  %exitcond = icmp eq i32 %.020, 31
  br i1 %exitcond, label %mbedtls_mpi_fill_random.exit.thread.loopexit139, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not44.i = icmp eq i16 %i.av, 0                ; 3 uses
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.q, %bb.r
  %.03545.i = phi i64 [ %i.bn, %bb.r ], [ %i.aw, %bb.q ] ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !26
  %.not39.i = icmp eq i64 %i.bm, 0
  br i1 %.not39.i, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %.lr.ph.i42
  %i.bn = add nsw i64 %.03545.i, -1               ; 2 uses
  %.not.i43 = icmp eq i64 %i.bn, 0
  br i1 %.not.i43, label %._crit_edge.i, label %.lr.ph.i42, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i42, %bb.q
  %.035.lcssa.i = phi i64 [ 0, %bb.q ], [ 0, %bb.r ], [ %.03545.i, %.lr.ph.i42 ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %._crit_edge.i, %bb.s
  %.049.i = phi i64 [ %i.br, %bb.s ], [ %i.p, %._crit_edge.i ] ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !26
  %.not41.i = icmp eq i64 %i.bq, 0
  br i1 %.not41.i, label %bb.s, label %._crit_edge52.i

bb.s:                                             ; preds = %.lr.ph51.i
  %i.br = add nsw i64 %.049.i, -1                 ; 2 uses
  %.not40.i = icmp eq i64 %i.br, 0
  br i1 %.not40.i, label %._crit_edge52.i, label %.lr.ph51.i, !llvm.loop !6

._crit_edge52.i:                                  ; preds = %bb.s, %.lr.ph51.i, %._crit_edge.i
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %bb.s ], [ %.049.i, %.lr.ph51.i ] ; 3 uses
  %i.bs = or i64 %.0.lcssa.i, %.035.lcssa.i
  %or.cond.i = icmp eq i64 %i.bs, 0
  %i.bt = icmp ugt i64 %.035.lcssa.i, %.0.lcssa.i
  %or.cond241 = or i1 %or.cond.i, %i.bt
  br i1 %or.cond241, label %.critedge.backedge, label %bb.t

bb.t:                                             ; preds = %._crit_edge52.i
  %i.bu = icmp ugt i64 %.0.lcssa.i, %.035.lcssa.i
  %i.bv = load i16, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br i1 %i.bu, label %mbedtls_mpi_cmp_mpi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp slt i16 %i.bv, 0
  %.not42.i256 = icmp eq i64 %.035.lcssa.i, 0
  %or.cond266 = or i1 %i.bw, %.not42.i256
  br i1 %or.cond266, label %.critedge.backedge, label %.lr.ph258

.preheader.i:                                     ; preds = %bb.v
  %.not42.i = icmp eq i64 %i.bx, 0
  br i1 %.not42.i, label %.critedge.backedge, label %.lr.ph258, !llvm.loop !7

.lr.ph258:                                        ; preds = %bb.u, %.preheader.i
  %.1.i257 = phi i64 [ %i.bx, %.preheader.i ], [ %.035.lcssa.i, %bb.u ]
  %i.bx = add nsw i64 %.1.i257, -1                ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bx
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %.critedge.backedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph258
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %mbedtls_mpi_cmp_mpi.exit.thread, label %.preheader.i, !llvm.loop !7

mbedtls_mpi_cmp_mpi.exit:                         ; preds = %bb.t
  %i.ce = icmp slt i16 %i.bv, 1
  %brmerge = or i1 %i.ce, %.not44.i
  br i1 %brmerge, label %.critedge.backedge, label %.lr.ph.i.i.preheader

mbedtls_mpi_cmp_mpi.exit.thread:                  ; preds = %bb.v
  br i1 %.not44.i, label %.critedge.backedge, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_cmp_mpi.exit.thread
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.w
  %.03545.i.i = phi i64 [ %i.ci, %bb.w ], [ %i.aw, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %i.au, i64 %.03545.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !26
  %.not39.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not39.i.i, label %bb.w, label %.lr.ph51.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.ci = add nsw i64 %.03545.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %.critedge.backedge, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %.lr.ph.i.i
  %i.cj = icmp ugt i64 %.03545.i.i, 1
  br i1 %i.cj, label %mbedtls_mpi_cmp_int.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph51.i.i
  %i.ck = load i64, ptr %i.au, align 8, !tbaa !26
  %i.cl = icmp ult i64 %i.ck, 2
  br i1 %i.cl, label %.critedge.backedge, label %mbedtls_mpi_cmp_int.exit

.critedge.backedge:                               ; preds = %.preheader.i, %.lr.ph258, %bb.w, %.preheader.i.i.preheader, %mbedtls_mpi_cmp_mpi.exit, %mbedtls_mpi_cmp_mpi.exit.thread, %._crit_edge52.i, %bb.u
  br label %.critedge, !llvm.loop !58

mbedtls_mpi_cmp_int.exit:                         ; preds = %.lr.ph51.i.i, %.preheader.i.i.preheader
  store i16 %i.av, ptr %i.i, align 2
  store ptr %i.au, ptr %8, align 8
  store i16 1, ptr %i.h, align 8
  %i.cm = call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef nonnull %8, ptr noundef nonnull readonly %8, ptr noundef nonnull readonly %6, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %9) ; 2 uses
  %.not35 = icmp eq i32 %i.cm, 0
  br i1 %.not35, label %bb.x, label %mbedtls_mpi_fill_random.exit.thread

bb.x:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.cn = load i16, ptr %i.i, align 2, !tbaa !20  ; 9 uses
  %.not44.i44 = icmp eq i16 %i.cn, 0
  br i1 %.not44.i44, label %._crit_edge.i48, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.x
  %i.co = zext i16 %i.cn to i64
  %i.cp = load ptr, ptr %8, align 8, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i45
  %.03545.i46 = phi i64 [ %i.co, %.lr.ph.i45 ], [ %i.ct, %bb.z ] ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %.03545.i46
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26
  %.not39.i47 = icmp eq i64 %i.cs, 0
  br i1 %.not39.i47, label %bb.z, label %._crit_edge.i48

bb.z:                                             ; preds = %bb.y
  %i.ct = add nsw i64 %.03545.i46, -1             ; 2 uses
  %.not.i64 = icmp eq i64 %i.ct, 0
  br i1 %.not.i64, label %._crit_edge.i48, label %bb.y, !llvm.loop !1

._crit_edge.i48:                                  ; preds = %bb.z, %bb.y, %bb.x
  %.035.lcssa.i49 = phi i64 [ 0, %bb.x ], [ 0, %bb.z ], [ %.03545.i46, %bb.y ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i54, label %.lr.ph51.i51

.lr.ph51.i51:                                     ; preds = %._crit_edge.i48, %bb.aa
  %.049.i52 = phi i64 [ %i.cx, %bb.aa ], [ %i.p, %._crit_edge.i48 ] ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i52
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !26
  %.not41.i53 = icmp eq i64 %i.cw, 0
  br i1 %.not41.i53, label %bb.aa, label %._crit_edge52.i54

bb.aa:                                            ; preds = %.lr.ph51.i51
  %i.cx = add nsw i64 %.049.i52, -1               ; 2 uses
  %.not40.i63 = icmp eq i64 %i.cx, 0
  br i1 %.not40.i63, label %._crit_edge52.i54, label %.lr.ph51.i51, !llvm.loop !6

._crit_edge52.i54:                                ; preds = %bb.aa, %.lr.ph51.i51, %._crit_edge.i48
  %.0.lcssa.i55 = phi i64 [ 0, %._crit_edge.i48 ], [ 0, %bb.aa ], [ %.049.i52, %.lr.ph51.i51 ] ; 3 uses
  %i.cy = or i64 %.0.lcssa.i55, %.035.lcssa.i49
  %or.cond.i56 = icmp eq i64 %i.cy, 0
  br i1 %or.cond.i56, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge52.i54
  %i.cz = icmp ugt i64 %.035.lcssa.i49, %.0.lcssa.i55
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = load i16, ptr %i.h, align 8, !tbaa !21
  %i.db = sext i16 %i.da to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.ad:                                            ; preds = %bb.ab
  %i.dc = icmp ugt i64 %.0.lcssa.i55, %.035.lcssa.i49
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i16, ptr %i.b, align 8, !tbaa !21
  %i.de = sext i16 %i.dd to i32
  %i.df = sub nsw i32 0, %i.de
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.af:                                            ; preds = %bb.ad
  %i.dg = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  %i.dh = icmp sgt i16 %i.dg, 0
  %i.di = load i16, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br i1 %i.dh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dj = icmp slt i16 %i.di, 0
  br i1 %i.dj, label %mbedtls_mpi_cmp_mpi.exit65.thread120, label %.preheader.preheader.i58

bb.ah:                                            ; preds = %bb.af
  %i.dk = icmp sgt i16 %i.di, 0
  %i.dl = icmp ne i16 %i.dg, 0
  %or.cond43.i57 = and i1 %i.dl, %i.dk
  br i1 %or.cond43.i57, label %mbedtls_mpi_cmp_mpi.exit65.thread120, label %.preheader.preheader.i58

.preheader.preheader.i58:                         ; preds = %bb.ah, %bb.ag
  %i.dm = load ptr, ptr %8, align 8
  %.not42.i61259 = icmp eq i64 %.035.lcssa.i49, 0
  br i1 %.not42.i61259, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261

.preheader.i59:                                   ; preds = %bb.aj
  %.not42.i61 = icmp eq i64 %i.dn, 0
  br i1 %.not42.i61, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.lr.ph261, !llvm.loop !7

.lr.ph261:                                        ; preds = %.preheader.preheader.i58, %.preheader.i59
  %.1.i60260 = phi i64 [ %i.dn, %.preheader.i59 ], [ %.035.lcssa.i49, %.preheader.preheader.i58 ]
  %i.dn = add nsw i64 %.1.i60260, -1              ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !26 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dn
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !26 ; 2 uses
  %i.ds = icmp ugt i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph261
  %i.dt = sext i16 %i.dg to i32
  br label %mbedtls_mpi_cmp_mpi.exit65

bb.aj:                                            ; preds = %.lr.ph261
  %i.du = icmp ult i64 %i.dp, %i.dr
  br i1 %i.du, label %bb.ak, label %.preheader.i59, !llvm.loop !7

bb.ak:                                            ; preds = %bb.aj
  %i.dv = sext i16 %i.dg to i32
  %i.dw = sub nsw i32 0, %i.dv
  br label %mbedtls_mpi_cmp_mpi.exit65

mbedtls_mpi_cmp_mpi.exit65:                       ; preds = %bb.ac, %bb.ae, %bb.ai, %bb.ak
  %.036.i62 = phi i32 [ %i.dt, %bb.ai ], [ %i.db, %bb.ac ], [ %i.df, %bb.ae ], [ %i.dw, %bb.ak ]
  %i.dx = icmp eq i32 %.036.i62, 0
  br i1 %i.dx, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %mbedtls_mpi_cmp_mpi.exit65.thread120

mbedtls_mpi_cmp_mpi.exit65.thread120:             ; preds = %bb.ag, %bb.ah, %mbedtls_mpi_cmp_mpi.exit65
  %i.dy = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %8, i64 noundef 1)
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %mbedtls_mpi_cmp_mpi.exit65.thread, label %.preheader

.preheader:                                       ; preds = %mbedtls_mpi_cmp_mpi.exit65.thread120
  br i1 %i.ac, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.ea = load i16, ptr %i.b, align 8             ; 3 uses
  %i.eb = icmp sgt i16 %i.ea, 0
  %i.ec = icmp slt i16 %i.ea, 0
  %i.ed = sext i16 %i.ea to i32
  %i.ee = sub nsw i32 0, %i.ed
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.ef = phi i16 [ %i.cn, %.lr.ph ], [ %i.fl, %.backedge.backedge ] ; 6 uses
  %.0153 = phi i64 [ 1, %.lr.ph ], [ %.0153.be, %.backedge.backedge ] ; 2 uses
  %.not44.i66 = icmp eq i16 %i.ef, 0
  br i1 %.not44.i66, label %._crit_edge.i70, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.backedge
  %i.eg = zext i16 %i.ef to i64
  %i.eh = load ptr, ptr %8, align 8, !tbaa !23
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i67
  %.03545.i68 = phi i64 [ %i.eg, %.lr.ph.i67 ], [ %i.el, %bb.am ] ; 3 uses
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %.03545.i68
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !26
  %.not39.i69 = icmp eq i64 %i.ek, 0
  br i1 %.not39.i69, label %bb.am, label %._crit_edge.i70

bb.am:                                            ; preds = %bb.al
  %i.el = add nsw i64 %.03545.i68, -1             ; 2 uses
  %.not.i86 = icmp eq i64 %i.el, 0
  br i1 %.not.i86, label %._crit_edge.i70, label %bb.al, !llvm.loop !1

._crit_edge.i70:                                  ; preds = %bb.am, %bb.al, %.backedge
  %.035.lcssa.i71 = phi i64 [ 0, %.backedge ], [ 0, %bb.am ], [ %.03545.i68, %bb.al ] ; 5 uses
  br i1 %.not12.i, label %._crit_edge52.i76, label %.lr.ph51.i73

.lr.ph51.i73:                                     ; preds = %._crit_edge.i70, %bb.an
  %.049.i74 = phi i64 [ %i.ep, %bb.an ], [ %i.p, %._crit_edge.i70 ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.ay, i64 %.049.i74
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !26
  %.not41.i75 = icmp eq i64 %i.eo, 0
  br i1 %.not41.i75, label %bb.an, label %._crit_edge52.i76

bb.an:                                            ; preds = %.lr.ph51.i73
  %i.ep = add nsw i64 %.049.i74, -1               ; 2 uses
  %.not40.i85 = icmp eq i64 %i.ep, 0
  br i1 %.not40.i85, label %._crit_edge52.i76, label %.lr.ph51.i73, !llvm.loop !6

._crit_edge52.i76:                                ; preds = %bb.an, %.lr.ph51.i73, %._crit_edge.i70
  %.0.lcssa.i77 = phi i64 [ 0, %._crit_edge.i70 ], [ 0, %bb.an ], [ %.049.i74, %.lr.ph51.i73 ] ; 3 uses
  %i.eq = or i64 %.0.lcssa.i77, %.035.lcssa.i71
  %or.cond.i78 = icmp eq i64 %i.eq, 0
  br i1 %or.cond.i78, label %.critedge2, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge52.i76
  %i.er = icmp ugt i64 %.035.lcssa.i71, %.0.lcssa.i77
  br i1 %i.er, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.es = load i16, ptr %i.h, align 8, !tbaa !21
  %i.et = sext i16 %i.es to i32
  br label %mbedtls_mpi_cmp_mpi.exit87

bb.aq:                                            ; preds = %bb.ao
  %i.eu = icmp ugt i64 %.0.lcssa.i77, %.035.lcssa.i71
  br i1 %i.eu, label %mbedtls_mpi_cmp_mpi.exit87, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  %i.ew = icmp sgt i16 %i.ev, 0
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ec, label %mbedtls_mpi_cmp_mpi.exit87.thread125, label %.preheader.preheader.i80

bb.at:                                            ; preds = %bb.ar
  %i.ex = icmp ne i16 %i.ev, 0
  %or.cond43.i79 = and i1 %i.ex, %i.eb
  br i1 %or.cond43.i79, label %mbedtls_mpi_cmp_mpi.exit87.thread125, label %.preheader.preheader.i80

.preheader.preheader.i80:                         ; preds = %bb.at, %bb.as
  %i.ey = load ptr, ptr %8, align 8
  %.not42.i83262 = icmp eq i64 %.035.lcssa.i71, 0
  br i1 %.not42.i83262, label %.critedge2, label %.lr.ph264

.preheader.i81:                                   ; preds = %bb.av
  %.not42.i83 = icmp eq i64 %i.ez, 0
  br i1 %.not42.i83, label %.critedge2, label %.lr.ph264, !llvm.loop !7

.lr.ph264:                                        ; preds = %.preheader.preheader.i80, %.preheader.i81
  %.1.i82263 = phi i64 [ %i.ez, %.preheader.i81 ], [ %.035.lcssa.i71, %.preheader.preheader.i80 ]
  %i.ez = add nsw i64 %.1.i82263, -1              ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !26 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ez
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !26 ; 2 uses
  %i.fe = icmp ugt i64 %i.fb, %i.fd
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph264
  %i.ff = sext i16 %i.ev to i32
  br label %mbedtls_mpi_cmp_mpi.exit87

bb.av:                                            ; preds = %.lr.ph264
  %i.fg = icmp ult i64 %i.fb, %i.fd
  br i1 %i.fg, label %bb.aw, label %.preheader.i81, !llvm.loop !7

bb.aw:                                            ; preds = %bb.av
  %i.fh = sext i16 %i.ev to i32
  %i.fi = sub nsw i32 0, %i.fh
  br label %mbedtls_mpi_cmp_mpi.exit87

mbedtls_mpi_cmp_mpi.exit87:                       ; preds = %bb.aq, %bb.ap, %bb.au, %bb.aw
  %.036.i84 = phi i32 [ %i.ff, %bb.au ], [ %i.et, %bb.ap ], [ %i.fi, %bb.aw ], [ %i.ee, %bb.aq ]
  %.not36 = icmp eq i32 %.036.i84, 0
  br i1 %.not36, label %.critedge2, label %mbedtls_mpi_cmp_mpi.exit87.thread125

mbedtls_mpi_cmp_mpi.exit87.thread125:             ; preds = %bb.as, %bb.at, %mbedtls_mpi_cmp_mpi.exit87
  %i.fj = call i32 @mbedtls_mpi_mul_mpi(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %8) ; 2 uses
  %.not37 = icmp eq i32 %i.fj, 0
  br i1 %.not37, label %bb.ax, label %mbedtls_mpi_fill_random.exit.thread

bb.ax:                                            ; preds = %mbedtls_mpi_cmp_mpi.exit87.thread125
  %i.fk = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %0) ; 2 uses
  %.not38 = icmp eq i32 %i.fk, 0
  br i1 %.not38, label %bb.ay, label %mbedtls_mpi_fill_random.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.fl = load i16, ptr %i.i, align 2, !tbaa !20  ; 6 uses
  %.not44.i.i88 = icmp eq i16 %i.fl, 0
  br i1 %.not44.i.i88, label %mbedtls_mpi_cmp_int.exit99.thread, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %bb.ay
  %i.fm = zext i16 %i.fl to i64
  %i.fn = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i.i89
  %.03545.i.i90 = phi i64 [ %i.fm, %.lr.ph.i.i89 ], [ %i.fr, %bb.ba ] ; 3 uses
  %i.fo = getelementptr [8 x i8], ptr %i.fn, i64 %.03545.i.i90
  %i.fp = getelementptr i8, ptr %i.fo, i64 -8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !26
  %.not39.i.i91 = icmp eq i64 %i.fq, 0
  br i1 %.not39.i.i91, label %bb.ba, label %.lr.ph51.i.i92

bb.ba:                                            ; preds = %bb.az
  %i.fr = add nsw i64 %.03545.i.i90, -1           ; 2 uses
  %.not.i.i98 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i98, label %mbedtls_mpi_cmp_int.exit99.thread, label %bb.az, !llvm.loop !1

.lr.ph51.i.i92:                                   ; preds = %bb.az
  %i.fs = icmp ugt i64 %.03545.i.i90, 1
  %i.ft = load i16, ptr %i.h, align 8, !tbaa !21  ; 4 uses
  br i1 %i.fs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph51.i.i92
  %i.fu = sext i16 %i.ft to i32
  br label %mbedtls_mpi_cmp_int.exit99

bb.bc:                                            ; preds = %.lr.ph51.i.i92
  %or.cond135 = icmp slt i16 %i.ft, 0
  br i1 %or.cond135, label %mbedtls_mpi_cmp_int.exit99.thread, label %.preheader.i.i95.preheader

.preheader.i.i95.preheader:                       ; preds = %bb.bc
  %i.fv = load i64, ptr %i.fn, align 8, !tbaa !26 ; 2 uses
  %i.fw = icmp ugt i64 %i.fv, 1
  br i1 %i.fw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.preheader.i.i95.preheader
  %i.fx = zext nneg i16 %i.ft to i32
  br label %mbedtls_mpi_cmp_int.exit99

bb.be:                                            ; preds = %.preheader.i.i95.preheader
  %i.fy = icmp eq i64 %i.fv, 0
  br i1 %i.fy, label %bb.bf, label %.critedge2

bb.bf:                                            ; preds = %bb.be
  %i.fz = zext nneg i16 %i.ft to i32
  %i.ga = sub nsw i32 0, %i.fz
  br label %mbedtls_mpi_cmp_int.exit99

mbedtls_mpi_cmp_int.exit99:                       ; preds = %bb.bb, %bb.bd, %bb.bf
  %.036.i.i97 = phi i32 [ %i.ga, %bb.bf ], [ %i.fu, %bb.bb ], [ %i.fx, %bb.bd ]
  %i.gb = icmp ne i32 %.036.i.i97, 0
  %i.gc = add i64 %.0153, 1                       ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %.08.i
  %or.cond = select i1 %i.gb, i1 %i.gd, i1 false
  br i1 %or.cond, label %.backedge.backedge, label %.critedge2

mbedtls_mpi_cmp_int.exit99.thread:                ; preds = %bb.ba, %bb.bc, %bb.ay
  %.old = add i64 %.0153, 1                       ; 2 uses
  %.old160 = icmp ult i64 %.old, %.08.i
  br i1 %.old160, label %.backedge.backedge, label %.critedge2

.backedge.backedge:                               ; preds = %mbedtls_mpi_cmp_int.exit99.thread, %mbedtls_mpi_cmp_int.exit99
  %.0153.be = phi i64 [ %.old, %mbedtls_mpi_cmp_int.exit99.thread ], [ %i.gc, %mbedtls_mpi_cmp_int.exit99 ]
  br label %.backedge, !llvm.loop !59

.critedge2:                                       ; preds = %mbedtls_mpi_cmp_mpi.exit87, %mbedtls_mpi_cmp_int.exit99, %mbedtls_mpi_cmp_int.exit99.thread, %._crit_edge52.i76, %bb.be, %.preheader.preheader.i80, %.preheader.i81, %.preheader
  %.promoted177 = phi i16 [ %i.cn, %.preheader ], [ %i.ef, %.preheader.i81 ], [ %i.fl, %mbedtls_mpi_cmp_int.exit99 ], [ %i.fl, %mbedtls_mpi_cmp_int.exit99.thread ], [ %i.ef, %._crit_edge52.i76 ], [ %i.fl, %bb.be ], [ %i.ef, %mbedtls_mpi_cmp_mpi.exit87 ], [ %i.ef, %.preheader.preheader.i80 ]
  %i.ge = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %8, ptr noundef nonnull %5)
  %.not39 = icmp eq i32 %i.ge, 0
  br i1 %.not39, label %bb.bg, label %mbedtls_mpi_fill_random.exit.thread

bb.bg:                                            ; preds = %.critedge2
  %i.gf = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %8, i64 noundef 1)
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %mbedtls_mpi_fill_random.exit.thread, label %mbedtls_mpi_cmp_mpi.exit65.thread

mbedtls_mpi_cmp_mpi.exit65.thread:                ; preds = %.preheader.i59, %.preheader.preheader.i58, %._crit_edge52.i54, %bb.bg, %mbedtls_mpi_cmp_mpi.exit65, %mbedtls_mpi_cmp_mpi.exit65.thread120
  %.promoted176 = phi i16 [ %i.cn, %mbedtls_mpi_cmp_mpi.exit65.thread120 ], [ %i.cn, %._crit_edge52.i54 ], [ %.promoted177, %bb.bg ], [ %i.cn, %mbedtls_mpi_cmp_mpi.exit65 ], [ %i.cn, %.preheader.preheader.i58 ], [ %i.cn, %.preheader.i59 ]
  %i.gh = add nuw i64 %.019154, 1                 ; 2 uses
  %exitcond174.not = icmp eq i64 %i.gh, %1
  br i1 %exitcond174.not, label %mbedtls_mpi_fill_random.exit.thread, label %.critedge.preheader, !llvm.loop !60

mbedtls_mpi_fill_random.exit.thread.loopexit139:  ; preds = %mbedtls_mpi_fill_random.exit, %bb.p, %bb.n, %mbedtls_mpi_free.exit12.i.i
  %i.gi = phi ptr [ null, %mbedtls_mpi_free.exit12.i.i ], [ null, %bb.n ], [ %i.au, %bb.p ], [ %i.ar, %mbedtls_mpi_fill_random.exit ]
  %i.gj = phi i16 [ 0, %mbedtls_mpi_free.exit12.i.i ], [ 0, %bb.n ], [ %i.av, %bb.p ], [ %i.as, %mbedtls_mpi_fill_random.exit ]
  %.4.ph140 = phi i32 [ -141, %mbedtls_mpi_free.exit12.i.i ], [ -141, %bb.n ], [ -14, %bb.p ], [ %i.at, %mbedtls_mpi_fill_random.exit ]
  store i16 %i.gj, ptr %i.i, align 2
  store ptr %i.gi, ptr %8, align 8
  br label %mbedtls_mpi_fill_random.exit.thread

mbedtls_mpi_fill_random.exit.thread:              ; preds = %mbedtls_mpi_cmp_int.exit, %mbedtls_mpi_cmp_mpi.exit65.thread, %bb.bg, %.critedge2, %bb.ax, %mbedtls_mpi_cmp_mpi.exit87.thread125, %mbedtls_mpi_shift_r.exit, %mbedtls_mpi_fill_random.exit.thread.loopexit139, %mbedtls_mpi_lsb.exit, %bb.a
  %.4 = phi i32 [ %i.n, %bb.a ], [ %i.x, %mbedtls_mpi_lsb.exit ], [ %.4.ph140, %mbedtls_mpi_fill_random.exit.thread.loopexit139 ], [ %i.fj, %mbedtls_mpi_cmp_mpi.exit87.thread125 ], [ 0, %mbedtls_mpi_shift_r.exit ], [ %i.fk, %bb.ax ], [ -14, %bb.bg ], [ 0, %mbedtls_mpi_cmp_mpi.exit65.thread ], [ %i.cm, %mbedtls_mpi_cmp_int.exit ], [ -14, %.critedge2 ]
  %i.gk = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i100 = icmp eq ptr %i.gk, null
  br i1 %.not.i100, label %mbedtls_mpi_free.exit, label %bb.bh

bb.bh:                                            ; preds = %mbedtls_mpi_fill_random.exit.thread
  %i.gl = load i16, ptr %i.c, align 2, !tbaa !20
  %i.gm = zext i16 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gk, i64 noundef %i.gn) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_fill_random.exit.thread, %bb.bh
  %i.go = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i101 = icmp eq ptr %i.go, null
  br i1 %.not.i101, label %mbedtls_mpi_free.exit102, label %bb.bi

bb.bi:                                            ; preds = %mbedtls_mpi_free.exit
  %i.gp = load i16, ptr %i.e, align 2, !tbaa !20
  %i.gq = zext i16 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.go, i64 noundef %i.gr) #17
  br label %mbedtls_mpi_free.exit102

mbedtls_mpi_free.exit102:                         ; preds = %mbedtls_mpi_free.exit, %bb.bi
  %i.gs = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i103 = icmp eq ptr %i.gs, null
  br i1 %.not.i103, label %mbedtls_mpi_free.exit104, label %bb.bj

bb.bj:                                            ; preds = %mbedtls_mpi_free.exit102
  %i.gt = load i16, ptr %i.g, align 2, !tbaa !20
  %i.gu = zext i16 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gs, i64 noundef %i.gv) #17
  br label %mbedtls_mpi_free.exit104

mbedtls_mpi_free.exit104:                         ; preds = %mbedtls_mpi_free.exit102, %bb.bj
  %i.gw = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %.not.i105 = icmp eq ptr %i.gw, null
  br i1 %.not.i105, label %mbedtls_mpi_free.exit106, label %bb.bk

bb.bk:                                            ; preds = %mbedtls_mpi_free.exit104
  %i.gx = load i16, ptr %i.i, align 2, !tbaa !20
  %i.gy = zext i16 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.gw, i64 noundef %i.gz) #17
  br label %mbedtls_mpi_free.exit106

mbedtls_mpi_free.exit106:                         ; preds = %mbedtls_mpi_free.exit104, %bb.bk
  %i.ha = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %.not.i107 = icmp eq ptr %i.ha, null
  br i1 %.not.i107, label %mbedtls_mpi_free.exit108, label %bb.bl

bb.bl:                                            ; preds = %mbedtls_mpi_free.exit106
  %i.hb = load i16, ptr %i.k, align 2, !tbaa !20
  %i.hc = zext i16 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ha, i64 noundef %i.hd) #17
  br label %mbedtls_mpi_free.exit108

mbedtls_mpi_free.exit108:                         ; preds = %mbedtls_mpi_free.exit106, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_gen_prime(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.c = alloca [1 x i64], align 8                ; 4 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.d = alloca [1 x i64], align 8                ; 4 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 9 uses
  %10 = alloca %struct.mbedtls_mpi, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.e = add i64 %1, -8193
  %or.cond = icmp ult i64 %i.e, -8190
  br i1 %or.cond, label %mbedtls_mpi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 1, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 3 uses
  store i16 0, ptr %i.g, align 2, !tbaa !20
  store ptr null, ptr %10, align 8, !tbaa !23
  %i.h = add nuw nsw i64 %1, 63                   ; 2 uses
  %i.i = lshr i64 %i.h, 6                         ; 3 uses
  %i.j = and i32 %2, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %1, 1299
  br i1 %i.l, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ugt i64 %1, 849
  br i1 %i.m, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %1, 649
  br i1 %i.n, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ugt i64 %1, 349
  br i1 %i.o, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp samesign ugt i64 %1, 249
  %i.q = icmp samesign ugt i64 %1, 149
  %i.r = select i1 %i.q, i64 18, i64 27
  %i.s = select i1 %i.p, i64 12, i64 %i.r
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i64 %1, 1449
  br i1 %i.t, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp samesign ugt i64 %1, 1149
  br i1 %i.u, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = icmp samesign ugt i64 %1, 999
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp samesign ugt i64 %1, 849
  br i1 %i.w, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp samesign ugt i64 %1, 749
  br i1 %i.x, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = icmp samesign ugt i64 %1, 499
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = icmp samesign ugt i64 %1, 249
  %i.aa = icmp samesign ugt i64 %1, 149
  %i.ab = select i1 %i.aa, i64 40, i64 51
  %i.ac = select i1 %i.z, i64 28, i64 %i.ab
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.j, %bb.l, %bb.m, %bb.n, %bb.k, %bb.i, %bb.c, %bb.e, %bb.f, %bb.g, %bb.d
  %.0 = phi i64 [ 8, %bb.f ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ %i.s, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ], [ %i.ac, %bb.n ], [ 13, %bb.m ] ; 3 uses
  %i.ad = shl nuw nsw i64 %i.i, 3                 ; 3 uses
  %i.ae = tail call i32 @mbedtls_mpi_fill_random(ptr noundef %0, i64 noundef %i.ad, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not103 = icmp eq i32 %i.ae, 0
  br i1 %.not103, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.af = and i64 %i.h, 32704                     ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.af, %1         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 4 uses
  %i.ai = sub nuw nsw i64 %i.af, %1               ; 2 uses
  %i.aj = and i32 %2, 1
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 10
  br i1 %i.ak, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %i.an = load ptr, ptr %0, align 8, !tbaa !23    ; 4 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.ar = icmp ult i64 %i.aq, -5402926248376769403
  br i1 %i.ar, label %.backedge.us, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us
  %.pre120 = load i16, ptr %i.ah, align 2, !tbaa !20 ; 3 uses
  br i1 %i.ag, label %bb.q, label %mbedtls_mpi_shift_r.exit.us

bb.q:                                             ; preds = %bb.p
  %.not.i.us = icmp eq i16 %.pre120, 0
  br i1 %.not.i.us, label %mbedtls_mpi_shift_r.exit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = zext i16 %.pre120 to i64
  call void @mbedtls_mpi_core_shift_r(ptr noundef nonnull %i.an, i64 noundef %i.as, i64 noundef %i.ai) #17
end_hunk_6
begin_hunk_7_@mbedtls_mpi_self_test:bb.a
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.av

bb.av:                                            ; preds = %.thread97
  %i.bd = load i16, ptr %i.b, align 2, !tbaa !20
  %i.be = zext i16 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %.thread97, %bb.av
  %i.bg = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not.i74 = icmp eq ptr %i.bg, null
  br i1 %.not.i74, label %mbedtls_mpi_free.exit75, label %bb.aw

bb.aw:                                            ; preds = %mbedtls_mpi_free.exit
  %i.bh = load i16, ptr %i.d, align 2, !tbaa !20
  %i.bi = zext i16 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bg, i64 noundef %i.bj) #17
  br label %mbedtls_mpi_free.exit75

mbedtls_mpi_free.exit75:                          ; preds = %mbedtls_mpi_free.exit, %bb.aw
  %i.bk = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not.i76 = icmp eq ptr %i.bk, null
  br i1 %.not.i76, label %mbedtls_mpi_free.exit77, label %bb.ax

bb.ax:                                            ; preds = %mbedtls_mpi_free.exit75
  %i.bl = load i16, ptr %i.f, align 2, !tbaa !20
  %i.bm = zext i16 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #17
  br label %mbedtls_mpi_free.exit77

mbedtls_mpi_free.exit77:                          ; preds = %mbedtls_mpi_free.exit75, %bb.ax
  store i16 1, ptr %i.e, align 8, !tbaa !21
  store i16 0, ptr %i.f, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.bo = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i78 = icmp eq ptr %i.bo, null
  br i1 %.not.i78, label %mbedtls_mpi_free.exit79, label %bb.ay

bb.ay:                                            ; preds = %mbedtls_mpi_free.exit77
  %i.bp = load i16, ptr %i.h, align 2, !tbaa !20
  %i.bq = zext i16 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bo, i64 noundef %i.br) #17
  br label %mbedtls_mpi_free.exit79

mbedtls_mpi_free.exit79:                          ; preds = %mbedtls_mpi_free.exit77, %bb.ay
  %i.bs = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i80 = icmp eq ptr %i.bs, null
  br i1 %.not.i80, label %mbedtls_mpi_free.exit81, label %bb.az

bb.az:                                            ; preds = %mbedtls_mpi_free.exit79
  %i.bt = load i16, ptr %i.j, align 2, !tbaa !20
  %i.bu = zext i16 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #17
  br label %mbedtls_mpi_free.exit81

mbedtls_mpi_free.exit81:                          ; preds = %mbedtls_mpi_free.exit79, %bb.az
  %i.bw = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i82 = icmp eq ptr %i.bw, null
  br i1 %.not.i82, label %mbedtls_mpi_free.exit83, label %bb.ba

bb.ba:                                            ; preds = %mbedtls_mpi_free.exit81
  %i.bx = load i16, ptr %i.l, align 2, !tbaa !20
  %i.by = zext i16 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #17
  br label %mbedtls_mpi_free.exit83

mbedtls_mpi_free.exit83:                          ; preds = %mbedtls_mpi_free.exit81, %bb.ba
  %i.ca = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i84 = icmp eq ptr %i.ca, null
  br i1 %.not.i84, label %mbedtls_mpi_free.exit85, label %bb.bb

bb.bb:                                            ; preds = %mbedtls_mpi_free.exit83
  %i.cb = load i16, ptr %i.n, align 2, !tbaa !20
  %i.cc = zext i16 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #17
  br label %mbedtls_mpi_free.exit85

mbedtls_mpi_free.exit85:                          ; preds = %mbedtls_mpi_free.exit83, %bb.bb
  br i1 %i.bb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %mbedtls_mpi_free.exit85
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %mbedtls_mpi_free.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 %.1100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @mbedtls_mpi_core_exp_mod_working_limbs(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_core_get_mont_r2_unsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @mbedtls_mpi_core_montmul_init(ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_to_mont_rep(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_exp_mod_unsafe(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_exp_mod(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_from_mont_rep(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = distinct !{!7, !27}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 long", !16, i64 0}
!18 = !{!"short", !12, i64 0}
!19 = !{!"mbedtls_mpi", !17, i64 0, !18, i64 8, !18, i64 10}
!20 = !{!19, !18, i64 10}
!21 = !{!19, !18, i64 8}
!22 = !{i64 858889, i64 858939, i64 859011, i64 859083, i64 859155}
!23 = !{!19, !17, i64 0}
!24 = !{i64 862310, i64 862360, i64 862432, i64 862504, i64 862576}
!25 = !{!"long", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!12, !12, i64 0}
!29 = !{!13, !13, i64 0}
!30 = distinct !{!30, !27, !32, !33}
!31 = distinct !{!31, !27, !33, !32}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27, !44}
!44 = !{!"llvm.loop.peeled.count", i32 1}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = !{!17, !17, i64 0}
!54 = !{!18, !18, i64 0}
!55 = !{i64 0, i64 8, !53, i64 8, i64 2, !54, i64 10, i64 2, !54}
!56 = !{i64 856011}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
end_hunk_7
