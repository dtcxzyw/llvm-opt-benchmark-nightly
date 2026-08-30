Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/hash?download=true
inline.NumInlined: 14
begin_hunk_0_@wc_Sha512_224Hash_ex:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha512_224Final(ptr noundef nonnull %5, ptr noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  call void @wc_Sha512_224Free(ptr noundef nonnull %5) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %.0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @wc_Sha512_256Hash_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca [1 x %struct.wc_Sha512], align 16   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.a = call i32 @wc_InitSha512_256_ex(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4) #4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @wc_Sha512_256Update(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1) #4 ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha512_256Final(ptr noundef nonnull %5, ptr noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  call void @wc_Sha512_256Free(ptr noundef nonnull %5) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %.0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @wc_Sha3_224Hash_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca [1 x %struct.wc_Sha3], align 16     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.a = call i32 @wc_InitSha3_224(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4) #4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @wc_Sha3_224_Update(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1) #4 ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha3_224_Final(ptr noundef nonnull %5, ptr noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  call void @wc_Sha3_224_Free(ptr noundef nonnull %5) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %.0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @wc_Sha3_256Hash_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca [1 x %struct.wc_Sha3], align 16     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.a = call i32 @wc_InitSha3_256(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4) #4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @wc_Sha3_256_Update(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1) #4 ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha3_256_Final(ptr noundef nonnull %5, ptr noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  call void @wc_Sha3_256_Free(ptr noundef nonnull %5) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %.0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @wc_Sha3_384Hash_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca [1 x %struct.wc_Sha3], align 16     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.a = call i32 @wc_InitSha3_384(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4) #4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @wc_Sha3_384_Update(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1) #4 ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha3_384_Final(ptr noundef nonnull %5, ptr noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  call void @wc_Sha3_384_Free(ptr noundef nonnull %5) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %.0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @wc_Sha3_512Hash_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca [1 x %struct.wc_Sha3], align 16     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.a = call i32 @wc_InitSha3_512(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4) #4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @wc_Sha3_512_Update(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1) #4 ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha3_512_Final(ptr noundef nonnull %5, ptr noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  call void @wc_Sha3_512_Free(ptr noundef nonnull %5) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %.0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 %.1
}

declare i32 @wc_InitShake128(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_Shake128_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_Shake128_Final(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @wc_Shake128_Free(ptr noundef) local_unnamed_addr #3

declare i32 @wc_InitShake256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_Shake256_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wc_Shake256_Final(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @wc_Shake256_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @wc_Hash(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_Hash_ex(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef null, i32 noundef -2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wc_HashNew(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 432) #4 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wc_HashInit_ex(ptr noundef nonnull %i.a, i32 noundef %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.012 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ], [ -125, %bb.a ]
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.c ], [ null, %bb.a ]
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.012, ptr %3, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr %.0
}

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @wc_HashInit_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 %1, ptr %i.b, align 16, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %2, ptr %i.c, align 8, !tbaa !12
  switch i32 %1, label %bb.p [
    i32 3, label %bb.q
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 16, label %bb.h
    i32 17, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 20, label %bb.q
    i32 18, label %bb.n
    i32 19, label %bb.o
    i32 9, label %bb.q
    i32 1, label %bb.q
    i32 2, label %bb.q
    i32 14, label %bb.q
    i32 15, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @wc_InitSha_ex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @wc_InitSha224_ex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.f = tail call i32 @wc_InitSha256_ex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.g = tail call i32 @wc_InitSha384_ex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %i.h = tail call i32 @wc_InitSha512_ex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.h:                                             ; preds = %bb.b
  %i.i = tail call i32 @wc_InitSha512_224_ex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.i:                                             ; preds = %bb.b
  %i.j = tail call i32 @wc_InitSha512_256_ex(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %i.k = tail call i32 @wc_InitSha3_224(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.k:                                             ; preds = %bb.b
  %i.l = tail call i32 @wc_InitSha3_256(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.m = tail call i32 @wc_InitSha3_384(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.n = tail call i32 @wc_InitSha3_512(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.n:                                             ; preds = %bb.b
  %i.o = tail call i32 @wc_InitShake128(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.o:                                             ; preds = %bb.b
  %i.p = tail call i32 @wc_InitShake256(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #4
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %.046 = phi i32 [ -173, %bb.a ], [ -173, %bb.p ], [ -232, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.i, %bb.h ], [ %i.j, %bb.i ], [ %i.k, %bb.j ], [ %i.l, %bb.k ], [ %i.m, %bb.l ], [ %i.n, %bb.m ], [ -232, %bb.b ], [ %i.o, %bb.n ], [ %i.p, %bb.o ], [ -232, %bb.b ], [ -232, %bb.b ], [ -232, %bb.b ], [ -232, %bb.b ], [ -232, %bb.b ]
  ret i32 %.046
}

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -232, 1) i32 @wc_HashDelete(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load i32, ptr %i.b, align 16, !tbaa !9
  %i.d = tail call i32 @wc_HashFree(ptr noundef nonnull %0, i32 noundef %i.c) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #4
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %1, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ -173, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -232, 1) i32 @wc_HashFree(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.p [
    i32 3, label %bb.q
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 16, label %bb.h
    i32 17, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 20, label %bb.q
    i32 18, label %bb.n
    i32 19, label %bb.o
    i32 9, label %bb.q
    i32 1, label %bb.q
    i32 2, label %bb.q
    i32 14, label %bb.q
    i32 15, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @wc_ShaFree(ptr noundef nonnull %0) #4
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  tail call void @wc_Sha224Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  tail call void @wc_Sha256Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  tail call void @wc_Sha384Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  tail call void @wc_Sha512Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.h:                                             ; preds = %bb.b
  tail call void @wc_Sha512_224Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.i:                                             ; preds = %bb.b
  tail call void @wc_Sha512_256Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  tail call void @wc_Sha3_224_Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.k:                                             ; preds = %bb.b
  tail call void @wc_Sha3_256_Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  tail call void @wc_Sha3_384_Free(ptr noundef nonnull %0) #4
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  tail call void @wc_Sha3_512_Free(ptr noundef nonnull %0) #4
  br label %bb.q
end_hunk_0
