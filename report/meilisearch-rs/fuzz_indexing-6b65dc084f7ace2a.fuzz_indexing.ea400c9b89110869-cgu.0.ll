Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN10serde_core3ser12SerializeMap15serialize_entry17ha016f3b81ae199c4E:bb.a

_ZN10serde_json3ser9Formatter16begin_object_key17h7df4f4d329a40625E.exit.i: ; preds = %bb.d
  %i.t = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @156, i64 noundef 1), !noalias !6456 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.thread", !prof !43

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.thread": ; preds = %_ZN10serde_json3ser9Formatter16begin_object_key17h7df4f4d329a40625E.exit.i
  %i.u = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.t), !noalias !6456
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hf1ea6a4890694cabE.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit": ; preds = %bb.c, %bb.e, %_ZN10serde_json3ser9Formatter16begin_object_key17h7df4f4d329a40625E.exit.i
  store i8 2, ptr %i.g, align 1, !alias.scope !6456
  %.val12.i = load ptr, ptr %i.f, align 8, !noalias !6456, !nonnull !16, !align !21, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.v = tail call fastcc noundef align 8 ptr @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h8aad23301d826c58E"(ptr nonnull %.val12.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val4), !noalias !6456 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hf1ea6a4890694cabE.exit"

bb.f:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit"
  %.val.i5 = load ptr, ptr %i.f, align 8, !noalias !6463, !nonnull !16, !align !21, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6464), !noalias !6463
  %i.w = load i64, ptr %.val.i5, align 8, !range !17, !alias.scope !6464, !noalias !6465, !noundef !16
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i5, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !6464, !noalias !6465, !noundef !16 ; 4 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z), !noalias !6463
  %i.aa = sub nsw i64 %i.w, %i.y
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread, label %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit, !prof !19

_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread: ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6466), !noalias !6463
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i5, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !6467, !noalias !6468, !nonnull !16, !noundef !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  store i8 58, ptr %i.ae, align 1, !noalias !6469
  %i.af = add nuw i64 %i.y, 1
  store i64 %i.af, ptr %i.x, align 8, !alias.scope !6467, !noalias !6468
  br label %bb.h

_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit: ; preds = %bb.f
  %i.ag = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 1), !noalias !6463 ; 2 uses
  %.not.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i6, label %bb.h, label %bb.g, !prof !43

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit
  %i.ah = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ag), !noalias !6463, !inline_history !6455
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hf1ea6a4890694cabE.exit"

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit.thread, %_ZN10serde_json3ser9Formatter18begin_object_value17h437634947b3a471fE.exit
  %i.ai = tail call fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17ha3c225a2d86c2e2bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, ptr noalias noundef align 8 dereferenceable(8) %i.f), !noalias !6470, !inline_history !6455
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hf1ea6a4890694cabE.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hf1ea6a4890694cabE.exit": ; preds = %bb.h, %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.thread", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit"
  %.sroa.0.0 = phi ptr [ %i.u, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit.thread" ], [ %i.v, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h561c64ff1cdf541bE.exit" ], [ %i.ah, %bb.g ], [ %i.ai, %bb.h ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_json2de10from_trait17h079c26ca3a74618fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [64 x i8], align 8                ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 0, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 57
  store i8 -128, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i8 0, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6606)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 32 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !6607, !noalias !6608, !noundef !16 ; 5 uses
  %.promoted.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !6609, !noalias !6610 ; 3 uses
  %i.z = icmp ult i64 %.promoted.i.i.i.i, %i.y
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.aa = load ptr, ptr %i.t, align 8, !alias.scope !6607, !noalias !6608, !nonnull !16, !align !22, !noundef !16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.ab = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6611)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !6612, !noundef !16
  switch i8 %i.ad, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.i.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !6613, !noalias !6610
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %i.y
  br i1 %exitcond.not.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.thread.i.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.thread.i.i.i": ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %i.y, ptr %i.af, align 8, !alias.scope !6614, !noalias !6615
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6616, !noalias !6615
  br label %.loopexit153.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.i.i.i": ; preds = %bb.b, %bb.a
  %i.ag = phi i64 [ %.promoted.i.i.i.i, %bb.a ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !alias.scope !6614, !noalias !6615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6617)
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6618, !noalias !6615
  %i.ai = icmp ult i64 %i.ag, %i.y
  br i1 %i.ai, label %.lr.ph.i.lr.ph.i.i.i.i, label %.loopexit153.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i:                           ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !6619, !noalias !6620
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bd, %.lr.ph.i.lr.ph.i.i.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %.lr.ph.i.lr.ph.i.i.i.i ], [ %i.es, %bb.bd ] ; 11 uses
  %.promoted.i194.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.lr.ph.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.bd ]
  %i.ak = phi i64 [ %i.y, %.lr.ph.i.lr.ph.i.i.i.i ], [ %i.er, %bb.bd ] ; 7 uses
  %.sroa.01.0193.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i ], [ true, %bb.bd ] ; 3 uses
  %.sroa.8.0192.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i ], [ %.sroa.030.0186.i.i.i.i, %bb.bd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6621)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.al = phi i64 [ %.promoted.i194.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.e ] ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6622)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !6623, !noundef !16 ; 3 uses
  switch i8 %i.an, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 110, label %bb.g
    i8 116, label %bb.m
    i8 102, label %bb.s
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ac
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ao = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.w, align 8, !alias.scope !6624, !noalias !6625
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ao, %i.ak
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit153.i.i.i.i, label %bb.d

.loopexit153.i.i.i.i:                             ; preds = %bb.bd, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.i.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h50ce2c4436a95202E.exit.thread.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6626
  store i64 5, ptr %i.q, align 8, !noalias !6626
  %i.ap = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hce042435a49e999eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit153.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6626
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

bb.f:                                             ; preds = %bb.d
  %i.aq = add i8 %i.an, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i.i.i.i, label %bb.af, label %bb.ae, !prof !44

bb.g:                                             ; preds = %bb.d
  %i.ar = add i64 %i.al, 1                        ; 4 uses
  store i64 %i.ar, ptr %i.w, align 8, !alias.scope !6627, !noalias !6615
  call void @llvm.experimental.noalias.scope.decl(metadata !6628)
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ak) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6629)
  %exitcond.not.i67.not.i.i.i.i = icmp ult i64 %i.ar, %i.ak
  br i1 %exitcond.not.i67.not.i.i.i.i, label %bb.h, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !6630, !noundef !16
  %i.au = add i64 %i.al, 2                        ; 3 uses
  store i64 %i.au, ptr %i.w, align 8, !alias.scope !6631, !noalias !6632
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 117
  br i1 %.not.i.i.i.i.i, label %bb.i, label %.loopexit256.i.i.i.i, !prof !45

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !6633)
  %exitcond.not.i67.1.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !6634, !noundef !16
  %i.ax = add i64 %i.al, 3                        ; 3 uses
  store i64 %i.ax, ptr %i.w, align 8, !alias.scope !6635, !noalias !6632
  %.not.i.1.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.1.i.i.i.i, label %bb.k, label %.loopexit256.i.i.i.i, !prof !45

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !6636)
  %exitcond.not.i67.2.i.i.i.i = icmp eq i64 %i.ax, %umax.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !6637, !noundef !16
  %i.ba = add i64 %i.al, 4
  store i64 %i.ba, ptr %i.w, align 8, !alias.scope !6638, !noalias !6632
  %.not.i.2.i.i.i.i = icmp eq i8 %i.az, 108
  br i1 %.not.i.2.i.i.i.i, label %.loopexit150.i.i.i.i, label %.loopexit256.i.i.i.i, !prof !45

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i": ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6639
  store i64 5, ptr %i.i, align 8, !noalias !6639
  %i.bb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h7252ff1f3771b5ceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6639
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

.loopexit256.i.i.i.i:                             ; preds = %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6639
  store i64 9, ptr %i.h, align 8, !noalias !6639
  %i.bc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h7252ff1f3771b5ceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %.loopexit256.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6639
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

bb.m:                                             ; preds = %bb.d
  %i.bd = add i64 %i.al, 1                        ; 4 uses
  store i64 %i.bd, ptr %i.w, align 8, !alias.scope !6640, !noalias !6615
  call void @llvm.experimental.noalias.scope.decl(metadata !6641)
  %umax.i69.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.ak) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6642)
  %exitcond.not.i71.not.i.i.i.i = icmp ult i64 %i.bd, %i.ak
  br i1 %exitcond.not.i71.not.i.i.i.i, label %bb.n, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i"

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !6643, !noundef !16
  %i.bg = add i64 %i.al, 2                        ; 3 uses
  store i64 %i.bg, ptr %i.w, align 8, !alias.scope !6644, !noalias !6645
  %.not.i72.i.i.i.i = icmp eq i8 %i.bf, 114
  br i1 %.not.i72.i.i.i.i, label %bb.o, label %.loopexit249.i.i.i.i, !prof !45

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !6646)
  %exitcond.not.i71.1.i.i.i.i = icmp eq i64 %i.bg, %umax.i69.i.i.i.i
  br i1 %exitcond.not.i71.1.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !6647, !noundef !16
  %i.bj = add i64 %i.al, 3                        ; 3 uses
  store i64 %i.bj, ptr %i.w, align 8, !alias.scope !6648, !noalias !6645
  %.not.i72.1.i.i.i.i = icmp eq i8 %i.bi, 117
  br i1 %.not.i72.1.i.i.i.i, label %bb.q, label %.loopexit249.i.i.i.i, !prof !45

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !6649)
  %exitcond.not.i71.2.i.i.i.i = icmp eq i64 %i.bj, %umax.i69.i.i.i.i
  br i1 %exitcond.not.i71.2.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !6650, !noundef !16
  %i.bm = add i64 %i.al, 4
  store i64 %i.bm, ptr %i.w, align 8, !alias.scope !6651, !noalias !6645
  %.not.i72.2.i.i.i.i = icmp eq i8 %i.bl, 101
  br i1 %.not.i72.2.i.i.i.i, label %.loopexit150.i.i.i.i, label %.loopexit249.i.i.i.i, !prof !45

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i": ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6652
  store i64 5, ptr %i.g, align 8, !noalias !6652
  %i.bn = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h7252ff1f3771b5ceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6652
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

.loopexit249.i.i.i.i:                             ; preds = %bb.r, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6652
  store i64 9, ptr %i.f, align 8, !noalias !6652
  %i.bo = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h7252ff1f3771b5ceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %.loopexit249.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6652
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

bb.s:                                             ; preds = %bb.d
  %i.bp = add i64 %i.al, 1                        ; 4 uses
  store i64 %i.bp, ptr %i.w, align 8, !alias.scope !6653, !noalias !6615
  call void @llvm.experimental.noalias.scope.decl(metadata !6654)
  %umax.i77.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.ak) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6655)
  %exitcond.not.i79.not.i.i.i.i = icmp ult i64 %i.bp, %i.ak
  br i1 %exitcond.not.i79.not.i.i.i.i, label %bb.t, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i"

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !6656, !noundef !16
  %i.bs = add i64 %i.al, 2                        ; 3 uses
  store i64 %i.bs, ptr %i.w, align 8, !alias.scope !6657, !noalias !6658
  %.not.i80.i.i.i.i = icmp eq i8 %i.br, 97
  br i1 %.not.i80.i.i.i.i, label %bb.u, label %.loopexit242.i.i.i.i, !prof !45

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !6659)
  %exitcond.not.i79.1.i.i.i.i = icmp eq i64 %i.bs, %umax.i77.i.i.i.i
  br i1 %exitcond.not.i79.1.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !6660, !noundef !16
  %i.bv = add i64 %i.al, 3                        ; 3 uses
  store i64 %i.bv, ptr %i.w, align 8, !alias.scope !6661, !noalias !6658
  %.not.i80.1.i.i.i.i = icmp eq i8 %i.bu, 108
  br i1 %.not.i80.1.i.i.i.i, label %bb.w, label %.loopexit242.i.i.i.i, !prof !45

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !6662)
  %exitcond.not.i79.2.i.i.i.i = icmp eq i64 %i.bv, %umax.i77.i.i.i.i
  br i1 %exitcond.not.i79.2.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !6663, !noundef !16
  %i.by = add i64 %i.al, 4                        ; 3 uses
  store i64 %i.by, ptr %i.w, align 8, !alias.scope !6664, !noalias !6658
  %.not.i80.2.i.i.i.i = icmp eq i8 %i.bx, 115
  br i1 %.not.i80.2.i.i.i.i, label %bb.y, label %.loopexit242.i.i.i.i, !prof !45

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !6665)
  %exitcond.not.i79.3.i.i.i.i = icmp eq i64 %i.by, %umax.i77.i.i.i.i
  br i1 %exitcond.not.i79.3.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !6666, !noundef !16
  %i.cb = add i64 %i.al, 5
  store i64 %i.cb, ptr %i.w, align 8, !alias.scope !6667, !noalias !6658
  %.not.i80.3.i.i.i.i = icmp eq i8 %i.ca, 101
  br i1 %.not.i80.3.i.i.i.i, label %.loopexit150.i.i.i.i, label %.loopexit242.i.i.i.i, !prof !45

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6668
  store i64 5, ptr %i.e, align 8, !noalias !6668
  %i.cc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h7252ff1f3771b5ceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6668
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

.loopexit242.i.i.i.i:                             ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6668
  store i64 9, ptr %i.d, align 8, !noalias !6668
  %i.cd = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h7252ff1f3771b5ceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %.loopexit242.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6668
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

bb.aa:                                            ; preds = %bb.d
  %i.ce = add i64 %i.al, 1
  store i64 %i.ce, ptr %i.w, align 8, !alias.scope !6669, !noalias !6615
  %i.cf = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h837d953571c3f9b6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %.noexc16 unwind label %.loopexit41 ; 2 uses

.noexc16:                                         ; preds = %bb.aa
  %.not57.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not57.i.i.i.i, label %.loopexit150.i.i.i.i, label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

bb.ab:                                            ; preds = %bb.d
  %i.cg = add i64 %i.al, 1
  store i64 %i.cg, ptr %i.w, align 8, !alias.scope !6670, !noalias !6615
  %i.ch = invoke noundef align 8 ptr @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h7f65efcd6d706c0fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.noexc17 unwind label %.loopexit41 ; 2 uses

.noexc17:                                         ; preds = %bb.ab
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %.loopexit150.i.i.i.i, label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

bb.ac:                                            ; preds = %bb.d, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !6671)
  %i.ci = zext i1 %.sroa.01.0193.i.i.i.i to i64   ; 2 uses
  %i.cj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6672, !noalias !6615, !noundef !16 ; 3 uses
  %i.ck = load i64, ptr %i.s, align 8, !range !17, !alias.scope !6672, !noalias !6615, !noundef !16
  %i.cl = sub i64 %i.ck, %i.cj
  %i.cm = icmp ult i64 %i.cl, %i.ci
  br i1 %i.cm, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i", !prof !18

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hc7f257131df3f6ecE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s, i64 noundef %i.cj, i64 noundef %i.ci, i64 noundef 1, i64 noundef 1)
          to label %.noexc18 unwind label %.loopexit41

.noexc18:                                         ; preds = %bb.ad
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6673, !noalias !6615
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i": ; preds = %.noexc18, %bb.ac
  %i.cn = phi i64 [ %i.cj, %bb.ac ], [ %.pre.i.i.i.i.i, %.noexc18 ] ; 3 uses
  br i1 %.sroa.01.0193.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17ha9126ad9ab39d5dcE.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i"
  %i.co = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6673, !noalias !6615, !nonnull !16, !noundef !16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 %.sroa.8.0192.i.i.i.i, ptr %i.cp, align 1, !noalias !6674
  %i.cq = add i64 %i.cn, 1
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17ha9126ad9ab39d5dcE.exit.i.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17ha9126ad9ab39d5dcE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i" ]
  store i64 %.val5.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6673, !noalias !6675
  %i.cr = load i64, ptr %i.w, align 8, !alias.scope !6676, !noalias !6615, !noundef !16
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.w, align 8, !alias.scope !6676, !noalias !6615
  br label %bb.ai

bb.ae:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6626
  store i64 10, ptr %i.p, align 8, !noalias !6626
  %i.ct = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hce042435a49e999eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6626
  br label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

bb.af:                                            ; preds = %bb.f
  %i.cu = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h837d953571c3f9b6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %.noexc20 unwind label %.loopexit41 ; 2 uses

.noexc20:                                         ; preds = %bb.af
  %.not61.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not61.i.i.i.i, label %.loopexit150.i.i.i.i, label %"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hfe006e9b1af87ad1E.exit.thread"

.loopexit150.i.i.i.i:                             ; preds = %.noexc20, %.noexc17, %.noexc16, %bb.z, %bb.r, %bb.l
  br i1 %.sroa.01.0193.i.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.loopexit150.i.i.i.i
  %i.cv = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6618, !noalias !6615, !noundef !16 ; 2 uses
  %.not62.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not62.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17h19a6c4c867ba7b34E.exit.loopexit70.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = add i64 %i.cv, -1                       ; 3 uses
  store i64 %i.cw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6618, !noalias !6615
  %i.cx = load i64, ptr %i.s, align 8, !range !17, !alias.scope !6618, !noalias !6615, !noundef !16
  %i.cy = icmp ult i64 %i.cw, %i.cx
  call void @llvm.assume(i1 %i.cy)
  %i.cz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6618, !noalias !6615, !nonnull !16, !noundef !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cw
  %i.db = load i8, ptr %i.da, align 1, !noalias !6615, !noundef !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit150.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17ha9126ad9ab39d5dcE.exit.i.i.i.i"
  %.sroa.054.1.i.i.i.i = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17ha9126ad9ab39d5dcE.exit.i.i.i.i" ], [ true, %.loopexit150.i.i.i.i ], [ true, %bb.ah ]
  %.sroa.055.1.i.i.i.i = phi i8 [ %i.an, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17ha9126ad9ab39d5dcE.exit.i.i.i.i" ], [ %.sroa.8.0192.i.i.i.i, %.loopexit150.i.i.i.i ], [ %i.db, %bb.ah ] ; 2 uses
  %i.dc = load i64, ptr %i.x, align 8, !alias.scope !6677, !noalias !6678, !noundef !16 ; 7 uses
  %.promoted.i84185.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !6679, !noalias !6680 ; 2 uses
  %i.dd = icmp ult i64 %.promoted.i84185.i.i.i.i, %i.dc
  br i1 %i.dd, label %.lr.ph.i89.lr.ph.i.i.i.i, label %.loopexit145.i.i.i.i

.lr.ph.i89.lr.ph.i.i.i.i:                         ; preds = %bb.ai
  %i.de = load ptr, ptr %i.t, align 8, !alias.scope !6677, !noalias !6678, !nonnull !16, !align !22, !noundef !16 ; 3 uses
  %.sroa.5.0..sroa_idx.promoted = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.df = load i64, ptr %i.s, align 8, !range !17
  %i.dg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16
  br label %.lr.ph.i89.i.i.i.i

.lr.ph.i89.i.i.i.i:                               ; preds = %bb.as, %.lr.ph.i89.lr.ph.i.i.i.i
  %i.dh = phi i64 [ %.sroa.5.0..sroa_idx.promoted, %.lr.ph.i89.lr.ph.i.i.i.i ], [ %i.dt, %bb.as ] ; 2 uses
  %.promoted.i84188.i.i.i.i = phi i64 [ %.promoted.i84185.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i ], [ %i.ds, %bb.as ]
  %.sroa.028.0187.i.i.i.i = phi i1 [ %.sroa.054.1.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i ], [ true, %bb.as ] ; 2 uses
  %.sroa.030.0186.i.i.i.i = phi i8 [ %.sroa.055.1.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i ], [ %i.dw, %bb.as ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6681)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.i89.i.i.i.i
  %i.di = phi i64 [ %.promoted.i84188.i.i.i.i, %.lr.ph.i89.i.i.i.i ], [ %i.dl, %bb.ak ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6682)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !6683, !noundef !16
  switch i8 %i.dk, label %.loopexit.i.i.i.i [
    i8 32, label %bb.ak
    i8 10, label %bb.ak
    i8 9, label %bb.ak
    i8 13, label %bb.ak
    i8 44, label %bb.an
    i8 93, label %bb.ao
    i8 125, label %bb.ap
end_hunk_0
begin_hunk_1_@"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17h53b0db17ffe0eda6E":bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14": ; preds = %bb.f, %bb.s
  %.sroa.06.032 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !7123, !noundef !16
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14", %bb.s, %bb.f
  %.sroa.06.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.06.032, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14" ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14"
  %i.ag = add nuw i64 %i.ac, 1                    ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !7124
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.06.032, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14.thread"
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14.thread"
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.011.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7125)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.021.i = tail call i32 @llvm.abs.i32(i32 %.sroa.011.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.021.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.023.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.011.0, %bb.j ] ; 2 uses
  %.sroa.04.022.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.022.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.011.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.021.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017h13e2d2d3887eda26E, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !7126, !noundef !16 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.023.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.022.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.023.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7126
  store i64 14, ptr %i.a, align 8, !noalias !7126
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !7125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7126
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !7125, !noalias !7127
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h97d773dfcacaa09bE.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.022.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.az, align 8, !alias.scope !7125, !noalias !7127
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h97d773dfcacaa09bE.exit"

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !18

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7126
  store i64 14, ptr %i.b, align 8, !noalias !7126
  %i.be = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !7125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7126
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !7125, !noalias !7127
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h97d773dfcacaa09bE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h97d773dfcacaa09bE.exit": ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !7125, !noalias !7127
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.t, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h97d773dfcacaa09bE.exit"
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.06.032, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !47

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.06.032, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14.thread", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h66e1592d8c06b2e1E.exit14"

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$23parse_exponent_overflow17heb68370c27650c30E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hdd861b32fb382fffE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7190)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !7191, !noalias !7192, !noundef !16 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !7191, !noalias !7192, !noundef !16 ; 10 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %.thread6

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !7191, !noalias !7192, !nonnull !16, !align !22, !noundef !16 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !noalias !7193, !noundef !16 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !7194

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread6, !prof !45

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.s, align 8, !alias.scope !7195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7196)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7198)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.v
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !7199, !noundef !16
  %i.af = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !7200, !noalias !7201
  %.not.i = icmp eq i8 %i.ae, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !45

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7203)
  %exitcond.not.i.1 = icmp eq i64 %i.v, %i.af
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !7204, !noundef !16
  %i.ai = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !7205, !noalias !7201
  %.not.i.1 = icmp eq i8 %i.ah, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !45

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7207)
  %exitcond.not.i.2 = icmp eq i64 %i.ai, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !7208, !noundef !16
  %i.al = add i64 %i.t, 4
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !7209, !noalias !7201
  %.not.i.2 = icmp eq i8 %i.ak, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit", label %bb.j, !prof !45

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7210
  store i64 5, ptr %i.f, align 8, !noalias !7210
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !7211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7210
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7210
  store i64 9, ptr %i.e, align 8, !noalias !7210
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !7211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7210
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !7212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7213)
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7215)
  %exitcond.not.i22.not = icmp ult i64 %i.ao, %i.v
  br i1 %exitcond.not.i22.not, label %bb.l, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25"

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !7216, !noundef !16
  %i.ar = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !7217, !noalias !7218
  %.not.i23 = icmp eq i8 %i.aq, 114
  br i1 %.not.i23, label %bb.m, label %bb.q, !prof !45

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7220)
  %exitcond.not.i22.1 = icmp eq i64 %i.v, %i.ar
  br i1 %exitcond.not.i22.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !7221, !noundef !16
  %i.au = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !7222, !noalias !7218
  %.not.i23.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i23.1, label %bb.o, label %bb.q, !prof !45

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7224)
  %exitcond.not.i22.2 = icmp eq i64 %i.au, %umax.i20
  br i1 %exitcond.not.i22.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !7225, !noundef !16
  %i.ax = add i64 %i.t, 4
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !7226, !noalias !7218
  %.not.i23.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i23.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit26", label %bb.q, !prof !45

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7227
  store i64 5, ptr %i.d, align 8, !noalias !7227
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !7228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7227
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7227
  store i64 9, ptr %i.c, align 8, !noalias !7227
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !7228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7227
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !7229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7230)
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.v) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7232)
  %exitcond.not.i30.not = icmp ult i64 %i.ba, %i.v
  br i1 %exitcond.not.i30.not, label %bb.s, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33"

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !7233, !noundef !16
  %i.bd = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !7234, !noalias !7235
  %.not.i31 = icmp eq i8 %i.bc, 97
  br i1 %.not.i31, label %bb.t, label %bb.z, !prof !45

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7237)
  %exitcond.not.i30.1 = icmp eq i64 %i.v, %i.bd
  br i1 %exitcond.not.i30.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !7238, !noundef !16
  %i.bg = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !7239, !noalias !7235
  %.not.i31.1 = icmp eq i8 %i.bf, 108
  br i1 %.not.i31.1, label %bb.v, label %bb.z, !prof !45

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7241)
  %exitcond.not.i30.2 = icmp eq i64 %i.bg, %umax.i28
  br i1 %exitcond.not.i30.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !7242, !noundef !16
  %i.bj = add i64 %i.t, 4                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !7243, !noalias !7235
  %.not.i31.2 = icmp eq i8 %i.bi, 115
  br i1 %.not.i31.2, label %bb.x, label %bb.z, !prof !45

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7245)
  %exitcond.not.i30.3 = icmp eq i64 %i.bj, %umax.i28
  br i1 %exitcond.not.i30.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !7246, !noundef !16
  %i.bm = add i64 %i.t, 5
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !7247, !noalias !7235
  %.not.i31.3 = icmp eq i8 %i.bl, 101
  br i1 %.not.i31.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit34", label %bb.z, !prof !45

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7248
  store i64 5, ptr %i.b, align 8, !noalias !7248
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !7249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7248
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7248
  store i64 9, ptr %i.a, align 8, !noalias !7248
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !7249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7248
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bp = add nuw i64 %i.t, 1
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !7250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h596be315c2af766fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %i.bq = load i64, ptr %i.o, align 8, !range !42, !noundef !16
  %i.br = icmp eq i64 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !19

bb.ab:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.t, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !7251
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bu = load i64, ptr %i.k, align 8, !range !25, !noundef !16
  %i.bv = icmp eq i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !16, !noundef !16 ; 2 uses
  br i1 %i.bv, label %bb.ah, label %bb.ai, !prof !19

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread6, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit34", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit26", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cr, %bb.al ], [ %i.cm, %.thread6 ], [ %i.ca, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit" ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit26" ], [ %i.cf, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit34" ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ai ], [ %i.by, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.cb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h50aef1aa9c87c8a2E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit26": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cc, align 1
  store i8 0, ptr %i.q, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit34": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ce, align 1
  store i8 0, ptr %i.p, align 8
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !16, !align !21, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ci = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bx, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.ck, align 8
  store i8 5, ptr %i.j, align 8
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread6:                                         ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h80f92ff32117c114E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h596be315c2af766fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  %i.cn = load i64, ptr %i.m, align 8, !range !42, !noundef !16
  %i.co = icmp eq i64 %i.cn, 3
  br i1 %i.co, label %bb.ak, label %bb.al, !prof !19

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !16, !align !21, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cr = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h7364183549d27594E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.thread": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33", %bb.z, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25", %bb.q, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cb, %bb.ae ], [ %i.cq, %bb.ak ], [ %i.bx, %bb.ah ], [ %i.az, %bb.q ], [ %i.an, %bb.j ], [ %i.ch, %bb.af ], [ %i.am, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i" ], [ %i.ay, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i25" ], [ %i.bn, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i33" ], [ %i.bo, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h7252ff1f3771b5ceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN135_$LT$milli..update..new..extract..documents..DocumentsExtractor$u20$as$u20$milli..update..new..indexer..document_changes..Extractor$GT$7process17hd0d0d5d1a96f30afE":bb.a
bb.gs:                                            ; preds = %.noexc25.i.i.i.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i1221 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i1220, align 8, !noalias !12250 ; 20 uses
  %i.abz = trunc nuw i64 %i.abw to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aby) ]
  br i1 %i.abz, label %bb.gt, label %bb.gy

bb.gt:                                            ; preds = %bb.gs
  %i.aca = load ptr, ptr %i.nj, align 8, !noalias !12251, !nonnull !16, !noundef !16 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 32 ; 2 uses
  %i.acc = load ptr, ptr %i.acb, align 8, !noalias !12252, !nonnull !16, !noundef !16 ; 2 uses
  %i.acd = load ptr, ptr %i.aca, align 16, !noalias !12252, !nonnull !16, !noundef !16
  %i.ace = ptrtoint ptr %i.acc to i64
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = sub i64 %i.ace, %i.acf
  %i.ach = icmp ugt i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i1221, %i.acg
  br i1 %i.ach, label %bb.gu, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.gt
  %i.aci = sub i64 0, %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i1221
  %i.acj = getelementptr i8, ptr %i.acc, i64 %i.aci ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acj) ]
  store ptr %i.acj, ptr %i.acb, align 16, !noalias !12252
  br label %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h492bfd667fa8f1c9E.exit.i.i.i.i.i.i.i.i.i.i"

bb.gu:                                            ; preds = %bb.gt
  %i.ack = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %i.hf, i64 noundef 1, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i1221)
          to label %.noexc26.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i, !noalias !12227 ; 2 uses

.noexc26.i.i.i.i.i.i:                             ; preds = %bb.gu
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ack, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gv, label %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h492bfd667fa8f1c9E.exit.i.i.i.i.i.i.i.i.i.i", !prof !18

bb.gv:                                            ; preds = %.noexc26.i.i.i.i.i.i
  invoke void @_ZN7bumpalo3oom17h5faf5517b7c985fdE() #66
          to label %.noexc27.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit.split-lp, !noalias !12227

.noexc27.i.i.i.i.i.i:                             ; preds = %bb.gv
  unreachable

"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h492bfd667fa8f1c9E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc26.i.i.i.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acj, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h8aaefd67d0855e38E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ack, %.noexc26.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.aby, i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i1221, i1 false), !noalias !12253
  br label %bb.gy

bb.gw:                                            ; preds = %.noexc25.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !12250
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.noexc24.i.i.i.i.i.i, %.noexc23.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i, %.noexc21.i.i.i.i.i.i, %.noexc20.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %.sroa.8.0.ph.i.i.i.i.i.i = phi ptr [ %i.abr, %.noexc22.i.i.i.i.i.i ], [ %i.abq, %.noexc21.i.i.i.i.i.i ], [ %i.abs, %.noexc23.i.i.i.i.i.i ], [ %i.abp, %.noexc20.i.i.i.i.i.i ], [ %i.abg, %.noexc.i.i.i.i.i.i ], [ %i.abt, %.noexc24.i.i.i.i.i.i ], [ %i.aby, %bb.gw ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.ph.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h492bfd667fa8f1c9E.exit.i.i.i.i.i.i.i.i.i.i", %bb.gs
  %.sroa.03.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.aby, %bb.gs ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN158_$LT$$LT$bumparaw_collections..de..BumpStrSeed$u20$as$u20$serde_core..de..DeserializeSeed$GT$..deserialize..BumpVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h492bfd667fa8f1c9E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !12250
  call void @llvm.experimental.noalias.scope.decl(metadata !12254)
  call void @llvm.experimental.noalias.scope.decl(metadata !12255)
  %i.acl = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12256, !noalias !12257, !noundef !16 ; 7 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12258, !noalias !12259 ; 2 uses
  %i.acm = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i, %i.acl
  br i1 %i.acm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.gy
  %i.acn = load ptr, ptr %i.ne, align 8, !alias.scope !12256, !noalias !12257, !nonnull !16, !align !22, !noundef !16 ; 3 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.ha, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aco = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.acr, %bb.ha ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12260)
  call void @llvm.experimental.noalias.scope.decl(metadata !12261)
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.aco
  %i.acq = load i8, ptr %i.acp, align 1, !noalias !12262, !noundef !16
  switch i8 %i.acq, label %bb.hb [
    i8 32, label %bb.ha
    i8 10, label %bb.ha
    i8 9, label %bb.ha
    i8 13, label %bb.ha
    i8 58, label %bb.hc
  ], !prof !46

bb.ha:                                            ; preds = %bb.gz, %bb.gz, %bb.gz, %bb.gz
  %i.acr = add i64 %i.aco, 1                      ; 3 uses
  store i64 %i.acr, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12263, !noalias !12259
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.acr, %i.acl
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %bb.gz

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.gy, %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !12264
  store i64 3, ptr %i.cx, align 8, !noalias !12264
  %i.acs = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h80f92ff32117c114E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cx)
          to label %.noexc28.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc28.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !12264
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !12264
  store i64 6, ptr %i.cy, align 8, !noalias !12264
  %i.act = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h80f92ff32117c114E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cy)
          to label %.noexc29.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc29.i.i.i.i.i.i:                             ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !12264
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.hc:                                            ; preds = %bb.gz
  %i.acu = add i64 %i.aco, 1                      ; 4 uses
  store i64 %i.acu, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12265, !noalias !12266
  call void @llvm.experimental.noalias.scope.decl(metadata !12267)
  call void @llvm.experimental.noalias.scope.decl(metadata !12268)
  call void @llvm.experimental.noalias.scope.decl(metadata !12269)
  call void @llvm.experimental.noalias.scope.decl(metadata !12270)
  call void @llvm.experimental.noalias.scope.decl(metadata !12271)
  %i.acv = icmp ult i64 %i.acu, %i.acl
  br i1 %i.acv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.hc, %bb.hd
  %i.acw = phi i64 [ %i.acz, %bb.hd ], [ %i.acu, %bb.hc ] ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !noalias !12272, !noundef !16
  switch i8 %i.acy, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.hd
    i8 10, label %bb.hd
    i8 9, label %bb.hd
    i8 13, label %bb.hd
  ]

bb.hd:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acz = add i64 %i.acw, 1                      ; 3 uses
  store i64 %i.acz, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12273, !noalias !12274
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.acz, %i.acl
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.hd
  store i64 %i.acl, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12275, !noalias !12276
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12277, !noalias !12276
  br label %.loopexit153.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.hc
  %i.ada = phi i64 [ %i.acu, %bb.hc ], [ %i.acw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  store i64 %i.ada, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12275, !noalias !12276
  call void @llvm.experimental.noalias.scope.decl(metadata !12278)
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12279, !noalias !12276
  %i.adb = icmp ult i64 %i.ada, %i.acl
  br i1 %i.adb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.je
  %i.adc = phi ptr [ %i.ahk, %bb.je ], [ %i.acn, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 11 uses
  %.promoted.i194.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.je ], [ %i.ada, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.add = phi i64 [ %i.ahj, %bb.je ], [ %i.acl, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 7 uses
  %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.je ], [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.8.0192.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.030.0186.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.je ], [ undef, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12280)
  br label %bb.he

bb.he:                                            ; preds = %bb.hf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ade = phi i64 [ %.promoted.i194.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adh, %bb.hf ] ; 17 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.ade
  %i.adg = load i8, ptr %i.adf, align 1, !noalias !12281, !noundef !16 ; 3 uses
  switch i8 %i.adg, label %bb.hg [
    i8 32, label %bb.hf
    i8 10, label %bb.hf
    i8 9, label %bb.hf
    i8 13, label %bb.hf
    i8 110, label %bb.hh
    i8 116, label %bb.hn
    i8 102, label %bb.ht
    i8 45, label %bb.ib
    i8 34, label %bb.ic
    i8 91, label %bb.id
    i8 123, label %bb.id
  ]

bb.hf:                                            ; preds = %bb.he, %bb.he, %bb.he, %bb.he
  %i.adh = add i64 %i.ade, 1                      ; 3 uses
  store i64 %i.adh, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12282, !noalias !12283
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adh, %i.add
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.he

.loopexit153.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.je, %bb.hf, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hfc388a2f2980d574E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !12284
  store i64 5, ptr %i.cw, align 8, !noalias !12284
  %i.adi = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h80f92ff32117c114E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cw)
          to label %.noexc30.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc30.i.i.i.i.i.i:                             ; preds = %.loopexit153.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !12284
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.hg:                                            ; preds = %bb.he
  %i.adj = add i8 %i.adg, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.adj, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ig, label %bb.if, !prof !44

bb.hh:                                            ; preds = %bb.he
  %i.adk = add i64 %i.ade, 1                      ; 4 uses
  store i64 %i.adk, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12285, !noalias !12276
  call void @llvm.experimental.noalias.scope.decl(metadata !12286)
  %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.adk, i64 %i.add) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12287)
  call void @llvm.experimental.noalias.scope.decl(metadata !12288)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.adk, %i.add
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hi, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.hi:                                            ; preds = %bb.hh
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !noalias !12289, !noundef !16
  %i.adn = add i64 %i.ade, 2                      ; 3 uses
  store i64 %i.adn, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12290, !noalias !12291
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.adm, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hj, label %.loopexit256.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.experimental.noalias.scope.decl(metadata !12292)
  call void @llvm.experimental.noalias.scope.decl(metadata !12293)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adn, %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !noalias !12294, !noundef !16
  %i.adq = add i64 %i.ade, 3                      ; 3 uses
  store i64 %i.adq, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12295, !noalias !12291
  %.not.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.adp, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hl, label %.loopexit256.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !12296)
  call void @llvm.experimental.noalias.scope.decl(metadata !12297)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adq, %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adq
  %i.ads = load i8, ptr %i.adr, align 1, !noalias !12298, !noundef !16
  %i.adt = add i64 %i.ade, 4
  store i64 %i.adt, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12299, !noalias !12291
  %.not.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ads, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit256.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.hl, %bb.hj, %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !12300
  store i64 5, ptr %i.co, align 8, !noalias !12300
  %i.adu = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.co)
          to label %.noexc31.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc31.i.i.i.i.i.i:                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !12300
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit256.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hm, %bb.hk, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !12300
  store i64 9, ptr %i.cn, align 8, !noalias !12300
  %i.adv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cn)
          to label %.noexc32.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc32.i.i.i.i.i.i:                             ; preds = %.loopexit256.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !12300
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.he
  %i.adw = add i64 %i.ade, 1                      ; 4 uses
  store i64 %i.adw, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12301, !noalias !12276
  call void @llvm.experimental.noalias.scope.decl(metadata !12302)
  %umax.i69.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.adw, i64 %i.add) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12303)
  call void @llvm.experimental.noalias.scope.decl(metadata !12304)
  %exitcond.not.i71.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.adw, %i.add
  br i1 %exitcond.not.i71.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ho, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ho:                                            ; preds = %bb.hn
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adw
  %i.ady = load i8, ptr %i.adx, align 1, !noalias !12305, !noundef !16
  %i.adz = add i64 %i.ade, 2                      ; 3 uses
  store i64 %i.adz, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12306, !noalias !12307
  %.not.i72.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ady, 114
  br i1 %.not.i72.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hp, label %.loopexit249.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.experimental.noalias.scope.decl(metadata !12308)
  call void @llvm.experimental.noalias.scope.decl(metadata !12309)
  %exitcond.not.i71.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adz, %umax.i69.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i71.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !noalias !12310, !noundef !16
  %i.aec = add i64 %i.ade, 3                      ; 3 uses
  store i64 %i.aec, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12311, !noalias !12307
  %.not.i72.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aeb, 117
  br i1 %.not.i72.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr, label %.loopexit249.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.experimental.noalias.scope.decl(metadata !12312)
  call void @llvm.experimental.noalias.scope.decl(metadata !12313)
  %exitcond.not.i71.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aec, %umax.i69.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i71.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !noalias !12314, !noundef !16
  %i.aef = add i64 %i.ade, 4
  store i64 %i.aef, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12315, !noalias !12307
  %.not.i72.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aee, 101
  br i1 %.not.i72.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit249.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.hr, %bb.hp, %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !12316
  store i64 5, ptr %i.cm, align 8, !noalias !12316
  %i.aeg = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cm)
          to label %.noexc33.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc33.i.i.i.i.i.i:                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i74.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !12316
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit249.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hs, %bb.hq, %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !12316
  store i64 9, ptr %i.cl, align 8, !noalias !12316
  %i.aeh = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cl)
          to label %.noexc34.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc34.i.i.i.i.i.i:                             ; preds = %.loopexit249.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !12316
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.he
  %i.aei = add i64 %i.ade, 1                      ; 4 uses
  store i64 %i.aei, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12317, !noalias !12276
  call void @llvm.experimental.noalias.scope.decl(metadata !12318)
  %umax.i77.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aei, i64 %i.add) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12319)
  call void @llvm.experimental.noalias.scope.decl(metadata !12320)
  %exitcond.not.i79.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aei, %i.add
  br i1 %exitcond.not.i79.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hu, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.hu:                                            ; preds = %bb.ht
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.aei
  %i.aek = load i8, ptr %i.aej, align 1, !noalias !12321, !noundef !16
  %i.ael = add i64 %i.ade, 2                      ; 3 uses
  store i64 %i.ael, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12322, !noalias !12323
  %.not.i80.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aek, 97
  br i1 %.not.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hv, label %.loopexit242.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !12324)
  call void @llvm.experimental.noalias.scope.decl(metadata !12325)
  %exitcond.not.i79.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ael, %umax.i77.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i79.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.ael
  %i.aen = load i8, ptr %i.aem, align 1, !noalias !12326, !noundef !16
  %i.aeo = add i64 %i.ade, 3                      ; 3 uses
  store i64 %i.aeo, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12327, !noalias !12323
  %.not.i80.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aen, 108
  br i1 %.not.i80.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hx, label %.loopexit242.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !12328)
  call void @llvm.experimental.noalias.scope.decl(metadata !12329)
  %exitcond.not.i79.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeo, %umax.i77.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i79.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !noalias !12330, !noundef !16
  %i.aer = add i64 %i.ade, 4                      ; 3 uses
  store i64 %i.aer, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12331, !noalias !12323
  %.not.i80.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aeq, 115
  br i1 %.not.i80.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hz, label %.loopexit242.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.experimental.noalias.scope.decl(metadata !12332)
  call void @llvm.experimental.noalias.scope.decl(metadata !12333)
  %exitcond.not.i79.3.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aer, %umax.i77.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i79.3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aes = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.aer
  %i.aet = load i8, ptr %i.aes, align 1, !noalias !12334, !noundef !16
  %i.aeu = add i64 %i.ade, 5
  store i64 %i.aeu, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12335, !noalias !12323
  %.not.i80.3.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aet, 101
  br i1 %.not.i80.3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit242.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !45

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.hz, %bb.hx, %bb.hv, %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !12336
  store i64 5, ptr %i.ck, align 8, !noalias !12336
  %i.aev = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ck)
          to label %.noexc35.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc35.i.i.i.i.i.i:                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17hdf9854e8efb96edfE.exit.i82.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !12336
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit242.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ia, %bb.hy, %bb.hw, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !12336
  store i64 9, ptr %i.cj, align 8, !noalias !12336
  %i.aew = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h890337ece6f1db0dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cj)
          to label %.noexc36.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc36.i.i.i.i.i.i:                             ; preds = %.loopexit242.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !12336
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ib:                                            ; preds = %bb.he
  %i.aex = add i64 %i.ade, 1
  store i64 %i.aex, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12337, !noalias !12276
  %i.aey = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17hf47642660beca0f3E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.dk)
          to label %.noexc37.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !12227 ; 2 uses

.noexc37.i.i.i.i.i.i:                             ; preds = %bb.ib
  %.not57.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aey, null
  br i1 %.not57.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ic:                                            ; preds = %bb.he
  %i.aez = add i64 %i.ade, 1
  store i64 %i.aez, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12338, !noalias !12276
  %i.afa = invoke noundef align 8 ptr @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h52a610ba0f700e2eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ne)
          to label %.noexc38.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !12227 ; 2 uses

.noexc38.i.i.i.i.i.i:                             ; preds = %bb.ic
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.id:                                            ; preds = %bb.he, %bb.he
  call void @llvm.experimental.noalias.scope.decl(metadata !12339)
  %i.afb = zext i1 %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.afc = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12340, !noalias !12276, !noundef !16 ; 3 uses
  %i.afd = load i64, ptr %i.dk, align 8, !range !17, !alias.scope !12340, !noalias !12276, !noundef !16
  %i.afe = sub i64 %i.afd, %i.afc
  %i.aff = icmp ult i64 %i.afe, %i.afb
  br i1 %i.aff, label %bb.ie, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !18

bb.ie:                                            ; preds = %bb.id
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hc7f257131df3f6ecE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.dk, i64 noundef %i.afc, i64 noundef %i.afb, i64 noundef 1, i64 noundef 1)
          to label %.noexc39.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !12227

.noexc39.i.i.i.i.i.i:                             ; preds = %bb.ie
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12341, !noalias !12276
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc39.i.i.i.i.i.i, %bb.id
  %i.afg = phi i64 [ %i.afc, %bb.id ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc39.i.i.i.i.i.i ] ; 3 uses
  br i1 %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.afh = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12341, !noalias !12276, !nonnull !16, !noundef !16
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afg
  store i8 %.sroa.8.0192.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.afi, align 1, !noalias !12342
  %i.afj = add i64 %i.afg, 1
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h25bb3a7bb7bd283aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12341, !noalias !12343
  %i.afk = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12344, !noalias !12276, !noundef !16
  %i.afl = add i64 %i.afk, 1
  store i64 %i.afl, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12344, !noalias !12276
  br label %bb.ij

bb.if:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !12284
  store i64 10, ptr %i.cv, align 8, !noalias !12284
  %i.afm = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h80f92ff32117c114E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dk, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cv)
          to label %.noexc40.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.loopexit, !noalias !12227

.noexc40.i.i.i.i.i.i:                             ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !12284
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %bb.hg
  %i.afn = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17hf47642660beca0f3E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.dk)
          to label %.noexc41.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !12227 ; 2 uses

.noexc41.i.i.i.i.i.i:                             ; preds = %bb.ig
  %.not61.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afn, null
  br i1 %.not61.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.noexc41.i.i.i.i.i.i, %.noexc38.i.i.i.i.i.i, %.noexc37.i.i.i.i.i.i, %bb.ia, %bb.hs, %bb.hm
  br i1 %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afo = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12279, !noalias !12276, !noundef !16 ; 2 uses
  %.not62.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.afo, 0
  br i1 %.not62.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17he5bb630518383a17E.exit.loopexit69.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.afp = add i64 %i.afo, -1                     ; 3 uses
  store i64 %i.afp, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12279, !noalias !12276
  %i.afq = load i64, ptr %i.dk, align 8, !range !17, !alias.scope !12279, !noalias !12276, !noundef !16
  %i.afr = icmp ult i64 %i.afp, %i.afq
  call void @llvm.assume(i1 %i.afr)
  %i.afs = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12279, !noalias !12276, !nonnull !16, !noundef !16
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.afp
  %i.afu = load i8, ptr %i.aft, align 1, !noalias !12345, !noundef !16
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.054.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ true, %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ii ]
  %.sroa.055.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.adg, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h459a0d19405cdb63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.8.0192.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit150.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afu, %bb.ii ] ; 2 uses
  %i.afv = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12346, !noalias !12347, !noundef !16 ; 6 uses
  %.promoted.i84185.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12348, !noalias !12349 ; 2 uses
  %i.afw = icmp ult i64 %.promoted.i84185.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.afv
  br i1 %i.afw, label %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit145.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.ij
  %i.afx = load ptr, ptr %i.ne, align 8, !alias.scope !12346, !noalias !12347, !nonnull !16, !align !22, !noundef !16 ; 3 uses
  %.sroa.55.0..sroa_idx.promoted.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !noalias !12215
  %i.afy = load i64, ptr %i.dk, align 8, !range !17, !noalias !12215
  %i.afz = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !noalias !12215, !nonnull !16
  br label %.lr.ph.i89.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.it, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aga = phi i64 [ %.sroa.55.0..sroa_idx.promoted.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agl, %bb.it ] ; 2 uses
  %.promoted.i84188.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i84185.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agk, %bb.it ]
  %.sroa.028.0187.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.054.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.it ] ; 2 uses
  %.sroa.030.0186.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.055.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ago, %bb.it ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12350)
  br label %bb.ik

bb.ik:                                            ; preds = %bb.il, %.lr.ph.i89.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agb = phi i64 [ %.promoted.i84188.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.age, %bb.il ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12351)
  call void @llvm.experimental.noalias.scope.decl(metadata !12352)
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afx, i64 %i.agb
  %i.agd = load i8, ptr %i.agc, align 1, !noalias !12353, !noundef !16
  switch i8 %i.agd, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 32, label %bb.il
    i8 10, label %bb.il
end_hunk_2
