Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/signature?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @wc_RsaSSL_VerifyInline(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wc_SignatureVerify(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = icmp eq ptr %2, null
  %i.d = icmp eq i32 %3, 0
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %4, null
  %or.cond3 = or i1 %or.cond, %i.e
  %i.f = icmp eq i32 %5, 0
  %or.cond5 = or i1 %or.cond3, %i.f
  %i.g = icmp eq ptr %6, null
  %or.cond7 = or i1 %or.cond5, %i.g
  %i.h = icmp eq i32 %7, 0
  %or.cond9 = or i1 %or.cond7, %i.h
  br i1 %or.cond9, label %wc_SignatureCheckHashStrength.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %wc_SignatureGetSize.exit [
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %7, 4208
  br i1 %i.i, label %bb.d, label %wc_SignatureGetSize.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @wc_ecc_sig_size(ptr noundef nonnull %6) #6
  br label %wc_SignatureGetSize.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.k = icmp eq i32 %7, 8368
  br i1 %i.k, label %bb.f, label %wc_SignatureGetSize.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @wc_RsaEncryptSize(ptr noundef nonnull %6) #6
  br label %wc_SignatureGetSize.exit

wc_SignatureGetSize.exit:                         ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ -173, %bb.e ], [ %i.j, %bb.d ], [ -173, %bb.c ], [ %i.l, %bb.f ], [ -173, %bb.b ]
  %i.m = icmp sgt i32 %5, %.0.i
  br i1 %i.m, label %wc_SignatureCheckHashStrength.exit, label %bb.g

bb.g:                                             ; preds = %wc_SignatureGetSize.exit
  %i.n = tail call i32 @wc_HashGetDigestSize(i32 noundef %0) #6 ; 7 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %wc_SignatureCheckHashStrength.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 @wc_HashGetDigestSize(i32 noundef 6) #6 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @wc_HashGetDigestSize(i32 noundef %0) #6 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %wc_SignatureCheckHashStrength.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = icmp samesign ult i32 %i.r, %i.p
  br i1 %i.t, label %wc_SignatureCheckHashStrength.exit, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.u = icmp eq i32 %1, 3
  br i1 %i.u, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.v = add nuw i32 %i.n, 36
  store i32 %i.v, ptr %i.a, align 4, !tbaa !8
  %i.w = call i32 @wc_Hash(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %i.b, i32 noundef %i.n) #6 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %wc_SignatureCheckHashStrength.exit

.thread:                                          ; preds = %bb.k
  %i.y = call i32 @wc_Hash(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %i.b, i32 noundef %i.n) #6 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.thread57, label %wc_SignatureCheckHashStrength.exit

bb.m:                                             ; preds = %bb.l
  %i.aa = call fastcc i32 @wc_SignatureDerEncode(i32 noundef %0, ptr noundef %i.b, i32 noundef %i.n, ptr noundef %i.a) ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %..thread57_crit_edge, label %wc_SignatureCheckHashStrength.exit

..thread57_crit_edge:                             ; preds = %bb.m
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %.thread57

.thread57:                                        ; preds = %..thread57_crit_edge, %.thread
  %i.ac = phi i32 [ %.pre, %..thread57_crit_edge ], [ %i.n, %.thread ]
  %i.ad = call i32 @wc_SignatureVerifyHash(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.ac, ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull %6, i32 noundef %7)
  br label %wc_SignatureCheckHashStrength.exit

wc_SignatureCheckHashStrength.exit:               ; preds = %bb.j, %.thread, %bb.i, %bb.l, %.thread57, %bb.m, %bb.g, %wc_SignatureGetSize.exit, %bb.a
  %.043 = phi i32 [ %i.w, %bb.l ], [ -173, %bb.a ], [ -173, %wc_SignatureGetSize.exit ], [ %i.n, %bb.g ], [ %i.ad, %.thread57 ], [ %i.aa, %bb.m ], [ %i.r, %bb.i ], [ %i.y, %.thread ], [ -173, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.043
}

declare i32 @wc_Hash(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @wc_SignatureDerEncode(i32 noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, -2147483648) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wc_HashGetOID(i32 noundef %0) #6 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wc_EncodeSignature(ptr noundef nonnull %1, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.a) #6 ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %3, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.012 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @wc_SignatureGenerateHash(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wc_SignatureGenerateHash_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_SignatureGenerateHash_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %4, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp eq ptr %5, null
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %5, align 4, !tbaa !8      ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp eq ptr %6, null
  %or.cond7 = or i1 %i.g, %i.f
  %i.h = icmp eq i32 %7, 0
  %or.cond9 = or i1 %i.h, %or.cond7
  br i1 %or.cond9, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %wc_SignatureGetSize.exit [
    i32 1, label %bb.d
    i32 3, label %bb.f
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %7, 4208
  br i1 %i.i, label %bb.e, label %wc_SignatureGetSize.exit

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @wc_ecc_sig_size(ptr noundef nonnull %6) #6
  br label %wc_SignatureGetSize.exit

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.k = icmp eq i32 %7, 8368
  br i1 %i.k, label %bb.g, label %wc_SignatureGetSize.exit

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @wc_RsaEncryptSize(ptr noundef nonnull %6) #6
  br label %wc_SignatureGetSize.exit

wc_SignatureGetSize.exit:                         ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ -173, %bb.f ], [ %i.j, %bb.e ], [ -173, %bb.d ], [ %i.l, %bb.g ], [ -173, %bb.c ]
  %i.m = icmp slt i32 %i.e, %.0.i
  br i1 %i.m, label %.thread, label %bb.h

bb.h:                                             ; preds = %wc_SignatureGetSize.exit
  %i.n = tail call i32 @wc_HashGetDigestSize(i32 noundef %0) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %1, label %.thread [
    i32 1, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @wc_ecc_sign_hash(ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %6) #6 ; 2 uses
  %i.q = icmp eq i32 %i.p, -108
  br i1 %i.q, label %.preheader.peel.next, label %.loopexit

.preheader.peel.next:                             ; preds = %bb.j, %.preheader.peel.next
  br label %.preheader.peel.next

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.r = load i32, ptr %5, align 4, !tbaa !8
  %i.s = tail call i32 @wc_RsaSSL_Sign(ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.r, ptr noundef nonnull %6, ptr noundef %8) #6 ; 4 uses
  %i.t = icmp eq i32 %i.s, -108
  br i1 %i.t, label %.peel.next, label %bb.l

.peel.next:                                       ; preds = %bb.k, %.peel.next
  br label %.peel.next

bb.l:                                             ; preds = %bb.k
  %i.u = icmp sgt i32 %i.s, -1
  br i1 %i.u, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  store i32 %i.s, ptr %5, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.m
  %.4 = phi i32 [ 0, %bb.m ], [ %i.p, %bb.j ]     ; 2 uses
  %10 = icmp eq i32 %.4, 0
  %i.v = icmp ne i32 %9, 0
  %or.cond11 = and i1 %i.v, %10
  br i1 %or.cond11, label %bb.n, label %.thread

bb.n:                                             ; preds = %.loopexit
  %i.w = load i32, ptr %5, align 4, !tbaa !8
  %i.x = tail call i32 @wc_SignatureVerifyHash(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.w, ptr noundef nonnull %6, i32 noundef %7)
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.l, %.loopexit, %bb.n, %bb.h, %wc_SignatureGetSize.exit, %bb.a, %bb.b
  %.056 = phi i32 [ %i.n, %bb.h ], [ -173, %bb.a ], [ -173, %wc_SignatureGetSize.exit ], [ -173, %bb.b ], [ %i.x, %bb.n ], [ %.4, %.loopexit ], [ -173, %bb.i ], [ %i.s, %bb.l ]
  ret i32 %.056
}

declare i32 @wc_ecc_sign_hash(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaSSL_Sign(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wc_SignatureGenerate(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wc_SignatureGenerate_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_SignatureGenerate_ex(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = icmp eq ptr %2, null
  %i.d = icmp eq i32 %3, 0
  %or.cond = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %4, null
  %or.cond3 = or i1 %or.cond, %i.e
  %i.f = icmp eq ptr %5, null
  %or.cond5 = or i1 %or.cond3, %i.f
  br i1 %or.cond5, label %wc_SignatureCheckHashStrength.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !8      ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq ptr %6, null
  %or.cond7 = or i1 %i.i, %i.h
  %i.j = icmp eq i32 %7, 0
  %or.cond9 = or i1 %i.j, %or.cond7
  br i1 %or.cond9, label %wc_SignatureCheckHashStrength.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %wc_SignatureGetSize.exit [
    i32 1, label %bb.d
    i32 3, label %bb.f
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %7, 4208
  br i1 %i.k, label %bb.e, label %wc_SignatureGetSize.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @wc_ecc_sig_size(ptr noundef nonnull %6) #6
  br label %wc_SignatureGetSize.exit

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.m = icmp eq i32 %7, 8368
  br i1 %i.m, label %bb.g, label %wc_SignatureGetSize.exit

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @wc_RsaEncryptSize(ptr noundef nonnull %6) #6
  br label %wc_SignatureGetSize.exit

wc_SignatureGetSize.exit:                         ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ -173, %bb.f ], [ %i.l, %bb.e ], [ -173, %bb.d ], [ %i.n, %bb.g ], [ -173, %bb.c ]
  %i.o = icmp slt i32 %i.g, %.0.i
  br i1 %i.o, label %wc_SignatureCheckHashStrength.exit, label %bb.h

bb.h:                                             ; preds = %wc_SignatureGetSize.exit
  %i.p = tail call i32 @wc_HashGetDigestSize(i32 noundef %0) #6 ; 7 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %wc_SignatureCheckHashStrength.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @wc_HashGetDigestSize(i32 noundef 6) #6 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call i32 @wc_HashGetDigestSize(i32 noundef %0) #6 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %wc_SignatureCheckHashStrength.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = icmp samesign ult i32 %i.t, %i.r
  br i1 %i.v, label %wc_SignatureCheckHashStrength.exit, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %i.w = icmp eq i32 %1, 3
  br i1 %i.w, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.x = add nuw i32 %i.p, 36
  store i32 %i.x, ptr %i.a, align 4, !tbaa !8
  %i.y = call i32 @wc_Hash(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %i.b, i32 noundef %i.p) #6 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %wc_SignatureCheckHashStrength.exit

.thread:                                          ; preds = %bb.l
  %i.aa = call i32 @wc_Hash(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %i.b, i32 noundef %i.p) #6 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread63, label %wc_SignatureCheckHashStrength.exit

bb.n:                                             ; preds = %bb.m
  %i.ac = call fastcc i32 @wc_SignatureDerEncode(i32 noundef %0, ptr noundef %i.b, i32 noundef %i.p, ptr noundef %i.a) ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %..thread63_crit_edge, label %wc_SignatureCheckHashStrength.exit

..thread63_crit_edge:                             ; preds = %bb.n
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %.thread63

.thread63:                                        ; preds = %..thread63_crit_edge, %.thread
  %i.ae = phi i32 [ %.pre, %..thread63_crit_edge ], [ %i.p, %.thread ]
  %i.af = call i32 @wc_SignatureGenerateHash_ex(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.ae, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef %8, i32 noundef %9)
  br label %wc_SignatureCheckHashStrength.exit

wc_SignatureCheckHashStrength.exit:               ; preds = %bb.k, %.thread, %bb.j, %bb.m, %.thread63, %bb.n, %bb.h, %wc_SignatureGetSize.exit, %bb.a, %bb.b
  %.046 = phi i32 [ %i.y, %bb.m ], [ -173, %bb.a ], [ -173, %wc_SignatureGetSize.exit ], [ %i.p, %bb.h ], [ -173, %bb.b ], [ %i.af, %.thread63 ], [ %i.ac, %bb.n ], [ %i.t, %bb.j ], [ %i.aa, %.thread ], [ -173, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.046
}

declare i32 @wc_HashGetOID(i32 noundef) local_unnamed_addr #2

declare i32 @wc_EncodeSignature(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!10, !10, i64 0}
end_hunk_0
