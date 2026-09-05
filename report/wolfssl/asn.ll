Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 76
begin_hunk_0_@DecodeRsaPssParams:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 512
  store i8 2, ptr %i.m, align 16, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 488
  store ptr %i.b, ptr %i.n, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 592
  store i8 2, ptr %i.o, align 16, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 568
  store ptr %i.a, ptr %i.p, align 8, !tbaa !15
  %i.q = call i32 @GetASN_Items(ptr noundef nonnull @rsaPssParamsASN, ptr noundef nonnull %5, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.r = icmp eq i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 153
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp ne i8 %i.t, 0
  %or.cond = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.i, label %RsaPssHashOidToType.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.w = load i32, ptr %i.v, align 16, !tbaa !15
  %switch.tableidx = add i32 %i.w, -2092137208    ; 3 uses
  %i.x = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 75, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond66 = select i1 %i.x, i1 %switch.lobit, i1 false
  br i1 %or.cond66, label %switch.lookup, label %RsaPssHashOidToType.exit

switch.lookup:                                    ; preds = %bb.i
  %i.y = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.DecodeRsaPssParams, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %2, align 4, !tbaa !26
  br label %RsaPssHashOidToType.exit

RsaPssHashOidToType.exit:                         ; preds = %bb.i, %switch.lookup, %bb.h
  %.1 = phi i32 [ %i.q, %bb.h ], [ -140, %bb.i ], [ 0, %switch.lookup ] ; 2 uses
  %i.z = icmp eq i32 %.1, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 313
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp ne i8 %i.ab, 0
  %or.cond9 = select i1 %i.z, i1 %i.ac, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.ae = load i32, ptr %i.ad, align 16
  %i.af = icmp ne i32 %i.ae, 2025223210
  %or.cond24 = select i1 %or.cond9, i1 %i.af, i1 false
  %spec.select = select i1 %or.cond24, i32 -140, i32 %.1 ; 2 uses
  %i.ag = icmp eq i32 %spec.select, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 393
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp ne i8 %i.ai, 0
  %or.cond14 = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond14, label %bb.j, label %RsaPssHashOidToMgf1.exit

bb.j:                                             ; preds = %RsaPssHashOidToType.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 384
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !15
  %switch.tableidx67 = add i32 %i.al, -2092137208 ; 3 uses
  %i.am = icmp ult i32 %switch.tableidx67, 7
  %switch.maskindex70 = trunc i32 %switch.tableidx67 to i8
  %switch.shifted71 = lshr i8 75, %switch.maskindex70
  %switch.lobit72 = trunc i8 %switch.shifted71 to i1
  %or.cond76 = select i1 %i.am, i1 %switch.lobit72, i1 false
  br i1 %or.cond76, label %switch.lookup69, label %RsaPssHashOidToMgf1.exit

switch.lookup69:                                  ; preds = %bb.j
  %i.an = zext nneg i32 %switch.tableidx67 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.DecodeRsaPssParams.9, i64 %i.an
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i32
  store i32 %switch.ext75, ptr %3, align 4, !tbaa !26
  br label %RsaPssHashOidToMgf1.exit

RsaPssHashOidToMgf1.exit:                         ; preds = %bb.j, %switch.lookup69, %RsaPssHashOidToType.exit
  %.3 = phi i32 [ %spec.select, %RsaPssHashOidToType.exit ], [ -140, %bb.j ], [ 0, %switch.lookup69 ] ; 2 uses
  %i.ao = icmp eq i32 %.3, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 593
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp ne i8 %i.aq, 0
  %or.cond19 = select i1 %i.ao, i1 %i.ar, i1 false
  %i.as = load i16, ptr %i.a, align 2
  %i.at = icmp ne i16 %i.as, 1
  %or.cond27 = select i1 %or.cond19, i1 %i.at, i1 false
  %spec.select60 = select i1 %or.cond27, i32 -140, i32 %.3 ; 2 uses
  %i.au = icmp eq i32 %spec.select60, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %RsaPssHashOidToMgf1.exit
  %i.av = load i16, ptr %i.b, align 2, !tbaa !34
  %i.aw = zext i16 %i.av to i32
  store i32 %i.aw, ptr %4, align 4, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %RsaPssHashOidToMgf1.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a, %bb.l, %bb.g, %bb.c
  %.0 = phi i32 [ %spec.select60, %bb.l ], [ 0, %bb.c ], [ 0, %bb.g ], [ -173, %bb.a ], [ -140, %bb.e ], [ -140, %bb.f ], [ -140, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_EncodeRsaPssAlgoId(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca [3 x %struct.ASNSetData], align 16  ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %or.cond = icmp ugt i32 %1, 255
  br i1 %or.cond, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne ptr %2, null                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  switch i32 %0, label %SetAlgoIDImpl.exit.thread [
    i32 2097410353, label %bb.o
    i32 2092137214, label %bb.c
    i32 2092137211, label %bb.d
    i32 2092137208, label %bb.e
    i32 2092137215, label %bb.f
    i32 2092137212, label %bb.g
    i32 2092137209, label %bb.h
    i32 2092137213, label %bb.i
    i32 2092137202, label %bb.j
    i32 2092137203, label %bb.k
    i32 2092137200, label %bb.l
    i32 2092137201, label %bb.m
    i32 2092137206, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.sink.a = phi i32 [ 9, %bb.n ], [ 9, %bb.c ], [ 9, %bb.d ], [ 9, %bb.e ], [ 9, %bb.f ], [ 9, %bb.g ], [ 9, %bb.h ], [ 9, %bb.i ], [ 9, %bb.j ], [ 9, %bb.k ], [ 9, %bb.l ], [ 9, %bb.m ], [ 5, %bb.b ]
  %i.c = phi ptr [ @hashShake256hOid, %bb.n ], [ @hashSha224hOid, %bb.c ], [ @hashSha256hOid, %bb.d ], [ @hashSha384hOid, %bb.e ], [ @hashSha512_224hOid, %bb.f ], [ @hashSha512_256hOid, %bb.g ], [ @hashSha512hOid, %bb.h ], [ @hashSha3_224hOid, %bb.i ], [ @hashSha3_256hOid, %bb.j ], [ @hashSha3_384hOid, %bb.k ], [ @hashSha3_512hOid, %bb.l ], [ @hashShake128hOid, %bb.m ], [ @hashSha1hOid, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %.sink.a, ptr %i.e, align 16, !tbaa !26
  store ptr %i.c, ptr %i.d, align 8, !tbaa !15
  %i.f = call i32 @SizeASN_Items(ptr noundef nonnull @algoIdASN, ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull %i.a)
  %i.g = icmp eq i32 %i.f, 0                      ; 2 uses
  %or.cond3.i = and i1 %.not, %i.g
  br i1 %or.cond3.i, label %.thread352, label %bb.p

.thread352:                                       ; preds = %bb.o
  %i.h = call i32 @SetASN_Items(ptr noundef nonnull @algoIdASN, ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull %i.b) ; 0 uses
  %i.i = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %SetAlgoIDImpl.exit

bb.p:                                             ; preds = %bb.o
  %i.j = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.g, label %SetAlgoIDImpl.exit, label %SetAlgoIDImpl.exit.thread

SetAlgoIDImpl.exit.thread:                        ; preds = %bb.p, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bd

SetAlgoIDImpl.exit:                               ; preds = %.thread352, %bb.p
  %i.k = phi i32 [ %i.i, %.thread352 ], [ %i.j, %bb.p ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.bd, label %bb.q

bb.q:                                             ; preds = %SetAlgoIDImpl.exit
  %i.m = icmp ult i32 %i.k, 128                   ; 2 uses
  br i1 %i.m, label %SetExplicit.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not5.i.i.i.i.i = icmp ult i32 %i.k, 16777216
  br i1 %.not5.i.i.i.i.i, label %SetExplicit.exit.thread, label %SetExplicit.exit

SetExplicit.exit.thread:                          ; preds = %bb.r
  %.not5.1.i.i.i.i.i = icmp samesign ult i32 %i.k, 65536
  %.not5.2.i.i.i.i.i = icmp samesign ult i32 %i.k, 256
  %i.n = select i1 %.not5.2.i.i.i.i.i, i32 3, i32 4
  %.0.i.i.i.ph = select i1 %.not5.1.i.i.i.i.i, i32 %i.n, i32 5
  %i.o = add nuw nsw i32 %i.k, 11
  br label %bb.s

SetExplicit.exit:                                 ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi i32 [ 2, %bb.q ], [ 6, %bb.r ]  ; 2 uses
  %i.p = add i32 %i.k, 11                         ; 3 uses
  %i.q = icmp ult i32 %i.p, 128
  br i1 %i.q, label %SetSequence.exit, label %bb.s

bb.s:                                             ; preds = %SetExplicit.exit.thread, %SetExplicit.exit
  %i.r = phi i32 [ %i.o, %SetExplicit.exit.thread ], [ %i.p, %SetExplicit.exit ] ; 6 uses
  %.0.i.i.i369.a = phi i32 [ %.0.i.i.i.ph, %SetExplicit.exit.thread ], [ %.0.i.i.i, %SetExplicit.exit ] ; 3 uses
  %.not5.i.i.i.i.i132 = icmp ult i32 %i.r, 16777216
  br i1 %.not5.i.i.i.i.i132, label %bb.t, label %SetSequence.exit

bb.t:                                             ; preds = %bb.s
  %.not5.1.i.i.i.i.i137 = icmp samesign ult i32 %i.r, 65536
  br i1 %.not5.1.i.i.i.i.i137, label %bb.u, label %SetSequence.exit

bb.u:                                             ; preds = %bb.t
  %.not5.2.i.i.i.i.i138 = icmp samesign ult i32 %i.r, 256
  %i.s = select i1 %.not5.2.i.i.i.i.i138, i32 3, i32 4
  br label %SetSequence.exit

SetSequence.exit:                                 ; preds = %bb.s, %bb.t, %bb.u, %SetExplicit.exit
  %i.t = phi i1 [ true, %SetExplicit.exit ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.t ] ; 2 uses
  %i.u = phi i32 [ %i.p, %SetExplicit.exit ], [ %i.r, %bb.s ], [ %i.r, %bb.u ], [ %i.r, %bb.t ] ; 11 uses
  %.0.i.i.i370 = phi i32 [ %.0.i.i.i, %SetExplicit.exit ], [ %.0.i.i.i369.a, %bb.s ], [ %.0.i.i.i369.a, %bb.u ], [ %.0.i.i.i369.a, %bb.t ]
  %.0.i.i.i136 = phi i32 [ 2, %SetExplicit.exit ], [ 6, %bb.s ], [ %i.s, %bb.u ], [ 5, %bb.t ]
  %i.v = add i32 %.0.i.i.i136, %i.u               ; 5 uses
  %i.w = icmp ult i32 %i.v, 128
  br i1 %i.w, label %SetExplicit.exit146, label %bb.v

bb.v:                                             ; preds = %SetSequence.exit
  %.not5.i.i.i.i.i139 = icmp ult i32 %i.v, 16777216
  br i1 %.not5.i.i.i.i.i139, label %bb.w, label %SetExplicit.exit146

bb.w:                                             ; preds = %bb.v
  %.not5.1.i.i.i.i.i144 = icmp samesign ult i32 %i.v, 65536
  br i1 %.not5.1.i.i.i.i.i144, label %bb.x, label %SetExplicit.exit146

bb.x:                                             ; preds = %bb.w
  %.not5.2.i.i.i.i.i145 = icmp samesign ult i32 %i.v, 256
  %i.x = select i1 %.not5.2.i.i.i.i.i145, i32 3, i32 4
  br label %SetExplicit.exit146

SetExplicit.exit146:                              ; preds = %bb.v, %bb.w, %bb.x, %SetSequence.exit
  %.0.i.i.i143 = phi i32 [ 2, %SetSequence.exit ], [ 6, %bb.v ], [ %i.x, %bb.x ], [ 5, %bb.w ]
  %i.y = trunc nuw i32 %1 to i8                   ; 2 uses
  %.not18.i = icmp slt i8 %i.y, 0                 ; 2 uses
  %.lobit = lshr i32 %1, 7
  %i.z = select i1 %.not18.i, i32 11, i32 10
  %i.aa = add i32 %i.z, %i.k
  %i.ab = add i32 %i.aa, %.0.i.i.i370
  %i.ac = add i32 %i.ab, %i.v
  %i.ad = add i32 %i.ac, %.0.i.i.i143             ; 15 uses
  %i.ae = icmp ult i32 %i.ad, 128                 ; 3 uses
  br i1 %i.ae, label %SetSequence.exit173, label %bb.y

bb.y:                                             ; preds = %SetExplicit.exit146
  %.not5.i.i.i.i.i166 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i.i.i.i166, label %bb.z, label %SetSequence.exit173

bb.z:                                             ; preds = %bb.y
  %.not5.1.i.i.i.i.i171 = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i171, label %bb.aa, label %SetSequence.exit173

bb.aa:                                            ; preds = %bb.z
  %.not5.2.i.i.i.i.i172 = icmp samesign ult i32 %i.ad, 256
  %i.af = select i1 %.not5.2.i.i.i.i.i172, i32 3, i32 4
  br label %SetSequence.exit173

SetSequence.exit173:                              ; preds = %bb.y, %bb.z, %bb.aa, %SetExplicit.exit146
  %.0.i.i.i170 = phi i32 [ 2, %SetExplicit.exit146 ], [ 6, %bb.y ], [ %i.af, %bb.aa ], [ 5, %bb.z ]
  %i.ag = add i32 %.0.i.i.i170, %i.ad             ; 2 uses
  %i.ah = add i32 %i.ag, 11                       ; 4 uses
  %i.ai = icmp ult i32 %i.ah, 128
  br i1 %i.ai, label %SetSequence.exit181, label %bb.ab

bb.ab:                                            ; preds = %SetSequence.exit173
  %.not5.i.i.i.i.i174 = icmp ult i32 %i.ah, 16777216
  br i1 %.not5.i.i.i.i.i174, label %bb.ac, label %SetSequence.exit181

bb.ac:                                            ; preds = %bb.ab
  %.not5.1.i.i.i.i.i179 = icmp samesign ult i32 %i.ah, 65536
  br i1 %.not5.1.i.i.i.i.i179, label %bb.ad, label %SetSequence.exit181

bb.ad:                                            ; preds = %bb.ac
  %.not5.2.i.i.i.i.i180 = icmp samesign ult i32 %i.ah, 256
  %i.aj = select i1 %.not5.2.i.i.i.i.i180, i32 14, i32 15
  br label %SetSequence.exit181

SetSequence.exit181:                              ; preds = %bb.ab, %bb.ac, %bb.ad, %SetSequence.exit173
  %.0.i.i.i178 = phi i32 [ 13, %SetSequence.exit173 ], [ 17, %bb.ab ], [ %i.aj, %bb.ad ], [ 16, %bb.ac ]
  %i.ak = add i32 %.0.i.i.i178, %i.ag             ; 2 uses
  br i1 %.not, label %bb.ae, label %bb.bd

bb.ae:                                            ; preds = %SetSequence.exit181
  %i.al = icmp ult i32 %3, %i.ak
  %i.am = icmp ugt i32 %i.k, 128
  %or.cond131 = or i1 %i.am, %i.al
  br i1 %or.cond131, label %bb.bd, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ae, label %.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not5.i.i.i.i.i183 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i.i.i.i183, label %bb.ah, label %.thread.i.i

bb.ah:                                            ; preds = %bb.ag
  %.not5.1.i.i.i.i.i188 = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i188, label %bb.ai, label %.thread.i.i

bb.ai:                                            ; preds = %bb.ah
  %.not5.2.i.i.i.i.i189 = icmp samesign ult i32 %i.ad, 256
  %i.an = select i1 %.not5.2.i.i.i.i.i189, i32 3, i32 4
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.af
  %.0.i.i.i187 = phi i32 [ 2, %bb.af ], [ 6, %bb.ag ], [ %i.an, %bb.ai ], [ 5, %bb.ah ]
  %i.ao = add nuw nsw i32 %i.ad, 11
  %i.ap = add nuw nsw i32 %i.ao, %.0.i.i.i187     ; 7 uses
  store i8 48, ptr %2, align 1, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.ar = icmp ult i32 %i.ap, 128
  br i1 %i.ar, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread.i.i
  %i.as = trunc nuw nsw i32 %i.ap to i8
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !15
  br label %.thread.i.i201

bb.ak:                                            ; preds = %.thread.i.i
  %.not5.i.i.i.i.i191 = icmp ult i32 %i.ap, 16777216
  br i1 %.not5.i.i.i.i.i191, label %bb.al, label %iter.check

bb.al:                                            ; preds = %bb.ak
  %.not5.1.i.i.i.i.i196 = icmp samesign ult i32 %i.ap, 65536
  br i1 %.not5.1.i.i.i.i.i196, label %bb.am, label %iter.check

bb.am:                                            ; preds = %bb.al
  %.not5.2.i.i.i.i.i197 = icmp samesign ult i32 %i.ap, 256
  %i.at = select i1 %.not5.2.i.i.i.i.i197, i8 1, i8 2
  br label %iter.check

iter.check:                                       ; preds = %bb.ak, %bb.al, %bb.am
  %.0.lcssa.i.i.i.i.i193 = phi i8 [ 4, %bb.ak ], [ %i.at, %bb.am ], [ 3, %bb.al ] ; 6 uses
  %i.au = or disjoint i8 %.0.lcssa.i.i.i.i.i193, -128
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !15
  %i.av = zext nneg i8 %.0.lcssa.i.i.i.i.i193 to i64 ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i193, 4
  br i1 %min.iters.check, label %.split.i.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert379 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i193, i64 0
  %broadcast.splat380 = shufflevector <4 x i8> %broadcast.splatinsert379, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aw = add nsw <4 x i8> %broadcast.splat380, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert377 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat378 = shufflevector <4 x i32> %broadcast.splatinsert377, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec376 = and i64 %i.av, 4                    ; 3 uses
  %i.ax = trunc nuw nsw i64 %n.vec376 to i8
  %i.ay = sub nsw i8 %.0.lcssa.i.i.i.i.i193, %i.ax
  %i.az = or disjoint i64 %n.vec376, 1            ; 2 uses
  %i.ba = zext <4 x i8> %i.aw to <4 x i32>
  %i.bb = shl nuw nsw <4 x i32> %i.ba, splat (i32 3)
  %i.bc = add nsw <4 x i32> %i.bb, splat (i32 -8)
  %i.bd = lshr <4 x i32> %broadcast.splat378, %i.bc
  %i.be = trunc <4 x i32> %i.bd to <4 x i8>
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 2
  store <4 x i8> %i.be, ptr %i.bf, align 1, !tbaa !15
  %cmp.n385 = icmp eq i64 %n.vec376, %i.av
  br i1 %cmp.n385, label %.loopexit.loopexit30.i.i.i.i, label %.split.i.i.i.i.preheader

.split.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.az, %vec.epilog.vector.body ]
  %.029.i.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i.i193, %iter.check ], [ %i.ay, %vec.epilog.vector.body ]
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i.preheader, %.split.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.split.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %.029.i.i.i.i = phi i8 [ %i.bm, %.split.i.i.i.i ], [ %.029.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %i.bg = zext i8 %.029.i.i.i.i to i32
  %i.bh = shl nuw nsw i32 %i.bg, 3
  %i.bi = add nsw i32 %i.bh, -8
  %i.bj = lshr i32 %i.ap, %i.bi
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i.i.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.bm = add i8 %.029.i.i.i.i, -1                ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not26.i.i.i.i, label %.loopexit.loopexit30.i.i.i.i, label %.split.i.i.i.i, !llvm.loop !173

.loopexit.loopexit30.i.i.i.i:                     ; preds = %.split.i.i.i.i, %vec.epilog.vector.body
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %i.az, %vec.epilog.vector.body ], [ %indvars.iv.next.i.i.i.i, %.split.i.i.i.i ]
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  %i.bo = add i32 %i.bn, 1
  br label %.thread.i.i201

.thread.i.i201:                                   ; preds = %.loopexit.loopexit30.i.i.i.i, %bb.aj
  %.0.i.i.i194 = phi i32 [ %i.bo, %.loopexit.loopexit30.i.i.i.i ], [ 2, %bb.aj ] ; 3 uses
  %i.bp = zext i32 %.0.i.i.i194 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp ; 2 uses
  store i8 6, ptr %i.bq, align 1, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 9, ptr %i.br, align 1, !tbaa !15
  %i.bs = add i32 %.0.i.i.i194, 2
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bu, ptr noundef nonnull align 1 dereferenceable(9) @sigRsaSsaPssOid, i64 9, i1 false)
  %i.bv = add i32 %.0.i.i.i194, 11                ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw ; 3 uses
  store i8 48, ptr %i.bx, align 1, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  br i1 %i.ae, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread.i.i201
  %i.bz = trunc nuw nsw i32 %i.ad to i8
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !15
  br label %.thread.i.i218

bb.ao:                                            ; preds = %.thread.i.i201
  %.not5.i.i.i.i.i202 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i.i.i.i202, label %bb.ap, label %iter.check406

bb.ap:                                            ; preds = %bb.ao
  %.not5.1.i.i.i.i.i214 = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i214, label %bb.aq, label %iter.check406

bb.aq:                                            ; preds = %bb.ap
  %.not5.2.i.i.i.i.i215 = icmp samesign ult i32 %i.ad, 256
  %i.ca = select i1 %.not5.2.i.i.i.i.i215, i8 1, i8 2
  br label %iter.check406

iter.check406:                                    ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.lcssa.i.i.i.i.i204 = phi i8 [ 4, %bb.ao ], [ %i.ca, %bb.aq ], [ 3, %bb.ap ] ; 6 uses
  %i.cb = or disjoint i8 %.0.lcssa.i.i.i.i.i204, -128
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !15
  %i.cc = zext nneg i8 %.0.lcssa.i.i.i.i.i204 to i64 ; 2 uses
  %min.iters.check388 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i204, 4
  br i1 %min.iters.check388, label %.split.i.i.i.i205.preheader, label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %iter.check406
  %broadcast.splatinsert414 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i204, i64 0
  %broadcast.splat415 = shufflevector <4 x i8> %broadcast.splatinsert414, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cd = add nsw <4 x i8> %broadcast.splat415, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec411 = and i64 %i.cc, 4                    ; 3 uses
  %i.ce = trunc nuw nsw i64 %n.vec411 to i8
  %i.cf = sub nsw i8 %.0.lcssa.i.i.i.i.i204, %i.ce
  %i.cg = or disjoint i64 %n.vec411, 1            ; 2 uses
  %i.ch = zext <4 x i8> %i.cd to <4 x i32>
  %i.ci = shl nuw nsw <4 x i32> %i.ch, splat (i32 3)
  %i.cj = add nsw <4 x i32> %i.ci, splat (i32 -8)
  %i.ck = lshr <4 x i32> %broadcast.splat413, %i.cj
  %i.cl = trunc <4 x i32> %i.ck to <4 x i8>
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store <4 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !15
  %cmp.n422 = icmp eq i64 %n.vec411, %i.cc
  br i1 %cmp.n422, label %.loopexit.loopexit30.i.i.i.i210, label %.split.i.i.i.i205.preheader

.split.i.i.i.i205.preheader:                      ; preds = %iter.check406, %vec.epilog.vector.body416
  %indvars.iv.i.i.i.i206.ph = phi i64 [ 1, %iter.check406 ], [ %i.cg, %vec.epilog.vector.body416 ]
  %.029.i.i.i.i207.ph = phi i8 [ %.0.lcssa.i.i.i.i.i204, %iter.check406 ], [ %i.cf, %vec.epilog.vector.body416 ]
  br label %.split.i.i.i.i205

.split.i.i.i.i205:                                ; preds = %.split.i.i.i.i205.preheader, %.split.i.i.i.i205
  %indvars.iv.i.i.i.i206 = phi i64 [ %indvars.iv.next.i.i.i.i208, %.split.i.i.i.i205 ], [ %indvars.iv.i.i.i.i206.ph, %.split.i.i.i.i205.preheader ] ; 2 uses
  %.029.i.i.i.i207 = phi i8 [ %i.ct, %.split.i.i.i.i205 ], [ %.029.i.i.i.i207.ph, %.split.i.i.i.i205.preheader ] ; 2 uses
  %i.cn = zext i8 %.029.i.i.i.i207 to i32
  %i.co = shl nuw nsw i32 %i.cn, 3
  %i.cp = add nsw i32 %i.co, -8
  %i.cq = lshr i32 %i.ad, %i.cp
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv.i.i.i.i206
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i208 = add nuw nsw i64 %indvars.iv.i.i.i.i206, 1 ; 2 uses
  %i.ct = add i8 %.029.i.i.i.i207, -1             ; 2 uses
  %.not26.i.i.i.i209 = icmp eq i8 %i.ct, 0
  br i1 %.not26.i.i.i.i209, label %.loopexit.loopexit30.i.i.i.i210, label %.split.i.i.i.i205, !llvm.loop !174

.loopexit.loopexit30.i.i.i.i210:                  ; preds = %.split.i.i.i.i205, %vec.epilog.vector.body416
  %indvars.iv.next.i.i.i.i208.lcssa = phi i64 [ %i.cg, %vec.epilog.vector.body416 ], [ %indvars.iv.next.i.i.i.i208, %.split.i.i.i.i205 ]
  %i.cu = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i208.lcssa to i32
  %i.cv = add i32 %i.cu, 1
  br label %.thread.i.i218

.thread.i.i218:                                   ; preds = %.loopexit.loopexit30.i.i.i.i210, %bb.an
  %.0.i.i.i211 = phi i32 [ %i.cv, %.loopexit.loopexit30.i.i.i.i210 ], [ 2, %bb.an ]
  %i.cw = add i32 %.0.i.i.i211, %i.bv             ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 3 uses
  store i8 -96, ptr %i.cy, align 1, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %5 = trunc nuw i32 %i.k to i8                   ; 2 uses
  br i1 %i.m, label %SetExplicit.exit233, label %.split.i.i.i.i222

.split.i.i.i.i222:                                ; preds = %.thread.i.i218
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  store i8 %5, ptr %i.da, align 1, !tbaa !15
  br label %SetExplicit.exit233

SetExplicit.exit233:                              ; preds = %.thread.i.i218, %.split.i.i.i.i222
  %.sink = phi i8 [ -127, %.split.i.i.i.i222 ], [ %5, %.thread.i.i218 ]
  %.0.i.i.i228 = phi i32 [ 3, %.split.i.i.i.i222 ], [ 2, %.thread.i.i218 ]
  store i8 %.sink, ptr %i.cz, align 1, !tbaa !15
  %i.db = add i32 %.0.i.i.i228, %i.cw             ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc
  %i.de = zext nneg i32 %i.k to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 16 %i.b, i64 %i.de, i1 false)
  %i.df = add i32 %i.db, %i.k                     ; 2 uses
  br i1 %i.t, label %.thread.i.i245, label %bb.ar

bb.ar:                                            ; preds = %SetExplicit.exit233
  %.not5.i.i.i.i.i235 = icmp ult i32 %i.u, 16777216
  br i1 %.not5.i.i.i.i.i235, label %bb.as, label %.thread.i.i245

bb.as:                                            ; preds = %bb.ar
  %.not5.1.i.i.i.i.i241 = icmp samesign ult i32 %i.u, 65536
  br i1 %.not5.1.i.i.i.i.i241, label %bb.at, label %.thread.i.i245

bb.at:                                            ; preds = %bb.as
  %.not5.2.i.i.i.i.i242 = icmp samesign ult i32 %i.u, 256
  %i.dg = select i1 %.not5.2.i.i.i.i.i242, i32 3, i32 4
  br label %.thread.i.i245

.thread.i.i245:                                   ; preds = %bb.ar, %bb.as, %bb.at, %SetExplicit.exit233
  %.0.i.i.i240 = phi i32 [ 2, %SetExplicit.exit233 ], [ 6, %bb.ar ], [ %i.dg, %bb.at ], [ 5, %bb.as ]
  %i.dh = add nuw nsw i32 %.0.i.i.i240, %i.u      ; 7 uses
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.di ; 3 uses
  store i8 -95, ptr %i.dj, align 1, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  %i.dl = icmp ult i32 %i.dh, 128
  br i1 %i.dl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread.i.i245
  %i.dm = trunc nuw nsw i32 %i.dh to i8
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !15
  br label %.thread.i.i262

bb.av:                                            ; preds = %.thread.i.i245
  %.not5.i.i.i.i.i246 = icmp ult i32 %i.dh, 16777216
  br i1 %.not5.i.i.i.i.i246, label %bb.aw, label %iter.check443

bb.aw:                                            ; preds = %bb.av
  %.not5.1.i.i.i.i.i258 = icmp samesign ult i32 %i.dh, 65536
  br i1 %.not5.1.i.i.i.i.i258, label %bb.ax, label %iter.check443

bb.ax:                                            ; preds = %bb.aw
  %.not5.2.i.i.i.i.i259 = icmp samesign ult i32 %i.dh, 256
  %i.dn = select i1 %.not5.2.i.i.i.i.i259, i8 1, i8 2
  br label %iter.check443

iter.check443:                                    ; preds = %bb.av, %bb.aw, %bb.ax
  %.0.lcssa.i.i.i.i.i248 = phi i8 [ 4, %bb.av ], [ %i.dn, %bb.ax ], [ 3, %bb.aw ] ; 6 uses
  %i.do = or disjoint i8 %.0.lcssa.i.i.i.i.i248, -128
  store i8 %i.do, ptr %i.dk, align 1, !tbaa !15
  %i.dp = zext nneg i8 %.0.lcssa.i.i.i.i.i248 to i64 ; 2 uses
  %min.iters.check425 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i248, 4
  br i1 %min.iters.check425, label %.split.i.i.i.i249.preheader, label %vec.epilog.vector.body453

vec.epilog.vector.body453:                        ; preds = %iter.check443
  %broadcast.splatinsert451 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i248, i64 0
  %broadcast.splat452 = shufflevector <4 x i8> %broadcast.splatinsert451, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dq = add nsw <4 x i8> %broadcast.splat452, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert449 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat450 = shufflevector <4 x i32> %broadcast.splatinsert449, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec448 = and i64 %i.dp, 4                    ; 3 uses
  %i.dr = trunc nuw nsw i64 %n.vec448 to i8
  %i.ds = sub nsw i8 %.0.lcssa.i.i.i.i.i248, %i.dr
  %i.dt = or disjoint i64 %n.vec448, 1            ; 2 uses
  %i.du = zext <4 x i8> %i.dq to <4 x i32>
  %i.dv = shl nuw nsw <4 x i32> %i.du, splat (i32 3)
  %i.dw = add nsw <4 x i32> %i.dv, splat (i32 -8)
  %i.dx = lshr <4 x i32> %broadcast.splat450, %i.dw
  %i.dy = trunc <4 x i32> %i.dx to <4 x i8>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store <4 x i8> %i.dy, ptr %i.dz, align 1, !tbaa !15
  %cmp.n459 = icmp eq i64 %n.vec448, %i.dp
  br i1 %cmp.n459, label %.loopexit.loopexit30.i.i.i.i254, label %.split.i.i.i.i249.preheader

.split.i.i.i.i249.preheader:                      ; preds = %iter.check443, %vec.epilog.vector.body453
  %indvars.iv.i.i.i.i250.ph = phi i64 [ 1, %iter.check443 ], [ %i.dt, %vec.epilog.vector.body453 ]
  %.029.i.i.i.i251.ph = phi i8 [ %.0.lcssa.i.i.i.i.i248, %iter.check443 ], [ %i.ds, %vec.epilog.vector.body453 ]
  br label %.split.i.i.i.i249

.split.i.i.i.i249:                                ; preds = %.split.i.i.i.i249.preheader, %.split.i.i.i.i249
  %indvars.iv.i.i.i.i250 = phi i64 [ %indvars.iv.next.i.i.i.i252, %.split.i.i.i.i249 ], [ %indvars.iv.i.i.i.i250.ph, %.split.i.i.i.i249.preheader ] ; 2 uses
  %.029.i.i.i.i251 = phi i8 [ %i.eg, %.split.i.i.i.i249 ], [ %.029.i.i.i.i251.ph, %.split.i.i.i.i249.preheader ] ; 2 uses
  %i.ea = zext i8 %.029.i.i.i.i251 to i32
  %i.eb = shl nuw nsw i32 %i.ea, 3
  %i.ec = add nsw i32 %i.eb, -8
  %i.ed = lshr i32 %i.dh, %i.ec
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i.i.i.i250
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i252 = add nuw nsw i64 %indvars.iv.i.i.i.i250, 1 ; 2 uses
  %i.eg = add i8 %.029.i.i.i.i251, -1             ; 2 uses
  %.not26.i.i.i.i253 = icmp eq i8 %i.eg, 0
  br i1 %.not26.i.i.i.i253, label %.loopexit.loopexit30.i.i.i.i254, label %.split.i.i.i.i249, !llvm.loop !175

.loopexit.loopexit30.i.i.i.i254:                  ; preds = %.split.i.i.i.i249, %vec.epilog.vector.body453
  %indvars.iv.next.i.i.i.i252.lcssa = phi i64 [ %i.dt, %vec.epilog.vector.body453 ], [ %indvars.iv.next.i.i.i.i252, %.split.i.i.i.i249 ]
  %i.eh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i252.lcssa to i32
  %i.ei = add i32 %i.eh, 1
  br label %.thread.i.i262

.thread.i.i262:                                   ; preds = %.loopexit.loopexit30.i.i.i.i254, %bb.au
  %.0.i.i.i255 = phi i32 [ %i.ei, %.loopexit.loopexit30.i.i.i.i254 ], [ 2, %bb.au ]
  %i.ej = add i32 %.0.i.i.i255, %i.df             ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek ; 3 uses
  store i8 48, ptr %i.el, align 1, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 3 uses
  br i1 %i.t, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread.i.i262
  %i.en = trunc nuw nsw i32 %i.u to i8
  store i8 %i.en, ptr %i.em, align 1, !tbaa !15
  br label %.split.i

bb.az:                                            ; preds = %.thread.i.i262
  %.not5.i.i.i.i.i263 = icmp ult i32 %i.u, 16777216
  br i1 %.not5.i.i.i.i.i263, label %bb.ba, label %iter.check480

bb.ba:                                            ; preds = %bb.az
  %.not5.1.i.i.i.i.i275 = icmp samesign ult i32 %i.u, 65536
  br i1 %.not5.1.i.i.i.i.i275, label %bb.bb, label %iter.check480

bb.bb:                                            ; preds = %bb.ba
  %.not5.2.i.i.i.i.i276 = icmp samesign ult i32 %i.u, 256
  %i.eo = select i1 %.not5.2.i.i.i.i.i276, i8 1, i8 2
  br label %iter.check480

iter.check480:                                    ; preds = %bb.az, %bb.ba, %bb.bb
  %.0.lcssa.i.i.i.i.i265 = phi i8 [ 4, %bb.az ], [ %i.eo, %bb.bb ], [ 3, %bb.ba ] ; 6 uses
  %i.ep = or disjoint i8 %.0.lcssa.i.i.i.i.i265, -128
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !15
  %i.eq = zext nneg i8 %.0.lcssa.i.i.i.i.i265 to i64 ; 2 uses
  %min.iters.check462 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i265, 4
  br i1 %min.iters.check462, label %.split.i.i.i.i266.preheader, label %vec.epilog.vector.body490

vec.epilog.vector.body490:                        ; preds = %iter.check480
  %broadcast.splatinsert488 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i265, i64 0
  %broadcast.splat489 = shufflevector <4 x i8> %broadcast.splatinsert488, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.er = add nsw <4 x i8> %broadcast.splat489, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert486 = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat487 = shufflevector <4 x i32> %broadcast.splatinsert486, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec485 = and i64 %i.eq, 4                    ; 3 uses
  %i.es = trunc nuw nsw i64 %n.vec485 to i8
  %i.et = sub nsw i8 %.0.lcssa.i.i.i.i.i265, %i.es
  %i.eu = or disjoint i64 %n.vec485, 1            ; 2 uses
  %i.ev = zext <4 x i8> %i.er to <4 x i32>
  %i.ew = shl nuw nsw <4 x i32> %i.ev, splat (i32 3)
  %i.ex = add nsw <4 x i32> %i.ew, splat (i32 -8)
  %i.ey = lshr <4 x i32> %broadcast.splat487, %i.ex
  %i.ez = trunc <4 x i32> %i.ey to <4 x i8>
  %i.fa = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store <4 x i8> %i.ez, ptr %i.fa, align 1, !tbaa !15
  %cmp.n496 = icmp eq i64 %n.vec485, %i.eq
  br i1 %cmp.n496, label %.loopexit.loopexit30.i.i.i.i271, label %.split.i.i.i.i266.preheader

.split.i.i.i.i266.preheader:                      ; preds = %iter.check480, %vec.epilog.vector.body490
  %indvars.iv.i.i.i.i267.ph = phi i64 [ 1, %iter.check480 ], [ %i.eu, %vec.epilog.vector.body490 ]
  %.029.i.i.i.i268.ph = phi i8 [ %.0.lcssa.i.i.i.i.i265, %iter.check480 ], [ %i.et, %vec.epilog.vector.body490 ]
  br label %.split.i.i.i.i266

.split.i.i.i.i266:                                ; preds = %.split.i.i.i.i266.preheader, %.split.i.i.i.i266
  %indvars.iv.i.i.i.i267 = phi i64 [ %indvars.iv.next.i.i.i.i269, %.split.i.i.i.i266 ], [ %indvars.iv.i.i.i.i267.ph, %.split.i.i.i.i266.preheader ] ; 2 uses
  %.029.i.i.i.i268 = phi i8 [ %i.fh, %.split.i.i.i.i266 ], [ %.029.i.i.i.i268.ph, %.split.i.i.i.i266.preheader ] ; 2 uses
  %i.fb = zext i8 %.029.i.i.i.i268 to i32
  %i.fc = shl nuw nsw i32 %i.fb, 3
  %i.fd = add nsw i32 %i.fc, -8
  %i.fe = lshr i32 %i.u, %i.fd
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv.i.i.i.i267
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i269 = add nuw nsw i64 %indvars.iv.i.i.i.i267, 1 ; 2 uses
  %i.fh = add i8 %.029.i.i.i.i268, -1             ; 2 uses
  %.not26.i.i.i.i270 = icmp eq i8 %i.fh, 0
  br i1 %.not26.i.i.i.i270, label %.loopexit.loopexit30.i.i.i.i271, label %.split.i.i.i.i266, !llvm.loop !176

.loopexit.loopexit30.i.i.i.i271:                  ; preds = %.split.i.i.i.i266, %vec.epilog.vector.body490
  %indvars.iv.next.i.i.i.i269.lcssa = phi i64 [ %i.eu, %vec.epilog.vector.body490 ], [ %indvars.iv.next.i.i.i.i269, %.split.i.i.i.i266 ]
  %i.fi = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i269.lcssa to i32
  %i.fj = add i32 %i.fi, 1
  br label %.split.i

.split.i:                                         ; preds = %.loopexit.loopexit30.i.i.i.i271, %bb.ay
  %.0.i.i.i272 = phi i32 [ %i.fj, %.loopexit.loopexit30.i.i.i.i271 ], [ 2, %bb.ay ]
  %i.fk = add i32 %.0.i.i.i272, %i.ej             ; 3 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 %i.fl ; 2 uses
  store i8 6, ptr %i.fm, align 1, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store i8 9, ptr %i.fn, align 1, !tbaa !15
  %i.fo = add i32 %i.fk, 2
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fq, ptr noundef nonnull align 1 dereferenceable(9) @wc_EncodeRsaPssAlgoId.mgf1Oid, i64 9, i1 false)
  %i.fr = add i32 %i.fk, 11                       ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr nonnull align 16 %i.b, i64 %i.de, i1 false)
end_hunk_0
