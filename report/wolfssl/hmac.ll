Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/hmac?download=true
begin_hunk_0_@wc_HmacSetKey_ex:bb.a
    i8 5, label %bb.m
    i8 6, label %bb.q
    i8 7, label %bb.u
    i8 8, label %bb.y
    i8 16, label %bb.ac
    i8 17, label %bb.ag
    i8 10, label %bb.ak
    i8 11, label %bb.ao
    i8 12, label %bb.as
    i8 13, label %bb.aw
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = icmp ult i32 %3, 65
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.k:                                             ; preds = %bb.i
  %i.q = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not288 = icmp eq i32 %i.q, 0
  br i1 %.not288, label %bb.l, label %.thread320

bb.l:                                             ; preds = %bb.k
  %i.r = tail call i32 @wc_ShaFinal(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.m:                                             ; preds = %bb.h
  %i.s = icmp ult i32 %3, 65
  br i1 %i.s, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %i.t = tail call i32 @wc_Sha224Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not285 = icmp eq i32 %i.t, 0
  br i1 %.not285, label %bb.p, label %.thread320

bb.p:                                             ; preds = %bb.o
  %i.u = tail call i32 @wc_Sha224Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.q:                                             ; preds = %bb.h
  %i.v = icmp ult i32 %3, 65
  br i1 %i.v, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.s:                                             ; preds = %bb.q
  %i.w = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not282 = icmp eq i32 %i.w, 0
  br i1 %.not282, label %bb.t, label %.thread320

bb.t:                                             ; preds = %bb.s
  %i.x = tail call i32 @wc_Sha256Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.u:                                             ; preds = %bb.h
  %i.y = icmp ult i32 %3, 129
  br i1 %i.y, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.w:                                             ; preds = %bb.u
  %i.z = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not279 = icmp eq i32 %i.z, 0
  br i1 %.not279, label %bb.x, label %.thread320

bb.x:                                             ; preds = %bb.w
  %i.aa = tail call i32 @wc_Sha384Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.y:                                             ; preds = %bb.h
  %i.ab = icmp ult i32 %3, 129
  br i1 %i.ab, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.ac = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not276 = icmp eq i32 %i.ac, 0
  br i1 %.not276, label %bb.ab, label %.thread320

bb.ab:                                            ; preds = %bb.aa
  %i.ad = tail call i32 @wc_Sha512Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.ac:                                            ; preds = %bb.h
  %i.ae = icmp ult i32 %3, 129
  br i1 %i.ae, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.ae:                                            ; preds = %bb.ac
  %i.af = tail call i32 @wc_Sha512_224Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not273 = icmp eq i32 %i.af, 0
  br i1 %.not273, label %bb.af, label %.thread320

bb.af:                                            ; preds = %bb.ae
  %i.ag = tail call i32 @wc_Sha512_224Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.ag:                                            ; preds = %bb.h
  %i.ah = icmp ult i32 %3, 129
  br i1 %i.ah, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.ai:                                            ; preds = %bb.ag
  %i.ai = tail call i32 @wc_Sha512_256Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not270 = icmp eq i32 %i.ai, 0
  br i1 %.not270, label %bb.aj, label %.thread320

bb.aj:                                            ; preds = %bb.ai
  %i.aj = tail call i32 @wc_Sha512_256Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.ak:                                            ; preds = %bb.h
  %i.ak = icmp ult i32 %3, 145
  br i1 %i.ak, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.am:                                            ; preds = %bb.ak
  %i.al = tail call i32 @wc_Sha3_224_Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not267 = icmp eq i32 %i.al, 0
  br i1 %.not267, label %bb.an, label %.thread320

bb.an:                                            ; preds = %bb.am
  %i.am = tail call i32 @wc_Sha3_224_Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.ao:                                            ; preds = %bb.h
  %i.an = icmp ult i32 %3, 137
  br i1 %i.an, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.aq:                                            ; preds = %bb.ao
  %i.ao = tail call i32 @wc_Sha3_256_Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not264 = icmp eq i32 %i.ao, 0
  br i1 %.not264, label %bb.ar, label %.thread320

bb.ar:                                            ; preds = %bb.aq
  %i.ap = tail call i32 @wc_Sha3_256_Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.as:                                            ; preds = %bb.h
  %i.aq = icmp ult i32 %3, 105
  br i1 %i.aq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.au:                                            ; preds = %bb.as
  %i.ar = tail call i32 @wc_Sha3_384_Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not261 = icmp eq i32 %i.ar, 0
  br i1 %.not261, label %bb.av, label %.thread320

bb.av:                                            ; preds = %bb.au
  %i.as = tail call i32 @wc_Sha3_384_Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.aw:                                            ; preds = %bb.h
  %i.at = icmp ult i32 %3, 73
  br i1 %i.at, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.b, label %.thread, label %.thread.sink.split

bb.ay:                                            ; preds = %bb.aw
  %i.au = tail call i32 @wc_Sha3_512_Update(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %.not258 = icmp eq i32 %i.au, 0
  br i1 %.not258, label %bb.az, label %.thread320

bb.az:                                            ; preds = %bb.ay
  %i.av = tail call i32 @wc_Sha3_512_Final(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #6
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av, %bb.ar, %bb.an, %bb.aj, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l
  %.sink350 = phi i32 [ %i.av, %bb.az ], [ %i.as, %bb.av ], [ %i.ap, %bb.ar ], [ %i.am, %bb.an ], [ %i.aj, %bb.aj ], [ %i.ag, %bb.af ], [ %i.ad, %bb.ab ], [ %i.aa, %bb.x ], [ %i.x, %bb.t ], [ %i.u, %bb.p ], [ %i.r, %bb.l ] ; 3 uses
  %.sink = phi i32 [ 64, %bb.az ], [ 48, %bb.av ], [ 32, %bb.ar ], [ 28, %bb.an ], [ 32, %bb.aj ], [ 28, %bb.af ], [ 64, %bb.ab ], [ 48, %bb.x ], [ 32, %bb.t ], [ 28, %bb.p ], [ 20, %bb.l ]
  %.0206 = phi i32 [ 72, %bb.az ], [ 104, %bb.av ], [ 136, %bb.ar ], [ 144, %bb.an ], [ 128, %bb.aj ], [ 128, %bb.af ], [ 128, %bb.ab ], [ 128, %bb.x ], [ 64, %bb.t ], [ 64, %bb.p ], [ 64, %bb.l ]
  %.not259 = icmp eq i32 %.sink350, 0
  %spec.select310 = select i1 %.not259, i32 %.sink, i32 %3
  %i.aw = icmp eq i32 %.sink350, 0
  br i1 %i.aw, label %.thread, label %.thread320

.thread.sink.split:                               ; preds = %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j
  %.0206316.ph = phi i32 [ 144, %bb.al ], [ 136, %bb.ap ], [ 64, %bb.j ], [ 64, %bb.n ], [ 64, %bb.r ], [ 128, %bb.v ], [ 104, %bb.at ], [ 128, %bb.z ], [ 128, %bb.ad ], [ 128, %bb.ah ], [ 72, %bb.ax ]
  %i.ax = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %2, i64 %i.ax, i1 false)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ap, %bb.al, %bb.ah, %bb.at, %bb.ad, %bb.z, %bb.ax, %bb.v, %bb.r, %bb.n, %bb.j, %bb.ba
  %.0206316 = phi i32 [ %.0206, %bb.ba ], [ 136, %bb.ap ], [ 64, %bb.j ], [ 144, %bb.al ], [ 72, %bb.ax ], [ 128, %bb.ah ], [ 128, %bb.v ], [ 104, %bb.at ], [ 128, %bb.ad ], [ 64, %bb.n ], [ 64, %bb.r ], [ 128, %bb.z ], [ %.0206316.ph, %.thread.sink.split ] ; 3 uses
  %.0208315 = phi i32 [ %spec.select310, %bb.ba ], [ %3, %bb.ap ], [ %3, %bb.j ], [ %3, %bb.al ], [ %3, %bb.ax ], [ %3, %bb.ah ], [ %3, %bb.v ], [ %3, %bb.at ], [ %3, %bb.ad ], [ %3, %bb.n ], [ %3, %bb.r ], [ %3, %bb.z ], [ %3, %.thread.sink.split ] ; 3 uses
  %i.ay = icmp ult i32 %.0208315, %.0206316
  br i1 %i.ay, label %bb.bb, label %iter.check

bb.bb:                                            ; preds = %.thread
  %i.az = zext nneg i32 %.0208315 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.az
  %i.bb = sub nuw nsw i32 %.0206316, %.0208315
  %i.bc = zext nneg i32 %i.bb to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ba, i8 0, i64 %i.bc, i1 false)
  br label %iter.check

iter.check:                                       ; preds = %bb.bb, %.thread
  %wide.trip.count = zext nneg i32 %.0206316 to i64 ; 6 uses
  %i.bd = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %iter.check
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
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.thread320, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

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
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

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
  br i1 %exitcond.not, label %.thread320, label %vec.epilog.scalar.ph, !llvm.loop !20

.thread320:                                       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ai, %bb.w, %bb.au, %bb.ay, %bb.s, %bb.am, %bb.ae, %bb.o, %bb.aq, %bb.k, %bb.aa, %bb.ba, %bb.h, %bb.g, %bb.f, %bb.a, %bb.b, %bb.c
  %.0207 = phi i32 [ -173, %bb.h ], [ -173, %bb.a ], [ %i.j, %bb.f ], [ -200, %bb.g ], [ -173, %bb.c ], [ -173, %bb.b ], [ %i.ac, %bb.aa ], [ %.sink350, %bb.ba ], [ %i.ai, %bb.ai ], [ %i.z, %bb.w ], [ %i.ar, %bb.au ], [ %i.au, %bb.ay ], [ %i.w, %bb.s ], [ %i.al, %bb.am ], [ %i.af, %bb.ae ], [ %i.t, %bb.o ], [ %i.ao, %bb.aq ], [ %i.q, %bb.k ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %vec.epilog.scalar.ph ]
  ret i32 %.0207
}

; Function Attrs: nounwind uwtable
define void @wc_HmacFree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.c = load i8, ptr %i.b, align 8, !tbaa !11
  switch i8 %i.c, label %.preheader.i.thread [
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
  br label %.preheader.i.thread

bb.d:                                             ; preds = %bb.b
  tail call void @wc_Sha224Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.e:                                             ; preds = %bb.b
  tail call void @wc_Sha256Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.f:                                             ; preds = %bb.b
  tail call void @wc_Sha384Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.g:                                             ; preds = %bb.b
  tail call void @wc_Sha512Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.h:                                             ; preds = %bb.b
  tail call void @wc_Sha512_224Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.i:                                             ; preds = %bb.b
  tail call void @wc_Sha512_256Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.j:                                             ; preds = %bb.b
  tail call void @wc_Sha3_224_Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.k:                                             ; preds = %bb.b
  tail call void @wc_Sha3_256_Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.l:                                             ; preds = %bb.b
  tail call void @wc_Sha3_384_Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

bb.m:                                             ; preds = %bb.b
  tail call void @wc_Sha3_512_Free(ptr noundef nonnull %0) #6
  br label %.preheader.i.thread

.preheader.i.thread:                              ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  fence seq_cst
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %0, i8 0, i64 784, i1 false), !tbaa !21
  fence seq_cst
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.preheader.i.thread
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
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  %i.c = icmp ne i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.h = load i8, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = tail call fastcc i32 @HmacKeyHashUpdate(i8 noundef zeroext %i.h, ptr noundef %0, ptr noundef %i.i) ; 2 uses
  %.not51 = icmp eq i32 %i.j, 0
  br i1 %.not51, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.e, align 1, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.l = load i8, ptr %i.k, align 8, !tbaa !11
  switch i8 %i.l, label %bb.s [
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 16, label %bb.m
    i8 17, label %bb.n
    i8 10, label %bb.o
    i8 11, label %bb.p
    i8 12, label %bb.q
    i8 13, label %bb.r
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.n = tail call i32 @wc_Sha224Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.j:                                             ; preds = %bb.g
  %i.o = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.p = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.l:                                             ; preds = %bb.g
  %i.q = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.m:                                             ; preds = %bb.g
  %i.r = tail call i32 @wc_Sha512_224Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.n:                                             ; preds = %bb.g
  %i.s = tail call i32 @wc_Sha512_256Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.o:                                             ; preds = %bb.g
  %i.t = tail call i32 @wc_Sha3_224_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.u = tail call i32 @wc_Sha3_256_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.q:                                             ; preds = %bb.g
  %i.v = tail call i32 @wc_Sha3_384_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.r:                                             ; preds = %bb.g
  %i.w = tail call i32 @wc_Sha3_512_Update(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.g, %bb.e, %bb.c, %bb.a, %bb.b
  %.047 = phi i32 [ 0, %bb.c ], [ -173, %bb.a ], [ %i.j, %bb.e ], [ -173, %bb.b ], [ %i.w, %bb.r ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.o, %bb.j ], [ %i.p, %bb.k ], [ %i.q, %bb.l ], [ %i.r, %bb.m ], [ %i.s, %bb.n ], [ %i.t, %bb.o ], [ %i.u, %bb.p ], [ %i.v, %bb.q ], [ -173, %bb.g ]
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
end_hunk_0
begin_hunk_1_@wc_HKDF_Extract_ex:bb.a

wc_HmacSizeByType.exit:                           ; preds = %bb.d, %bb.c, %.thread, %bb.a, %bb.b
  %.0 = phi i32 [ -173, %bb.c ], [ -173, %bb.a ], [ -173, %bb.b ], [ %.1, %.thread ], [ -173, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_HKDF_Extract(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_HKDF_Extract_ex(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef null, i32 poison)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_HKDF_Expand_ex(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6, ptr noundef %7, i32 %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %9 = alloca [1 x %struct.Hmac], align 16        ; 10 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i8 1, ptr %i.c, align 1, !tbaa !13
  switch i32 %0, label %wc_HmacSizeByType.exit [
    i32 17, label %bb.b
    i32 16, label %bb.b
    i32 13, label %bb.b
    i32 12, label %bb.b
    i32 11, label %bb.b
    i32 10, label %bb.b
    i32 8, label %bb.b
    i32 7, label %bb.b
    i32 6, label %bb.b
    i32 5, label %bb.b
    i32 4, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %switch.tableidx = add i32 %0, -4               ; 3 uses
  %i.d = icmp ult i32 %switch.tableidx, 14
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 13279, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %wc_HmacSizeByType.exit

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.wc_HKDF, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 5 uses
  %i.f = icmp eq ptr %5, null
  br i1 %i.f, label %wc_HmacSizeByType.exit, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.g = udiv i32 %6, %switch.ext
  %i.h = urem i32 %6, %switch.ext
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = add nuw nsw i32 %i.g, %i.j
  %i.l = icmp samesign ugt i32 %i.k, 255
  br i1 %i.l, label %wc_HmacSizeByType.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(784) %9, i8 0, i64 784, i1 false)
  store ptr %7, ptr %i.m, align 16, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %i.n = phi i8 [ %i.ah, %bb.i ], [ 1, %bb.d ]
  %.04064 = phi i32 [ %i.af, %bb.i ], [ 0, %bb.d ] ; 3 uses
  %i.o = sub nuw i32 %6, %.04064                  ; 2 uses
  %i.p = call i32 @wc_HmacSetKey_ex(ptr noundef nonnull %9, i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) ; 2 uses
  %.not54 = icmp eq i32 %i.p, 0
  br i1 %.not54, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp eq i8 %i.n, 1
  %i.r = select i1 %i.q, i32 0, i32 %switch.ext
  %i.s = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i32 noundef %i.r) ; 2 uses
  %.not55 = icmp eq i32 %i.s, 0
  br i1 %.not55, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.t = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not56 = icmp eq i32 %i.t, 0
  br i1 %.not56, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.c, i32 noundef 1) ; 2 uses
  %.not57 = icmp eq i32 %i.u, 0
  br i1 %.not57, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = call i32 @wc_HmacFinal(ptr noundef nonnull %9, ptr noundef nonnull %i.b) ; 2 uses
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = icmp uge i32 %i.o, %switch.ext
  %i.x = sext i1 %i.w to i32
  store volatile i32 %i.x, ptr %i.a, align 4, !tbaa !23
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !23
  %i.y = xor i32 %.0..0..0..0..0..0..i, -1
  %i.z = and i32 %i.o, %i.y
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !23
  %i.aa = and i32 %.0..0..0..0..0..0.2.i, %switch.ext
  %i.ab = or i32 %i.aa, %i.z                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = zext i32 %.04064 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %i.ac
  %i.ae = zext i32 %i.ab to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 16 %i.b, i64 %i.ae, i1 false)
  %i.af = add i32 %i.ab, %.04064                  ; 2 uses
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !13
  %i.ah = add i8 %i.ag, 1                         ; 2 uses
  store i8 %i.ah, ptr %i.c, align 1, !tbaa !13
  %i.ai = icmp ult i32 %i.af, %6
  br i1 %i.ai, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.i, %.lr.ph, %bb.e, %bb.f, %bb.g, %bb.h, %bb.d
  %.2 = phi i32 [ 0, %bb.d ], [ %i.p, %.lr.ph ], [ %i.v, %bb.h ], [ %i.u, %bb.g ], [ %i.t, %bb.f ], [ %i.s, %bb.e ], [ 0, %bb.i ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !tbaa !21
  fence seq_cst
  call void @wc_HmacFree(ptr noundef nonnull %9)
  br label %wc_HmacSizeByType.exit

wc_HmacSizeByType.exit:                           ; preds = %bb.b, %bb.a, %switch.lookup, %bb.c, %.thread
  %.0 = phi i32 [ %.2, %.thread ], [ -173, %bb.a ], [ -173, %switch.lookup ], [ -173, %bb.c ], [ -173, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_HKDF_Expand(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @wc_HKDF_Expand_ex(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef null, i32 poison)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_HKDF_ex(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  switch i32 %0, label %wc_HmacSizeByType.exit [
    i32 17, label %bb.b
    i32 16, label %bb.b
    i32 13, label %bb.b
    i32 12, label %bb.b
    i32 11, label %bb.b
    i32 10, label %bb.b
    i32 8, label %bb.b
    i32 7, label %bb.b
    i32 6, label %bb.b
    i32 5, label %bb.b
    i32 4, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %switch.tableidx = add i32 %0, -4               ; 3 uses
  %i.b = icmp ult i32 %switch.tableidx, 14
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 13279, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %wc_HmacSizeByType.exit

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.wc_HKDF, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.d = call i32 @wc_HKDF_Extract_ex(i32 noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef %9, i32 poison) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.lr.ph25.preheader.i

bb.c:                                             ; preds = %switch.lookup
  %switch.ext = zext i8 %switch.load to i32
  %i.f = call i32 @wc_HKDF_Expand_ex(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %switch.ext, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 poison)
  br label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.c, %switch.lookup
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.d, %switch.lookup ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !tbaa !21
  fence seq_cst
  br label %wc_HmacSizeByType.exit

wc_HmacSizeByType.exit:                           ; preds = %bb.b, %bb.a, %.lr.ph25.preheader.i
  %.021 = phi i32 [ %.0, %.lr.ph25.preheader.i ], [ -173, %bb.a ], [ -173, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define i32 @wc_HKDF(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  switch i32 %0, label %wc_HKDF_ex.exit [
    i32 17, label %bb.b
    i32 16, label %bb.b
    i32 13, label %bb.b
    i32 12, label %bb.b
    i32 11, label %bb.b
    i32 10, label %bb.b
    i32 8, label %bb.b
    i32 7, label %bb.b
    i32 6, label %bb.b
    i32 5, label %bb.b
    i32 4, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %switch.tableidx = add i32 %0, -4               ; 3 uses
  %i.b = icmp ult i32 %switch.tableidx, 14
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 13279, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.b, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %wc_HKDF_ex.exit

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.wc_HKDF, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.d = call i32 @wc_HKDF_Extract_ex(i32 noundef %0, ptr noundef %3, i32 noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef null, i32 poison) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.lr.ph25.preheader.i.i

bb.c:                                             ; preds = %switch.lookup
  %switch.ext = zext i8 %switch.load to i32
  %i.f = call i32 @wc_HKDF_Expand_ex(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %switch.ext, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef null, i32 poison)
  br label %.lr.ph25.preheader.i.i

.lr.ph25.preheader.i.i:                           ; preds = %bb.c, %switch.lookup
  %.0.i = phi i32 [ %i.f, %bb.c ], [ %i.d, %switch.lookup ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !tbaa !21
  fence seq_cst
  br label %wc_HKDF_ex.exit

wc_HKDF_ex.exit:                                  ; preds = %bb.b, %bb.a, %.lr.ph25.preheader.i.i
  %.021.i = phi i32 [ %.0.i, %.lr.ph25.preheader.i.i ], [ -173, %bb.a ], [ -173, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.021.i
}

declare i32 @wc_InitSha_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha224_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha256_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha384_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha512_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha512_224_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha512_256_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha3_224(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha3_256(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha3_384(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_InitSha3_512(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @wc_ShaCopy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha224Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha256Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha384Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha512Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha512_224Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha512_256Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_224_Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_256_Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_384_Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @wc_Sha3_512_Copy(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 768}
!9 = !{!"Hmac", !6, i64 0, !6, i64 416, !6, i64 560, !6, i64 704, !10, i64 768, !6, i64 776, !6, i64 777}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !6, i64 776}
!12 = !{!9, !6, i64 777}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !15, !17, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!5, !5, i64 0}
end_hunk_1
