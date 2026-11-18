Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.07?download=true
inline.NumInlined: 5610
inline.NumDeleted: 2048
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hd9574fdf3ea3a533E":bb.a
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27e7bfe28c0a3852E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(296) %1), !noalias !2700
  %i.bt = load i8, ptr %i.a, align 8, !range !52, !noalias !2699, !noundef !29
  switch i8 %i.bt, label %bb.z [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit31.thread84"
    i8 0, label %bb.y
  ], !prof !53

bb.y:                                             ; preds = %bb.x
  %i.bu = load i8, ptr %i.bm, align 1, !noalias !2699, !noundef !29 ; 2 uses
  store i8 1, ptr %i.h, align 8, !alias.scope !2698
  store i8 %i.bu, ptr %i.k, align 1, !alias.scope !2698
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit31.thread84"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit31.thread84": ; preds = %bb.y, %bb.x
  %.sroa.645.0.ph = phi i8 [ 0, %bb.x ], [ %i.bu, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2699
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !2699, !nonnull !29, !noundef !29
  %i.bx = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.bw), !noalias !2700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2699
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  store i64 3, ptr %0, align 8
  br label %bb.v

bb.aa:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit31.thread84", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit31.thread"
  %.sroa.645.182 = phi i8 [ %i.bs, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit31.thread" ], [ %.sroa.645.0.ph, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit31.thread84" ]
  %i.bz = add i8 %.sroa.645.182, -48              ; 3 uses
  %or.cond2 = icmp ult i8 %i.bz, 10
  br i1 %or.cond2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$12parse_number17ha1e56a6a964f05e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(328) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0)
  br label %bb.v

bb.ac:                                            ; preds = %bb.aa
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = icmp ugt i64 %.sroa.07.0, 1844674407370955160
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = icmp ne i64 %.sroa.07.0, 1844674407370955161
  %i.cd = icmp samesign ugt i8 %i.bz, 5
  %or.cond3 = or i1 %i.cc, %i.cd
  br i1 %or.cond3, label %bb.ai, label %bb.ae, !prof !39

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ce = load i8, ptr %i.h, align 8, !range !42, !alias.scope !2701, !noundef !29
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load i8, ptr %i.k, align 1, !alias.scope !2701
  store i8 0, ptr %i.h, align 8, !alias.scope !2701
  br i1 %i.cf, label %bb.af, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit"

bb.af:                                            ; preds = %bb.ae
  %i.ch = load i64, ptr %i.bn, align 8, !range !43, !alias.scope !2701, !noundef !29 ; 2 uses
  %.not.i = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %.not.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ci = load i64, ptr %i.bo, align 8, !alias.scope !2702, !noundef !29 ; 3 uses
  %i.cj = icmp eq i64 %i.ci, %i.ch
  br i1 %i.cj, label %bb.ah, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i32"

bb.ah:                                            ; preds = %bb.ag
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i32"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i32": ; preds = %bb.ah, %bb.ag
  %i.ck = load ptr, ptr %i.bp, align 8, !alias.scope !2702, !nonnull !29, !noundef !29
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 %i.cg, ptr %i.cl, align 1
  %i.cm = add i64 %i.ci, 1
  store i64 %i.cm, ptr %i.bo, align 8, !alias.scope !2702
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit": ; preds = %bb.ae, %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i32"
  %i.cn = mul nuw i64 %.sroa.07.0, 10
  %i.co = add i64 %i.cn, %i.ca
  br label %bb.w

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17haf83e08d8a981b2cE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(328) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0)
  %i.cp = load i64, ptr %i.g, align 8, !range !56, !noundef !29
  %i.cq = trunc nuw i64 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.cq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ct = load ptr, ptr %i.cr, align 8, !nonnull !29, !align !36, !noundef !29
  store ptr %i.ct, ptr %i.cs, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cu = load double, ptr %i.cr, align 8, !noundef !29
  store double %i.cu, ptr %i.cs, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink = phi i64 [ 3, %bb.aj ], [ 0, %bb.ak ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h221653cfb3e48a2fE"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 !guid !2796 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2799, !noundef !29 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2799, !noundef !29 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread"

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2799, !nonnull !29, !align !30, !noundef !29 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !2800, !noundef !29 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2799
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit": ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread", !prof !32

.preheader:                                       ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit"
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit43", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit": ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !2801, !noundef !29
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread", !prof !32

bb.d:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit43", %.preheader, %bb.c, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit"
  %i.y = phi i64 [ %i.o, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit" ], [ %i.o, %.preheader ], [ %i.o, %bb.c ], [ %i.ab, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit43" ] ; 5 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit40", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread": ; preds = %bb.a, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.aa = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit43": ; preds = %.preheader, %bb.e
  %i.ab = phi i64 [ %i.ag, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2802, !noundef !29
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread"

bb.e:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit43"
  %i.ag = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2803
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit43"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit40": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread"
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2804, !noundef !29
  switch i8 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit" [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit40"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  %storemerge.peel.i = add nuw i64 %i.y, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !2805
  %i.aj = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.aj, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.peel.i", label %.thread.thread.i

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.peel.i": ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !2806, !noundef !29
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.peel.i"
  %i.ao = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.ao
  br i1 %exitcond80.not107, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit.loopexit73", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i"

.peel.next.i:                                     ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i"
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.ao
  br i1 %exitcond80.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit.loopexit73", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i", !llvm.loop !2737

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i": ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2807, !noundef !29 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %.peel.next.i, label %.loopexit.i, !llvm.loop !2737

.loopexit.i:                                      ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i"
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !2805
  switch i8 %i.aq, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit" [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.peel.i", %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2805
  store i64 13, ptr %i.c, align 8, !noalias !2805
  %i.at = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2805
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  %i.au = add nuw i64 %storemerge.in.i108, 2      ; 5 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !2809
  %i.av = icmp ult i64 %i.au, %i.i
  br i1 %i.av, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i.i", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i.i"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i.i": ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2810, !noundef !29
  switch i8 %i.ax, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i.i" [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i.i": ; preds = %bb.h, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i.i", %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i.i"

bb.h:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i.i", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i.i"
  %i.ba = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !2813
  br label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i.i"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2814, !noundef !29
  %i.bd = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !alias.scope !2815
  %i.be = add i8 %i.bc, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.preheader.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i.i", !prof !32

.preheader.i.i:                                   ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i"
  %i.bg = icmp ult i64 %i.bd, %i.i
  br i1 %i.bg, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i.i": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2816
  store i64 13, ptr %i.b, align 8, !noalias !2816
  %i.bh = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2816
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i.i": ; preds = %.preheader.i.i, %bb.i
  %i.bi = phi i64 [ %i.bn, %bb.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !2817, !noundef !29
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

bb.i:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i.i"
  %i.bn = add nuw i64 %i.bi, 1                    ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !2818
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.i
  br i1 %exitcond.not.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i.i"

bb.j:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit40", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit40"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  %i.bo = add nuw i64 %i.y, 1                     ; 5 uses
  store i64 %i.bo, ptr %i.f, align 8, !alias.scope !2820
  %i.bp = icmp ult i64 %i.bo, %i.i
  br i1 %i.bp, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i45", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i45": ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2821, !noundef !29
  switch i8 %i.br, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i" [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i": ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i45", %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.bo, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i45" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  %i.bt = icmp ult i64 %i.bs, %i.i
  br i1 %i.bt, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i"

bb.k:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i45", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.i45"
  %i.bu = add nuw i64 %i.y, 2                     ; 2 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !2824
  br label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !2825, !noundef !29
  %i.bx = add nuw i64 %i.bs, 1                    ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !2826
  %i.by = add i8 %i.bw, -48
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.preheader.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i", !prof !32

.preheader.i:                                     ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i"
  %i.ca = icmp ult i64 %i.bx, %i.i
  br i1 %i.ca, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2819
  store i64 13, ptr %i.a, align 8, !noalias !2819
  %i.cb = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2819
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i": ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !2827, !noundef !29
  %i.cf = add i8 %i.ce, -48
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

bb.l:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i"
  %i.ch = add nuw i64 %i.cc, 1                    ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !2828
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond.not.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit", label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit.loopexit73": ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2805
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit": ; preds = %bb.e, %bb.l, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i", %bb.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit.loopexit73", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i", %.preheader.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i.i", %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit40", %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread", %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit40" ], [ %i.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread" ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h039e1b00e11f9098E.exit.loopexit73" ], [ %i.at, %.thread.thread.i ], [ %i.bh, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i.i" ], [ null, %.preheader.i.i ], [ null, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit.thread" ], [ %i.cb, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.thread.i" ], [ null, %bb.l ], [ null, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i.i" ], [ null, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4peek17hda986f219e39a621E.exit26.i" ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h782ea124972832fbE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2875 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 12 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 22 uses
  %i.k = load i8, ptr %i.j, align 8, !range !42, !alias.scope !2876, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 305 ; 17 uses
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !2876 ; 3 uses
  store i8 0, ptr %i.j, align 8, !alias.scope !2876
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !43, !alias.scope !2876, !noundef !29 ; 2 uses
  %.not5.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not5.i, label %.thread, label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2877
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1ba360a0b463dbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(312) %0), !noalias !2878
  %i.q = load i8, ptr %i.i, align 8, !range !52, !noalias !2877, !noundef !29
  switch i8 %i.q, label %bb.i [
    i8 2, label %.thread78
    i8 0, label %bb.d
  ], !prof !53

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noalias !2877, !noundef !29 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !43, !alias.scope !2876, !noundef !29 ; 2 uses
  %.not4.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not4.i, label %.thread75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !2879, !noundef !29 ; 3 uses
  %i.x = icmp eq i64 %i.w, %i.u
  br i1 %i.x, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

bb.f:                                             ; preds = %bb.e
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2878
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i": ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2879, !nonnull !29, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 %i.s, ptr %i.aa, align 1, !noalias !2878
  %i.ab = add i64 %i.w, 1
  store i64 %i.ab, ptr %i.v, align 8, !alias.scope !2879
  br label %.thread75

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !2880, !noundef !29 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, %i.p
  br i1 %i.ae, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i"

bb.h:                                             ; preds = %bb.g
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !2878
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i": ; preds = %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2880, !nonnull !29, !noundef !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store i8 %i.n, ptr %i.ah, align 1, !noalias !2878
  %i.ai = add i64 %i.ad, 1
  store i64 %i.ai, ptr %i.ac, align 8, !alias.scope !2880
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2877, !nonnull !29, !noundef !29
  %i.al = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.ak), !noalias !2878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2877
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

.thread75:                                        ; preds = %bb.d, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2877
  br label %.thread

.thread:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i", %bb.b, %.thread75
  %.sroa.11.16474 = phi i8 [ %i.s, %.thread75 ], [ %i.n, %bb.b ], [ %i.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i" ] ; 2 uses
  %i.am = icmp eq i8 %.sroa.11.16474, 48
  br i1 %i.am, label %bb.k, label %bb.j

.thread78:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2877
  br label %bb.s

bb.j:                                             ; preds = %.thread
  %i.an = add i8 %.sroa.11.16474, -49
  %or.cond2 = icmp ult i8 %i.an, 9
  br i1 %or.cond2, label %.preheader, label %bb.s, !prof !32

.preheader:                                       ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit"

bb.k:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  %i.as = load i8, ptr %i.j, align 8, !range !42, !alias.scope !2881, !noundef !29
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread", label %bb.l

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread": ; preds = %bb.k
  %i.au = load i8, ptr %i.m, align 1, !alias.scope !2881, !noundef !29
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2882
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1ba360a0b463dbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(312) %0), !noalias !2883
  %i.av = load i8, ptr %i.h, align 8, !range !52, !noalias !2882, !noundef !29
  switch i8 %i.av, label %bb.n [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread87"
    i8 0, label %bb.m
  ], !prof !53

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2882, !noundef !29 ; 2 uses
  store i8 1, ptr %i.j, align 8, !alias.scope !2881
  store i8 %i.ax, ptr %i.m, align 1, !alias.scope !2881
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread87"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread87": ; preds = %bb.m, %bb.l
  %.sroa.10.0.ph = phi i8 [ undef, %bb.l ], [ %i.ax, %bb.m ]
  %.sroa.6.0.ph = phi i1 [ false, %bb.l ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2882
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !2882, !nonnull !29, !noundef !29
  %i.ba = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.az), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2882
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

bb.o:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread87", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread"
  %.sroa.6.186 = phi i1 [ true, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread" ], [ %.sroa.6.0.ph, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread87" ]
  %.sroa.10.185 = phi i8 [ %i.au, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread" ], [ %.sroa.10.0.ph, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread87" ]
  %i.bb = add i8 %.sroa.10.185, -48
  %i.bc = icmp ult i8 %i.bb, 10
  %.sroa.024.0 = and i1 %.sroa.6.186, %i.bc
  br i1 %.sroa.024.0, label %bb.p, label %.loopexit, !prof !57

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val = load i64, ptr %i.bd, align 8, !noundef !29
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val36 = load i64, ptr %i.be, align 8, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2884
  store i64 13, ptr %i.g, align 8
  %i.bf = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %.val, i64 noundef %.val36), !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2884
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

.loopexit:                                        ; preds = %bb.w, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !2885)
  %i.bg = load i8, ptr %i.j, align 8, !range !42, !alias.scope !2885, !noundef !29
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit39.thread", label %bb.q

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit39.thread": ; preds = %.loopexit
  %i.bi = load i8, ptr %i.m, align 1, !alias.scope !2885, !noundef !29
  br label %bb.ac

bb.q:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2886
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1ba360a0b463dbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(312) %0), !noalias !2887
  %i.bj = load i8, ptr %i.f, align 8, !range !52, !noalias !2886, !noundef !29
  switch i8 %i.bj, label %bb.ab [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit39.thread98"
    i8 0, label %bb.r
  ], !prof !53

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !2886, !noundef !29 ; 2 uses
  store i8 1, ptr %i.j, align 8, !alias.scope !2885
  store i8 %i.bl, ptr %i.m, align 1, !alias.scope !2885
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit39.thread98"
end_hunk_0
begin_hunk_1_@"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h782ea124972832fbE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2905
  br label %bb.ap

.loopexit.i:                                      ; preds = %bb.an, %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !2905, !nonnull !29, !noundef !29
  %i.eg = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.ef), !noalias !2906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2905
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

bb.ap:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread33.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread.i"
  %.sroa.6.132.i = phi i1 [ true, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread.i" ], [ %.sroa.6.0.ph.i, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread33.i" ]
  %.sroa.10.131.i = phi i8 [ %i.eb, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread.i" ], [ %.sroa.10.0.ph.i, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.thread33.i" ]
  %i.eh = add i8 %.sroa.10.131.i, -48
  %i.ei = icmp ult i8 %i.eh, 10
  %.sroa.06.0.i = and i1 %.sroa.6.132.i, %i.ei
  br i1 %.sroa.06.0.i, label %bb.aq, label %.loopexit52.i

.loopexit52.i:                                    ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  %i.ej = load i8, ptr %i.j, align 8, !range !42, !alias.scope !2908, !noundef !29
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread.i", label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.el = load i8, ptr %i.j, align 8, !range !42, !alias.scope !2901, !noundef !29
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = load i8, ptr %i.m, align 1, !alias.scope !2901 ; 2 uses
  store i8 0, ptr %i.j, align 8, !alias.scope !2901
  br i1 %i.em, label %bb.ar, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit17.peel.i.backedge"

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load i64, ptr %i.dm, align 8, !range !43, !alias.scope !2901, !noundef !29 ; 2 uses
  %.not.i15.i = icmp eq i64 %i.eo, -9223372036854775808
  br i1 %.not.i15.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit17.peel.i.backedge", label %bb.as

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit17.peel.i.backedge": ; preds = %bb.ar, %bb.aq
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit17.peel.i", !llvm.loop !2871

bb.as:                                            ; preds = %bb.ar
  %i.ep = load i64, ptr %i.dl, align 8, !alias.scope !2902, !noundef !29 ; 3 uses
  %i.eq = icmp eq i64 %i.ep, %i.eo
  br i1 %i.eq, label %bb.at, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit17.peel.i.sink.split", !llvm.loop !2871

bb.at:                                            ; preds = %bb.as
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit17.peel.i.sink.split.sink.split", !llvm.loop !2871

.loopexit52.thread.i:                             ; preds = %bb.aj
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val.i43 = load i64, ptr %i.er, align 8, !alias.scope !2894, !noundef !29
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val14.i = load i64, ptr %i.es, align 8, !alias.scope !2894, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2909
  store i64 13, ptr %i.b, align 8, !noalias !2894
  %i.et = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val.i43, i64 noundef %.val14.i), !noalias !2910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2909
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread.i": ; preds = %.loopexit52.i
  %i.eu = load i8, ptr %i.m, align 1, !alias.scope !2908, !noundef !29
  br label %bb.ax

bb.au:                                            ; preds = %.loopexit52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2911
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1ba360a0b463dbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(344) %0), !noalias !2912
  %i.ev = load i8, ptr %i.a, align 8, !range !52, !noalias !2911, !noundef !29
  switch i8 %i.ev, label %bb.aw [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread44.i"
    i8 0, label %bb.av
  ], !prof !53

bb.av:                                            ; preds = %bb.au
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !2911, !noundef !29 ; 2 uses
  store i8 1, ptr %i.j, align 8, !alias.scope !2908
  store i8 %i.ex, ptr %i.m, align 1, !alias.scope !2908
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread44.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread44.i": ; preds = %bb.av, %bb.au
  %.sroa.623.0.ph.i = phi i8 [ 0, %bb.au ], [ %i.ex, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2911
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !2911, !nonnull !29, !noundef !29
  %i.fa = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.ez), !noalias !2912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2911
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

bb.ax:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread44.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread.i"
  %.sroa.623.142.i = phi i8 [ %i.eu, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread.i" ], [ %.sroa.623.0.ph.i, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit19.thread44.i" ]
  switch i8 %.sroa.623.142.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit" [
    i8 101, label %bb.ay
    i8 69, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  %i.fb = call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$15ignore_exponent17h17e0d132f7152677E"(ptr noalias noundef nonnull align 8 dereferenceable(344) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

bb.az:                                            ; preds = %bb.ac, %bb.ac
  %i.fc = call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$15ignore_exponent17h17e0d132f7152677E"(ptr noalias noundef align 8 dereferenceable(344) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h5caf76c92ad558e1E.exit": ; preds = %bb.ay, %bb.ax, %bb.aw, %.loopexit52.thread.i, %.loopexit.i, %bb.az, %bb.ac, %bb.i, %bb.s, %bb.v, %bb.p, %bb.n, %bb.ab
  %.sroa.0.3 = phi ptr [ %i.bf, %bb.p ], [ %i.ck, %bb.ab ], [ %i.al, %bb.i ], [ %i.bo, %bb.s ], [ %i.bw, %bb.v ], [ %i.ba, %bb.n ], [ %i.fc, %bb.az ], [ null, %bb.ac ], [ %i.eg, %.loopexit.i ], [ %i.fa, %bb.aw ], [ %i.et, %.loopexit52.thread.i ], [ %i.fb, %bb.ay ], [ null, %bb.ax ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17ha1ff03ba31ac7f9eE"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #0 !guid !2970 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2971, !noundef !29 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2971, !noundef !29 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread"

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2971, !nonnull !29, !align !30, !noundef !29 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !2972, !noundef !29 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !2971
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit": ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread", !prof !32

.preheader:                                       ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit"
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit43", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit": ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !2973, !noundef !29
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread", !prof !32

bb.d:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit43", %.preheader, %bb.c, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit"
  %i.y = phi i64 [ %i.o, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit" ], [ %i.o, %.preheader ], [ %i.o, %bb.c ], [ %i.ab, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit43" ] ; 5 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit40", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread": ; preds = %bb.a, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.aa = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit43": ; preds = %.preheader, %bb.e
  %i.ab = phi i64 [ %i.ag, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2974, !noundef !29
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %bb.e, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread"

bb.e:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit43"
  %i.ag = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2975
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit43"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit40": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread"
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2976, !noundef !29
  switch i8 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit" [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit40"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %storemerge.peel.i = add nuw i64 %i.y, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !2977
  %i.aj = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.aj, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.peel.i", label %.thread.thread.i

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.peel.i": ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !2978, !noundef !29
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.peel.i"
  %i.ao = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.ao
  br i1 %exitcond80.not107, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit.loopexit73", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i"

.peel.next.i:                                     ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i"
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.ao
  br i1 %exitcond80.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit.loopexit73", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i", !llvm.loop !2932

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i": ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2979, !noundef !29 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %.peel.next.i, label %.loopexit.i, !llvm.loop !2932

.loopexit.i:                                      ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i"
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !2977
  switch i8 %i.aq, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit" [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.peel.i", %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2977
  store i64 13, ptr %i.c, align 8, !noalias !2977
  %i.at = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2977
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.au = add nuw i64 %storemerge.in.i108, 2      ; 5 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !2981
  %i.av = icmp ult i64 %i.au, %i.i
  br i1 %i.av, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i.i", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i.i"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i.i": ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2982, !noundef !29
  switch i8 %i.ax, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i.i" [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i.i": ; preds = %bb.h, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i.i", %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i.i"

bb.h:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i.i", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i.i"
  %i.ba = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !2984
  br label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i.i"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2985, !noundef !29
  %i.bd = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !alias.scope !2986
  %i.be = add i8 %i.bc, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.preheader.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i.i", !prof !32

.preheader.i.i:                                   ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i"
  %i.bg = icmp ult i64 %i.bd, %i.i
  br i1 %i.bg, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i.i": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2987
  store i64 13, ptr %i.b, align 8, !noalias !2987
  %i.bh = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2987
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i.i": ; preds = %.preheader.i.i, %bb.i
  %i.bi = phi i64 [ %i.bn, %bb.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !2988, !noundef !29
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

bb.i:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i.i"
  %i.bn = add nuw i64 %i.bi, 1                    ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !2989
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.i
  br i1 %exitcond.not.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i.i"

bb.j:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit40", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit40"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  %i.bo = add nuw i64 %i.y, 1                     ; 5 uses
  store i64 %i.bo, ptr %i.f, align 8, !alias.scope !2991
  %i.bp = icmp ult i64 %i.bo, %i.i
  br i1 %i.bp, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i45", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i45": ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2992, !noundef !29
  switch i8 %i.br, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i" [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i": ; preds = %bb.k, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i45", %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.bo, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i45" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  %i.bt = icmp ult i64 %i.bs, %i.i
  br i1 %i.bt, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i"

bb.k:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i45", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.i45"
  %i.bu = add nuw i64 %i.y, 2                     ; 2 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !2994
  br label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !2995, !noundef !29
  %i.bx = add nuw i64 %i.bs, 1                    ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !2996
  %i.by = add i8 %i.bw, -48
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.preheader.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i", !prof !32

.preheader.i:                                     ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i"
  %i.ca = icmp ult i64 %i.bx, %i.i
  br i1 %i.ca, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2990
  store i64 13, ptr %i.a, align 8, !noalias !2990
  %i.cb = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2990
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i": ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !2997, !noundef !29
  %i.cf = add i8 %i.ce, -48
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

bb.l:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i"
  %i.ch = add nuw i64 %i.cc, 1                    ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !2998
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond.not.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit", label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit.loopexit73": ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2977
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit": ; preds = %bb.e, %bb.l, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i", %bb.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit.loopexit73", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i", %.preheader.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i.i", %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit40", %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread", %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit40" ], [ %i.aa, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread" ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17hcf0cb06828a3829eE.exit.loopexit73" ], [ %i.at, %.thread.thread.i ], [ %i.bh, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i.i" ], [ null, %.preheader.i.i ], [ null, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit.thread" ], [ %i.cb, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.thread.i" ], [ null, %bb.l ], [ null, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i.i" ], [ null, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit26.i" ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17h248723f8cb2f8a46E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(328) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3038 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 14 uses
  %i.i = load i8, ptr %i.h, align 8, !range !42, !alias.scope !3039, !noundef !29
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 289 ; 9 uses
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !3039
  store i8 0, ptr %i.h, align 8, !alias.scope !3039
  br i1 %i.j, label %bb.b, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread"

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !43, !alias.scope !3039, !noundef !29 ; 2 uses
  %.not.i = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !3040, !noundef !29 ; 3 uses
  %i.q = icmp eq i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit": ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !3040, !nonnull !29, !noundef !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  store i8 %i.l, ptr %i.t, align 1
  %i.u = add i64 %i.p, 1
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !3040
  %.pre = load i8, ptr %i.h, align 8, !range !42, !alias.scope !3041
  %i.v = trunc nuw i8 %.pre to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  br i1 %i.v, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread", label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit"
  %i.w = load i8, ptr %i.k, align 1, !alias.scope !3041, !noundef !29
  br label %bb.g

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread": ; preds = %bb.b, %bb.a, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3042
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27e7bfe28c0a3852E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(296) %1), !noalias !3043
  %i.x = load i8, ptr %i.g, align 8, !range !52, !noalias !3042, !noundef !29
  switch i8 %i.x, label %bb.f [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread61"
    i8 0, label %bb.e
  ], !prof !53

bb.e:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread"
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.z = load i8, ptr %i.y, align 1, !noalias !3042, !noundef !29 ; 2 uses
  store i8 1, ptr %i.h, align 8, !alias.scope !3041
  store i8 %i.z, ptr %i.k, align 1, !alias.scope !3041
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread61"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread61": ; preds = %bb.e, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread"
  %.sroa.645.0.ph = phi i8 [ 0, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread" ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3042
  br label %bb.g

bb.f:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.thread"
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !3042, !nonnull !29, !noundef !29
  %i.ac = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.ab), !noalias !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3042
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store i64 1, ptr %0, align 8
  br label %bb.au

bb.g:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread61", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread"
  %.sroa.645.160 = phi i8 [ %i.w, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread" ], [ %.sroa.645.0.ph, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.thread61" ]
  switch i8 %.sroa.645.160, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27" [
    i8 43, label %bb.h
    i8 45, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.h, align 8, !range !42, !alias.scope !3044, !noundef !29
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr %i.k, align 1, !alias.scope !3044
  store i8 0, ptr %i.h, align 8, !alias.scope !3044
  br i1 %i.af, label %bb.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27"

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !43, !alias.scope !3044, !noundef !29 ; 2 uses
  %.not.i25 = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %.not.i25, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !3045, !noundef !29 ; 3 uses
  %i.al = icmp eq i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i26"

bb.k:                                             ; preds = %bb.j
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i26"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i26": ; preds = %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !3045, !nonnull !29, !noundef !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  store i8 %i.ag, ptr %i.ao, align 1
  %i.ap = add i64 %i.ak, 1
  store i64 %i.ap, ptr %i.aj, align 8, !alias.scope !3045
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27"

bb.l:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.h, align 8, !range !42, !alias.scope !3046, !noundef !29
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = load i8, ptr %i.k, align 1, !alias.scope !3046
  store i8 0, ptr %i.h, align 8, !alias.scope !3046
  br i1 %i.ar, label %bb.m, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27"

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !range !43, !alias.scope !3046, !noundef !29 ; 2 uses
  %.not.i28 = icmp eq i64 %i.au, -9223372036854775808
  br i1 %.not.i28, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !3047, !noundef !29 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, %i.au
  br i1 %i.ax, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i29"

bb.o:                                             ; preds = %bb.n
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i29"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i29": ; preds = %bb.o, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !3047, !nonnull !29, !noundef !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw
  store i8 %i.as, ptr %i.ba, align 1
  %i.bb = add i64 %i.aw, 1
  store i64 %i.bb, ptr %i.av, align 8, !alias.scope !3047
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i29", %bb.m, %bb.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i26", %bb.i, %bb.h, %bb.g
  %.sroa.0.0 = phi i1 [ true, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i26" ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ false, %bb.l ], [ false, %bb.m ], [ false, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i29" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  %i.bc = load i8, ptr %i.h, align 8, !range !42, !alias.scope !3048, !noundef !29
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr %i.k, align 1, !alias.scope !3048 ; 3 uses
  store i8 0, ptr %i.h, align 8, !alias.scope !3048
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27"
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !range !43, !alias.scope !3048, !noundef !29 ; 2 uses
  %.not5.i = icmp eq i64 %i.bg, -9223372036854775808
  br i1 %.not5.i, label %.thread, label %bb.u

bb.q:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit27"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3049
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27e7bfe28c0a3852E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(296) %1), !noalias !3050
  %i.bh = load i8, ptr %i.f, align 8, !range !52, !noalias !3049, !noundef !29
  switch i8 %i.bh, label %bb.w [
    i8 2, label %bb.x
    i8 0, label %bb.r
  ], !prof !53

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !3049, !noundef !29 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !43, !alias.scope !3048, !noundef !29 ; 2 uses
  %.not4.i = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %.not4.i, label %.thread81, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !3051, !noundef !29 ; 3 uses
  %i.bo = icmp eq i64 %i.bn, %i.bl
  br i1 %i.bo, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i31"

bb.t:                                             ; preds = %bb.s
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk), !noalias !3050
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i31"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i31": ; preds = %bb.t, %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !3051, !nonnull !29, !noundef !29
end_hunk_1
begin_hunk_2_@"_ZN97_$LT$serde..private..de..FlatMapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_map17h1c27b9e039624650E":bb.a
  %.sroa.452.0.i.be = phi i32 [ %.sroa.452.0.i, %bb.bm ], [ %.sroa.452.0.i, %_ZN10serde_core2de9MapAccess10next_value17h0cdaf37c098b0d4aE.exit.i ], [ %.sroa.452.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit274.i ], [ %.sroa.452.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit270.i" ], [ %.sroa.452.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit260.i ], [ %.sroa.452.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit.i ], [ %i.cr, %_ZN10serde_core2de9MapAccess10next_value17hbed6987a861051aeE.exit.i ], [ %.sroa.452.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i" ], [ %.sroa.452.0.i, %bb.ac ], [ %.sroa.452.0.i, %bb.x ]
  %.sroa.050.0.i.be = phi i32 [ %.sroa.050.0.i, %bb.bm ], [ %.sroa.050.0.i, %_ZN10serde_core2de9MapAccess10next_value17h0cdaf37c098b0d4aE.exit.i ], [ %.sroa.050.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit274.i ], [ %.sroa.050.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit270.i" ], [ %.sroa.050.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit260.i ], [ %.sroa.050.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17hbed6987a861051aeE.exit.i ], [ %.sroa.050.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i" ], [ %.sroa.050.0.i, %bb.ac ], [ %.sroa.050.0.i, %bb.x ]
  %.sroa.427.0.i.be = phi i64 [ %.sroa.427.0.i, %bb.bm ], [ %.sroa.427.0.i, %_ZN10serde_core2de9MapAccess10next_value17h0cdaf37c098b0d4aE.exit.i ], [ %.sroa.427.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit274.i ], [ %.sroa.427.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit270.i" ], [ %.sroa.427.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit260.i ], [ %.sroa.427.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit.i ], [ %.sroa.427.0.i, %_ZN10serde_core2de9MapAccess10next_value17hbed6987a861051aeE.exit.i ], [ %.sroa.427.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i" ], [ %i.cd, %bb.ac ], [ %.sroa.427.0.i, %bb.x ]
  %.sroa.025.0.i.be = phi i64 [ %.sroa.025.0.i, %bb.bm ], [ %.sroa.025.0.i, %_ZN10serde_core2de9MapAccess10next_value17h0cdaf37c098b0d4aE.exit.i ], [ %.sroa.025.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit274.i ], [ %.sroa.025.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit270.i" ], [ %.sroa.025.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit260.i ], [ %.sroa.025.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit.i ], [ %.sroa.025.0.i, %_ZN10serde_core2de9MapAccess10next_value17hbed6987a861051aeE.exit.i ], [ %.sroa.025.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i" ], [ 1, %bb.ac ], [ %.sroa.025.0.i, %bb.x ]
  %.sroa.419.0.i.be = phi i64 [ %.sroa.419.0.i, %bb.bm ], [ %.sroa.419.0.i, %_ZN10serde_core2de9MapAccess10next_value17h0cdaf37c098b0d4aE.exit.i ], [ %.sroa.419.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit274.i ], [ %.sroa.419.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit270.i" ], [ %.sroa.419.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit260.i ], [ %.sroa.419.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit.i ], [ %.sroa.419.0.i, %_ZN10serde_core2de9MapAccess10next_value17hbed6987a861051aeE.exit.i ], [ %.sroa.419.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i" ], [ %.sroa.419.0.i, %bb.ac ], [ %i.bv, %bb.x ]
  %.sroa.017.0.i.be = phi i64 [ %.sroa.017.0.i, %bb.bm ], [ %.sroa.017.0.i, %_ZN10serde_core2de9MapAccess10next_value17h0cdaf37c098b0d4aE.exit.i ], [ %.sroa.017.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit274.i ], [ %.sroa.017.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit270.i" ], [ %.sroa.017.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit260.i ], [ %.sroa.017.0.i, %_ZN10serde_core2de9MapAccess10next_value17h43ecf8ea980bd809E.exit.i ], [ %.sroa.017.0.i, %_ZN10serde_core2de9MapAccess10next_value17hbed6987a861051aeE.exit.i ], [ %.sroa.017.0.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17habb54241869b686dE.exit.i" ], [ %.sroa.017.0.i, %bb.ac ], [ 1, %bb.x ]
  br label %bb.b

bb.bn:                                            ; preds = %.loopexit418.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !11587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !11587
  br label %bb.eo

bb.bo:                                            ; preds = %bb.fa, %bb.ez, %.body290.i, %.body294.i, %.loopexit.split-lp414.loopexit.split-lp.i, %.body278.i
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !11587
  unreachable

bb.bp:                                            ; preds = %bb.h
  %i.ei = trunc nuw i64 %.sroa.025.0.i to i1
  %.sroa.427.0..i = select i1 %i.ei, i64 %.sroa.427.0.i, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !11587
  %i.ej = load i64, ptr %i.ai, align 8, !range !43, !noalias !11587, !noundef !29
  %.not216.i = icmp eq i64 %i.ej, -9223372036854775808
  br i1 %.not216.i, label %bb.bs, label %bb.bt

bb.bq:                                            ; preds = %bb.h
  %i.ek = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17ha4b4fbf2d3d3e53fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @26, i64 noundef 2)
          to label %bb.br unwind label %.loopexit.split-lp.i, !noalias !11587

bb.br:                                            ; preds = %bb.bq
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %i.el, align 8, !alias.scope !11586
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !11586
  br label %bb.eo

bb.bs:                                            ; preds = %bb.bp
  %i.em = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17ha4b4fbf2d3d3e53fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @67, i64 noundef 4)
          to label %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf039a234c566ffeeE.exit.i" unwind label %.loopexit.split-lp.i, !noalias !11587

"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf039a234c566ffeeE.exit.i": ; preds = %bb.bs
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %i.en, align 8, !alias.scope !11586
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !11586
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !11587
  %i.eo = trunc nuw i32 %.sroa.050.0.i to i1
  br i1 %i.eo, label %bb.bw, label %bb.bu

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i", %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf039a234c566ffeeE.exit.i"
  %.sroa.0185.4.i = phi i8 [ 1, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf039a234c566ffeeE.exit.i" ], [ %.sroa.0185.7.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" ]
  %.sroa.0187.5.i = phi i8 [ 1, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hf039a234c566ffeeE.exit.i" ], [ 0, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !11587
  br label %bb.eo

bb.bu:                                            ; preds = %bb.bt
  %i.ep = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17ha4b4fbf2d3d3e53fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @28, i64 noundef 3)
          to label %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0e68cfb5f4879ce5E.exit.i" unwind label %bb.bv, !noalias !11587

.body294.i:                                       ; preds = %bb.ec, %.body290.i, %bb.bv
  %.sroa.0185.5.i = phi i8 [ %.sroa.0185.8.i, %.body290.i ], [ %.sroa.0185.6.i, %bb.bv ], [ %.sroa.0185.8.i, %bb.ec ]
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body291.i, %.body290.i ], [ %i.eq, %bb.bv ], [ %i.je, %bb.ec ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #27
          to label %.body278.i unwind label %bb.bo, !noalias !11587

bb.bv:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i293.i", %bb.ca, %bb.bu
  %.sroa.0185.6.i = phi i8 [ %.sroa.0185.8.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i293.i" ], [ 1, %bb.ca ], [ 1, %bb.bu ]
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body294.i

"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0e68cfb5f4879ce5E.exit.i": ; preds = %bb.bu
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ep, ptr %i.er, align 8, !alias.scope !11586
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !11586
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bt
  %.not217.i = icmp eq i8 %.sroa.058.0.i, 2
  br i1 %.not217.i, label %bb.ca, label %bb.cb

bb.bx:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit297.i", %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hc52cbf4a62ecadb5E.exit.i", %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0e68cfb5f4879ce5E.exit.i"
  %.sroa.0185.7.i = phi i8 [ %.sroa.0185.8.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit297.i" ], [ 1, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hc52cbf4a62ecadb5E.exit.i" ], [ 1, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0e68cfb5f4879ce5E.exit.i" ] ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" unwind label %bb.by, !noalias !11587

bb.by:                                            ; preds = %bb.bx
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body278.i unwind label %bb.bz, !noalias !11587

bb.bz:                                            ; preds = %bb.by
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !11587
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i": ; preds = %bb.bx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %.loopexit.split-lp.i, !noalias !11587

bb.ca:                                            ; preds = %bb.bw
  %i.eu = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17ha4b4fbf2d3d3e53fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @68, i64 noundef 9)
          to label %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hc52cbf4a62ecadb5E.exit.i" unwind label %bb.bv, !noalias !11587

"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hc52cbf4a62ecadb5E.exit.i": ; preds = %bb.ca
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !alias.scope !11586
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !11586
  br label %bb.bx

bb.cb:                                            ; preds = %bb.bw
  %.not218.i = icmp eq i8 %.sroa.065.0.i, 2
  %..sroa.065.0.i = select i1 %.not218.i, i8 0, i8 %.sroa.065.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !11587
  %i.ew = load i64, ptr %i.ah, align 8, !range !43, !noalias !11587, !noundef !29
  %.not219.i = icmp eq i64 %i.ew, -9223372036854775808
  br i1 %.not219.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !11587
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  store i64 0, ptr %i.u, align 8, !noalias !11587
  %.sroa.4207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4207.0..sroa_idx.i, align 8, !noalias !11587
  %.sroa.5208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.5208.0..sroa_idx.i, align 8, !noalias !11587
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.0185.8.i = phi i8 [ 0, %bb.cc ], [ 1, %bb.cd ] ; 6 uses
  %.not220.i = icmp eq i8 %.sroa.091.0.i, 2
  %..sroa.091.0.i = select i1 %.not220.i, i8 0, i8 %.sroa.091.0.i
  %i.ex = trunc nuw i8 %.sroa.098.0.i to i1
  br i1 %i.ex, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ey = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17ha4b4fbf2d3d3e53fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 3)
          to label %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbe4639b74e6ed033E.exit.i" unwind label %bb.cg, !noalias !11587

bb.cg:                                            ; preds = %bb.eg, %"_ZN4core3ptr89drop_in_place$LT$serde..private..de..FlatStructAccess$LT$serde_json..error..Error$GT$$GT$17hc704d67f6f6da37eE.exit92.sink.split.i.i.i", %bb.cf
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body290.i

.body290.i:                                       ; preds = %bb.co, %.body.i.i.i, %bb.cg
  %eh.lpad-body291.i = phi { ptr, i32 } [ %i.ez, %bb.cg ], [ %eh.lpad-body.i.i.i, %bb.co ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef align 8 dereferenceable(24) %i.u) #27
          to label %.body294.i unwind label %bb.bo, !noalias !11587

bb.ch:                                            ; preds = %bb.ce
  %.val236.i = load ptr, ptr %i.ak, align 8, !noalias !11587, !nonnull !29, !noundef !29 ; 3 uses
  %.val237.i = load i64, ptr %i.al, align 8, !noalias !11587, !noundef !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11594
  %.idx.i.i = shl nuw nsw i64 %.val237.i, 6
  %i.fa = getelementptr inbounds nuw i8, ptr %.val236.i, i64 %.idx.i.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store ptr %.val236.i, ptr %i.fb, align 8, !noalias !11594
  %i.fc = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  store ptr %i.fa, ptr %i.fc, align 8, !noalias !11594
  store i8 22, ptr %i.r, align 8, !noalias !11594
  %i.fd = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  store ptr @73, ptr %i.fd, align 8, !noalias !11594
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  store i64 4, ptr %i.fe, align 8, !noalias !11594
  call void @llvm.experimental.noalias.scope.decl(metadata !11595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11596
  %i.ff = icmp eq i64 %.val237.i, 0
  br i1 %i.ff, label %.thread104.thread.i.i.i, label %.lr.ph.i.i.lr.ph.i.i.i

.thread104.thread.i.i.i:                          ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11597
  br label %bb.dp

.lr.ph.i.i.lr.ph.i.i.i:                           ; preds = %bb.ch
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.6.0..sroa_idx.i.i87.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i88.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.2.0..sroa_idx.i.i81.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.2.0..sroa_idx.i.i74.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.2.0..sroa_idx.i.i68.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dc, %.lr.ph.i.i.lr.ph.i.i.i
  %i.fq = phi ptr [ %i.fa, %.lr.ph.i.i.lr.ph.i.i.i ], [ %i.gx, %bb.dc ]
  %i.fr = phi ptr [ %.val236.i, %.lr.ph.i.i.lr.ph.i.i.i ], [ %i.gw, %bb.dc ]
  %.sroa.04.0342.i.i.i = phi i32 [ 0, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.04.1.i.i.i, %bb.dc ] ; 6 uses
  %.sroa.4.0341.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.4.1.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.66.0340.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.66.1.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.08.0339.i.i.i = phi i32 [ 0, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.08.1.i.i.i, %bb.dc ] ; 6 uses
  %.sroa.410.0338.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.410.1.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.611.0337.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.611.1.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.015.0336.i.i.i = phi i32 [ 0, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.015.1.i.i.i, %bb.dc ] ; 6 uses
  %.sroa.417.0335.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.417.1.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.618.0334.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.618.1.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.022.0333.i.i.i = phi i32 [ 0, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.022.1.i.i.i, %bb.dc ] ; 6 uses
  %.sroa.424.0332.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.424.1.i.i.i, %bb.dc ] ; 5 uses
  %.sroa.625.0331.i.i.i = phi i32 [ undef, %.lr.ph.i.i.lr.ph.i.i.i ], [ %.sroa.625.1.i.i.i, %bb.dc ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11598)
  call void @llvm.experimental.noalias.scope.decl(metadata !11599)
  %.pre.i.i.i.i.i = load ptr, ptr %i.fd, align 8, !alias.scope !11600, !noalias !11594
  %.pre11.i.i.i.i.i = load i64, ptr %i.fe, align 8, !alias.scope !11600, !noalias !11594
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cl, %.lr.ph.i.i.i.i.i
  %i.fs = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %i.ft, %bb.cl ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 3 uses
  store ptr %i.ft, ptr %i.fb, align 8, !alias.scope !11600, !noalias !11594
  invoke void @_ZN5serde7private2de19flat_map_take_entry17h0a3064d0c828bf93E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.pre.i.i.i.i.i, i64 noundef %.pre11.i.i.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

.noexc.i.i.i:                                     ; preds = %bb.ci
  %i.fu = load i8, ptr %i.h, align 8, !range !37, !noalias !11602, !noundef !29
  %.not.i.i.i.i.i = icmp eq i8 %i.fu, 22
  br i1 %.not.i.i.i.i.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !11602
  %i.fv = load i8, ptr %i.r, align 8, !range !37, !alias.scope !11603, !noalias !11594, !noundef !29
  %i.fw = icmp eq i8 %i.fv, 22
  br i1 %i.fw, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i" unwind label %bb.cm, !noalias !11604

bb.cl:                                            ; preds = %.noexc.i.i.i
  %i.fx = icmp eq ptr %i.ft, %i.fq
  br i1 %i.fx, label %.thread104.i.i.i, label %bb.ci

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i": ; preds = %bb.ck, %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 32, i1 false), !noalias !11604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !11602
  invoke void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$22deserialize_identifier17h7e0e24c8f3afe19fE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc61.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

.noexc61.i.i.i:                                   ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11602
  %i.fy = load i8, ptr %i.g, align 8, !range !42, !noalias !11602, !noundef !29
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.cp, label %bb.cq

bb.cm:                                            ; preds = %bb.ck
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 32, i1 false), !noalias !11604
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #27
          to label %.body.i.i.i unwind label %bb.cn, !noalias !11604

bb.cn:                                            ; preds = %bb.cm
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !11604
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ci, %bb.dm, %bb.di, %bb.de, %bb.cz, %bb.cw, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h77b4fb3b55976cb7E.exit.i.i.i.i.i", %bb.dy, %bb.dv, %bb.ds, %bb.dp, %bb.dn, %bb.dj, %bb.df, %bb.da, %.invoke.i.i.i, %bb.cx
  %lpad.loopexit.split-lp2167 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cm
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ga, %bb.cm ], [ %lpad.loopexit.split-lp2167, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gc = load i8, ptr %i.r, align 8, !range !37, !alias.scope !11605, !noalias !11594, !noundef !29
  %i.gd = icmp eq i8 %i.gc, 22
  br i1 %i.gd, label %.body290.i, label %bb.co

bb.co:                                            ; preds = %.body.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %.body290.i unwind label %bb.eb, !noalias !11601

.thread104.i.i.i:                                 ; preds = %bb.dc, %bb.cl
  %.sroa.625.0316.i.i.i = phi i32 [ %.sroa.625.0331.i.i.i, %bb.cl ], [ %.sroa.625.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.424.0299.i.i.i = phi i32 [ %.sroa.424.0332.i.i.i, %bb.cl ], [ %.sroa.424.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.022.0282.i.i.i = phi i32 [ %.sroa.022.0333.i.i.i, %bb.cl ], [ %.sroa.022.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.618.0265.i.i.i = phi i32 [ %.sroa.618.0334.i.i.i, %bb.cl ], [ %.sroa.618.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.417.0248.i.i.i = phi i32 [ %.sroa.417.0335.i.i.i, %bb.cl ], [ %.sroa.417.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.015.0231.i.i.i = phi i32 [ %.sroa.015.0336.i.i.i, %bb.cl ], [ %.sroa.015.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.611.0214.i.i.i = phi i32 [ %.sroa.611.0337.i.i.i, %bb.cl ], [ %.sroa.611.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.410.0197.i.i.i = phi i32 [ %.sroa.410.0338.i.i.i, %bb.cl ], [ %.sroa.410.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.08.0180.i.i.i = phi i32 [ %.sroa.08.0339.i.i.i, %bb.cl ], [ %.sroa.08.1.i.i.i, %bb.dc ] ; 2 uses
  %.sroa.66.0163.i.i.i = phi i32 [ %.sroa.66.0340.i.i.i, %bb.cl ], [ %.sroa.66.1.i.i.i, %bb.dc ]
  %.sroa.4.0146.i.i.i = phi i32 [ %.sroa.4.0341.i.i.i, %bb.cl ], [ %.sroa.4.1.i.i.i, %bb.dc ]
  %.sroa.04.0129.i.i.i = phi i32 [ %.sroa.04.0342.i.i.i, %bb.cl ], [ %.sroa.04.1.i.i.i, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11597
  %i.ge = trunc nuw i32 %.sroa.04.0129.i.i.i to i1
  br i1 %i.ge, label %bb.dr, label %bb.dp

bb.cp:                                            ; preds = %.noexc61.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !11602, !nonnull !29, !align !36, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11597
  br label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i

bb.cq:                                            ; preds = %.noexc61.i.i.i
  %i.gh = load i8, ptr %i.fh, align 1, !range !66, !noalias !11602, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11597
  switch i8 %i.gh, label %default.unreachable [
    i8 4, label %bb.cv
    i8 0, label %bb.cr
    i8 1, label %bb.cs
    i8 2, label %bb.ct
    i8 3, label %bb.cu
  ]

default.unreachable:                              ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cq
  %i.gi = icmp eq i32 %.sroa.04.0342.i.i.i, 1
  br i1 %i.gi, label %.invoke.i.i.i, label %bb.cy, !prof !35

bb.cs:                                            ; preds = %bb.cq
  %i.gj = icmp eq i32 %.sroa.08.0339.i.i.i, 1
  br i1 %i.gj, label %.invoke.i.i.i, label %bb.dd, !prof !35

bb.ct:                                            ; preds = %bb.cq
  %i.gk = icmp eq i32 %.sroa.015.0336.i.i.i, 1
  br i1 %i.gk, label %.invoke.i.i.i, label %bb.dh, !prof !35

bb.cu:                                            ; preds = %bb.cq
  %i.gl = icmp eq i32 %.sroa.022.0333.i.i.i, 1
  br i1 %i.gl, label %.invoke.i.i.i, label %bb.dl, !prof !35

bb.cv:                                            ; preds = %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !11606)
  call void @llvm.experimental.noalias.scope.decl(metadata !11607)
  %.sroa.01.0.copyload.i.i.i.i.i = load i8, ptr %i.r, align 8, !alias.scope !11608, !noalias !11594 ; 2 uses
  store i8 22, ptr %i.r, align 8, !alias.scope !11608, !noalias !11594
  %.not.i.i63.i.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i.i.i, 22
  br i1 %.not.i.i63.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i.i87.i.i.i, i64 31, i1 false), !noalias !11601
  store i8 %.sroa.01.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !noalias !11609
  %i.gm = invoke noundef align 8 ptr @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$23deserialize_ignored_any17hbb10cd01dd036211E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601 ; 2 uses

bb.cx:                                            ; preds = %bb.cv
  %i.gn = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @395, i64 noundef 16)
          to label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

.invoke.i.i.i:                                    ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr
  %i.go = phi ptr [ @64, %bb.ct ], [ @62, %bb.cr ], [ @63, %bb.cs ], [ @65, %bb.cu ]
  %i.gp = phi i64 [ 8, %bb.ct ], [ 8, %bb.cr ], [ 8, %bb.cs ], [ 9, %bb.cu ]
  %i.gq = invoke noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.go, i64 noundef %i.gp)
          to label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.cy:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11610
  call void @llvm.experimental.noalias.scope.decl(metadata !11611)
  call void @llvm.experimental.noalias.scope.decl(metadata !11612)
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.r, align 8, !alias.scope !11613, !noalias !11594 ; 2 uses
  store i8 22, ptr %i.r, align 8, !alias.scope !11613, !noalias !11594
  %.not.i.i66.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i, 22
  br i1 %.not.i.i66.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i68.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i.i87.i.i.i, i64 31, i1 false), !noalias !11615
  store i8 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.d, align 8, !noalias !11614
  invoke void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17h5f9c37534c4cc109E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.da:                                            ; preds = %bb.cy
  %i.gr = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @395, i64 noundef 16)
          to label %.loopexit591.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit.i.i.i: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11614
  %.pre552.i.i.i.a = load i32, ptr %i.q, align 8, !range !40, !noalias !11610
  %i.gs = trunc nuw i32 %.pre552.i.i.i.a to i1
  br i1 %i.gs, label %.loopexit591.i.loopexit.i.i, label %bb.db

.loopexit591.i.loopexit.i.i:                      ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit.i.i.i
  %.pre419.i.i = load ptr, ptr %i.fo, align 8, !noalias !11610
  br label %.loopexit591.i.i.i

.loopexit591.i.i.i:                               ; preds = %.loopexit591.i.loopexit.i.i, %bb.da
  %i.gt = phi ptr [ %.pre419.i.i, %.loopexit591.i.loopexit.i.i ], [ %i.gr, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11610
  br label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i

bb.db:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit.i.i.i
  %i.gu = load i32, ptr %i.fp, align 4, !noalias !11610, !noundef !29
  %i.gv = load i32, ptr %i.fo, align 8, !noalias !11610, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11610
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i, %bb.do, %bb.dk, %bb.dg, %bb.db
  %.sroa.625.1.i.i.i = phi i32 [ %.sroa.625.0331.i.i.i, %bb.db ], [ %.sroa.625.0331.i.i.i, %bb.dg ], [ %.sroa.625.0331.i.i.i, %bb.dk ], [ %i.hn, %bb.do ], [ %.sroa.625.0331.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.424.1.i.i.i = phi i32 [ %.sroa.424.0332.i.i.i, %bb.db ], [ %.sroa.424.0332.i.i.i, %bb.dg ], [ %.sroa.424.0332.i.i.i, %bb.dk ], [ %i.hm, %bb.do ], [ %.sroa.424.0332.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.022.1.i.i.i = phi i32 [ %.sroa.022.0333.i.i.i, %bb.db ], [ %.sroa.022.0333.i.i.i, %bb.dg ], [ %.sroa.022.0333.i.i.i, %bb.dk ], [ 1, %bb.do ], [ %.sroa.022.0333.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.618.1.i.i.i = phi i32 [ %.sroa.618.0334.i.i.i, %bb.db ], [ %.sroa.618.0334.i.i.i, %bb.dg ], [ %i.hi, %bb.dk ], [ %.sroa.618.0334.i.i.i, %bb.do ], [ %.sroa.618.0334.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.417.1.i.i.i = phi i32 [ %.sroa.417.0335.i.i.i, %bb.db ], [ %.sroa.417.0335.i.i.i, %bb.dg ], [ %i.hh, %bb.dk ], [ %.sroa.417.0335.i.i.i, %bb.do ], [ %.sroa.417.0335.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.015.1.i.i.i = phi i32 [ %.sroa.015.0336.i.i.i, %bb.db ], [ %.sroa.015.0336.i.i.i, %bb.dg ], [ 1, %bb.dk ], [ %.sroa.015.0336.i.i.i, %bb.do ], [ %.sroa.015.0336.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.611.1.i.i.i = phi i32 [ %.sroa.611.0337.i.i.i, %bb.db ], [ %i.hd, %bb.dg ], [ %.sroa.611.0337.i.i.i, %bb.dk ], [ %.sroa.611.0337.i.i.i, %bb.do ], [ %.sroa.611.0337.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.410.1.i.i.i = phi i32 [ %.sroa.410.0338.i.i.i, %bb.db ], [ %i.hc, %bb.dg ], [ %.sroa.410.0338.i.i.i, %bb.dk ], [ %.sroa.410.0338.i.i.i, %bb.do ], [ %.sroa.410.0338.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.08.1.i.i.i = phi i32 [ %.sroa.08.0339.i.i.i, %bb.db ], [ 1, %bb.dg ], [ %.sroa.08.0339.i.i.i, %bb.dk ], [ %.sroa.08.0339.i.i.i, %bb.do ], [ %.sroa.08.0339.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.66.1.i.i.i = phi i32 [ %i.gv, %bb.db ], [ %.sroa.66.0340.i.i.i, %bb.dg ], [ %.sroa.66.0340.i.i.i, %bb.dk ], [ %.sroa.66.0340.i.i.i, %bb.do ], [ %.sroa.66.0340.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.4.1.i.i.i = phi i32 [ %i.gu, %bb.db ], [ %.sroa.4.0341.i.i.i, %bb.dg ], [ %.sroa.4.0341.i.i.i, %bb.dk ], [ %.sroa.4.0341.i.i.i, %bb.do ], [ %.sroa.4.0341.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  %.sroa.04.1.i.i.i = phi i32 [ 1, %bb.db ], [ %.sroa.04.0342.i.i.i, %bb.dg ], [ %.sroa.04.0342.i.i.i, %bb.dk ], [ %.sroa.04.0342.i.i.i, %bb.do ], [ %.sroa.04.0342.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11617
  %i.gw = load ptr, ptr %i.fb, align 8, !alias.scope !11618, !noalias !11594, !nonnull !29, !noundef !29 ; 2 uses
  %i.gx = load ptr, ptr %i.fc, align 8, !alias.scope !11618, !noalias !11594, !nonnull !29, !noundef !29 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %.thread104.i.i.i, label %.lr.ph.i.i.i.i.i

bb.dd:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11610
  call void @llvm.experimental.noalias.scope.decl(metadata !11619)
  call void @llvm.experimental.noalias.scope.decl(metadata !11620)
  %.sroa.0.0.copyload.i.i71.i.i.i = load i8, ptr %i.r, align 8, !alias.scope !11621, !noalias !11594 ; 2 uses
  store i8 22, ptr %i.r, align 8, !alias.scope !11621, !noalias !11594
  %.not.i.i72.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i71.i.i.i, 22
  br i1 %.not.i.i72.i.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i74.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i.i87.i.i.i, i64 31, i1 false), !noalias !11623
  store i8 %.sroa.0.0.copyload.i.i71.i.i.i, ptr %i.c, align 8, !noalias !11622
  invoke void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17h5f9c37534c4cc109E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit77.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.df:                                            ; preds = %bb.dd
  %i.gz = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @395, i64 noundef 16)
          to label %.loopexit590.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit77.i.i.i: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11622
  %.pre551.i.i.i = load i32, ptr %i.p, align 8, !range !40, !noalias !11610
  %i.ha = trunc nuw i32 %.pre551.i.i.i to i1
  br i1 %i.ha, label %.loopexit590.i.loopexit.i.i, label %bb.dg

.loopexit590.i.loopexit.i.i:                      ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit77.i.i.i
  %.pre418.i.i = load ptr, ptr %i.fm, align 8, !noalias !11610
  br label %.loopexit590.i.i.i

.loopexit590.i.i.i:                               ; preds = %.loopexit590.i.loopexit.i.i, %bb.df
  %i.hb = phi ptr [ %.pre418.i.i, %.loopexit590.i.loopexit.i.i ], [ %i.gz, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11610
  br label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i

bb.dg:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit77.i.i.i
  %i.hc = load i32, ptr %i.fn, align 4, !noalias !11610, !noundef !29
  %i.hd = load i32, ptr %i.fm, align 8, !noalias !11610, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11610
  br label %bb.dc

bb.dh:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11610
  call void @llvm.experimental.noalias.scope.decl(metadata !11624)
  call void @llvm.experimental.noalias.scope.decl(metadata !11625)
  %.sroa.0.0.copyload.i.i78.i.i.i = load i8, ptr %i.r, align 8, !alias.scope !11626, !noalias !11594 ; 2 uses
  store i8 22, ptr %i.r, align 8, !alias.scope !11626, !noalias !11594
  %.not.i.i79.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i78.i.i.i, 22
  br i1 %.not.i.i79.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i81.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i.i87.i.i.i, i64 31, i1 false), !noalias !11628
  store i8 %.sroa.0.0.copyload.i.i78.i.i.i, ptr %i.b, align 8, !noalias !11627
  invoke void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17h5f9c37534c4cc109E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit84.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.dj:                                            ; preds = %bb.dh
  %i.he = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @395, i64 noundef 16)
          to label %.loopexit589.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit84.i.i.i: ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11627
  %.pre550.i.i.i = load i32, ptr %i.o, align 8, !range !40, !noalias !11610
  %i.hf = trunc nuw i32 %.pre550.i.i.i to i1
  br i1 %i.hf, label %.loopexit589.i.loopexit.i.i, label %bb.dk

.loopexit589.i.loopexit.i.i:                      ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit84.i.i.i
  %.pre417.i.i = load ptr, ptr %i.fk, align 8, !noalias !11610
  br label %.loopexit589.i.i.i

.loopexit589.i.i.i:                               ; preds = %.loopexit589.i.loopexit.i.i, %bb.dj
  %i.hg = phi ptr [ %.pre417.i.i, %.loopexit589.i.loopexit.i.i ], [ %i.he, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11610
  br label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i

bb.dk:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit84.i.i.i
  %i.hh = load i32, ptr %i.fl, align 4, !noalias !11610, !noundef !29
  %i.hi = load i32, ptr %i.fk, align 8, !noalias !11610, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11610
  br label %bb.dc

bb.dl:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11610
  call void @llvm.experimental.noalias.scope.decl(metadata !11629)
  call void @llvm.experimental.noalias.scope.decl(metadata !11630)
  %.sroa.0.0.copyload.i.i85.i.i.i = load i8, ptr %i.r, align 8, !alias.scope !11631, !noalias !11594 ; 2 uses
  store i8 22, ptr %i.r, align 8, !alias.scope !11631, !noalias !11594
  %.not.i.i86.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i85.i.i.i, 22
  br i1 %.not.i.i86.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i88.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i.i87.i.i.i, i64 31, i1 false), !noalias !11633
  store i8 %.sroa.0.0.copyload.i.i85.i.i.i, ptr %i.a, align 8, !noalias !11632
  invoke void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17h5f9c37534c4cc109E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit91.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.dn:                                            ; preds = %bb.dl
  %i.hj = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @395, i64 noundef 16)
          to label %.loopexit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit91.i.i.i: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11632
  %.pre.i.i.i = load i32, ptr %i.n, align 8, !range !40, !noalias !11610
  %i.hk = trunc nuw i32 %.pre.i.i.i to i1
  br i1 %i.hk, label %.loopexit.i.loopexit.i.i, label %bb.do

.loopexit.i.loopexit.i.i:                         ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit91.i.i.i
  %.pre.i.i = load ptr, ptr %i.fi, align 8, !noalias !11610
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.loopexit.i.i, %bb.dn
  %i.hl = phi ptr [ %.pre.i.i, %.loopexit.i.loopexit.i.i ], [ %i.hj, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11610
  br label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i

bb.do:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17hd6e7f1f516560042E.exit91.i.i.i
  %i.hm = load i32, ptr %i.fj, align 4, !noalias !11610, !noundef !29
  %i.hn = load i32, ptr %i.fi, align 8, !noalias !11610, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11610
  br label %bb.dc

_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.i.i.i: ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11609
  %.not60.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not60.i.i.i, label %bb.dc, label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i

bb.dp:                                            ; preds = %.thread104.i.i.i, %.thread104.thread.i.i.i
  %.sroa.08.0180586.i.i.i = phi i32 [ 0, %.thread104.thread.i.i.i ], [ %.sroa.08.0180.i.i.i, %.thread104.i.i.i ]
  %.sroa.410.0197584.i.i.i = phi i32 [ undef, %.thread104.thread.i.i.i ], [ %.sroa.410.0197.i.i.i, %.thread104.i.i.i ]
  %.sroa.611.0214582.i.i.i = phi i32 [ undef, %.thread104.thread.i.i.i ], [ %.sroa.611.0214.i.i.i, %.thread104.i.i.i ]
  %.sroa.015.0231580.i.i.i = phi i32 [ 0, %.thread104.thread.i.i.i ], [ %.sroa.015.0231.i.i.i, %.thread104.i.i.i ]
  %.sroa.417.0248578.i.i.i = phi i32 [ undef, %.thread104.thread.i.i.i ], [ %.sroa.417.0248.i.i.i, %.thread104.i.i.i ]
  %.sroa.618.0265576.i.i.i = phi i32 [ undef, %.thread104.thread.i.i.i ], [ %.sroa.618.0265.i.i.i, %.thread104.i.i.i ]
  %.sroa.022.0282574.i.i.i = phi i32 [ 0, %.thread104.thread.i.i.i ], [ %.sroa.022.0282.i.i.i, %.thread104.i.i.i ]
  %.sroa.424.0299572.i.i.i = phi i32 [ undef, %.thread104.thread.i.i.i ], [ %.sroa.424.0299.i.i.i, %.thread104.i.i.i ]
  %.sroa.625.0316570.i.i.i = phi i32 [ undef, %.thread104.thread.i.i.i ], [ %.sroa.625.0316.i.i.i, %.thread104.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11610
  invoke void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17hbe92c8b3474fe742E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @62, i64 noundef 8)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.dq:                                            ; preds = %bb.dp
  %i.ho = load i32, ptr %i.m, align 8, !range !40, !noalias !11610, !noundef !29
  %i.hp = trunc nuw i32 %i.ho to i1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !11610 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !noalias !11610
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = trunc i64 %i.hu to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11610
  br i1 %i.hp, label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.thread104.i.i.i
  %.sroa.08.0180587.i.i.i = phi i32 [ %.sroa.08.0180.i.i.i, %.thread104.i.i.i ], [ %.sroa.08.0180586.i.i.i, %bb.dq ]
  %.sroa.410.0197585.i.i.i = phi i32 [ %.sroa.410.0197.i.i.i, %.thread104.i.i.i ], [ %.sroa.410.0197584.i.i.i, %bb.dq ]
  %.sroa.611.0214583.i.i.i = phi i32 [ %.sroa.611.0214.i.i.i, %.thread104.i.i.i ], [ %.sroa.611.0214582.i.i.i, %bb.dq ]
  %.sroa.015.0231581.i.i.i = phi i32 [ %.sroa.015.0231.i.i.i, %.thread104.i.i.i ], [ %.sroa.015.0231580.i.i.i, %bb.dq ]
  %.sroa.417.0248579.i.i.i = phi i32 [ %.sroa.417.0248.i.i.i, %.thread104.i.i.i ], [ %.sroa.417.0248578.i.i.i, %bb.dq ]
  %.sroa.618.0265577.i.i.i = phi i32 [ %.sroa.618.0265.i.i.i, %.thread104.i.i.i ], [ %.sroa.618.0265576.i.i.i, %bb.dq ]
  %.sroa.022.0282575.i.i.i = phi i32 [ %.sroa.022.0282.i.i.i, %.thread104.i.i.i ], [ %.sroa.022.0282574.i.i.i, %bb.dq ]
  %.sroa.424.0299573.i.i.i = phi i32 [ %.sroa.424.0299.i.i.i, %.thread104.i.i.i ], [ %.sroa.424.0299572.i.i.i, %bb.dq ]
  %.sroa.625.0316571.i.i.i = phi i32 [ %.sroa.625.0316.i.i.i, %.thread104.i.i.i ], [ %.sroa.625.0316570.i.i.i, %bb.dq ]
  %.sroa.3.0.i.i.i = phi i32 [ %.sroa.66.0163.i.i.i, %.thread104.i.i.i ], [ %i.hv, %bb.dq ]
  %.sroa.035.0.i.i.i = phi i32 [ %.sroa.4.0146.i.i.i, %.thread104.i.i.i ], [ %i.ht, %bb.dq ] ; 2 uses
  %i.hw = trunc nuw i32 %.sroa.08.0180587.i.i.i to i1
  br i1 %i.hw, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11610
  invoke void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17hbe92c8b3474fe742E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @63, i64 noundef 8)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.dt:                                            ; preds = %bb.ds
  %i.hx = load i32, ptr %i.l, align 8, !range !40, !noalias !11610, !noundef !29
  %i.hy = trunc nuw i32 %i.hx to i1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !11610 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !noalias !11610
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = trunc i64 %i.id to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11610
  br i1 %i.hy, label %_ZN10serde_core2de9MapAccess10next_value17h368e37b183b78402E.exit.thread.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dr
  %.sroa.340.0.i.i.i = phi i32 [ %.sroa.611.0214583.i.i.i, %bb.dr ], [ %i.ie, %bb.dt ] ; 2 uses
  %.sroa.039.0.i.i.i = phi i32 [ %.sroa.410.0197585.i.i.i, %bb.dr ], [ %i.ic, %bb.dt ]
  %i.if = trunc nuw i32 %.sroa.015.0231581.i.i.i to i1
  br i1 %i.if, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11610
  invoke void @"_ZN4anki5decks8schema111_100_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..schema11..TodayAmountSchema11$GT$11deserialize17hbe92c8b3474fe742E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @64, i64 noundef 8)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11601

bb.dw:                                            ; preds = %bb.dv
end_hunk_2
