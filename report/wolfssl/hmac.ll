Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/hmac?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0_@wc_HmacSetKey_ex:bb.a

vector.body:                                      ; preds = %iter.check, %vector.body
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !tbaa !13 ; 2 uses
  %i.bf = xor <16 x i8> %wide.load, splat (i8 92)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  store <16 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !13
  %i.bh = xor <16 x i8> %wide.load, splat (i8 54)
  store <16 x i8> %i.bh, ptr %i.be, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.thread320, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %n.vec353 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index354 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next356, %vec.epilog.vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 %index354 ; 2 uses
  %wide.load355 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !13 ; 2 uses
  %i.bk = xor <4 x i8> %wide.load355, splat (i8 92)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %index354
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !13
  %i.bm = xor <4 x i8> %wide.load355, splat (i8 54)
  store <4 x i8> %i.bm, ptr %i.bj, align 1, !tbaa !13
  %index.next356 = add nuw i64 %index354, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next356, %n.vec353
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n357 = icmp eq i64 %n.vec353, %wide.trip.count
  br i1 %cmp.n357, label %.thread320, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec353, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13  ; 2 uses
  %i.bq = xor i8 %i.bp, 92
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !13
  %i.bs = xor i8 %i.bp, 54
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread320, label %vec.epilog.scalar.ph, !llvm.loop !18

.thread320:                                       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ai, %bb.w, %bb.au, %bb.ay, %bb.s, %bb.am, %bb.ae, %bb.o, %bb.aq, %bb.k, %bb.aa, %bb.ba, %bb.h, %bb.g, %bb.f, %bb.a, %bb.b, %bb.c
  %.0207 = phi i32 [ -173, %bb.h ], [ -173, %bb.a ], [ %i.j, %bb.f ], [ -200, %bb.g ], [ -173, %bb.c ], [ -173, %bb.b ], [ %i.ac, %bb.aa ], [ %.sink350, %bb.ba ], [ %i.ai, %bb.ai ], [ %i.z, %bb.w ], [ %i.ar, %bb.au ], [ %i.au, %bb.ay ], [ %i.w, %bb.s ], [ %i.al, %bb.am ], [ %i.af, %bb.ae ], [ %i.t, %bb.o ], [ %i.ao, %bb.aq ], [ %i.q, %bb.k ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %vec.epilog.scalar.ph ]
  ret i32 %.0207
}

; Function Attrs: nounwind uwtable
define void @wc_HmacFree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.c = load i8, ptr %i.b, align 8, !tbaa !11
  switch i8 %i.c, label %.lr.ph25.preheader.i [
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 16, label %bb.h
    i8 17, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.k
    i8 12, label %bb.l
    i8 13, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @wc_ShaFree(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.d:                                             ; preds = %bb.b
  tail call void @wc_Sha224Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.e:                                             ; preds = %bb.b
  tail call void @wc_Sha256Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.f:                                             ; preds = %bb.b
  tail call void @wc_Sha384Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.g:                                             ; preds = %bb.b
  tail call void @wc_Sha512Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.h:                                             ; preds = %bb.b
  tail call void @wc_Sha512_224Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.i:                                             ; preds = %bb.b
  tail call void @wc_Sha512_256Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.j:                                             ; preds = %bb.b
  tail call void @wc_Sha3_224_Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.k:                                             ; preds = %bb.b
  tail call void @wc_Sha3_256_Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.l:                                             ; preds = %bb.b
  tail call void @wc_Sha3_384_Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

bb.m:                                             ; preds = %bb.b
  tail call void @wc_Sha3_512_Free(ptr noundef nonnull %0) #6
  br label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  fence seq_cst
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %0, i8 0, i64 784, i1 false), !tbaa !15
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph25.preheader.i, %bb.a
  ret void
}

declare i32 @wc_ShaUpdate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_ShaFinal(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha224Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha224Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha256Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha256Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha384Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha384Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha512Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha512Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha512_224Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha512_224Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha512_256Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha512_256Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_224_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_224_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_256_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_256_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_384_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_384_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_512_Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_512_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @wc_HmacSetKey(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_HmacSetKey_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_HmacUpdate(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  %i.c = icmp ne i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.r, label %3

3:                                                ; preds = %bb.b
  %.not52 = icmp eq i32 %2, 0
  br i1 %.not52, label %bb.r, label %bb.c

bb.c:                                             ; preds = %3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.g = load i8, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = tail call fastcc i32 @HmacKeyHashUpdate(i8 noundef zeroext %i.g, ptr noundef %0, ptr noundef %i.h) ; 2 uses
  %.not51 = icmp eq i32 %i.i, 0
  br i1 %.not51, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.d, align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.k = load i8, ptr %i.j, align 8, !tbaa !11
  switch i8 %i.k, label %bb.r [
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 16, label %bb.l
    i8 17, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.m = tail call i32 @wc_Sha224Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  %i.n = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.j:                                             ; preds = %bb.f
  %i.o = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.k:                                             ; preds = %bb.f
  %i.p = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.l:                                             ; preds = %bb.f
  %i.q = tail call i32 @wc_Sha512_224Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.m:                                             ; preds = %bb.f
  %i.r = tail call i32 @wc_Sha512_256Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.n:                                             ; preds = %bb.f
  %i.s = tail call i32 @wc_Sha3_224_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.o:                                             ; preds = %bb.f
  %i.t = tail call i32 @wc_Sha3_256_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.p:                                             ; preds = %bb.f
  %i.u = tail call i32 @wc_Sha3_384_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.q:                                             ; preds = %bb.f
  %i.v = tail call i32 @wc_Sha3_512_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.f, %bb.d, %3, %bb.a, %bb.b
  %.047 = phi i32 [ 0, %3 ], [ -173, %bb.a ], [ %i.i, %bb.d ], [ -173, %bb.b ], [ %i.v, %bb.q ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.o, %bb.j ], [ %i.p, %bb.k ], [ %i.q, %bb.l ], [ %i.r, %bb.m ], [ %i.s, %bb.n ], [ %i.t, %bb.o ], [ %i.u, %bb.p ], [ -173, %bb.f ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @HmacKeyHashUpdate(i8 noundef zeroext %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  switch i8 %0, label %bb.m [
    i8 4, label %bb.b
    i8 5, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 8, label %bb.f
    i8 16, label %bb.g
    i8 17, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.j
    i8 12, label %bb.k
    i8 13, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 64) #6
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @wc_Sha224Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 64) #6
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i32 @wc_Sha256Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 64) #6
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.d = tail call i32 @wc_Sha384Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 128) #6
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.e = tail call i32 @wc_Sha512Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 128) #6
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.f = tail call i32 @wc_Sha512_224Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 128) #6
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.g = tail call i32 @wc_Sha512_256Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 128) #6
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.h = tail call i32 @wc_Sha3_224_Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 144) #6
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.i = tail call i32 @wc_Sha3_256_Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 136) #6
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.j = tail call i32 @wc_Sha3_384_Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 104) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.k = tail call i32 @wc_Sha3_512_Update(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 72) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.k, %bb.l ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.f, %bb.g ], [ %i.g, %bb.h ], [ %i.h, %bb.i ], [ %i.i, %bb.j ], [ %i.j, %bb.k ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_HmacFinal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.f = load i8, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.h = tail call fastcc i32 @HmacKeyHashUpdate(i8 noundef zeroext %i.f, ptr noundef %0, ptr noundef %i.g) ; 2 uses
  %.not172 = icmp eq i32 %i.h, 0
  br i1 %.not172, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.c, align 1, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.j = load i8, ptr %i.i, align 8, !tbaa !11
  switch i8 %i.j, label %.thread [
    i8 4, label %bb.f
    i8 5, label %bb.j
    i8 6, label %bb.n
    i8 7, label %bb.r
    i8 8, label %bb.v
    i8 16, label %bb.z
    i8 17, label %bb.ad
    i8 10, label %bb.ah
    i8 11, label %bb.al
    i8 12, label %bb.ap
    i8 13, label %bb.at
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.l = tail call i32 @wc_ShaFinal(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #6 ; 2 uses
  %.not203 = icmp eq i32 %i.l, 0
  br i1 %.not203, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.n = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 64) #6 ; 2 uses
  %.not204 = icmp eq i32 %i.n, 0
  br i1 %.not204, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef 20) #6 ; 2 uses
  %.not205 = icmp eq i32 %i.o, 0
  br i1 %.not205, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @wc_ShaFinal(ptr noundef nonnull %0, ptr noundef nonnull %1) #6
  br label %bb.ax

bb.j:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.r = tail call i32 @wc_Sha224Final(ptr noundef nonnull %0, ptr noundef nonnull %i.q) #6 ; 2 uses
  %.not200 = icmp eq i32 %i.r, 0
  br i1 %.not200, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.t = tail call i32 @wc_Sha224Update(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i32 noundef 64) #6 ; 2 uses
  %.not201 = icmp eq i32 %i.t, 0
  br i1 %.not201, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 @wc_Sha224Update(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i32 noundef 28) #6 ; 2 uses
  %.not202 = icmp eq i32 %i.u, 0
  br i1 %.not202, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.v = tail call i32 @wc_Sha224Final(ptr noundef nonnull %0, ptr noundef nonnull %1) #6
  br label %bb.ax

bb.n:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.x = tail call i32 @wc_Sha256Final(ptr noundef nonnull %0, ptr noundef nonnull %i.w) #6 ; 2 uses
  %.not197 = icmp eq i32 %i.x, 0
  br i1 %.not197, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.z = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i32 noundef 64) #6 ; 2 uses
  %.not198 = icmp eq i32 %i.z, 0
  br i1 %.not198, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i32 noundef 32) #6 ; 2 uses
  %.not199 = icmp eq i32 %i.aa, 0
  br i1 %.not199, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call i32 @wc_Sha256Final(ptr noundef nonnull %0, ptr noundef nonnull %1) #6
  br label %bb.ax

bb.r:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ad = tail call i32 @wc_Sha384Final(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #6 ; 2 uses
  %.not194 = icmp eq i32 %i.ad, 0
  br i1 %.not194, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.af = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i32 noundef 128) #6 ; 2 uses
  %.not195 = icmp eq i32 %i.af, 0
  br i1 %.not195, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ag = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %i.ac, i32 noundef 48) #6 ; 2 uses
  %.not196 = icmp eq i32 %i.ag, 0
  br i1 %.not196, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ah = tail call i32 @wc_Sha384Final(ptr noundef nonnull %0, ptr noundef nonnull %1) #6
  br label %bb.ax

bb.v:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.aj = tail call i32 @wc_Sha512Final(ptr noundef nonnull %0, ptr noundef nonnull %i.ai) #6 ; 2 uses
  %.not191 = icmp eq i32 %i.aj, 0
end_hunk_0
