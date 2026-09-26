Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN101_$LT$toml..ser..document..map..SerializeDocumentTable$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7e34ebab816d40c2E":bb.a
  %i.ac = load i8, ptr %i.ab, align 8, !range !44, !noundef !34
  %i.ad = trunc nuw i8 %i.ac to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN81_$LT$toml..ser..value..ValueSerializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_u6417hbcf87c49d7ff33a6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %i.ad, i64 noundef %.0.val)
  %i.ae = load i64, ptr %i.b, align 8, !range !62, !noundef !34 ; 2 uses
  %.not59 = icmp eq i64 %i.ae, -9223372036854775803
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit79.thread"
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.633.0.copyload = load i64, ptr %.sroa.633.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.ae, ptr %0, align 8
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %.sroa.235.0..sroa_idx, align 8
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.633.0.copyload, ptr %.sroa.336.0..sroa_idx, align 8
  br label %bb.k

bb.i:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit79.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @14, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ak, align 8
  %i.al = call fastcc noundef zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE"(ptr noalias noundef align 8 dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.al, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  call void @"_ZN87_$LT$toml..ser..error..Error$u20$as$u20$core..convert..From$LT$core..fmt..Error$GT$$GT$4from17hc693d33a96ffc479E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.h, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN101_$LT$toml..ser..document..map..SerializeDocumentTable$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17ha26e96c3a5fa6c56E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.c = load i64, ptr %2, align 8, !range !57, !alias.scope !1352, !noundef !34
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h1242af68fb241d37E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !1352, !noundef !34
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1352, !nonnull !34, !noundef !34
  %.val8.i.i.i.i.i.i = load i32, ptr %.val.i, align 4, !alias.scope !1353, !noalias !1354, !noundef !34
  %i.g = tail call { ptr, i64 } @"_ZN18nickel_lang_parser10identifier102_$LT$impl$u20$core..convert..From$LT$nickel_lang_parser..identifier..Ident$GT$$u20$for$u20$$RF$str$GT$4from17hf3d9ddd50b0ab5e2E"(i32 noundef %.val8.i.i.i.i.i.i), !noalias !1355 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call fastcc noundef zeroext i1 @_ZN11toml_writer5write9TomlWrite3key17h0217909e08250831E(ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @928, i64 noundef 10)
  br i1 %i.h, label %bb.e, label %bb.f

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h1242af68fb241d37E.exit": ; preds = %bb.a, %bb.k
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.d
  tail call void @"_ZN87_$LT$toml..ser..error..Error$u20$as$u20$core..convert..From$LT$core..fmt..Error$GT$$GT$4from17hc693d33a96ffc479E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1361, !noalias !1362, !noundef !34 ; 3 uses
  %i.k = load i64, ptr %1, align 8, !range !42, !alias.scope !1361, !noalias !1362, !noundef !34
  %i.l = icmp eq i64 %i.k, %i.j
  br i1 %i.l, label %bb.g, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit.thread", !prof !37

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1362, !inline_history !61
  %.pre.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1363, !noalias !1362
  br label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit.thread"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit.thread": ; preds = %bb.f, %bb.g
  %i.m = phi i64 [ %i.j, %bb.f ], [ %.pre.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1363, !noalias !1362, !nonnull !34, !noundef !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store i8 32, ptr %i.q, align 1, !noalias !1364
  %i.r = add nuw i64 %i.m, 1                      ; 4 uses
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !1363, !noalias !1362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.s = load i64, ptr %1, align 8, !range !42, !alias.scope !1370, !noalias !1371, !noundef !34
  %i.t = icmp eq i64 %i.s, %i.r
  br i1 %i.t, label %bb.h, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit75.thread", !prof !37

bb.h:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit.thread"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.r, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1371, !inline_history !61
  %.pre.i.i.i.i.i74 = load i64, ptr %i.i, align 8, !alias.scope !1372, !noalias !1371
  br label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit75.thread"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit75.thread": ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit.thread", %bb.h
  %i.u = phi i64 [ %i.r, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit.thread" ], [ %.pre.i.i.i.i.i74, %bb.h ] ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load ptr, ptr %i.o, align 8, !alias.scope !1372, !noalias !1371, !nonnull !34, !noundef !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 61, ptr %i.x, align 1, !noalias !1373
  %i.y = add nuw i64 %i.u, 1                      ; 4 uses
  store i64 %i.y, ptr %i.i, align 8, !alias.scope !1372, !noalias !1371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.z = load i64, ptr %1, align 8, !range !42, !alias.scope !1379, !noalias !1380, !noundef !34
  %i.aa = icmp eq i64 %i.z, %i.y
  br i1 %i.aa, label %bb.i, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit82.thread", !prof !37

bb.i:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit75.thread"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.y, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !1380, !inline_history !61
  %.pre.i.i.i.i.i81 = load i64, ptr %i.i, align 8, !alias.scope !1381, !noalias !1380
  br label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit82.thread"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit82.thread": ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit75.thread", %bb.i
  %i.ab = phi i64 [ %i.y, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit75.thread" ], [ %.pre.i.i.i.i.i81, %bb.i ] ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %i.o, align 8, !alias.scope !1381, !noalias !1380, !nonnull !34, !noundef !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 32, ptr %i.ae, align 1, !noalias !1382
  %i.af = add nuw i64 %i.ab, 1
  store i64 %i.af, ptr %i.i, align 8, !alias.scope !1381, !noalias !1380
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !range !44, !noundef !34
  %i.ai = trunc nuw i8 %i.ah to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17ha923f7baa10030c6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef align 8 dereferenceable(24) %1, i1 noundef zeroext %i.ai)
  %i.aj = load i64, ptr %i.b, align 8, !range !62, !noundef !34 ; 2 uses
  %.not59 = icmp eq i64 %i.aj, -9223372036854775803
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit82.thread"
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.633.0.copyload = load i64, ptr %.sroa.633.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.aj, ptr %0, align 8
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %.sroa.235.0..sroa_idx, align 8
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.633.0.copyload, ptr %.sroa.336.0..sroa_idx, align 8
  br label %bb.m

bb.k:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE.exit82.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @14, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ap, align 8
  %i.aq = call fastcc noundef zeroext i1 @"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h04f63783c54a823cE"(ptr noalias noundef align 8 dereferenceable(24) %i.al, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.aq, label %bb.l, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h1242af68fb241d37E.exit"

bb.l:                                             ; preds = %bb.k
  call void @"_ZN87_$LT$toml..ser..error..Error$u20$as$u20$core..convert..From$LT$core..fmt..Error$GT$$GT$4from17hc693d33a96ffc479E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l, %bb.j, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h1242af68fb241d37E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0354f39ec5798854E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1401, !noalias !1402, !nonnull !34, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1401, !noalias !1402, !nonnull !34, !noundef !34 ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !1401, !noalias !1402
  %.sroa.0.0.copyload1 = load i32, ptr %i.g, align 4, !noalias !1401 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload1, 3
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit"
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  store i32 %.sroa.0.0.copyload1, ptr %i.c, align 4
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.k = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 16, i1 false)
  %i.n = call noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1403
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !1404
  %i.q = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #53, !noalias !1404 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59, !noalias !1405
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.q, %bb.c ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !1406
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !1407
  %i.s = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #53, !noalias !1407 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hf5f8886cc0b4c87aE.exit", !prof !37

bb.e:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.p, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h23478f6fbecde5baE.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !1408
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h23478f6fbecde5baE.exit.i.i"

bb.g:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1409
  store ptr @320, ptr %i.a, align 8, !noalias !1409
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8, !noalias !1409
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.w, align 8, !noalias !1409
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !1409
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.y, align 8, !noalias !1409
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.h unwind label %bb.e, !noalias !1407

bb.h:                                             ; preds = %bb.g
  unreachable

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h23478f6fbecde5baE.exit.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.u

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hf5f8886cc0b4c87aE.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i"
  store i64 216172782113783809, ptr %i.s, align 8, !noalias !1407
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.n, ptr %i.z, align 8, !noalias !1407
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.m, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx4.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.thread": ; preds = %bb.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hf5f8886cc0b4c87aE.exit"
  %.sroa.0.0 = phi ptr [ %i.s, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hf5f8886cc0b4c87aE.exit" ], [ null, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h03f9cb5e9c280cceE"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1422
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = tail call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h55c5fb4960a80501E(ptr noalias noundef align 8 dereferenceable(64) %i.b) ; 2 uses
  %.not9.i.i = icmp eq ptr %i.c, null
  br i1 %.not9.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.lr.ph.i.i", label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit.thread"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.lr.ph.i.i": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.i.i"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.i.i": ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h42eb4d5cc0ce295eE.exit.i.i", %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.lr.ph.i.i"
  %i.g = load i64, ptr %0, align 8, !range !55, !alias.scope !1424, !noalias !1425, !noundef !34
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit"

bb.b:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.i.i"
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1426, !noalias !1427, !align !41, !noundef !34 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !1426, !noalias !1427
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h955fe8aa72b81121E.exit.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h955fe8aa72b81121E.exit.i.i": ; preds = %bb.b
  %.val.i.i.i.i = load i32, ptr %i.e, align 8, !alias.scope !1428, !noalias !1427, !noundef !34
  call void @_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts17hdda7f7b11c2ffd80E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, i32 noundef %.val.i.i.i.i)
  %.pr.i.i = load i64, ptr %i.a, align 8, !noalias !1429
  %.not2.i.i = icmp eq i64 %.pr.i.i, -9223372036854775808
  br i1 %.not2.i.i, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h955fe8aa72b81121E.exit.i.i"
  %.val3.i.i = load i64, ptr %i.b, align 8, !range !57, !alias.scope !1429, !noundef !34 ; 2 uses
  %switch.i.i = icmp sgt i64 %.val3.i.i, 0
  br i1 %switch.i.i, label %bb.d, label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h42eb4d5cc0ce295eE.exit.i.i"

bb.d:                                             ; preds = %bb.c
  %.val4.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1429, !nonnull !34, !noundef !34
  %i.j = shl nuw i64 %.val3.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h42eb4d5cc0ce295eE.exit.i.i"

"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h42eb4d5cc0ce295eE.exit.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.k = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h55c5fb4960a80501E(ptr noalias noundef align 8 dereferenceable(64) %i.b) ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.i.i", label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit.thread"

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit.thread": ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h42eb4d5cc0ce295eE.exit.i.i", %bb.a
  %.sroa.0.0.i.i.ph = phi ptr [ %i.c, %bb.a ], [ %i.k, %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h42eb4d5cc0ce295eE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1422
  br label %bb.e

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit": ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E.exit.i.i", %bb.b, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h955fe8aa72b81121E.exit.i.i"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h55c5fb4960a80501E(ptr noalias noundef align 8 dereferenceable(64) %i.l) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1422
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit.thread", %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit"
  %.sroa.0.0.i.i7 = phi ptr [ %.sroa.0.0.i.i.ph, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit.thread" ], [ %i.m, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd2910e69184eeef6E.exit" ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.n, align 8, !nonnull !34, !align !52, !noundef !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3 = load ptr, ptr %i.o, align 8, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %.val.i = load ptr, ptr %.val3, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.p = getelementptr i8, ptr %.val3, i64 8
  %.val2.i = load ptr, ptr %i.p, align 8          ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noundef !34 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.r, ptr %.val.i, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i, !prof !37

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i: ; preds = %bb.e
  %.not.i.i4 = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i4, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h387a1f6d353599aeE.exit", label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val2.i, align 8, !noundef !34 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6b91c735c45e84ecE":bb.a
  %i.hk = or i64 %i.hh, %i.hi
  store i64 %i.hk, ptr %.val.i.i.i29, align 8, !noalias !8217
  %i.hl = icmp eq i64 %i.hf, 72057594037927935
  br i1 %i.hl, label %bb.bj, label %bb.bk, !prof !37

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8222
  store ptr @1344, ptr %i.d, align 8, !noalias !8222
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.hm, align 8, !noalias !8222
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.hn, align 8, !noalias !8222
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ho, align 8, !noalias !8222
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.hp, align 8, !noalias !8222
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59, !noalias !8217
  unreachable

bb.bk:                                            ; preds = %bb.bi, %bb.bg, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9169d4b34cbd55f8E.exit.i.i.i27", %bb.bf
  %.sroa.0.0.i.i.i31 = phi ptr [ %.val.i.i.i29, %bb.bi ], [ null, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9169d4b34cbd55f8E.exit.i.i.i27" ], [ %.val.i.i.i29, %bb.bg ], [ null, %bb.bf ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !8217, !noalias !8218
  store ptr %.sroa.0.0.i.i.i31, ptr %i.v, align 8, !alias.scope !8217, !noalias !8218
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha4b514bafd5fbeb0E.exit32"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha4b514bafd5fbeb0E.exit32thread-pre-split": ; preds = %bb.be
  %.pr49 = load ptr, ptr %i.v, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha4b514bafd5fbeb0E.exit32"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha4b514bafd5fbeb0E.exit32": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha4b514bafd5fbeb0E.exit32thread-pre-split", %bb.bk
  %i.hq = phi ptr [ %.pr49, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha4b514bafd5fbeb0E.exit32thread-pre-split" ], [ %.sroa.0.0.i.i.i31, %bb.bk ]
  %.not20.not = icmp eq ptr %i.hq, null
  br i1 %.not20.not, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17ha4b514bafd5fbeb0E.exit32"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.hr = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6b91c735c45e84ecE"(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(272) %i.k, i8 noundef %.pre-phi)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.y, align 8
  store i64 1, ptr %i.z, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !8223
  %i.hs = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !8223 ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.bn, label %bb.bq, !prof !45

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc33 unwind label %bb.bo

.noexc33:                                         ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17ha7dbee90479a9e8dE"(ptr noalias noundef align 8 dereferenceable(280) %i.z)
          to label %common.resume unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.bq:                                            ; preds = %bb.bm
  %i.hw = add i64 %i.hr, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.hs, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h3f90e956cdb2c801E"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.hs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bc

bb.br:                                            ; preds = %bb.bl
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17hfacb43b7db5adc6fE"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #61
          to label %common.resume unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h7a182e1577200ff9E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [20 x i8], align 4                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [272 x i8], align 8               ; 9 uses
  %i.i = alloca [296 x i8], align 8               ; 7 uses
  %i.j = alloca [296 x i8], align 8               ; 9 uses
  %i.k = alloca [272 x i8], align 8               ; 6 uses
  %i.l = icmp eq i8 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !34 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !34 ; 2 uses
  %.not21 = icmp eq i64 %i.p, %i.n
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.r = xor i64 %i.n, -1
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %.not2256 = icmp eq ptr %i.t, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2256 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader60_crit_edge, label %bb.ao

..preheader60_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader60

.preheader60:                                     ; preds = %..preheader60_crit_edge, %bb.ap
  %.pre-phi = phi i8 [ %.pre, %..preheader60_crit_edge ], [ %i.ea, %bb.ap ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader60_crit_edge ], [ %i.eb, %bb.ap ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.z = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1b8c36156cd97d71E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !55, !noundef !34
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #59
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 272 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 264 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !34
  %i.ah = sub i64 %i.ae, %i.ag                    ; 2 uses
  %i.ai = sub i64 32, %i.ah
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h9f333dcd926cdaf7E"(ptr noalias noundef align 8 dereferenceable(272) %i.ac, ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.ai)
  %i.aj = load i64, ptr %i.ad, align 8, !noundef !34
  %i.ak = load i64, ptr %i.af, align 8, !noundef !34
  %i.al = add i64 %i.ah, %i.ak
  %i.am = sub i64 %i.aj, %i.al
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.am, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 264 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dv, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.aw = load i64, ptr %i.m, align 8, !noundef !34
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.o, align 8, !noundef !34
  %i.az = icmp eq i64 %i.ay, 32
  br i1 %i.az, label %.loopexit59, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !8276)
  %i.ba = load i64, ptr %0, align 8, !range !55, !alias.scope !8276, !noalias !8277, !noundef !34
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0354f39ec5798854E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao), !noalias !8276 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !8276, !noalias !8277
  store ptr %i.bc, ptr %i.an, align 8, !alias.scope !8276, !noalias !8277
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.an, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exitthread-pre-split", %bb.j
  %i.bd = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exitthread-pre-split" ], [ %i.bc, %bb.j ]
  %.not23.not = icmp eq ptr %i.bd, null
  br i1 %.not23.not, label %.loopexit59, label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !8278)
  call void @llvm.experimental.noalias.scope.decl(metadata !8279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !noalias !8280
  br label %bb.l

.body.i.i:                                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i", %bb.x, %.body38
  %i.be = phi i64 [ %.pre.i.i, %.body38 ], [ 0, %bb.x ], [ 0, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i" ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body39, %.body38 ], [ %i.cp, %bb.x ], [ %i.cp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i" ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.be
  %i.bg = sub i64 %i.bh, %i.be
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17h60f6974b28fae480E"(ptr noalias noundef nonnull readonly align 8 %i.bf, i64 noundef %i.bg)
          to label %common.resume unwind label %bb.ak, !noalias !8280

bb.l:                                             ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i", %bb.k
  %i.bh = phi i64 [ 0, %bb.k ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i" ] ; 7 uses
  %.sroa.4.07.i.i = phi i64 [ 32, %bb.k ], [ %i.bi, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i" ]
  %i.bi = add nsw i64 %.sroa.4.07.i.i, -1         ; 2 uses
  %i.bj = load i64, ptr %0, align 8, !range !55, !alias.scope !8281, !noalias !8282, !noundef !34
  %i.bk = load ptr, ptr %i.an, align 8, !alias.scope !8281, !noalias !8282 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !8281, !noalias !8282
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !8283)
  call void @llvm.experimental.noalias.scope.decl(metadata !8284), !noalias !8285
  %i.bm = load ptr, ptr %i.ar, align 8, !alias.scope !8286, !noalias !8287, !nonnull !34, !noundef !34
  %i.bn = load ptr, ptr %i.as, align 8, !alias.scope !8286, !noalias !8287, !nonnull !34, !noundef !34 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, %i.bm
  br i1 %i.bo, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e1382ca3d47cc28E.exit, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.i": ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store ptr %i.bp, ptr %i.as, align 8, !alias.scope !8286, !noalias !8287
  %.sroa.0.0.copyload1.i = load i32, ptr %i.bn, align 4, !noalias !8288 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e1382ca3d47cc28E.exit, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !8289
  store i32 %.sroa.0.0.copyload1.i, ptr %i.d, align 4, !noalias !8289
  %.val.i34 = load ptr, ptr %i.at, align 8, !alias.scope !8283, !noalias !8285 ; 2 uses
  %i.bq = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.d)
          to label %.noexc35 unwind label %.loopexit ; 2 uses

.noexc35:                                         ; preds = %bb.n
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i34) ], !noalias !8285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 16, i1 false), !noalias !8289
  %i.bt = invoke noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i34, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8290
  %i.bu = icmp slt i64 %i.bs, 0
  br i1 %i.bu, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.noexc36
  %i.bv = icmp eq i64 %i.bs, 0                    ; 2 uses
  br i1 %i.bv, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i.i", label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !8291
  %i.bw = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 1) #53, !noalias !8291 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i.i"

bb.p:                                             ; preds = %bb.o, %.noexc36
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %.noexc36 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.p
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i.i": ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bw, %bb.o ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.br, i64 %i.bs, i1 false), !noalias !8292
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !8293
  %i.by = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #53, !noalias !8293 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i.thread45", !prof !37

bb.q:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bv, label %.body38, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !8294
  br label %.body38

bb.s:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8295
  store ptr @320, ptr %i.b, align 8, !noalias !8295
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !8295
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !8295
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !8295
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !8295
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.t unwind label %bb.q, !noalias !8293

bb.t:                                             ; preds = %bb.s
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i.thread45": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd4f26c4e8ee570bdE.exit.i.i"
  store i64 216172782113783809, ptr %i.by, align 8, !noalias !8293
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bt, ptr %i.cf, align 8, !noalias !8293
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bs, ptr %i.cg, align 8, !noalias !8289
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !8289
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !8289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8289
  br label %bb.u

.loopexit:                                        ; preds = %bb.n, %.noexc35
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.r
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ca, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.pre.i.i = load i64, ptr %i.ap, align 8, !alias.scope !8296, !noalias !8280
  br label %.body.i.i

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i": ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e1382ca3d47cc28E.exit, label %bb.u

bb.u:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i.thread45", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i"
  %.sroa.0.0.i.i.i48 = phi ptr [ %i.by, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i.thread45" ], [ %i.bk, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8297)
  %i.ch = load i64, ptr %i.ap, align 8, !alias.scope !8297, !noalias !8280, !noundef !34 ; 5 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = icmp eq i64 %i.bh, 32                   ; 2 uses
  %or.cond.i.i.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.v, !prof !81

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %i.ch, %i.bh
  br i1 %i.ck, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8298
  store ptr @586, ptr %i.g, align 8, !noalias !8298
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.cl, align 8, !noalias !8298
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.cm, align 8, !noalias !8298
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !8298
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.co, align 8, !noalias !8298
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #59
          to label %bb.ad unwind label %bb.x, !noalias !8298

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = ptrtoint ptr %.sroa.0.0.i.i.i48 to i64
  %i.cr = and i64 %i.cq, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 2)
  switch i64 %..i.i, label %.body.i.i [
    i64 2, label %bb.y
    i64 0, label %bb.z
  ], !prof !47

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc31 unwind label %bb.ae

.noexc31:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8299
  store ptr %.sroa.0.0.i.i.i48, ptr %i.f, align 8, !noalias !8299
  %i.cs = load i64, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !8300, !noundef !34 ; 3 uses
  %i.ct = and i64 %i.cs, 72057594037927935
  %i.cu = add nsw i64 %i.ct, -1                   ; 3 uses
  %i.cv = and i64 %i.cs, 1080863910568919040
  %i.cw = icmp ult i64 %i.cs, 864691128455135232
  call void @llvm.assume(i1 %i.cw), !noalias !8298
  %i.cx = or i64 %i.cu, %i.cv
  store i64 %i.cx, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !8300
  %i.cy = icmp ugt i64 %i.cu, 72057594037927935
  br i1 %i.cy, label %bb.ab, label %bb.aa, !prof !37

bb.aa:                                            ; preds = %bb.z
  %i.cz = icmp eq i64 %i.cu, 0
  br i1 %i.cz, label %bb.ac, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i"

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8300
  store ptr @1344, ptr %i.e, align 8, !noalias !8300
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.da, align 8, !noalias !8300
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.db, align 8, !noalias !8300
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !noalias !8300
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.dd, align 8, !noalias !8300
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc32 unwind label %bb.ae

.noexc32:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i" unwind label %bb.ae

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i": ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8299
  br label %.body.i.i

bb.ad:                                            ; preds = %bb.w
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !8298
  unreachable

bb.af:                                            ; preds = %bb.v
  br i1 %i.cj, label %bb.ah, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i"

bb.ag:                                            ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !8297, !noalias !8280
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i"

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.i = icmp eq i64 %i.ch, 32
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.df = phi i64 [ %i.dj, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  store i64 %i.df, ptr %i.aq, align 8, !alias.scope !8297, !noalias !8280
  store i64 0, ptr %i.ap, align 8, !alias.scope !8297, !noalias !8280
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ch
  %i.dh = shl i64 %i.ch, 3
  %i.di = sub i64 256, %i.dh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.h, ptr nonnull align 8 %i.dg, i64 %i.di, i1 false), !alias.scope !8297, !noalias !8280
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !8297, !noalias !8280
  %i.dj = sub i64 32, %.pre.i.i.i
  br label %bb.ai

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i": ; preds = %bb.ai, %bb.ag, %bb.af
  %i.dk = phi i64 [ %i.df, %bb.ai ], [ %i.bh, %bb.af ], [ 0, %bb.ag ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dk
  store ptr %.sroa.0.0.i.i.i48, ptr %i.dl, align 8, !alias.scope !8297, !noalias !8280
  %i.dm = load i64, ptr %i.aq, align 8, !alias.scope !8297, !noalias !8280, !noundef !34
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.aq, align 8, !alias.scope !8297, !noalias !8280
  %i.do = icmp eq i64 %i.bi, 0
  br i1 %i.do, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e1382ca3d47cc28E.exit, label %bb.l

bb.ak:                                            ; preds = %.body.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !8280
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.ay, %bb.am, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %bb.am ], [ %.pn.i.i, %.body.i.i ], [ %i.en, %bb.ay ], [ %i.eq, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h4e1382ca3d47cc28E.exit: ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i"
  %.sroa.3.0.copyload41 = phi i64 [ %i.bh, %bb.m ], [ %i.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h465023780c85a47cE.exit.i" ], [ %i.bh, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8d5460f1f70f7560E.exit.i.i" ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false)
  %.sroa.2.0.copyload40 = load i64, ptr %i.ap, align 8, !noalias !8301 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8280
  store i64 1, ptr %i.j, align 8
  store i64 1, ptr %i.au, align 8
  store i64 0, ptr %i.av, align 8
  store i64 %.sroa.2.0.copyload40, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.3.0.copyload41, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !8302
  %i.dq = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !8302 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.al, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit24", !prof !45

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h4e1382ca3d47cc28E.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17ha7dbee90479a9e8dE"(ptr noalias noundef align 8 dereferenceable(280) %i.av)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit24": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h4e1382ca3d47cc28E.exit
  %i.du = sub i64 %.sroa.0.0, %.sroa.2.0.copyload40
  %i.dv = add i64 %i.du, %.sroa.3.0.copyload41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.j, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h3f90e956cdb2c801E"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.dq)
  br label %bb.g

.loopexit59:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26", %bb.as, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit", %bb.h
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit" ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.2, %bb.as ], [ %.sroa.0.2, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26" ]
  ret i64 %.sroa.0.1

bb.ao:                                            ; preds = %bb.c
  %i.dw = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1b8c36156cd97d71E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !55, !noundef !34
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.ap, label %bb.aq, !prof !40

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = add i8 %2, -1                           ; 2 uses
  %i.eb = tail call fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h7a182e1577200ff9E"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.dz, i8 noundef %i.ea)
  br label %.preheader60

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #59
  unreachable

bb.ar:                                            ; preds = %.preheader60, %bb.ba
  %.sroa.0.2 = phi i64 [ %i.ep, %bb.ba ], [ %.sroa.0.2.ph, %.preheader60 ] ; 3 uses
  %i.ec = load i64, ptr %i.m, align 8, !noundef !34
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ee = load i64, ptr %i.o, align 8, !noundef !34
  %i.ef = icmp eq i64 %i.ee, 32
  br i1 %i.ef, label %.loopexit59, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !8303)
  %i.eg = load i64, ptr %0, align 8, !range !55, !alias.scope !8303, !noalias !8304, !noundef !34
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26thread-pre-split", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0354f39ec5798854E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v), !noalias !8303 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !8303, !noalias !8304
  store ptr %i.ei, ptr %i.u, align 8, !alias.scope !8303, !noalias !8304
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26thread-pre-split": ; preds = %bb.at
  %.pr49 = load ptr, ptr %i.u, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26thread-pre-split", %bb.au
  %i.ej = phi ptr [ %.pr49, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26thread-pre-split" ], [ %i.ei, %bb.au ]
  %.not20.not = icmp eq ptr %i.ej, null
  br i1 %.not20.not, label %.loopexit59, label %bb.av

bb.av:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit26"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.ek = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h7a182e1577200ff9E"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.k, i8 noundef %.pre-phi)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.x, align 8
  store i64 1, ptr %i.y, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !8305
  %i.el = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !8305 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ax, label %bb.ba, !prof !45

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc27 unwind label %bb.ay

.noexc27:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17ha7dbee90479a9e8dE"(ptr noalias noundef align 8 dereferenceable(280) %i.y)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.ba:                                            ; preds = %bb.aw
  %i.ep = add i64 %i.ek, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.el, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h3f90e956cdb2c801E"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ar

bb.bb:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17hfacb43b7db5adc6fE"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #61
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h8108d5183c183f64E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [272 x i8], align 8               ; 10 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [296 x i8], align 8               ; 7 uses
  %i.h = alloca [296 x i8], align 8               ; 9 uses
  %i.i = alloca [272 x i8], align 8               ; 6 uses
  %i.j = icmp eq i8 %2, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !34 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !34 ; 2 uses
  %.not21 = icmp eq i64 %i.n, %i.l
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.p = xor i64 %i.l, -1
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.p ; 3 uses
  %.not2257 = icmp eq ptr %i.r, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2257 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader61_crit_edge, label %bb.aj

..preheader61_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader61

.preheader61:                                     ; preds = %..preheader61_crit_edge, %bb.ak
  %.pre-phi = phi i8 [ %.pre, %..preheader61_crit_edge ], [ %i.dm, %bb.ak ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader61_crit_edge ], [ %i.dn, %bb.ak ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %i.y = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1b8c36156cd97d71E"(ptr noalias noundef align 8 dereferenceable(8) %i.r) ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !55, !noundef !34
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #59
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 272 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 264 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !34
  %i.ag = sub i64 %i.ad, %i.af                    ; 2 uses
  %i.ah = sub i64 32, %i.ag
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17hcc4ff22ea8c00725E"(ptr noalias noundef align 8 dereferenceable(272) %i.ab, ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.ah)
  %i.ai = load i64, ptr %i.ac, align 8, !noundef !34
  %i.aj = load i64, ptr %i.ae, align 8, !noundef !34
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = sub i64 %i.ai, %i.ak
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.al, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dh, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.at = load i64, ptr %i.k, align 8, !noundef !34
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.m, align 8, !noundef !34
  %i.aw = icmp eq i64 %i.av, 32
  br i1 %i.aw, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8378)
  %i.ax = load i64, ptr %0, align 8, !range !55, !alias.scope !8377, !noalias !8378, !noundef !34
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h645a0c2a561a982aE.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8381)
  %i.az = load ptr, ptr %i.an, align 8, !alias.scope !8382, !noalias !8383, !nonnull !34, !noundef !34
  %i.ba = load ptr, ptr %i.ao, align 8, !alias.scope !8382, !noalias !8383, !nonnull !34, !noundef !34 ; 5 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %bb.p, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h148dac2ec9f7cb8dE.exit.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h148dac2ec9f7cb8dE.exit.i.i.i": ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bc, ptr %i.ao, align 8, !alias.scope !8382, !noalias !8383
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ba, align 8, !noalias !8384 ; 3 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.6.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !8384
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h148dac2ec9f7cb8dE.exit.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i, align 8, !noalias !8384
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775808 ; 3 uses
  %.sroa.04.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %.sroa.0.0.copyload1.i.i.i ; 3 uses
  %.sroa.56.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.0.0.copyload.i.i.i ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !8385
end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4eval17update_at_indices17h3f0ac480094d6e9aE:bb.a

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @316, i64 noundef 69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #59, !noalias !15324
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.q, i64 -9
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.w, align 1, !noalias !15324, !nonnull !34, !noundef !34 ; 7 uses
  %i.x = add nsw i64 %i.p, -9                     ; 3 uses
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !15324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !15325)
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %.val.i, align 8, !noalias !15326, !noundef !34 ; 3 uses
  %i.z = and i64 %i.y, 72057594037927935          ; 3 uses
  %i.aa = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  %i.ac = and i64 %i.y, 1080863910568919040
  %i.ad = icmp ult i64 %i.y, 864691128455135232
  call void @llvm.assume(i1 %i.ad)
  %i.ae = or i64 %i.ab, %i.ac
  store i64 %i.ae, ptr %.val.i, align 8, !noalias !15326
  %i.af = icmp eq i64 %i.z, 72057594037927935
  br i1 %i.af, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !37

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15326
  store ptr @1344, ptr %i.e, align 8, !noalias !15326
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ag, align 8, !noalias !15326
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ah, align 8, !noalias !15326
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !noalias !15326
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.aj, align 8, !noalias !15326
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc5 unwind label %bb.w

.noexc5:                                          ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.g, %bb.e
  %.val.i.i.i = load i64, ptr %.val1.i, align 8, !noalias !15326, !noundef !34 ; 2 uses
  %i.ak = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.al, ptr %.val1.i, align 8, !noalias !15326
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i, !prof !37

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val2.i, align 8, !noalias !15326, !noundef !34 ; 2 uses
  %i.an = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.ao, ptr %.val2.i, align 8, !noalias !15326
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l, !prof !37

bb.k:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

._crit_edge:                                      ; preds = %bb.b, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i", %bb.a
  ret void

bb.l:                                             ; preds = %bb.j, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i
  store ptr %.val.i, ptr %i.f, align 8, !alias.scope !15325, !noalias !15327
  store ptr %.val1.i, ptr %i.n, align 8, !alias.scope !15325, !noalias !15327
  store ptr %.val2.i, ptr %i.o, align 8, !alias.scope !15325, !noalias !15327
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 16 ; 6 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !15328, !noundef !34
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.o, !prof !40

bb.m:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i64, ptr %i.aq, align 8, !noalias !15328, !noundef !34
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.aq, align 8, !noalias !15328
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  store i64 -1, ptr %i.aq, align 8, !noalias !15328
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData6update17h9149a9fa047e6de7E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.m, !noalias !15328

bb.o:                                             ; preds = %bb.l
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #59
          to label %bb.t unwind label %bb.v, !noalias !15328

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15328
  %i.ax = load i64, ptr %i.aq, align 8, !noalias !15328, !noundef !34
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aq, align 8, !noalias !15328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15329
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !15329
  %i.az = load i64, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !15330, !noundef !34 ; 3 uses
  %i.ba = and i64 %i.az, 72057594037927935
  %i.bb = add nsw i64 %i.ba, -1                   ; 3 uses
  %i.bc = and i64 %i.az, 1080863910568919040
  %i.bd = icmp ult i64 %i.az, 864691128455135232
  call void @llvm.assume(i1 %i.bd)
  %i.be = or i64 %i.bb, %i.bc
  store i64 %i.be, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !15330
  %i.bf = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bf, label %.noexc7, label %bb.q, !prof !37

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp eq i64 %i.bb, 0
  br i1 %i.bg, label %bb.r, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i"

.noexc7:                                          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15330
  store ptr @1344, ptr %i.b, align 8, !noalias !15330
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !15330
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bi, align 8, !noalias !15330
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8, !noalias !15330
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bk, align 8, !noalias !15330
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i.i": ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.s:                                             ; preds = %bb.v, %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.t:                                             ; preds = %bb.o
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.m
  %.pn10.i.i = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.at, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #61
          to label %.body.thread unwind label %bb.s

bb.v:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hf5d66bac970e23d9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #61
          to label %bb.u unwind label %bb.s

.body.thread:                                     ; preds = %bb.u, %bb.w
  %eh.lpad-body7 = phi { ptr, i32 } [ %.pn10.i.i, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body7

bb.w:                                             ; preds = %bb.h, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #61
          to label %.body.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$13err_with_ctxt17h80cc05266aae4bf3E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(392) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [392 x i8], align 8               ; 4 uses
  %i.b = alloca [440 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15345)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !15345, !noalias !15346 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15345, !noalias !15346 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !15345, !noalias !15346
  store i64 0, ptr %i.c, align 8, !alias.scope !15345, !noalias !15346
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15345, !noalias !15346
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !15345, !noalias !15346
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !15345, !noalias !15346, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 640
  %.val7.i = load ptr, ptr %i.f, align 8, !noalias !15347, !nonnull !34, !noundef !34
  %i.g = getelementptr i8, ptr %i.e, i64 648
  %.val8.i = load i64, ptr %i.g, align 8, !noalias !15347, !noundef !34 ; 5 uses
  %i.h = mul i64 %.val8.i, 12                     ; 4 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.val8.i, 768614336404564650
  br i1 %or.cond.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15348
  %i.j = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 4) #53, !noalias !15348 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc.i unwind label %bb.d, !noalias !15347

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.m, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nuw i64 %.sroa.0.0.copyload.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !15347
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef align 8 dereferenceable(392) %i.a) #61
          to label %common.resume unwind label %bb.j

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val8.i, %bb.b ] ; 2 uses
  %i.o = icmp samesign ule i64 %.val8.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 4 %.val7.i, i64 %i.h, i1 false), !noalias !15349
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i64 %.val8.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15350
  %i.q = tail call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15350 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8294f023cf6d9b13E.exit", !prof !45

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 440) #59
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorData$GT$17hbbcb64a4742976e8E"(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.b) #61
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8294f023cf6d9b13E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.q, ptr noundef nonnull align 8 dereferenceable(440) %i.b, i64 440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.q

bb.j:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17enter_cache_index17h9c93a78f8ae72470E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [392 x i8], align 8               ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [392 x i8], align 8               ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 16               ; 9 uses
  %i.l = alloca [20 x i8], align 4                ; 2 uses
  %i.m = alloca [392 x i8], align 8               ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %3, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %5, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %6, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15400)
  %i.q = load i64, ptr %5, align 8, !noalias !15401, !noundef !34
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %5, align 8, !noalias !15401
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge" unwind label %bb.c

"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge": ; preds = %bb.b
  %.pre = load ptr, ptr %i.p, align 8, !alias.scope !15402
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15403)
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !15404, !noundef !34 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !noalias !15405, !noundef !34
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !15405
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %.thread59

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.thread59 unwind label %bb.h

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i": ; preds = %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge", %bb.a
  %i.z = phi ptr [ %.pre, %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge" ], [ %6, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15406)
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"
  %i.ab = load i64, ptr %i.z, align 8, !noalias !15407, !noundef !34
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !noalias !15407
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit" unwind label %.thread63

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

end_hunk_2
begin_hunk_3_@_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E:bb.a
bb.fo:                                            ; preds = %.thread367
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$nickel_lang_core..eval..value..lens..TermContent$GT$17h7545013d74a4e8a3E"(i64 %i.bn, ptr nonnull %.sroa.9.0.copyload) #61
          to label %.thread309 unwind label %bb.bk

bb.fp:                                            ; preds = %bb.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(20) %i.qv, i64 20, i1 false)
  %i.qw = load ptr, ptr %i.ay, align 8, !noundef !34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq ptr %i.qw, null
  br i1 %.not, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit", label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qx = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit" unwind label %.thread316, !inline_history !18413

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit": ; preds = %bb.fq, %bb.fp
  %.sroa.06.0 = phi ptr [ null, %bb.fp ], [ %i.qx, %bb.fq ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !18543
  %i.qy = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #53, !noalias !18543 ; 6 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.fs, label %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h63677e19df7e1cfcE.exit, !prof !37

bb.fr:                                            ; preds = %bb.fs
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha0500a057c85eb99E"(ptr %.sroa.06.0) #61
          to label %.thread unwind label %bb.fu, !noalias !18543

bb.fs:                                            ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18543
  store ptr @320, ptr %i.t, align 8, !noalias !18543
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.rb, align 8, !noalias !18543
  %i.rc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.rc, align 8, !noalias !18543
  %i.rd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.rd, align 8, !noalias !18543
  %i.re = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.re, align 8, !noalias !18543
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.ft unwind label %bb.fr, !noalias !18543

bb.ft:                                            ; preds = %bb.fs
  unreachable

bb.fu:                                            ; preds = %bb.fr
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !18543
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h63677e19df7e1cfcE.exit: ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit"
  store i64 504403158265495553, ptr %i.qy, align 8, !noalias !18543
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i32 %i.bm, ptr %i.rg, align 8, !noalias !18543
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %.sroa.06.0, ptr %i.rh, align 8, !noalias !18544
  %.sroa.5.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i100, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.az, i64 20, i1 false)
  br label %.thread398.thread

.thread398:                                       ; preds = %bb.er, %bb.ch
  %.val73 = phi ptr [ %.sroa.9.0.copyload, %bb.er ], [ %i.by, %bb.ch ]
  %.sroa.0.0 = phi ptr [ %i.nm, %bb.er ], [ %i.lq, %bb.ch ] ; 6 uses
  switch i64 %i.br, label %bb.fv [
    i64 3, label %.thread398.thread
    i64 4, label %.thread398.thread
    i64 6, label %.thread398.thread
    i64 7, label %.thread398.thread
    i64 9, label %.thread398.thread
  ]

bb.fv:                                            ; preds = %.thread398
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h0353b356dcdecd25E"(i64 %i.bn, ptr nonnull %.val73)
  br label %.thread398.thread

.thread309:                                       ; preds = %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %bb.fo, %bb.ce, %bb.cd, %.body114, %.thread316
  %.val71 = phi ptr [ %.sroa.9.0.copyload, %.thread367 ], [ %.val71471, %.thread316 ], [ %i.by, %bb.ce ], [ %.sroa.9.0.copyload, %.thread367 ], [ %i.by, %.body114 ], [ %i.by, %bb.cd ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %bb.fo ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ]
  %.pn61302 = phi { ptr, i32 } [ %.pn57, %.thread367 ], [ %lpad.thr_comm314, %.thread316 ], [ %eh.lpad-body115, %bb.ce ], [ %.pn57, %.thread367 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body115, %bb.cd ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %bb.fo ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ] ; 6 uses
  switch i64 %i.br, label %bb.fw [
    i64 3, label %.thread
    i64 4, label %.thread
    i64 6, label %.thread
    i64 7, label %.thread
    i64 9, label %.thread
  ]

bb.fw:                                            ; preds = %.thread309
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h0353b356dcdecd25E"(i64 %i.bn, ptr %.val71) #61
          to label %.thread unwind label %bb.bk

.thread:                                          ; preds = %bb.cn, %bb.co, %bb.cp, %bb.fr, %.body, %bb.ck, %bb.fm, %bb.fn, %bb.fi, %bb.fj, %bb.eu, %.sink.split.i, %bb.dy, %bb.dz, %bb.fa, %bb.fc, %bb.em, %.thread309, %.thread309, %.thread309, %.thread309, %.thread309, %bb.fw, %bb.fx
  %.pn63292 = phi { ptr, i32 } [ %.pn61302, %bb.fw ], [ %lpad.thr_comm.split-lp, %bb.fx ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %lpad.thr_comm359372, %bb.dz ], [ %i.ra, %bb.fr ], [ %lpad.thr_comm379395, %bb.em ], [ %i.lz, %bb.cp ], [ %lpad.thr_comm.split-lp360, %bb.dy ], [ %i.lz, %bb.cn ], [ %lpad.thr_comm404, %bb.fc ], [ %lpad.thr_comm404, %bb.fa ], [ %i.lz, %bb.co ], [ %eh.lpad-body, %.body ], [ %i.qe, %bb.fi ], [ %i.lu, %bb.ck ], [ %i.pl, %.sink.split.i ], [ %i.pl, %bb.eu ], [ %i.qe, %bb.fj ], [ %i.qr, %bb.fn ], [ %i.qr, %bb.fm ]
  resume { ptr, i32 } %.pn63292

bb.fx:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl) #61
          to label %.thread unwind label %bb.bk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h2161d526ecae9bc4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !34, !align !52, !noundef !34
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !34, !align !41, !noundef !34
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !34, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !34, !align !41, !noundef !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.i = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #61
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18563)
  call void @llvm.experimental.noalias.scope.decl(metadata !18564)
  call void @llvm.experimental.noalias.scope.decl(metadata !18565)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !18566, !nonnull !34, !noundef !34 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !18566, !noundef !34
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !18566
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18567)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !18568, !noundef !34 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !noalias !18569, !noundef !34
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !18569
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %common.resume unwind label %bb.j

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i": ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18570)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18571, !noundef !34 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"
  %i.y = load i64, ptr %i.w, align 8, !noalias !18572, !noundef !34
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.w, align 8, !noalias !18572
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i", %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h86280e4cd689a6a0E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, i32 %.0.val, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  store i64 -9223372036854775760, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !18575
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #53, !noalias !18575 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h4b601a58ee78df78E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #61
          to label %.body unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18575
  store ptr @320, ptr %i.a, align 8, !noalias !18575
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !18575
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !18575
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !18575
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !18575
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b, !noalias !18575

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.body:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17hba2c3d8c5dcb5ed7E"(ptr %1) #61
          to label %common.resume unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.d, align 8, !noalias !18575
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.0.val, ptr %i.l, align 8, !noalias !18575
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %1)
          to label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17hba2c3d8c5dcb5ed7E.exit" unwind label %bb.g

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #53
  br label %common.resume

"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17hba2c3d8c5dcb5ed7E.exit": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #53
  ret ptr %i.d

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h63677e19df7e1cfcE(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !18578
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #53, !noalias !18578 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha0500a057c85eb99E"(ptr %1) #61
          to label %.body unwind label %bb.e, !noalias !18578

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18578
  store ptr @320, ptr %i.a, align 8, !noalias !18578
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !18578
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !noalias !18578
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !noalias !18578
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8, !noalias !18578
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b, !noalias !18578

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !18578
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.b, align 8, !noalias !18578
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.j, align 8, !noalias !18578
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  ret ptr %i.b

.body:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h9a5f2dd5eb991b52E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [20 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !18581
  %i.c = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #53, !noalias !18581 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha0500a057c85eb99E"(ptr %2) #61
          to label %.body unwind label %bb.e, !noalias !18581

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18581
  store ptr @320, ptr %i.a, align 8, !noalias !18581
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !18581
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8, !noalias !18581
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !18581
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8, !noalias !18581
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b, !noalias !18581

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !18581
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit"
  store i64 504403158265495553, ptr %i.c, align 8, !noalias !18581
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %3, ptr %i.k, align 8, !noalias !18581
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %i.c

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body5

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E"(ptr %2) #61
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(32) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h108f4a61e5a10d1bE(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !34 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 504403158265495552
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(24) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h491e7e9678b2ba9bE(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !34 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 216172782113783808
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h85ed10a472360b58E(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !34 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 360287970189639680
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(152) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hab1bec181c16ba99E(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !34 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 432345564227567616
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(64) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hdd138bfc2708459bE(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !34 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17he224f4acd64a66e1E(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !34 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h2135db5325136370E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..value..ArrayData$GT$17he91dc556d163ac4bE"(ptr noalias noundef align 8 dereferenceable(64) %0) #61
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 72057594037927937, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h38dce7189e0750f5E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h255d866aa5ae41fcE"(ptr noalias noundef align 8 dereferenceable(56) %0) #61
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h3a90a9df66fcedafE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.f, !prof !37

bb.b:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8, !range !42, !alias.scope !18590, !noundef !34 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h23478f6fbecde5baE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !18591
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h23478f6fbecde5baE.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 216172782113783809, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %i.b

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h23478f6fbecde5baE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h65c25212dbba8e30E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordData$GT$17hedf2eba88b40d219E"(ptr noalias noundef align 8 dereferenceable(88) %0) #61
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 144115188075855873, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h7fd4e118439da9adE(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #53 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #61
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 720575940379279361, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.k, align 8
  ret ptr %i.c

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17haa831951cf16ad5dE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$nickel_lang_core..eval..cache..lazy..InnerThunkData$GT$17hb10437bf35b032a1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17hda0dfcc3b5fd761bE.exit" unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 288230376151711745, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17hda0dfcc3b5fd761bE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17had8c8ea3fb57c5adE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h387e0da7d287577cE"(ptr noalias noundef align 8 dereferenceable(152) %0) #61
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 432345564227567617, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hd1d41fa7aab9a4baE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..eval..value..TypeData$GT$17h774f012195dbd9deE"(ptr noalias noundef align 8 dereferenceable(112) %0) #61
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 792633534417207297, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hffd3a014825ac915E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #53 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h4b601a58ee78df78E"(ptr noalias noundef align 8 dereferenceable(56) %0) #61
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @320, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint11patch_field17hda8ca2d692404db6E(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !34
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !18604 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %cond.i = icmp eq i64 %i.d, 6
  br i1 %cond.i, label %bb.c, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !18604, !nonnull !34, !noundef !34 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !18605, !noundef !34
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.f, align 8, !noalias !18605
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i" unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #59, !noalias !18605
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.f, align 8, !noalias !18606, !noundef !34
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.f, align 8, !noalias !18606
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i": ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !noalias !18606, !noundef !34
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.f, align 8, !noalias !18606
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit

_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit: ; preds = %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i", %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !34 ; 2 uses
  %.idx = mul nuw nsw i64 %i.r, 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit5
  %.sroa.01.02 = phi ptr [ %i.u, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit5 ], [ %i.p, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 160 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 152
  %i.w = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v), !noalias !18607 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %cond.i2 = icmp eq i64 %i.x, 6
  br i1 %cond.i2, label %bb.g, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit5

bb.g:                                             ; preds = %.lr.ph
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %.val.i3 = load ptr, ptr %i.y, align 8, !noalias !18607, !nonnull !34, !noundef !34 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i3, i64 16 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !18608, !noundef !34
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !40

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.z, align 8, !noalias !18608
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i3, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4" unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #59, !noalias !18608
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i64, ptr %i.z, align 8, !noalias !18609, !noundef !34
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.z, align 8, !noalias !18609
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4": ; preds = %bb.h
  %i.ag = load i64, ptr %i.z, align 8, !noalias !18609, !noundef !34
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.z, align 8, !noalias !18609
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit5

_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit5: ; preds = %.lr.ph, %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4"
  %i.ai = icmp eq ptr %i.u, %i.s
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit5, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h17150c1e9c89bfeeE.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint6revert17h0580abd6b2801caaE(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.08.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.l = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.l, label %bb.b, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !34, !noundef !34
  %or.cond.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.m = shl i64 %.sroa.5.0.copyload, 3
  %i.n = and i64 %i.m, -16                        ; 2 uses
  %i.o = add i64 %i.n, 16                         ; 2 uses
  %i.p = add nsw i64 %.sroa.5.0.copyload, 17
  %i.q = add i64 %i.p, %i.o                       ; 3 uses
  %i.r = icmp uge i64 %i.q, %i.o
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp ult i64 %i.q, 9223372036854775793
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nuw nsw i64 -16, %i.n
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op117h3af9df78a2bac5d1E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %.thread2793

bb.arh:                                           ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %.thread2793

bb.ari:                                           ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %.thread2793

bb.arj:                                           ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread2793

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit1853": ; preds = %bb.arp, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i1847", %bb.arq, %.thread2793, %bb.bw
  %.sroa.0516.22789 = phi i8 [ %.sroa.0516.2.ph2792, %.thread2793 ], [ %.sroa.0516.2, %bb.bw ], [ %.sroa.0516.22790, %bb.arq ], [ %.sroa.0516.22790, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i1847" ], [ %.sroa.0516.22790, %bb.arp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.px)
  %i.cgx = trunc nuw i8 %.sroa.0516.22789 to i1
  br i1 %i.cgx, label %bb.ars, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit1857"

bb.ark:                                           ; preds = %.thread2786, %bb.bw
  %.sroa.0516.22790 = phi i8 [ %.sroa.0516.2.ph, %.thread2786 ], [ %.sroa.0516.2, %bb.bw ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20378)
  call void @llvm.experimental.noalias.scope.decl(metadata !20379)
  call void @llvm.experimental.noalias.scope.decl(metadata !20380)
  %i.cgy = load ptr, ptr %i.px, align 16, !alias.scope !20381, !nonnull !34, !noundef !34 ; 2 uses
  %i.cgz = load i64, ptr %i.cgy, align 8, !noalias !20381, !noundef !34
  %i.cha = add i64 %i.cgz, -1                     ; 2 uses
  store i64 %i.cha, ptr %i.cgy, align 8, !noalias !20381
  %i.chb = icmp eq i64 %i.cha, 0
  br i1 %i.chb, label %bb.arl, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i1847"

bb.arl:                                           ; preds = %bb.ark
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.px)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i1847" unwind label %bb.arm

bb.arm:                                           ; preds = %bb.arl
  %i.chc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20382)
  %i.chd = load ptr, ptr %i.qe, align 8, !alias.scope !20383, !noundef !34 ; 3 uses
  %i.che = icmp eq ptr %i.chd, null
  br i1 %i.che, label %.body1844, label %bb.arn

bb.arn:                                           ; preds = %bb.arm
  %i.chf = load i64, ptr %i.chd, align 8, !noalias !20384, !noundef !34
  %i.chg = add i64 %i.chf, -1                     ; 2 uses
  store i64 %i.chg, ptr %i.chd, align 8, !noalias !20384
  %i.chh = icmp eq i64 %i.chg, 0
  br i1 %i.chh, label %bb.aro, label %.body1844

bb.aro:                                           ; preds = %bb.arn
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qe)
          to label %.body1844 unwind label %bb.arr

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i1847": ; preds = %bb.arl, %bb.ark
  call void @llvm.experimental.noalias.scope.decl(metadata !20385)
  %i.chi = load ptr, ptr %i.qe, align 8, !alias.scope !20386, !noundef !34 ; 3 uses
  %i.chj = icmp eq ptr %i.chi, null
  br i1 %i.chj, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit1853", label %bb.arp

bb.arp:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i1847"
  %i.chk = load i64, ptr %i.chi, align 8, !noalias !20387, !noundef !34
  %i.chl = add i64 %i.chk, -1                     ; 2 uses
  store i64 %i.chl, ptr %i.chi, align 8, !noalias !20387
  %i.chm = icmp eq i64 %i.chl, 0
  br i1 %i.chm, label %bb.arq, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit1853"

bb.arq:                                           ; preds = %bb.arp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qe)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit1853" unwind label %bb.aqu

bb.arr:                                           ; preds = %bb.aro
  %i.chn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.ars:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit1853"
  %i.cho = ptrtoint ptr %i.qc to i64
  %i.chp = and i64 %i.cho, 3
  %..i.i1855 = call i64 @llvm.umin.i64(i64 %i.chp, i64 2)
  switch i64 %..i.i1855, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit1857" [
    i64 2, label %bb.art
    i64 0, label %bb.aru
  ], !prof !47

bb.art:                                           ; preds = %bb.ars
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59, !noalias !20388
  unreachable

bb.aru:                                           ; preds = %bb.ars
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20388
  store ptr %i.qc, ptr %i.c, align 8, !noalias !20388
  %i.chq = load i64, ptr %i.qc, align 8, !noalias !20389, !noundef !34 ; 3 uses
  %i.chr = and i64 %i.chq, 72057594037927935
  %i.chs = add nsw i64 %i.chr, -1                 ; 3 uses
  %i.cht = and i64 %i.chq, 1080863910568919040
  %i.chu = icmp ult i64 %i.chq, 864691128455135232
  call void @llvm.assume(i1 %i.chu)
  %i.chv = or i64 %i.chs, %i.cht
  store i64 %i.chv, ptr %i.qc, align 8, !noalias !20389
  %i.chw = icmp ugt i64 %i.chs, 72057594037927935
  br i1 %i.chw, label %bb.arw, label %bb.arv, !prof !37

bb.arv:                                           ; preds = %bb.aru
  %i.chx = icmp eq i64 %i.chs, 0
  br i1 %i.chx, label %bb.arx, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i1856"

bb.arw:                                           ; preds = %bb.aru
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20389
  store ptr @1344, ptr %i.b, align 8, !noalias !20389
  %i.chy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.chy, align 8, !noalias !20389
  %i.chz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.chz, align 8, !noalias !20389
  %i.cia = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cia, align 8, !noalias !20389
  %i.cib = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cib, align 8, !noalias !20389
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59, !noalias !20389
  unreachable

bb.arx:                                           ; preds = %bb.arv
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !20388
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i1856"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i1856": ; preds = %bb.arx, %bb.arv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20388
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit1857"

bb.ary:                                           ; preds = %bb.asb, %bb.asa, %bb.arz, %.critedge969.thread
  br i1 %.sroa.0513.02345, label %bb.asf, label %bb.aqt

.critedge969.thread:                              ; preds = %bb.im, %bb.ake, %.thread2939.thread, %bb.bo, %bb.aqg, %bb.aqf, %bb.apw, %bb.apv, %bb.apa, %bb.aol, %bb.aok, %bb.aob, %bb.aoa, %bb.anm, %bb.anl, %bb.anc, %bb.amn, %bb.amm, %bb.amb, %bb.ama, %bb.alv, %bb.ald, %bb.alc, %bb.akr, %bb.akq, %bb.ajq, %bb.ajp, %bb.ajm, %bb.ajl, %bb.ajn, %bb.aji, %bb.ais, %bb.aip, %.thread3222, %bb.ahm, %bb.ahl, %bb.ahn, %.thread3198, %.body1123, %.body1126, %.body1129, %bb.adj, %bb.adi, %bb.acs, %bb.acr, %bb.acb, %bb.aca, %bb.abk, %bb.abj, %bb.aax, %bb.aaw, %bb.aaa, %bb.zz, %bb.zl, %bb.zk, %bb.yy, %bb.yx, %bb.yl, %bb.yk, %bb.xy, %bb.xx, %bb.xl, %bb.xk, %.thread3137, %bb.wo, %bb.wn, %bb.si, %.thread3060, %bb.rw, %bb.rv, %bb.pt, %bb.ps, %.thread3007, %bb.pe, %bb.pd, %.thread3000, %bb.op, %bb.oo, %.thread2993, %bb.oa, %bb.nz, %.thread2986, %bb.nl, %bb.nk, %bb.my, %bb.mx, %bb.jn, %.thread2881, %bb.ix, %bb.iw, %bb.hp, %bb.ho, %bb.fn, %bb.fm, %bb.fb, %bb.fa, %bb.el, %bb.ek, %bb.cb, %bb.ca, %.thread2939, %bb.fw, %.thread3276, %bb.anj, %bb.aly, %bb.aik, %bb.aix, %bb.aif, %bb.xh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706", %bb.tq, %bb.pq, %bb.pb, %bb.om, %bb.nx, %bb.ard, %bb.md, %bb.mo, %bb.ml, %bb.kl, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit", %bb.jc, %bb.hj, %bb.hf, %bb.eu, %.body1485, %.body1497, %bb.bx, %.critedge969.thread2767, %.critedge969.thread2758, %.critedge969.thread2750, %.critedge969.thread2742, %.critedge969.thread2734, %.critedge969.thread2726, %.critedge969.thread2718, %.critedge969.thread2710, %.critedge969.thread2702, %.critedge969.thread2694, %.critedge969.thread2686, %.critedge969.thread2678, %.critedge969.thread2670, %.critedge969.thread2662, %.critedge969.thread2654, %.critedge969.thread2646, %.critedge969.thread2638, %.critedge969.thread2630, %.critedge969.thread2622, %.critedge969.thread2614, %.critedge969.thread2606, %.critedge969.thread2598, %.critedge969.thread2590, %.critedge969.thread2582, %.critedge969.thread2574, %.critedge969.thread2566, %.critedge969.thread2558, %.critedge969.thread2550, %.critedge969.thread2542, %.critedge969.thread2534, %.critedge969.thread2526, %.critedge969.thread2518, %.critedge969.thread2510, %.critedge969.thread2502, %.critedge969.thread2494, %.critedge969.thread2486, %.critedge969.thread2478, %.critedge969.thread2470, %.critedge969.thread2462, %.critedge969.thread2454, %.critedge969.thread2446, %.critedge969.thread2438, %.critedge969.thread2430, %.critedge969.thread2422, %.critedge969.thread2414, %.critedge969.thread2406, %.critedge969.thread2398, %.critedge969.thread2390, %.critedge969.thread2382, %.critedge969.thread2374, %.critedge969.thread2366, %.critedge969.thread2358, %.critedge969.thread2350
  %.sroa.226.02349 = phi i32 [ %i.um, %.critedge969.thread2758 ], [ %i.ql, %.critedge969.thread2767 ], [ %i.cfh, %.critedge969.thread2350 ], [ %i.ceq, %.critedge969.thread2358 ], [ %i.ccb, %.critedge969.thread2366 ], [ %i.cbe, %.critedge969.thread2374 ], [ %i.cak, %.critedge969.thread2382 ], [ %i.bzj, %.critedge969.thread2390 ], [ %i.byx, %.critedge969.thread2398 ], [ %i.byg, %.critedge969.thread2406 ], [ %i.bxj, %.critedge969.thread2414 ], [ %i.bwz, %.critedge969.thread2422 ], [ %i.bvx, %.critedge969.thread2430 ], [ %i.bvb, %.critedge969.thread2438 ], [ %i.btp, %.critedge969.thread2446 ], [ %i.bpr, %.critedge969.thread2454 ], [ %i.bjz, %.critedge969.thread2462 ], [ %i.biv, %.critedge969.thread2470 ], [ %i.bhr, %.critedge969.thread2478 ], [ %i.bgn, %.critedge969.thread2486 ], [ %i.bfx, %.critedge969.thread2494 ], [ %i.beu, %.critedge969.thread2502 ], [ %i.bdt, %.critedge969.thread2510 ], [ %i.bcz, %.critedge969.thread2518 ], [ %i.bcf, %.critedge969.thread2526 ], [ %i.bbn, %.critedge969.thread2534 ], [ %i.baq, %.critedge969.thread2542 ], [ %i.azn, %.critedge969.thread2550 ], [ %i.ayu, %.critedge969.thread2558 ], [ %i.arw, %.critedge969.thread2566 ], [ %i.arm, %.critedge969.thread2574 ], [ %i.aqs, %.critedge969.thread2582 ], [ %i.aqb, %.critedge969.thread2590 ], [ %i.aon, %.critedge969.thread2598 ], [ %i.aod, %.critedge969.thread2606 ], [ %i.ani, %.critedge969.thread2614 ], [ %i.amn, %.critedge969.thread2622 ], [ %i.als, %.critedge969.thread2630 ], [ %i.akx, %.critedge969.thread2638 ], [ %i.akd, %.critedge969.thread2646 ], [ %i.agh, %.critedge969.thread2654 ], [ %i.aez, %.critedge969.thread2662 ], [ %i.aej, %.critedge969.thread2670 ], [ %i.adr, %.critedge969.thread2678 ], [ %i.acu, %.critedge969.thread2686 ], [ %i.ack, %.critedge969.thread2694 ], [ %i.abu, %.critedge969.thread2702 ], [ %i.ze, %.critedge969.thread2710 ], [ %i.yn, %.critedge969.thread2718 ], [ %i.xz, %.critedge969.thread2726 ], [ %i.xm, %.critedge969.thread2734 ], [ %i.ww, %.critedge969.thread2742 ], [ %i.vv, %.critedge969.thread2750 ], [ %.sroa.226.24, %bb.aji ], [ %.sroa.226.6, %bb.jn ], [ %.sroa.226.7, %.thread2939 ], [ %.sroa.226.10, %bb.si ], [ %.sroa.226.3, %bb.fw ], [ %.sroa.226.26, %bb.apa ], [ %.sroa.226.263283, %.thread3276 ], [ %i.cau, %bb.aob ], [ %i.caa, %bb.anm ], [ %i.byn, %bb.amn ], [ %i.bzn, %bb.anc ], [ %i.bzx, %bb.anj ], [ %i.bxw, %bb.amb ], [ %i.bwp, %bb.ald ], [ %i.bxn, %bb.alv ], [ %i.bxt, %bb.aly ], [ %i.bvn, %bb.akr ], [ %i.btf, %bb.ajq ], [ %.sroa.226.25, %bb.ake ], [ %.sroa.226.243246, %bb.ajm ], [ %.sroa.226.21, %bb.ahl ], [ %.sroa.226.21, %bb.ahn ], [ %i.brf, %bb.aik ], [ %i.brq, %bb.aip ], [ %.sroa.226.21, %bb.ahm ], [ %i.brv, %bb.ais ], [ %i.bsd, %bb.aix ], [ %.sroa.226.223225, %.thread3222 ], [ %.sroa.226.22, %bb.aif ], [ %.sroa.226.213201, %.thread3198 ], [ %.sroa.226.20, %.body1123 ], [ %.sroa.226.18, %.body1126 ], [ %.sroa.226.17, %.body1129 ], [ %i.bjm, %bb.adj ], [ %i.bii, %bb.acs ], [ %i.bhe, %bb.acb ], [ %i.bgd, %bb.abk ], [ %i.bfn, %bb.aax ], [ %i.bek, %bb.aaa ], [ %i.bdj, %bb.zl ], [ %i.bcp, %bb.yy ], [ %i.bbv, %bb.yl ], [ %i.bbd, %bb.xy ], [ %i.bag, %bb.xl ], [ %i.ayk, %bb.wo ], [ %i.azt, %.thread3137 ], [ %i.bac, %bb.xh ], [ %i.arc, %bb.rw ], [ %.sroa.226.113100, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706" ], [ %.sroa.226.73323, %.thread2939.thread ], [ %.sroa.226.103064, %.thread3060 ], [ %.sroa.226.103058, %bb.tq ], [ %i.ant, %bb.pt ], [ %i.amy, %bb.pe ], [ %i.anm, %.thread3007 ], [ %i.anq, %bb.pq ], [ %i.amd, %bb.op ], [ %i.amr, %.thread3000 ], [ %i.amv, %bb.pb ], [ %i.ali, %bb.oa ], [ %i.alw, %.thread2993 ], [ %i.ama, %bb.om ], [ %i.akn, %bb.nl ], [ %i.alb, %.thread2986 ], [ %i.alf, %bb.nx ], [ %i.ajt, %bb.my ], [ %i.adv, %bb.iw ], [ %i.cgw, %bb.ard ], [ %i.ais, %bb.md ], [ %i.adv, %bb.ix ], [ %.sroa.226.72930, %bb.mo ], [ %i.ceg, %bb.apw ], [ %i.ajh, %bb.ml ], [ %.sroa.226.62885, %.thread2881 ], [ %.sroa.226.62879, %bb.kl ], [ %i.yu, %bb.fm ], [ %i.abz, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit" ], [ %i.abk, %bb.hp ], [ %.sroa.226.5, %bb.im ], [ %i.aem, %bb.jc ], [ %i.yu, %bb.fn ], [ %.sroa.226.32824, %bb.hj ], [ %i.cbr, %bb.aol ], [ %i.aba, %bb.hf ], [ %i.yd, %bb.fb ], [ %i.xc, %bb.el ], [ %i.xs, %bb.eu ], [ %i.uc, %bb.cb ], [ %.sroa.226.2, %.body1485 ], [ %.sroa.226.1, %.body1497 ], [ %i.ty, %bb.bx ], [ %i.tu, %bb.bo ], [ %i.uc, %bb.ca ], [ %i.xc, %bb.ek ], [ %i.yd, %bb.fa ], [ %i.abk, %bb.ho ], [ %i.ajt, %bb.mx ], [ %i.akn, %bb.nk ], [ %i.ali, %bb.nz ], [ %i.amd, %bb.oo ], [ %i.amy, %bb.pd ], [ %i.ant, %bb.ps ], [ %i.arc, %bb.rv ], [ %i.ayk, %bb.wn ], [ %i.bag, %bb.xk ], [ %i.bbd, %bb.xx ], [ %i.bbv, %bb.yk ], [ %i.bcp, %bb.yx ], [ %i.bdj, %bb.zk ], [ %i.bek, %bb.zz ], [ %i.bfn, %bb.aaw ], [ %i.bgd, %bb.abj ], [ %i.bhe, %bb.aca ], [ %i.bii, %bb.acr ], [ %i.bjm, %bb.adi ], [ %.sroa.226.243246, %bb.ajn ], [ %.sroa.226.243246, %bb.ajl ], [ %i.btf, %bb.ajp ], [ %i.bvn, %bb.akq ], [ %i.bwp, %bb.alc ], [ %i.bxw, %bb.ama ], [ %i.byn, %bb.amm ], [ %i.caa, %bb.anl ], [ %i.cau, %bb.aoa ], [ %i.cbr, %bb.aok ], [ %i.ceg, %bb.apv ], [ %i.cex, %bb.aqf ], [ %i.cex, %bb.aqg ] ; 5 uses
  %.sroa.0782.02347 = phi ptr [ %i.ul, %.critedge969.thread2758 ], [ %i.qk, %.critedge969.thread2767 ], [ %i.cfg, %.critedge969.thread2350 ], [ %i.cep, %.critedge969.thread2358 ], [ %i.cca, %.critedge969.thread2366 ], [ %i.cbd, %.critedge969.thread2374 ], [ %i.caj, %.critedge969.thread2382 ], [ %i.bzi, %.critedge969.thread2390 ], [ %i.byw, %.critedge969.thread2398 ], [ %i.byf, %.critedge969.thread2406 ], [ %i.bxi, %.critedge969.thread2414 ], [ %i.bwy, %.critedge969.thread2422 ], [ %i.bvw, %.critedge969.thread2430 ], [ %i.bva, %.critedge969.thread2438 ], [ %i.bto, %.critedge969.thread2446 ], [ %i.bpq, %.critedge969.thread2454 ], [ %i.bjy, %.critedge969.thread2462 ], [ %i.biu, %.critedge969.thread2470 ], [ %i.bhq, %.critedge969.thread2478 ], [ %i.bgm, %.critedge969.thread2486 ], [ %i.bfw, %.critedge969.thread2494 ], [ %i.bet, %.critedge969.thread2502 ], [ %i.bds, %.critedge969.thread2510 ], [ %i.bcy, %.critedge969.thread2518 ], [ %i.bce, %.critedge969.thread2526 ], [ %i.bbm, %.critedge969.thread2534 ], [ %i.bap, %.critedge969.thread2542 ], [ %i.azm, %.critedge969.thread2550 ], [ %i.ayt, %.critedge969.thread2558 ], [ %i.arv, %.critedge969.thread2566 ], [ %i.arl, %.critedge969.thread2574 ], [ %i.aqr, %.critedge969.thread2582 ], [ %i.aqa, %.critedge969.thread2590 ], [ %i.aom, %.critedge969.thread2598 ], [ %i.aoc, %.critedge969.thread2606 ], [ %i.anh, %.critedge969.thread2614 ], [ %i.amm, %.critedge969.thread2622 ], [ %i.alr, %.critedge969.thread2630 ], [ %i.akw, %.critedge969.thread2638 ], [ %i.akc, %.critedge969.thread2646 ], [ %i.agg, %.critedge969.thread2654 ], [ %i.aey, %.critedge969.thread2662 ], [ %i.aei, %.critedge969.thread2670 ], [ %i.adq, %.critedge969.thread2678 ], [ %i.act, %.critedge969.thread2686 ], [ %i.acj, %.critedge969.thread2694 ], [ %i.abt, %.critedge969.thread2702 ], [ %i.zd, %.critedge969.thread2710 ], [ %i.ym, %.critedge969.thread2718 ], [ %i.xy, %.critedge969.thread2726 ], [ %i.xl, %.critedge969.thread2734 ], [ %i.wv, %.critedge969.thread2742 ], [ %i.vu, %.critedge969.thread2750 ], [ %.sroa.0782.24, %bb.aji ], [ %.sroa.0782.6, %bb.jn ], [ %.sroa.0782.7, %.thread2939 ], [ %.sroa.0782.10, %bb.si ], [ %.sroa.0782.3, %bb.fw ], [ %.sroa.0782.26, %bb.apa ], [ %.sroa.0782.263284, %.thread3276 ], [ %i.cat, %bb.aob ], [ %i.bzz, %bb.anm ], [ %i.bym, %bb.amn ], [ %i.bzm, %bb.anc ], [ %i.bzw, %bb.anj ], [ %i.bxv, %bb.amb ], [ %i.bwo, %bb.ald ], [ %i.bxm, %bb.alv ], [ %i.bxs, %bb.aly ], [ %i.bvm, %bb.akr ], [ %i.bte, %bb.ajq ], [ %.sroa.0782.25, %bb.ake ], [ %.sroa.0782.243247, %bb.ajm ], [ %.sroa.0782.21, %bb.ahl ], [ %.sroa.0782.21, %bb.ahn ], [ %i.bre, %bb.aik ], [ %i.brp, %bb.aip ], [ %.sroa.0782.21, %bb.ahm ], [ %i.bru, %bb.ais ], [ %i.bsc, %bb.aix ], [ %.sroa.0782.223226, %.thread3222 ], [ %.sroa.0782.22, %bb.aif ], [ %.sroa.0782.213202, %.thread3198 ], [ %.sroa.0782.20, %.body1123 ], [ %.sroa.0782.18, %.body1126 ], [ %.sroa.0782.17, %.body1129 ], [ %i.bjl, %bb.adj ], [ %i.bih, %bb.acs ], [ %i.bhd, %bb.acb ], [ %i.bgc, %bb.abk ], [ %i.bfm, %bb.aax ], [ %i.bej, %bb.aaa ], [ %i.bdi, %bb.zl ], [ %i.bco, %bb.yy ], [ %i.bbu, %bb.yl ], [ %i.bbc, %bb.xy ], [ %i.baf, %bb.xl ], [ %i.ayj, %bb.wo ], [ %i.azs, %.thread3137 ], [ %i.bab, %bb.xh ], [ %i.arb, %bb.rw ], [ %.sroa.0782.113102, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706" ], [ %.sroa.0782.73324, %.thread2939.thread ], [ %.sroa.0782.103065, %.thread3060 ], [ %.sroa.0782.103059, %bb.tq ], [ %i.ans, %bb.pt ], [ %i.amx, %bb.pe ], [ %i.anl, %.thread3007 ], [ %i.anp, %bb.pq ], [ %i.amc, %bb.op ], [ %i.amq, %.thread3000 ], [ %i.amu, %bb.pb ], [ %i.alh, %bb.oa ], [ %i.alv, %.thread2993 ], [ %i.alz, %bb.om ], [ %i.akm, %bb.nl ], [ %i.ala, %.thread2986 ], [ %i.ale, %bb.nx ], [ %i.ajs, %bb.my ], [ %i.adu, %bb.iw ], [ %i.cgv, %bb.ard ], [ %i.ait, %bb.md ], [ %i.adu, %bb.ix ], [ %.sroa.0782.72931, %bb.mo ], [ %i.cef, %bb.apw ], [ %i.aji, %bb.ml ], [ %.sroa.0782.62886, %.thread2881 ], [ %.sroa.0782.62880, %bb.kl ], [ %i.yt, %bb.fm ], [ %i.aby, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit" ], [ %i.abj, %bb.hp ], [ %.sroa.0782.5, %bb.im ], [ %i.ael, %bb.jc ], [ %i.yt, %bb.fn ], [ %.sroa.0782.32825, %bb.hj ], [ %i.cbq, %bb.aol ], [ %i.abb, %bb.hf ], [ %i.yc, %bb.fb ], [ %i.xb, %bb.el ], [ %i.xr, %bb.eu ], [ %i.ub, %bb.cb ], [ %.sroa.0782.2, %.body1485 ], [ %.sroa.0782.1, %.body1497 ], [ %i.tx, %bb.bx ], [ %i.tt, %bb.bo ], [ %i.ub, %bb.ca ], [ %i.xb, %bb.ek ], [ %i.yc, %bb.fa ], [ %i.abj, %bb.ho ], [ %i.ajs, %bb.mx ], [ %i.akm, %bb.nk ], [ %i.alh, %bb.nz ], [ %i.amc, %bb.oo ], [ %i.amx, %bb.pd ], [ %i.ans, %bb.ps ], [ %i.arb, %bb.rv ], [ %i.ayj, %bb.wn ], [ %i.baf, %bb.xk ], [ %i.bbc, %bb.xx ], [ %i.bbu, %bb.yk ], [ %i.bco, %bb.yx ], [ %i.bdi, %bb.zk ], [ %i.bej, %bb.zz ], [ %i.bfm, %bb.aaw ], [ %i.bgc, %bb.abj ], [ %i.bhd, %bb.aca ], [ %i.bih, %bb.acr ], [ %i.bjl, %bb.adi ], [ %.sroa.0782.243247, %bb.ajn ], [ %.sroa.0782.243247, %bb.ajl ], [ %i.bte, %bb.ajp ], [ %i.bvm, %bb.akq ], [ %i.bwo, %bb.alc ], [ %i.bxv, %bb.ama ], [ %i.bym, %bb.amm ], [ %i.bzz, %bb.anl ], [ %i.cat, %bb.aoa ], [ %i.cbq, %bb.aok ], [ %i.cef, %bb.apv ], [ %i.cew, %bb.aqf ], [ %i.cew, %bb.aqg ] ; 5 uses
  %.sroa.0513.02345 = phi i1 [ true, %.critedge969.thread2758 ], [ %.sroa.0513.1.ph, %.critedge969.thread2767 ], [ true, %.critedge969.thread2350 ], [ true, %.critedge969.thread2358 ], [ true, %.critedge969.thread2366 ], [ true, %.critedge969.thread2374 ], [ true, %.critedge969.thread2382 ], [ true, %.critedge969.thread2390 ], [ true, %.critedge969.thread2398 ], [ true, %.critedge969.thread2406 ], [ true, %.critedge969.thread2414 ], [ true, %.critedge969.thread2422 ], [ true, %.critedge969.thread2430 ], [ true, %.critedge969.thread2438 ], [ true, %.critedge969.thread2446 ], [ true, %.critedge969.thread2454 ], [ true, %.critedge969.thread2462 ], [ true, %.critedge969.thread2470 ], [ true, %.critedge969.thread2478 ], [ true, %.critedge969.thread2486 ], [ true, %.critedge969.thread2494 ], [ true, %.critedge969.thread2502 ], [ true, %.critedge969.thread2510 ], [ true, %.critedge969.thread2518 ], [ true, %.critedge969.thread2526 ], [ true, %.critedge969.thread2534 ], [ true, %.critedge969.thread2542 ], [ true, %.critedge969.thread2550 ], [ true, %.critedge969.thread2558 ], [ true, %.critedge969.thread2566 ], [ true, %.critedge969.thread2574 ], [ true, %.critedge969.thread2582 ], [ true, %.critedge969.thread2590 ], [ true, %.critedge969.thread2598 ], [ true, %.critedge969.thread2606 ], [ true, %.critedge969.thread2614 ], [ true, %.critedge969.thread2622 ], [ true, %.critedge969.thread2630 ], [ true, %.critedge969.thread2638 ], [ true, %.critedge969.thread2646 ], [ true, %.critedge969.thread2654 ], [ true, %.critedge969.thread2662 ], [ true, %.critedge969.thread2670 ], [ true, %.critedge969.thread2678 ], [ true, %.critedge969.thread2686 ], [ true, %.critedge969.thread2694 ], [ true, %.critedge969.thread2702 ], [ true, %.critedge969.thread2710 ], [ true, %.critedge969.thread2718 ], [ true, %.critedge969.thread2726 ], [ true, %.critedge969.thread2734 ], [ true, %.critedge969.thread2742 ], [ true, %.critedge969.thread2750 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2939 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3276 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3222 ], [ true, %bb.aif ], [ true, %.thread3198 ], [ true, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3137 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706" ], [ true, %.thread2939.thread ], [ true, %.thread3060 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread3007 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread3000 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2993 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2986 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ false, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2881 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ] ; 4 uses
  %.sroa.0516.02343 = phi i8 [ 0, %.critedge969.thread2758 ], [ %.sroa.0516.1.ph, %.critedge969.thread2767 ], [ 0, %.critedge969.thread2350 ], [ 0, %.critedge969.thread2358 ], [ 0, %.critedge969.thread2366 ], [ 0, %.critedge969.thread2374 ], [ 0, %.critedge969.thread2382 ], [ 1, %.critedge969.thread2390 ], [ 0, %.critedge969.thread2398 ], [ 0, %.critedge969.thread2406 ], [ 1, %.critedge969.thread2414 ], [ 0, %.critedge969.thread2422 ], [ 0, %.critedge969.thread2430 ], [ 1, %.critedge969.thread2438 ], [ 0, %.critedge969.thread2446 ], [ 1, %.critedge969.thread2454 ], [ 0, %.critedge969.thread2462 ], [ 0, %.critedge969.thread2470 ], [ 0, %.critedge969.thread2478 ], [ 0, %.critedge969.thread2486 ], [ 0, %.critedge969.thread2494 ], [ 0, %.critedge969.thread2502 ], [ 0, %.critedge969.thread2510 ], [ 0, %.critedge969.thread2518 ], [ 0, %.critedge969.thread2526 ], [ 0, %.critedge969.thread2534 ], [ 0, %.critedge969.thread2542 ], [ 1, %.critedge969.thread2550 ], [ 0, %.critedge969.thread2558 ], [ 1, %.critedge969.thread2566 ], [ 0, %.critedge969.thread2574 ], [ 1, %.critedge969.thread2582 ], [ 1, %.critedge969.thread2590 ], [ 1, %.critedge969.thread2598 ], [ 0, %.critedge969.thread2606 ], [ 0, %.critedge969.thread2614 ], [ 0, %.critedge969.thread2622 ], [ 0, %.critedge969.thread2630 ], [ 0, %.critedge969.thread2638 ], [ 0, %.critedge969.thread2646 ], [ 1, %.critedge969.thread2654 ], [ 1, %.critedge969.thread2662 ], [ 1, %.critedge969.thread2670 ], [ 1, %.critedge969.thread2678 ], [ 1, %.critedge969.thread2686 ], [ 1, %.critedge969.thread2694 ], [ 0, %.critedge969.thread2702 ], [ 0, %.critedge969.thread2710 ], [ 0, %.critedge969.thread2718 ], [ 1, %.critedge969.thread2726 ], [ 0, %.critedge969.thread2734 ], [ 1, %.critedge969.thread2742 ], [ 1, %.critedge969.thread2750 ], [ 1, %bb.aji ], [ 1, %bb.jn ], [ 1, %.thread2939 ], [ 1, %bb.si ], [ 1, %bb.fw ], [ 1, %bb.apa ], [ %.sroa.0516.423282, %.thread3276 ], [ 1, %bb.aob ], [ 1, %bb.anm ], [ 1, %bb.amn ], [ 1, %bb.anc ], [ 1, %bb.anj ], [ 1, %bb.amb ], [ 1, %bb.ald ], [ 1, %bb.alv ], [ 1, %bb.aly ], [ 1, %bb.akr ], [ 1, %bb.ajq ], [ 1, %bb.ake ], [ 1, %bb.ajm ], [ 1, %bb.ahl ], [ 1, %bb.ahn ], [ 1, %bb.aik ], [ 1, %bb.aip ], [ 1, %bb.ahm ], [ 1, %bb.ais ], [ 1, %bb.aix ], [ 1, %.thread3222 ], [ 1, %bb.aif ], [ 1, %.thread3198 ], [ %.sroa.0516.35, %.body1123 ], [ %.sroa.0516.32, %.body1126 ], [ %.sroa.0516.29, %.body1129 ], [ 1, %bb.adj ], [ 1, %bb.acs ], [ 1, %bb.acb ], [ 1, %bb.abk ], [ 1, %bb.aax ], [ 1, %bb.aaa ], [ 1, %bb.zl ], [ 1, %bb.yy ], [ 1, %bb.yl ], [ 1, %bb.xy ], [ 1, %bb.xl ], [ 1, %bb.wo ], [ 1, %.thread3137 ], [ 1, %bb.xh ], [ 1, %bb.rw ], [ %.sroa.0516.263098, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706" ], [ 1, %.thread2939.thread ], [ 1, %.thread3060 ], [ %.sroa.0516.233057, %bb.tq ], [ 1, %bb.pt ], [ 1, %bb.pe ], [ 1, %.thread3007 ], [ 1, %bb.pq ], [ 1, %bb.op ], [ 1, %.thread3000 ], [ 1, %bb.pb ], [ 1, %bb.oa ], [ 1, %.thread2993 ], [ 1, %bb.om ], [ 1, %bb.nl ], [ 1, %.thread2986 ], [ 1, %bb.nx ], [ 1, %bb.my ], [ 1, %bb.iw ], [ 0, %bb.ard ], [ 0, %bb.md ], [ 1, %bb.ix ], [ %.sroa.0516.192928, %bb.mo ], [ 1, %bb.apw ], [ %.sroa.0516.222978, %bb.ml ], [ 1, %.thread2881 ], [ %.sroa.0516.162878, %bb.kl ], [ 1, %bb.fm ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit" ], [ 1, %bb.hp ], [ 1, %bb.im ], [ 1, %bb.jc ], [ 1, %bb.fn ], [ %.sroa.0516.112822, %bb.hj ], [ 1, %bb.aol ], [ %.sroa.0516.14.ph, %bb.hf ], [ 1, %bb.fb ], [ 1, %bb.el ], [ 1, %bb.eu ], [ 1, %bb.cb ], [ %.sroa.0516.6, %.body1485 ], [ %.sroa.0516.3, %.body1497 ], [ 1, %bb.bx ], [ 1, %bb.bo ], [ 1, %bb.ca ], [ 1, %bb.ek ], [ 1, %bb.fa ], [ 1, %bb.ho ], [ 1, %bb.mx ], [ 1, %bb.nk ], [ 1, %bb.nz ], [ 1, %bb.oo ], [ 1, %bb.pd ], [ 1, %bb.ps ], [ 1, %bb.rv ], [ 1, %bb.wn ], [ 1, %bb.xk ], [ 1, %bb.xx ], [ 1, %bb.yk ], [ 1, %bb.yx ], [ 1, %bb.zk ], [ 1, %bb.zz ], [ 1, %bb.aaw ], [ 1, %bb.abj ], [ 1, %bb.aca ], [ 1, %bb.acr ], [ 1, %bb.adi ], [ 1, %bb.ajn ], [ 1, %bb.ajl ], [ 1, %bb.ajp ], [ 1, %bb.akq ], [ 1, %bb.alc ], [ 1, %bb.ama ], [ 1, %bb.amm ], [ 1, %bb.anl ], [ 1, %bb.aoa ], [ 1, %bb.aok ], [ 1, %bb.apv ], [ 1, %bb.aqf ], [ 1, %bb.aqg ] ; 5 uses
  %.sroa.0552.02341 = phi i1 [ true, %.critedge969.thread2758 ], [ %.sroa.0552.1.ph, %.critedge969.thread2767 ], [ true, %.critedge969.thread2350 ], [ true, %.critedge969.thread2358 ], [ true, %.critedge969.thread2366 ], [ true, %.critedge969.thread2374 ], [ true, %.critedge969.thread2382 ], [ true, %.critedge969.thread2390 ], [ true, %.critedge969.thread2398 ], [ true, %.critedge969.thread2406 ], [ true, %.critedge969.thread2414 ], [ true, %.critedge969.thread2422 ], [ true, %.critedge969.thread2430 ], [ true, %.critedge969.thread2438 ], [ true, %.critedge969.thread2446 ], [ true, %.critedge969.thread2454 ], [ true, %.critedge969.thread2462 ], [ true, %.critedge969.thread2470 ], [ true, %.critedge969.thread2478 ], [ true, %.critedge969.thread2486 ], [ true, %.critedge969.thread2494 ], [ true, %.critedge969.thread2502 ], [ true, %.critedge969.thread2510 ], [ true, %.critedge969.thread2518 ], [ true, %.critedge969.thread2526 ], [ true, %.critedge969.thread2534 ], [ true, %.critedge969.thread2542 ], [ true, %.critedge969.thread2550 ], [ true, %.critedge969.thread2558 ], [ true, %.critedge969.thread2566 ], [ true, %.critedge969.thread2574 ], [ true, %.critedge969.thread2582 ], [ true, %.critedge969.thread2590 ], [ true, %.critedge969.thread2598 ], [ true, %.critedge969.thread2606 ], [ true, %.critedge969.thread2614 ], [ true, %.critedge969.thread2622 ], [ true, %.critedge969.thread2630 ], [ true, %.critedge969.thread2638 ], [ true, %.critedge969.thread2646 ], [ true, %.critedge969.thread2654 ], [ true, %.critedge969.thread2662 ], [ true, %.critedge969.thread2670 ], [ true, %.critedge969.thread2678 ], [ true, %.critedge969.thread2686 ], [ true, %.critedge969.thread2694 ], [ true, %.critedge969.thread2702 ], [ true, %.critedge969.thread2710 ], [ true, %.critedge969.thread2718 ], [ true, %.critedge969.thread2726 ], [ true, %.critedge969.thread2734 ], [ true, %.critedge969.thread2742 ], [ true, %.critedge969.thread2750 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2939 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3276 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3222 ], [ true, %bb.aif ], [ true, %.thread3198 ], [ true, %.body1123 ], [ true, %.body1126 ], [ false, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3137 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706" ], [ true, %.thread2939.thread ], [ true, %.thread3060 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread3007 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread3000 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2993 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2986 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2881 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ]
  %.sroa.0553.02340 = phi i1 [ true, %.critedge969.thread2758 ], [ %.sroa.0553.1.ph, %.critedge969.thread2767 ], [ true, %.critedge969.thread2350 ], [ true, %.critedge969.thread2358 ], [ true, %.critedge969.thread2366 ], [ true, %.critedge969.thread2374 ], [ true, %.critedge969.thread2382 ], [ true, %.critedge969.thread2390 ], [ true, %.critedge969.thread2398 ], [ true, %.critedge969.thread2406 ], [ true, %.critedge969.thread2414 ], [ true, %.critedge969.thread2422 ], [ true, %.critedge969.thread2430 ], [ true, %.critedge969.thread2438 ], [ true, %.critedge969.thread2446 ], [ true, %.critedge969.thread2454 ], [ true, %.critedge969.thread2462 ], [ true, %.critedge969.thread2470 ], [ true, %.critedge969.thread2478 ], [ true, %.critedge969.thread2486 ], [ true, %.critedge969.thread2494 ], [ true, %.critedge969.thread2502 ], [ true, %.critedge969.thread2510 ], [ true, %.critedge969.thread2518 ], [ true, %.critedge969.thread2526 ], [ true, %.critedge969.thread2534 ], [ true, %.critedge969.thread2542 ], [ true, %.critedge969.thread2550 ], [ true, %.critedge969.thread2558 ], [ true, %.critedge969.thread2566 ], [ true, %.critedge969.thread2574 ], [ true, %.critedge969.thread2582 ], [ true, %.critedge969.thread2590 ], [ true, %.critedge969.thread2598 ], [ true, %.critedge969.thread2606 ], [ true, %.critedge969.thread2614 ], [ true, %.critedge969.thread2622 ], [ true, %.critedge969.thread2630 ], [ true, %.critedge969.thread2638 ], [ true, %.critedge969.thread2646 ], [ true, %.critedge969.thread2654 ], [ true, %.critedge969.thread2662 ], [ true, %.critedge969.thread2670 ], [ true, %.critedge969.thread2678 ], [ true, %.critedge969.thread2686 ], [ true, %.critedge969.thread2694 ], [ true, %.critedge969.thread2702 ], [ true, %.critedge969.thread2710 ], [ true, %.critedge969.thread2718 ], [ true, %.critedge969.thread2726 ], [ true, %.critedge969.thread2734 ], [ true, %.critedge969.thread2742 ], [ true, %.critedge969.thread2750 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2939 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3276 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3222 ], [ true, %bb.aif ], [ true, %.thread3198 ], [ true, %.body1123 ], [ false, %.body1126 ], [ true, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3137 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706" ], [ true, %.thread2939.thread ], [ true, %.thread3060 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread3007 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread3000 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2993 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2986 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2881 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ]
  %.sroa.0554.02339 = phi i1 [ true, %.critedge969.thread2758 ], [ %.sroa.0554.1.ph, %.critedge969.thread2767 ], [ true, %.critedge969.thread2350 ], [ true, %.critedge969.thread2358 ], [ true, %.critedge969.thread2366 ], [ true, %.critedge969.thread2374 ], [ true, %.critedge969.thread2382 ], [ true, %.critedge969.thread2390 ], [ true, %.critedge969.thread2398 ], [ true, %.critedge969.thread2406 ], [ true, %.critedge969.thread2414 ], [ true, %.critedge969.thread2422 ], [ true, %.critedge969.thread2430 ], [ true, %.critedge969.thread2438 ], [ true, %.critedge969.thread2446 ], [ true, %.critedge969.thread2454 ], [ true, %.critedge969.thread2462 ], [ true, %.critedge969.thread2470 ], [ true, %.critedge969.thread2478 ], [ true, %.critedge969.thread2486 ], [ true, %.critedge969.thread2494 ], [ true, %.critedge969.thread2502 ], [ true, %.critedge969.thread2510 ], [ true, %.critedge969.thread2518 ], [ true, %.critedge969.thread2526 ], [ true, %.critedge969.thread2534 ], [ true, %.critedge969.thread2542 ], [ true, %.critedge969.thread2550 ], [ true, %.critedge969.thread2558 ], [ true, %.critedge969.thread2566 ], [ true, %.critedge969.thread2574 ], [ true, %.critedge969.thread2582 ], [ true, %.critedge969.thread2590 ], [ true, %.critedge969.thread2598 ], [ true, %.critedge969.thread2606 ], [ true, %.critedge969.thread2614 ], [ true, %.critedge969.thread2622 ], [ true, %.critedge969.thread2630 ], [ true, %.critedge969.thread2638 ], [ true, %.critedge969.thread2646 ], [ true, %.critedge969.thread2654 ], [ true, %.critedge969.thread2662 ], [ true, %.critedge969.thread2670 ], [ true, %.critedge969.thread2678 ], [ true, %.critedge969.thread2686 ], [ true, %.critedge969.thread2694 ], [ true, %.critedge969.thread2702 ], [ true, %.critedge969.thread2710 ], [ true, %.critedge969.thread2718 ], [ true, %.critedge969.thread2726 ], [ true, %.critedge969.thread2734 ], [ true, %.critedge969.thread2742 ], [ true, %.critedge969.thread2750 ], [ true, %bb.aji ], [ true, %bb.jn ], [ true, %.thread2939 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apa ], [ true, %.thread3276 ], [ true, %bb.aob ], [ true, %bb.anm ], [ true, %bb.amn ], [ true, %bb.anc ], [ true, %bb.anj ], [ true, %bb.amb ], [ true, %bb.ald ], [ true, %bb.alv ], [ true, %bb.aly ], [ true, %bb.akr ], [ true, %bb.ajq ], [ true, %bb.ake ], [ true, %bb.ajm ], [ true, %bb.ahl ], [ true, %bb.ahn ], [ true, %bb.aik ], [ true, %bb.aip ], [ true, %bb.ahm ], [ true, %bb.ais ], [ true, %bb.aix ], [ true, %.thread3222 ], [ true, %bb.aif ], [ true, %.thread3198 ], [ false, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.adj ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3137 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit1706" ], [ true, %.thread2939.thread ], [ true, %.thread3060 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread3007 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread3000 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2993 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2986 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.ard ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apw ], [ true, %bb.ml ], [ true, %.thread2881 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aol ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajn ], [ true, %bb.ajl ], [ true, %bb.ajp ], [ true, %bb.akq ], [ true, %bb.alc ], [ true, %bb.ama ], [ true, %bb.amm ], [ true, %bb.anl ], [ true, %bb.aoa ], [ true, %bb.aok ], [ true, %bb.apv ], [ true, %bb.aqf ], [ true, %bb.aqg ]
  %i.cic = load i8, ptr %i.pw, align 8, !range !96, !noundef !34
  switch i8 %i.cic, label %bb.ary [
    i8 36, label %bb.arz
    i8 37, label %bb.asa
    i8 38, label %bb.asb
  ]

bb.arz:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0552.02341, label %bb.asc, label %bb.ary

bb.asa:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0553.02340, label %bb.asd, label %bb.ary

bb.asb:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0554.02339, label %bb.ase, label %bb.ary

bb.asc:                                           ; preds = %bb.arz
  %i.cid = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17h181390edb1d475afE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cid)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1859" unwind label %bb.by

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1859": ; preds = %bb.asc
  br i1 %.sroa.0513.02345, label %bb.asf, label %bb.aqt

bb.asd:                                           ; preds = %bb.asa
  %i.cie = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17h181390edb1d475afE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cie)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1861" unwind label %bb.by

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1861": ; preds = %bb.asd
  br i1 %.sroa.0513.02345, label %bb.asf, label %bb.aqt

bb.ase:                                           ; preds = %bb.asb
  %i.cif = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17h181390edb1d475afE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cif)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1863" unwind label %bb.by

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1863": ; preds = %bb.ase
  br i1 %.sroa.0513.02345, label %bb.asf, label %bb.aqt

bb.asf:                                           ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1859", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1861", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h8e78f15dd3b8a824E.exit1863", %bb.ary
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E"(ptr noalias noundef align 8 dereferenceable(16) %i.px) #61
          to label %bb.aqt unwind label %bb.by

bb.asg:                                           ; preds = %.thread3343, %bb.ash, %bb.aqt
  %.sroa.226.273348 = phi i32 [ %i.qn, %.thread3343 ], [ %.sroa.226.27, %bb.ash ], [ %.sroa.226.27, %bb.aqt ]
  %.sroa.0782.273347 = phi ptr [ %i.qm, %.thread3343 ], [ %.sroa.0782.27, %bb.ash ], [ %.sroa.0782.27, %bb.aqt ]
  %i.cig = insertvalue { ptr, i32 } poison, ptr %.sroa.0782.273347, 0
  %i.cih = insertvalue { ptr, i32 } %i.cig, i32 %.sroa.226.273348, 1
  resume { ptr, i32 } %i.cih

bb.ash:                                           ; preds = %bb.aqt
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.py) #61
          to label %bb.asg unwind label %bb.by
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h099ad473345f9a22E"(ptr %.8.val, i64 %.16.val, i32 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.16.val, ptr %i.f, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20398
  store ptr @393, ptr %i.a, align 8, !noalias !20399
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !20399
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !20399
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20399
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20399
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.h, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20401
  %i.i = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !20401 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #61
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h1b33125632e9f835E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20423
  store i64 0, ptr %i.c, align 8, !noalias !20423
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !20423
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !20423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20423
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !20423
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !20423
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !20423
  store ptr %i.c, ptr %i.b, align 8, !noalias !20423
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @744, ptr %i.f, align 8, !noalias !20423
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !20424

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20425)
  call void @llvm.experimental.noalias.scope.decl(metadata !20426)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !42, !alias.scope !20427, !noalias !20423, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !20427, !noalias !20423, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20428
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !20424

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20429)
  %i.j = load i64, ptr %0, align 8, !range !57, !alias.scope !20429, !noundef !34 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !20430)
  call void @llvm.experimental.noalias.scope.decl(metadata !20431)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !20432, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20432
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20423
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20433
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !20433 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !45

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !20434)
  %i.s = load i64, ptr %0, align 8, !range !57, !alias.scope !20434, !noundef !34 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !20435)
  call void @llvm.experimental.noalias.scope.decl(metadata !20436)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !20437, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20437
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h3b5a986e6f1beee9E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20459
  store i64 0, ptr %i.c, align 8, !noalias !20459
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !20459
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !20459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20459
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !20459
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !20459
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !20459
  store ptr %i.c, ptr %i.b, align 8, !noalias !20459
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @744, ptr %i.f, align 8, !noalias !20459
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !20460

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20461)
  call void @llvm.experimental.noalias.scope.decl(metadata !20462)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !42, !alias.scope !20463, !noalias !20459, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !20463, !noalias !20459, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20464
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !20460

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20465)
  %i.j = load i64, ptr %0, align 8, !range !57, !alias.scope !20465, !noundef !34 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !20466)
  call void @llvm.experimental.noalias.scope.decl(metadata !20467)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !20468, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20468
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20459
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20469
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !20469 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !45

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !20470)
  %i.s = load i64, ptr %0, align 8, !range !57, !alias.scope !20470, !noundef !34 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !20471)
  call void @llvm.experimental.noalias.scope.decl(metadata !20472)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !20473, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20473
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h44f3f22e6d478035E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20495
  store i64 0, ptr %i.c, align 8, !noalias !20495
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !20495
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !20495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20495
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !20495
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !20495
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !20495
  store ptr %i.c, ptr %i.b, align 8, !noalias !20495
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @744, ptr %i.f, align 8, !noalias !20495
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !20496

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20497)
  call void @llvm.experimental.noalias.scope.decl(metadata !20498)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !42, !alias.scope !20499, !noalias !20495, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !20499, !noalias !20495, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20500
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !20496

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20501)
  %i.j = load i64, ptr %0, align 8, !range !57, !alias.scope !20501, !noundef !34 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !20502)
  call void @llvm.experimental.noalias.scope.decl(metadata !20503)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !20504, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20504
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20495
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20505
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !20505 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !45

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !20506)
  %i.s = load i64, ptr %0, align 8, !range !57, !alias.scope !20506, !noundef !34 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !20507)
  call void @llvm.experimental.noalias.scope.decl(metadata !20508)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !20509, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !20509
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h49b60718824dee34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20518
  store ptr @399, ptr %i.a, align 8, !noalias !20519
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !20519
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !20519
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20519
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20519
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.k, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20521
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !20521 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #61
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.l

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #59
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h703390aec7ae7690E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [392 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !34, !align !41, !noundef !34
  call void @"_ZN16nickel_lang_core4eval5value63Container$LT$$RF$nickel_lang_core..term..record..RecordData$GT$11field_names17h703dc6207979630eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !34, !align !41, !noundef !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 20, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20530
  %i.i = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #53, !noalias !20530 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.f, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20530
  store ptr @320, ptr %i.a, align 8, !noalias !20530
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !20530
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.l, align 8, !noalias !20530
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !20530
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.n, align 8, !noalias !20530
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.c unwind label %.body.i, !noalias !20530

bb.c:                                             ; preds = %bb.b
  unreachable

.body.i:                                          ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.o, %.body.i ] ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %common.resume, label %bb.e

bb.e:                                             ; preds = %.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.r, align 8, !nonnull !34, !noundef !34
  %i.s = mul nuw i64 %.val, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #53
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.i, align 8, !noalias !20530
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -1, ptr %i.t, align 8, !noalias !20530
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.u, align 8, !noalias !20531
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !34, !align !35, !noundef !34
  %i.x = load i32, ptr %i.w, align 4, !noundef !34
  %i.y = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.i, i32 noundef %i.x)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !34, !align !35, !noundef !34
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ab, ptr %i.ae, align 8
  store i64 36, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !20532
  %i.af = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !20532 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.af, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h954cb38e42081a6bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  %.not = icmp eq ptr %.24.val, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.24.val to i64
  %i.f = and i64 %i.e, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %.24.val, align 8, !noundef !34 ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935          ; 3 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  %i.k = and i64 %i.g, 1080863910568919040
  %i.l = icmp ult i64 %i.g, 864691128455135232
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %i.j, %i.k
  store i64 %i.m, ptr %.24.val, align 8
  %i.n = icmp eq i64 %i.h, 72057594037927935
  br i1 %i.n, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !37

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @400, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #59
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$17h98c19254fcdd7829E"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #61
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.d, %bb.b
  store ptr %.24.val, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.u, align 8
  ret void

end_hunk_4
begin_hunk_5_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h02d817ead29c3261E":bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @744, ptr %i.h, align 8, !noalias !24444
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !24445

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24446)
  call void @llvm.experimental.noalias.scope.decl(metadata !24447)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !42, !alias.scope !24448, !noalias !24444, !noundef !34 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24448, !noalias !24444, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24449
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit", !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !24445

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !24450 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24450 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24444
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !34, !align !52, !noundef !34
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !34 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24451
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #53, !noalias !24451 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24452
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !24453
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !34, !align !35, !noundef !34
  %i.v = load i32, ptr %i.u, align 4, !noundef !34
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !34, !align !41, !noundef !34
  %.val = load ptr, ptr %i.x, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !47

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %.val, align 8, !noundef !34 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935        ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  %i.ae = and i64 %i.aa, 1080863910568919040
  %i.af = icmp ult i64 %i.aa, 864691128455135232
  call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %.val, align 8
  %i.ah = icmp eq i64 %i.ab, 72057594037927935
  br i1 %i.ah, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !37

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24454
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !34, !align !35, !noundef !34
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.m, ptr %i.ar, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.10.0.i.i, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.m, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.v, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.ap, ptr %i.av, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24455
  %i.aw = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24455 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.p:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #61
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.aw, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h0c8d116fe3a02337E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24475
  %i.e = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #53, !noalias !24475 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"
  %.pn = phi { ptr, i32 } [ %i.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit" ], [ %i.g, %bb.c ], [ %i.n, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hb4b7fb18dc8882edE"(ptr noalias noundef align 8 dereferenceable(88) %0) #61
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1819111284, ptr %i.e, align 1, !noalias !24476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN61_$LT$toml..de..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h194125f2afffaa47E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24477
  store ptr @98, ptr %i.a, align 8, !noalias !24478
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24478
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !24478
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !24478
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24478
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24479
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.k, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24480
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24480 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.i, !prof !45

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hb4b7fb18dc8882edE"(ptr noalias noundef align 8 dereferenceable(88) %0)
  ret ptr %i.l

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h2ba5dbee1c38b649E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24505
  store i64 0, ptr %i.d, align 8, !noalias !24505
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24505
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24505
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !24505
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24505
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24505
  store ptr %i.d, ptr %i.c, align 8, !noalias !24505
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @744, ptr %i.h, align 8, !noalias !24505
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !24506

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24507)
  call void @llvm.experimental.noalias.scope.decl(metadata !24508)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !42, !alias.scope !24509, !noalias !24505, !noundef !34 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24509, !noalias !24505, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24510
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit", !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !24506

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !24511 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24511 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24505
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24512
  %i.l = call noundef dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 1) #53, !noalias !24512 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24513
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) @437, i64 48, i1 false), !noalias !24514
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !34, !align !35, !noundef !34
  %i.r = load i32, ptr %i.q, align 4, !noundef !34
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !34, !align !41, !noundef !34
  %.val = load ptr, ptr %i.t, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !47

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !34 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
  call void @llvm.assume(i1 %i.ab)
  %i.ac = or i64 %i.z, %i.aa
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.x, 72057594037927935
  br i1 %i.ad, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !37

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc4 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

.noexc4:                                          ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7": ; preds = %bb.m, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24515
  br label %bb.g

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !34, !align !35, !noundef !34
  %i.al = load i32, ptr %i.ak, align 4, !noundef !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 48, ptr %i.an, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.l, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 48, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.r, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.al, ptr %i.ar, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24516
  %i.as = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24516 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #61
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.as, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h4e3edb855f219242E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !34, !align !41, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !34, !align !41, !noundef !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hea773f93394238e5E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hea773f93394238e5E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24525
  store ptr @440, ptr %i.a, align 8, !noalias !24526
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24526
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !24526
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !24526
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @332, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24526
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !24526
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !34, !align !35, !noundef !34
  %i.n = load i32, ptr %i.m, align 4, !noundef !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24528
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24528 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h65fca28fc774b0c1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dead_on_return dereferenceable(323) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [88 x i8], align 8                ; 4 uses
  %i.t = alloca [20 x i8], align 4                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !34, !noundef !34
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !34 ; 4 uses
  %i.z = and i64 %i.y, 3                          ; 2 uses
  %i.aa = lshr i64 %i.y, 2
  %i.ab = icmp ne i64 %i.z, 0
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.aa, %i.ac
  %i.ae = mul nuw i64 %i.ad, 3                    ; 12 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  %i.ag = icmp eq i64 %i.y, 0                     ; 5 uses
  br i1 %i.ag, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24608
  %i.ah = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24608 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = ptrtoint ptr %i.ah to i64
  br label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i.i"

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @881) #59, !noalias !24609
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi i64 [ %i.aj, %bb.c ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ] ; 2 uses
  %i.ak = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !24610
  invoke void @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_decode17h3330e4502b0126caE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias noundef nonnull align 1 %i.ak, i64 noundef %i.ae, i64 noundef %i.z, i64 noundef %i.ae)
          to label %bb.g unwind label %bb.e, !noalias !24611

bb.e:                                             ; preds = %bb.i, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i.i"
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ag, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24612
  br label %common.resume

bb.g:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i.i"
  %i.am = load i64, ptr %i.l, align 8, !range !63, !noalias !24610, !noundef !34
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.011.0.copyload.i.i = load i8, ptr %i.ao, align 8, !noalias !24610 ; 2 uses
  %i.ap = icmp eq i8 %.sroa.011.0.copyload.i.i, 4
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !37

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !24610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !24610
  store ptr @883, ptr %i.j, align 8, !noalias !24610
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a16057073367944E", ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !24610
  store ptr @667, ptr %i.k, align 8, !noalias !24610
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.aq, align 8, !noalias !24610
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.ar, align 8, !noalias !24610
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.j, ptr %i.as, align 8, !noalias !24610
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 1, ptr %i.at, align 8, !noalias !24610
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @884) #59
          to label %bb.l unwind label %bb.e, !noalias !24611

bb.j:                                             ; preds = %bb.h
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.3.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24610
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.3.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !24610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24610
  %.sroa.030.0.insert.ext.i.i = zext i8 %.sroa.011.0.copyload.i.i to i64
  %.sroa.030.1.insert.ext.i.i = zext i56 %.sroa.3.sroa.0.0.copyload.i.i to i64
  %.sroa.030.1.insert.shift.i.i = shl nuw i64 %.sroa.030.1.insert.ext.i.i, 8
  %.sroa.030.1.insert.insert.i.i = or disjoint i64 %.sroa.030.1.insert.shift.i.i, %.sroa.030.0.insert.ext.i.i
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24613
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  unreachable

end_hunk_5
begin_hunk_6_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h8f34dd66e42a1cddE":bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24667
  store i64 0, ptr %i.d, align 8, !noalias !24667
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24667
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24667
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !24667
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24667
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24667
  store ptr %i.d, ptr %i.c, align 8, !noalias !24667
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @744, ptr %i.h, align 8, !noalias !24667
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !24668

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24669)
  call void @llvm.experimental.noalias.scope.decl(metadata !24670)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !42, !alias.scope !24671, !noalias !24667, !noundef !34 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24671, !noalias !24667, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24672
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit", !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !24668

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !24673 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24673 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24667
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24674
  %i.l = call noundef dereferenceable_or_null(35) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, 9) 1) #53, !noalias !24674 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24675
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.l, ptr noundef nonnull align 1 dereferenceable(35) @443, i64 35, i1 false), !noalias !24676
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !34, !align !35, !noundef !34
  %i.r = load i32, ptr %i.q, align 4, !noundef !34
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !34, !align !41, !noundef !34
  %.val = load ptr, ptr %i.t, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !47

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !34 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
  call void @llvm.assume(i1 %i.ab)
  %i.ac = or i64 %i.z, %i.aa
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.x, 72057594037927935
  br i1 %i.ad, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !37

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc4 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

.noexc4:                                          ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7": ; preds = %bb.m, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 35, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24677
  br label %bb.g

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !34, !align !35, !noundef !34
  %i.al = load i32, ptr %i.ak, align 4, !noundef !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 35, ptr %i.an, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.l, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 35, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.r, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.al, ptr %i.ar, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24678
  %i.as = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24678 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #61
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.as, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h925666efce41c414E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !34, !align !41, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !34, !align !41, !noundef !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hea773f93394238e5E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hea773f93394238e5E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24687
  store ptr @445, ptr %i.a, align 8, !noalias !24688
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24688
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !24688
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !24688
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @332, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24688
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !24688
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !34, !align !35, !noundef !34
  %i.n = load i32, ptr %i.m, align 4, !noundef !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24690
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24690 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h984683bf804bb74fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24715
  store i64 0, ptr %i.d, align 8, !noalias !24715
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24715
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24715
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !24715
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24715
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24715
  store ptr %i.d, ptr %i.c, align 8, !noalias !24715
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @744, ptr %i.h, align 8, !noalias !24715
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !24716

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24717)
  call void @llvm.experimental.noalias.scope.decl(metadata !24718)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !42, !alias.scope !24719, !noalias !24715, !noundef !34 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24719, !noalias !24715, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24720
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit", !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !24716

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !24721 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24721 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24715
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !34, !align !52, !noundef !34
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !34 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24722
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #53, !noalias !24722 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24723
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !24724
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !34, !align !35, !noundef !34
  %i.v = load i32, ptr %i.u, align 4, !noundef !34
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !34, !align !41, !noundef !34
  %.val = load ptr, ptr %i.x, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !47

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc3 unwind label %bb.n
end_hunk_6
begin_hunk_7_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h996f718c05866dfdE":bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24751
  store i64 0, ptr %i.d, align 8, !noalias !24751
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24751
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24751
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !24751
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24751
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24751
  store ptr %i.d, ptr %i.c, align 8, !noalias !24751
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @744, ptr %i.h, align 8, !noalias !24751
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !24752

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24753)
  call void @llvm.experimental.noalias.scope.decl(metadata !24754)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !42, !alias.scope !24755, !noalias !24751, !noundef !34 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24755, !noalias !24751, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24756
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit", !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !24752

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !24757 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24757 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24751
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24758
  %i.l = call noundef dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 1) #53, !noalias !24758 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24759
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hc6b693edf8c18b9eE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) @437, i64 48, i1 false), !noalias !24760
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !34, !align !35, !noundef !34
  %i.r = load i32, ptr %i.q, align 4, !noundef !34
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !34, !align !41, !noundef !34
  %.val = load ptr, ptr %i.t, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !47

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !34 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
  call void @llvm.assume(i1 %i.ab)
  %i.ac = or i64 %i.z, %i.aa
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.x, 72057594037927935
  br i1 %i.ad, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !37

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc4 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

.noexc4:                                          ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7": ; preds = %bb.m, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24761
  br label %bb.g

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !34, !align !35, !noundef !34
  %i.al = load i32, ptr %i.ak, align 4, !noundef !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 48, ptr %i.an, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.l, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 48, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.r, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.al, ptr %i.ar, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24762
  %i.as = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24762 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #61
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.as, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h9f64be6eaf7db2a6E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !34, !align !41, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !34, !align !41, !noundef !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hea773f93394238e5E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hea773f93394238e5E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24771
  store ptr @447, ptr %i.a, align 8, !noalias !24772
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24772
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !24772
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !24772
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @332, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24772
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !24772
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !24773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !34, !align !35, !noundef !34
  %i.n = load i32, ptr %i.m, align 4, !noundef !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24774
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24774 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hbccc8c44c27ffab8E"(i32 %.0.val, ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24798
  %i.f = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #53, !noalias !24798 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"
  %.pn = phi { ptr, i32 } [ %i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit" ], [ %i.h, %bb.c ], [ %i.o, %bb.g ]
  %.val7 = load ptr, ptr %i.e, align 8, !nonnull !34, !noundef !34
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h078aa0d3addf7ad0E"(ptr nonnull %.val7) #61
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1852797802, ptr %i.f, align 1, !noalias !24799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hced9439fef8da4a9E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24800
  store ptr @98, ptr %i.a, align 8, !noalias !24801
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !24801
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !24801
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !24801
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !24801
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24802
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.l, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !24803
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !24803 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.i, !prof !45

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.e, align 8, !nonnull !34, !noundef !34 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24804)
  call void @llvm.experimental.noalias.scope.decl(metadata !24805)
  %i.q = load i64, ptr %.val, align 8, !range !112, !alias.scope !24806, !noundef !34
  switch i64 %i.q, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h078aa0d3addf7ad0E.exit" [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !24806, !noundef !34 ; 2 uses
  %i.s = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h078aa0d3addf7ad0E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !24806, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #53, !noalias !24806
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h078aa0d3addf7ad0E.exit"

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02edb7d549bf98baE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.u)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h078aa0d3addf7ad0E.exit" unwind label %bb.l

common.resume:                                    ; preds = %.body, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #53
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h078aa0d3addf7ad0E.exit": ; preds = %bb.i, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #53
  ret ptr %i.m

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hfb67ae398c80555aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = load i8, ptr %.0.val, align 1, !range !44, !noundef !34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = load i8, ptr %.8.val, align 1, !range !44, !noundef !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.g, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  store i8 %i.f, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24816
  store i64 0, ptr %i.c, align 8, !noalias !24816
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !24816
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !24816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24816
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.j, align 8, !noalias !24816
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !24816
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !24816
  store ptr %i.c, ptr %i.b, align 8, !noalias !24816
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @744, ptr %i.k, align 8, !noalias !24816
  %i.l = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !24817

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !24818)
  call void @llvm.experimental.noalias.scope.decl(metadata !24819)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !42, !alias.scope !24820, !noalias !24816, !noundef !34 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !24820, !noalias !24816, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !24821
  br label %.body

end_hunk_7
begin_hunk_8_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17h41e9a35ca3462adbE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25923
  store ptr @1344, ptr %i.b, align 8, !noalias !25923
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bbj, align 8, !noalias !25923
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bbk, align 8, !noalias !25923
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bbl, align 8, !noalias !25923
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bbm, align 8, !noalias !25923
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc1091 unwind label %bb.rp

.noexc1091:                                       ; preds = %bb.vf
  unreachable

bb.vg:                                            ; preds = %bb.ve
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i1089" unwind label %bb.rp

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i1089": ; preds = %bb.vg, %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25922
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit1093"

bb.vh:                                            ; preds = %.body1070
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cz) #61
          to label %.body1023 unwind label %bb.bv

.body1023.thread:                                 ; preds = %bb.sb, %bb.sc, %bb.sd, %.body1023
  %.pn387635 = phi { ptr, i32 } [ %.pn387, %.body1023 ], [ %i.auj, %bb.sd ], [ %i.auj, %bb.sc ], [ %i.auj, %bb.sb ]
  %.sroa.0253.2634 = phi i8 [ %.sroa.0253.2, %.body1023 ], [ 1, %bb.sd ], [ 1, %bb.sc ], [ 1, %bb.sb ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #61
          to label %.body1016 unwind label %bb.bv

.body1016.thread:                                 ; preds = %bb.rs, %bb.rt, %bb.ru, %.body1016
  %.pn389630 = phi { ptr, i32 } [ %.pn389, %.body1016 ], [ %i.atl, %bb.ru ], [ %i.atl, %bb.rt ], [ %i.atl, %bb.rs ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dd) #61
          to label %bb.ro unwind label %bb.bv

"_ZN4core3ptr395drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_opn..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h176ed41853b1a3eeE.exit": ; preds = %.body687, %.body610, %bb.fn, %bb.ic, %bb.mg, %bb.pf, %bb.ro
  %.pn492 = phi { ptr, i32 } [ %.pn391, %bb.ro ], [ %.pn402, %bb.pf ], [ %.pn490, %.body610 ], [ %.pn456, %bb.fn ], [ %.pn443, %bb.ic ], [ %.pn420, %bb.mg ], [ %.pn473, %.body687 ]
  resume { ptr, i32 } %.pn492
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h885a25dbd6e0a7edE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 5, 11) %2, i64 noundef range(i64 1, 5) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 15 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25944
  store i64 0, ptr %i.c, align 8, !noalias !25944
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25944
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25944
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.f, align 8, !noalias !25944
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !25944
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !25944
  store ptr %i.c, ptr %i.b, align 8, !noalias !25944
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @744, ptr %i.g, align 8, !noalias !25944
  %i.h = invoke noundef zeroext i1 @"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !25945

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25946)
  call void @llvm.experimental.noalias.scope.decl(metadata !25947)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !42, !alias.scope !25948, !noalias !25944, !noundef !34 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %.thread15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !25948, !noalias !25944, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !25949
  br label %.thread15

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !25945

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !25950 ; 3 uses
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25950 ; 3 uses
  %.sroa.6.0.copyload5 = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25944
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !25951
  %i.k = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #53, !noalias !25951 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload1, 0
  br i1 %i.n, label %.thread15, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3, i64 noundef %.sroa.0.0.copyload1, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !25952
  br label %.thread15

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false), !noalias !25953
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = load i32, ptr %.8.val, align 4, !noundef !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload1, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.6.0.copyload5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %2, ptr %i.q, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %2, ptr %.sroa.510.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %4, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %5, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.o, ptr %i.u, align 4
  store i64 23, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !25954
  %i.v = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !25954 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.n, !prof !45

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.v, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.o:                                             ; preds = %.thread15
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.p:                                             ; preds = %bb.l, %.thread15
  %.pn13 = phi { ptr, i32 } [ %.pn14, %.thread15 ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %.pn13

.thread15:                                        ; preds = %bb.h, %bb.i, %bb.b, %bb.c
  %.pn14 = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.m, %bb.h ], [ %i.i, %bb.c ], [ %i.m, %bb.i ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #61
          to label %bb.p unwind label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17ha15de7891480f2caE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25976
  store i64 0, ptr %i.c, align 8, !noalias !25976
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25976
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25976
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !25976
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !25976
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !25976
  store ptr %i.c, ptr %i.b, align 8, !noalias !25976
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @744, ptr %i.f, align 8, !noalias !25976
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !25977

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25978)
  call void @llvm.experimental.noalias.scope.decl(metadata !25979)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !42, !alias.scope !25980, !noalias !25976, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !25980, !noalias !25976, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !25981
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.h, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @745, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @765, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #59
          to label %.noexc.i unwind label %bb.b, !noalias !25977

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.j, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.j ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25982)
  %i.j = load i64, ptr %0, align 8, !range !57, !alias.scope !25982, !noundef !34 ; 3 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !25983)
  call void @llvm.experimental.noalias.scope.decl(metadata !25984)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i3 = load ptr, ptr %i.l, align 8, !alias.scope !25985, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i3, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !25985
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit"

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25976
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.n, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !25986
  %i.o = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !25986 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !45

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.o, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !25987)
  %i.s = load i64, ptr %0, align 8, !range !57, !alias.scope !25987, !noundef !34 ; 3 uses
  %.not.i5 = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i5, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !25988)
  call void @llvm.experimental.noalias.scope.decl(metadata !25989)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i6 = load ptr, ptr %i.u, align 8, !alias.scope !25990, !nonnull !34, !noundef !34
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i6, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !25990
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit8": ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.o

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17hf228c09a6170d82cE.exit": ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17ha7285322fd36e010E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN85_$LT$nickel_lang_core..term..string..SubstringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1ed75060094802ffE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25999
  store ptr @98, ptr %i.a, align 8, !noalias !26000
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !26000
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !26000
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !26000
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !26000
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.j, %bb.e ]
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17h31bf855d06c3e9a2E"(ptr noalias noundef align 8 dereferenceable(120) %0) #61
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.g, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !26001
  %i.h = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !26001 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !45

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #61
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17h31bf855d06c3e9a2E"(ptr noalias noundef align 8 dereferenceable(120) %0)
  ret ptr %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hb6572f01670978efE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1 = load ptr, ptr %i.c, align 8, !noundef !34
  %i.d = tail call fastcc noundef ptr @_ZN16nickel_lang_core5label5Label17get_evaluated_arg17h7ef46a64c806b017E(ptr %.val1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E"(ptr %i.d) #61
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  store i64 19, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !26004
  %i.h = tail call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !26004 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit", !prof !45

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b) #61
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4bf6237251a2a8a3E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.h

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h7d88dd0bd4472adfE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [168 x i8], align 8               ; 5 uses
  %i.g = icmp eq ptr %1, %2
  br i1 %i.g, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5b93ebf69e7a804aE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  br label %bb.c

bb.c:                                             ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hf995b127d023b69eE.exit.i.i.i", %bb.b
  %i.m = phi ptr [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hf995b127d023b69eE.exit.i.i.i" ], [ %0, %bb.b ] ; 3 uses
  %.sroa.07.0.i.i = phi i64 [ %i.ag, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hf995b127d023b69eE.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %.sroa.07.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26015)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26016
  store ptr %i.m, ptr %i.e, align 8, !noalias !26016
  call void @llvm.experimental.noalias.scope.decl(metadata !26017)
  call void @llvm.experimental.noalias.scope.decl(metadata !26018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26019
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !26020, !noalias !26021, !nonnull !34, !noundef !34 ; 5 uses
  %i.p = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.q = and i64 %i.p, 3
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 2)
  switch i64 %..i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i" [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !47

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i.i.i unwind label %.body.thread5.i.i.i, !noalias !26016

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !26019, !noundef !34 ; 3 uses
  %i.s = and i64 %i.r, 72057594037927935          ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  %i.v = and i64 %i.r, 1080863910568919040
  %i.w = icmp ult i64 %i.r, 864691128455135232
  call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %i.u, %i.v
  store i64 %i.x, ptr %.val.i.i.i.i.i, align 8, !noalias !26019
  %i.y = icmp eq i64 %i.s, 72057594037927935
  br i1 %i.y, label %bb.f, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i", !prof !37

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26019
  store ptr @1344, ptr %i.b, align 8, !noalias !26019
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !26019
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aa, align 8, !noalias !26019
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !26019
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !26019
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc2.i.i.i unwind label %.body.thread5.i.i.i, !noalias !26016

.noexc2.i.i.i:                                    ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i": ; preds = %bb.e, %bb.c
  store ptr %.val.i.i.i.i.i, ptr %i.d, align 8, !noalias !26019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26019
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n)
          to label %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hf995b127d023b69eE.exit.i.i.i" unwind label %bb.g, !noalias !26021

bb.g:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #61
          to label %.body.thread.i.i.i unwind label %bb.h, !noalias !26021

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26021
  unreachable

.body.thread5.i.i.i:                              ; preds = %bb.f, %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hf995b127d023b69eE.exit.i.i.i": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !26016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26019
  store ptr %i.m, ptr %i.f, align 8, !noalias !26016
  store ptr %.val.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !26016
  %i.af = call noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract5apply17h979b649f88f8a7a6E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l, ptr noundef nonnull %i.m, i32 noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !26016
  %i.ag = add nuw i64 %.sroa.07.0.i.i, 1          ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.k
  br i1 %i.ah, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5b93ebf69e7a804aE.exit", label %bb.c

.body.thread.i.i.i:                               ; preds = %.body.thread5.i.i.i, %bb.g
  %eh.lpad-body4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread5.i.i.i ], [ %i.ad, %bb.g ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #61
          to label %.body unwind label %bb.i, !noalias !26022

bb.i:                                             ; preds = %.body.thread.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26022
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5b93ebf69e7a804aE.exit": ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hf995b127d023b69eE.exit.i.i.i", %bb.a
  %.sroa.04.0.i.i = phi ptr [ %0, %bb.a ], [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hf995b127d023b69eE.exit.i.i.i" ]
  ret ptr %.sroa.04.0.i.i

.body:                                            ; preds = %.body.thread.i.i.i
  resume { ptr, i32 } %eh.lpad-body4.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term4make12enum_variant17h7569897ffcaa6da8E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @312, i64 noundef 5)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit": ; preds = %bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !26029
  %i.d = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #53, !noalias !26029 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !37

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha0500a057c85eb99E"(ptr nonnull %0) #61
          to label %.body unwind label %bb.e, !noalias !26029

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26029
  store ptr @320, ptr %i.a, align 8, !noalias !26029
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !26029
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !26029
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !26029
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !26029
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.d unwind label %bb.b, !noalias !26029

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26029
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !26029
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.l, align 8, !noalias !26029
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.m, align 8, !noalias !26030
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body3

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #61
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term4make7builder6Record4path17h6bc693657dd839f8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !26057, !noalias !26058 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !26057, !noalias !26058, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !26057, !noalias !26058 ; 4 uses
  %i.d = icmp ult i64 %.sroa.5.0.copyload.i, 461168601842738791
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..make..builder..Record$GT$17hd7c02d6059130f13E"(ptr noalias noundef align 8 dereferenceable(32) %1) #61
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.e = mul nuw i64 %.sroa.0.0.copyload.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !26059
  br label %.body

bb.c:                                             ; preds = %.noexc12.i.i.i.i.i, %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.g, label %.body, label %bb.b

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.noexc13.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc13.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26060
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.h, i64 20, i1 false), !noalias !26060
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !26061
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i, !prof !40

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26061
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !26061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26061
  store ptr %i.b, ptr %i.a, align 8, !noalias !26061
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @736, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @735)
          to label %.noexc.i.i.i.i.i unwind label %bb.c, !noalias !26062

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26061
  br label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = invoke { ptr, i64 } @"_ZN92_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17ha8e0a3be93011bbfE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c)
          to label %.noexc12.i.i.i.i.i unwind label %bb.c, !noalias !26062 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i"
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17h6ccd93571e91409cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %.noexc13.i.i.i.i.i unwind label %bb.c, !noalias !26062

.noexc13.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26060
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !noalias !26062
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.p, %.sroa.5.0.copyload.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.loopexit:                                        ; preds = %.noexc13.i.i.i.i.i, %bb.a
  %i.q = mul nuw i64 %.sroa.0.0.copyload.i, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.q, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx17, align 8
  store i64 18, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 -9223372036854775806, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  ret void

bb.d:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData10map_values17hc91c36656ab42694E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.058 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.i, align 8
  %.sroa.021.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.sroa.4.0.copyload = load ptr, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.021.sroa.5.0.copyload = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_8
begin_hunk_9_@_ZN4core4iter6traits8iterator8Iterator7collect17h81527b8105fcd6b4E:bb.a
  %i.bp = icmp eq ptr %i.bm, %.sroa.5.0.copyload
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.bp
  br i1 %or.cond.i.i.i.i, label %bb.x, label %_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.i.i.i.i.i"

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  %i.bs = icmp eq ptr %i.bl, %.sroa.7.0.copyload
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hc3d1c9177a37007eE.exit.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.i.i.i.i.i"

_ZN4core3ops8function6FnOnce9call_once17hc3d1c9177a37007eE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.v
  %i.bv = phi ptr [ %i.bm, %bb.v ], [ null, %bb.x ]
  %.not.i.i.i.i.i.i6.i.i.i = icmp eq ptr %i.bk, null
  %i.bw = icmp eq ptr %i.bk, %.sroa.9.0.copyload
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i6.i.i.i, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.z

bb.z:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hc3d1c9177a37007eE.exit.i.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.i.i.i.i.i": ; preds = %bb.z, %bb.y, %_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi ptr [ %i.bk, %_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.y ], [ %i.bx, %bb.z ] ; 4 uses
  %i.ca = phi ptr [ %i.bl, %_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bt, %bb.y ], [ %i.bl, %bb.z ] ; 6 uses
  %i.cb = phi ptr [ %i.bq, %_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i ], [ null, %bb.y ], [ %i.bv, %bb.z ] ; 4 uses
  %i.cc = phi i64 [ 1, %_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.y ], [ 0, %bb.z ] ; 2 uses
  %.sroa.0.0.i1.i.ph.i.i.i.i.i.i = phi ptr [ %i.br, %_ZN4core4iter8adapters5chain17and_then_or_clear17hd8b85cdcabf4d133E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bu, %bb.y ], [ %i.by, %bb.z ] ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i32, ptr %.sroa.0.0.i1.i.ph.i.i.i.i.i.i, align 4, !noalias !45063 ; 2 uses
  %.sroa.7.0..sroa.0.0.i1.i.ph.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.ph.i.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa.0.0.i1.i.ph.i.sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !45064
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload1.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.i.i.i.i.i"
  %i.cd = icmp samesign ult i64 %i.bj, 461168601842738791
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i64, ptr %i.a, align 8, !range !42, !alias.scope !45065, !noalias !45066, !noundef !34
  %i.cf = icmp eq i64 %i.bj, %i.ce
  br i1 %i.cf, label %bb.ab, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hba09d507a3b3bc7cE.exit.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.cg = trunc nuw i64 %i.cc to i1
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null  ; 2 uses
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.not.i12.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null ; 2 uses
  %.not7.i13.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null ; 4 uses
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.ak, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not7.i.i.i.i.i.i.i, label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ch = ptrtoint ptr %i.bz to i64
  %i.ci = sub nuw i64 %i.bf, %i.ch
  %i.cj = udiv exact i64 %i.ci, 72
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ac
  br i1 %.not.i12.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = ptrtoint ptr %i.cb to i64
  %i.cl = sub nuw i64 %i.bg, %i.ck
  %i.cm = udiv exact i64 %i.cl, 72                ; 2 uses
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h542fdf92d624b4a6E.exit.i.i.i.i.i.i.i", label %bb.aj

bb.ah:                                            ; preds = %bb.af
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h542fdf92d624b4a6E.exit.i.i.i.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = ptrtoint ptr %i.ca to i64
  %i.co = sub nuw i64 %i.bh, %i.cn
  %i.cp = udiv exact i64 %i.co, 112
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h542fdf92d624b4a6E.exit.i.i.i.i.i.i.i"

bb.aj:                                            ; preds = %bb.ag
  %i.cq = ptrtoint ptr %i.ca to i64
  %i.cr = sub nuw i64 %i.bh, %i.cq
  %i.cs = udiv exact i64 %i.cr, 112
  %i.ct = add nuw nsw i64 %i.cm, %i.cs
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h542fdf92d624b4a6E.exit.i.i.i.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h542fdf92d624b4a6E.exit.i.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sink24.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.aj ], [ %i.cp, %bb.ai ], [ %i.cm, %bb.ag ], [ 0, %bb.ah ]
  %i.cu = ptrtoint ptr %i.bz to i64
  %i.cv = sub nuw i64 %i.bf, %i.cu
  %i.cw = udiv exact i64 %i.cv, 72
  %i.cx = add nuw nsw i64 %.sink24.i.i.i.i.i.i.i.i, %i.cw
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.ac
  br i1 %.not.i12.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = ptrtoint ptr %i.cb to i64
  %i.cz = sub nuw i64 %i.bg, %i.cy
  %i.da = udiv exact i64 %i.cz, 72                ; 2 uses
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i", label %bb.ao

bb.am:                                            ; preds = %bb.ak
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = ptrtoint ptr %i.ca to i64
  %i.dc = sub nuw i64 %i.bh, %i.db
  %i.dd = udiv exact i64 %i.dc, 112
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.al
  %i.de = ptrtoint ptr %i.ca to i64
  %i.df = sub nuw i64 %i.bh, %i.de
  %i.dg = udiv exact i64 %i.df, 112
  %i.dh = add nuw nsw i64 %i.da, %i.dg
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i": ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h542fdf92d624b4a6E.exit.i.i.i.i.i.i.i", %bb.ae, %bb.ad
  %.sink30.i.i.i.i.i.i.i = phi i64 [ %i.cx, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h542fdf92d624b4a6E.exit.i.i.i.i.i.i.i" ], [ %i.cj, %bb.ae ], [ 0, %bb.am ], [ %i.dh, %bb.ao ], [ %i.dd, %bb.an ], [ %i.da, %bb.al ], [ 0, %bb.ad ]
  %i.di = add nuw nsw i64 %.sink30.i.i.i.i.i.i.i, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bj, i64 noundef range(i64 1, 0) %i.di, i64 noundef 4, i64 noundef 20)
          to label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hba09d507a3b3bc7cE.exit.i.i_crit_edge.i.i.i" unwind label %bb.ap, !noalias !45058

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hba09d507a3b3bc7cE.exit.i.i_crit_edge.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i"
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !45065, !noalias !45066
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hba09d507a3b3bc7cE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hba09d507a3b3bc7cE.exit.i.i.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hba09d507a3b3bc7cE.exit.i.i_crit_edge.i.i.i", %bb.aa
  %i.dj = phi ptr [ %.pre.i.i.i, %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hba09d507a3b3bc7cE.exit.i.i_crit_edge.i.i.i" ], [ %i.bi, %bb.aa ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %i.bj ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.i.i.i.i.i, i64 16, i1 false), !noalias !45064
  store i32 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.dk, align 4, !noalias !45064
  %i.dl = add nuw nsw i64 %i.bj, 1                ; 2 uses
  store i64 %i.dl, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !45065, !noalias !45066
  br label %bb.v

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.thread.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.i.i.i", %_ZN4core3ops8function6FnOnce9call_once17hc3d1c9177a37007eE.exit.i.i.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !45067, !noalias !45068
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.dm, align 8, !alias.scope !45067, !noalias !45068
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dn, align 8, !alias.scope !45067, !noalias !45068
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h29da8b1f71a7485cE.exit"

bb.ap:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hff3cfba3aad894ffE.exit.i.i.i.i.i"
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !45058 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dp, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit.i.i.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val5.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !45058, !nonnull !34, !noundef !34
  %i.dq = mul nuw i64 %.val.i.i.i, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !45058
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit.i.i.i"

bb.ar:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.i.i.i.i.i", %_ZN4core3ops8function6FnOnce9call_once17hc3d1c9177a37007eE.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !45068
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h29da8b1f71a7485cE.exit"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h8d4e09adf4e0a749E.exit.i.i.i": ; preds = %bb.aq, %bb.ap
  resume { ptr, i32 } %i.do

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h29da8b1f71a7485cE.exit": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7fd14e6c9e2f4549E.exit.thread.i.i.i", %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45058
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h8c7e1926e6076040E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45104
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45105)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !45104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45107)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !45108, !noalias !45109
  store i64 0, ptr %i.b, align 8, !alias.scope !45110, !noalias !45111
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0354f39ec5798854E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45106 ; 2 uses

.body.i.i.i.i:                                    ; preds = %bb.e, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.m, %bb.e ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69c09b52af01ec46E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #61
          to label %.body.i.i.i unwind label %bb.u, !noalias !45112

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.h
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !45113, !noalias !45114
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !45113, !noalias !45114
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45106
  store i64 1, ptr %i.a, align 8, !noalias !45106
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !45106
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !45106
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !45106
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !45115
  %i.k = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !45115 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i", !prof !45

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !45106

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17ha7dbee90479a9e8dE"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !45106

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !45106
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !45106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45106
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !45105, !noalias !45112
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = phi i64 [ 1, %.preheader ], [ %.be, %.backedge ]
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0354f39ec5798854E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !45112 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !45116, !noalias !45117
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !45116, !noalias !45117
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !45106
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !45105, !noalias !45112, !noundef !34
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !37

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69c09b52af01ec46E"(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5d35c49a7b5e6caaE.exit" unwind label %bb.v, !noalias !45104

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1b8c36156cd97d71E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.i.i.i.i, !noalias !45112 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #59
          to label %bb.m unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45112

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !55, !noalias !45112, !noundef !34
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !45105, !noalias !45112, !noundef !34
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h7a182e1577200ff9E"(ptr noalias noundef align 8 dereferenceable(56) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.i.i.i.i, !noalias !45112

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !45112, !noundef !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !45112, !noundef !34
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h9f333dcd926cdaf7E"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(56) %i.b, i64 noundef %i.ae)
          to label %bb.q unwind label %.loopexit.i.i.i.i, !noalias !45112

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.z, align 8, !noalias !45112, !noundef !34
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !45112, !noundef !34
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.q ], [ %i.y, %bb.o ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !45105, !noalias !45112, !noundef !34
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !45105, !noalias !45112
  %i.al = load i64, ptr %i.b, align 8, !range !55, !alias.scope !45118, !noalias !45119, !noundef !34
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17thread-pre-split.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0354f39ec5798854E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc16.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !45112 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %bb.s
  store i64 1, ptr %i.b, align 8, !alias.scope !45118, !noalias !45119
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !45118, !noalias !45119
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17thread-pre-split.i.i.i.i": ; preds = %bb.r
  %.pr18.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !45106
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17thread-pre-split.i.i.i.i", %.noexc16.i.i.i.i
  %i.ao = phi ptr [ %.pr18.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc16.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17he6eaf355c781ad83E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !45112

._crit_edge.i.i.i.i:                              ; preds = %bb.t
  %.pre.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !55, !alias.scope !45116, !noalias !45117
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h7347d88739bb4269E.exit17.i.i.i.i" ]
  br label %bb.g

bb.u:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !45112
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45120)
  call void @llvm.experimental.noalias.scope.decl(metadata !45121)
  %i.ar = load ptr, ptr %i.c, align 16, !alias.scope !45122, !noalias !45104, !noundef !34 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.body.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !45123, !noundef !34
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !45123
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.x, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i" unwind label %bb.y, !noalias !45104

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !45104
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h15d226f24474507eE.exit.i.i.i": ; preds = %bb.x, %bb.w, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5d35c49a7b5e6caaE.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45106
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !45124
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !45124
  %i.ax = load <2 x i64>, ptr %i.c, align 16, !noalias !45124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45104
  store <2 x i64> %i.ax, ptr %0, align 8, !alias.scope !45103, !noalias !45125
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !45103, !noalias !45125
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ay, align 8, !alias.scope !45103, !noalias !45125
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.az, align 8, !alias.scope !45103, !noalias !45125
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h8f2a88358259fdc8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 14 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45161
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45162)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !45161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45163
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45164)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(88) %1, i64 88, i1 false), !alias.scope !45165, !noalias !45166
  store i64 0, ptr %i.b, align 8, !alias.scope !45167, !noalias !45168
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h213b40091ca3e45dE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45163 ; 2 uses

.body.i.i.i.i:                                    ; preds = %bb.e, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.m, %bb.e ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr600drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hce41c3a29070b514E"(ptr noalias noundef align 8 dereferenceable(104) %i.b) #61
          to label %.body.i.i.i unwind label %bb.u, !noalias !45169

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.h
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !45170, !noalias !45171
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !45170, !noalias !45171
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45163
  store i64 1, ptr %i.a, align 8, !noalias !45163
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !45163
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !45163
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !45163
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !45172
  %i.k = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !45172 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i", !prof !45

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !45163

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17ha7dbee90479a9e8dE"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !45163

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !45163
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !45163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45163
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !45162, !noalias !45169
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = load i64, ptr %i.b, align 8, !range !55, !alias.scope !45173, !noalias !45174, !noundef !34
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h213b40091ca3e45dE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !45169 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !45173, !noalias !45174
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !45173, !noalias !45174
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !45163
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !45162, !noalias !45169, !noundef !34
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !37

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hfd447fea33dc9fd1E.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr600drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hce41c3a29070b514E"(ptr noalias noundef align 8 dereferenceable(104) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb80f08a889b1b18aE.exit" unwind label %bb.v, !noalias !45161

bb.k:                                             ; preds = %bb.i
end_hunk_9
begin_hunk_10_@"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h5c887a3407ee8fa5E":bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !range !42, !alias.scope !132, !noundef !34 ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !34, !noundef !34
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !49972
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit": ; preds = %bb.b, %bb.a
  %i.e = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %"_ZN4core3ptr99drop_in_place$LT$alloc..sync..Weak$LT$std..ffi..os_str..OsString$C$$RF$alloc..alloc..Global$GT$$GT$17h5fd83c49d901f945E.exit4", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr99drop_in_place$LT$alloc..sync..Weak$LT$std..ffi..os_str..OsString$C$$RF$alloc..alloc..Global$GT$$GT$17h5fd83c49d901f945E.exit4"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr99drop_in_place$LT$alloc..sync..Weak$LT$std..ffi..os_str..OsString$C$$RF$alloc..alloc..Global$GT$$GT$17h5fd83c49d901f945E.exit4"

"_ZN4core3ptr99drop_in_place$LT$alloc..sync..Weak$LT$std..ffi..os_str..OsString$C$$RF$alloc..alloc..Global$GT$$GT$17h5fd83c49d901f945E.exit4": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17ha5fd00ddbc8f0e95E.exit", %bb.c, %bb.d
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h88d1b2980a6a1726E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !range !42, !alias.scope !132, !noundef !34 ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hece322bc74bf1dd2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !34, !noundef !34
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !49975
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hece322bc74bf1dd2E.exit"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hece322bc74bf1dd2E.exit": ; preds = %bb.b, %bb.a
  %i.e = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17ha1d2ac08ebba10b0E.exit4", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hece322bc74bf1dd2E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17ha1d2ac08ebba10b0E.exit4"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17ha1d2ac08ebba10b0E.exit4"

"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17ha1d2ac08ebba10b0E.exit4": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hece322bc74bf1dd2E.exit", %bb.c, %bb.d
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17ha98abac0ccbd57efE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_parser..ast..InputFormat$C$$RF$alloc..alloc..Global$GT$$GT$17hc99e35702e6fc5bbE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_parser..ast..InputFormat$C$$RF$alloc..alloc..Global$GT$$GT$17hc99e35702e6fc5bbE.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_parser..ast..InputFormat$C$$RF$alloc..alloc..Global$GT$$GT$17hc99e35702e6fc5bbE.exit"

"_ZN4core3ptr109drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_parser..ast..InputFormat$C$$RF$alloc..alloc..Global$GT$$GT$17hc99e35702e6fc5bbE.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17habe83280bb56c38aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr117drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..error..report..ErrorFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h7c0a0d10ee885389E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr117drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..error..report..ErrorFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h7c0a0d10ee885389E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..error..report..ErrorFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h7c0a0d10ee885389E.exit"

"_ZN4core3ptr117drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..error..report..ErrorFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h7c0a0d10ee885389E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hd5e621fe0854e638E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17hb5735a617027c690E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17hb5735a617027c690E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17hb5735a617027c690E.exit"

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Weak$LT$bool$C$$RF$alloc..alloc..Global$GT$$GT$17hb5735a617027c690E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he5e17554dfdf4ae5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr114drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..serialize..ExportFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h0786ff3de62dfbf1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr114drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..serialize..ExportFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h0786ff3de62dfbf1E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr114drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..serialize..ExportFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h0786ff3de62dfbf1E.exit"

"_ZN4core3ptr114drop_in_place$LT$alloc..sync..Weak$LT$nickel_lang_core..serialize..ExportFormat$C$$RF$alloc..alloc..Global$GT$$GT$17h0786ff3de62dfbf1E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he8980c05d2d4bc90E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %"_ZN4core3ptr113drop_in_place$LT$alloc..sync..Weak$LT$clap_complete..aot..shells..shell..Shell$C$$RF$alloc..alloc..Global$GT$$GT$17h5980445a83385449E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr113drop_in_place$LT$alloc..sync..Weak$LT$clap_complete..aot..shells..shell..Shell$C$$RF$alloc..alloc..Global$GT$$GT$17h5980445a83385449E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %"_ZN4core3ptr113drop_in_place$LT$alloc..sync..Weak$LT$clap_complete..aot..shells..shell..Shell$C$$RF$alloc..alloc..Global$GT$$GT$17h5980445a83385449E.exit"

"_ZN4core3ptr113drop_in_place$LT$alloc..sync..Weak$LT$clap_complete..aot..shells..shell..Shell$C$$RF$alloc..alloc..Global$GT$$GT$17h5980445a83385449E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef range(i64 0, 1401) %0, i64 noundef range(i64 1, 129) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  br label %bb.c

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit: ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) %1) #53 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %1, i64 noundef %0) #59
  unreachable

bb.c:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  %.sroa.07.0.i4 = phi ptr [ %i.b, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread ], [ %i.c, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit ]
  ret ptr %.sroa.07.0.i4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3829ae82dccf60b3E"() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #53 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hffa777ea13335eb1E"() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #53 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17hb97ce521da996595E"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !49979
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %_ZN5alloc5slice11stable_sort17h114a154f7a422615E.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 21
  br i1 %i.d, label %bb.d, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h451b088ddf773d1eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5alloc5slice11stable_sort17h114a154f7a422615E.exit

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h8d360d7a1b4b561dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17h114a154f7a422615E.exit

_ZN5alloc5slice11stable_sort17h114a154f7a422615E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17hc93339b46dcf7ba3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !57, !noundef !34 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !34 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #53
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !34, !noundef !34
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #53
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #53
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h4ffb4b42c4975b9fE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !42, !noundef !34 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49984)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 160
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 28823037615171174
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49984
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.g, align 8, !alias.scope !49984, !nonnull !34, !noundef !34
  %i.i = mul nuw nsw i64 %i.c, 160
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !49985, !noalias !49984
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !49985, !noalias !49984
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !49985, !noalias !49984
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hc93339b46dcf7ba3E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !49984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49984
  %i.k = load i64, ptr %i.b, align 8, !range !55, !noalias !49984, !noundef !34
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !57, !noalias !49984, !noundef !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !49984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49984
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #59
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !49984, !nonnull !34, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49984
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !49984
  store i64 %i.e, ptr %0, align 8, !alias.scope !49984
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h67fd5cd1b4d9dae1E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !42, !noundef !34 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49990)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = shl i64 %i.e, 6                          ; 2 uses
  %i.g = icmp samesign ugt i64 %i.c, 144115188075855871
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h, !prof !49
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49990
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.i, align 8, !alias.scope !49990, !nonnull !34, !noundef !34
  %i.k = shl nuw nsw i64 %i.c, 6
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !49991, !noalias !49990
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !49991, !noalias !49990
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17hedf2a25ccd017d7cE.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
end_hunk_10
begin_hunk_11_@"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha41514ac4f48693dE":bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i", %bb.k
  %.sroa.013.033.i = phi ptr [ %i.s, %bb.k ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ] ; 4 uses
  %.sroa.7.032.i = phi i64 [ %i.t, %bb.k ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.p, %bb.k ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ]
  %i.p = add nsw i64 %.sroa.10.031.i, -1          ; 2 uses
  %i.q = icmp eq ptr %.sroa.013.033.i, %i.o
  br i1 %i.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1003fad5e0054cf2E.exit", label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 160
  %i.t = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50517
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 152
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !50518, !noalias !50519, !nonnull !34, !noundef !34 ; 5 uses
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = and i64 %i.v, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i unwind label %bb.d, !noalias !50520

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %.val.i.i, align 8, !noalias !50521, !noundef !34 ; 3 uses
  %i.y = and i64 %i.x, 72057594037927935          ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  %i.ab = and i64 %i.x, 1080863910568919040
  %i.ac = icmp ult i64 %i.x, 864691128455135232
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = or i64 %i.aa, %i.ab
  store i64 %i.ad, ptr %.val.i.i, align 8, !noalias !50521
  %i.ae = icmp eq i64 %i.y, 72057594037927935
  br i1 %i.ae, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !37

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50517
  store ptr @1344, ptr %i.b, align 8, !noalias !50517
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.af, align 8, !noalias !50517
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ag, align 8, !noalias !50517
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !noalias !50517
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ai, align 8, !noalias !50517
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc12.i unwind label %bb.d, !noalias !50520

.noexc12.i:                                       ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.g, %bb.e
  store ptr %.val.i.i, ptr %i.d, align 8, !noalias !50517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50517
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.013.033.i)
          to label %bb.k unwind label %bb.i, !noalias !50519

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #61
          to label %bb.m unwind label %bb.j, !noalias !50519

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !50519
  unreachable

bb.k:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !50514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50517
  %i.al = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.7.032.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.al, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, i64 152, i1 false), !noalias !50520
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store ptr %.val.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !50520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.i)
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1003fad5e0054cf2E.exit", label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !50520
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.aj, %bb.i ]
  store i64 %.sroa.7.032.i, ptr %i.n, align 8, !alias.scope !50522, !noalias !50514
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #61
          to label %bb.n unwind label %bb.l, !noalias !50520

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1003fad5e0054cf2E.exit": ; preds = %.lr.ph.i, %bb.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i"
  %i.ao = phi ptr [ %i.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i" ], [ %i.n, %bb.k ], [ %i.n, %.lr.ph.i ]
  store i64 %.16.val, ptr %i.ao, align 8, !noalias !50514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !50513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !50514
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_json..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17hb79b7bd8e67c587eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !34 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50543)
  %i.d = icmp slt i64 %.val1, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50544
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1, i64 noundef range(i64 1, 9) 1) #53, !noalias !50544 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !50545)
  call void @llvm.experimental.noalias.scope.decl(metadata !50546)
  %.val.i.i = load i64, ptr %0, align 8, !range !42, !alias.scope !50547, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50547
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val1, i1 false), !noalias !50548
  store i64 %.val1, ptr %i.a, align 8, !alias.scope !50549
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !50549
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !50549
  %i.j = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17hb8996a9e87ccd651E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !50550)
  call void @llvm.experimental.noalias.scope.decl(metadata !50551)
  %.val.i.i2 = load i64, ptr %0, align 8, !range !42, !alias.scope !50552, !noundef !34 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i2, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit4", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50552
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit4"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit4": ; preds = %bb.g, %bb.h
  ret ptr %i.j

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !34 ; 7 uses
  %i.d = icmp slt i64 %.val3, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %.val3, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50574
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val3, i64 noundef range(i64 1, 9) 1) #53, !noalias !50574 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.n, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !50575)
  call void @llvm.experimental.noalias.scope.decl(metadata !50576)
  %.val.i.i = load i64, ptr %0, align 8, !range !42, !alias.scope !50577, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.e

bb.e:                                             ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50577
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val3, i1 false), !noalias !50578
  store i64 %.val3, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -9223372036854775808, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 8, ptr %i.k, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50579
  %i.l = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !50579 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.j, !prof !45

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #59
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_yaml..error..ErrorImpl$GT$17heb260429b00b558fE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #61
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50581)
  %.val.i.i5 = load i64, ptr %0, align 8, !range !42, !alias.scope !50582, !noundef !34 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i5, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50582
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7": ; preds = %bb.j, %bb.k
  ret ptr %i.l

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50629)
  %i.a = load i64, ptr %0, align 8, !range !46, !alias.scope !50628, !noalias !50629, !noundef !34 ; 5 uses
  %i.b = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 9          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !46, !alias.scope !50629, !noalias !50628, !noundef !34 ; 4 uses
  %i.g = icmp ne i64 %i.f, 12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 9
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h877fed193edb526bE.exit.thread" [
    i64 6, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h877fed193edb526bE.exit"
    i64 7, label %bb.c
    i64 8, label %.split18
    i64 9, label %bb.d
    i64 10, label %bb.f
    i64 11, label %bb.m
    i64 12, label %bb.q
    i64 13, label %.split11
    i64 14, label %.split19
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50631)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !50630, !noalias !50631, !nonnull !34, !align !41, !noundef !34
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !50631, !noalias !50630, !nonnull !34, !align !41, !noundef !34
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.o), !noalias !50632, !inline_history !50589
  br i1 %i.p, label %.split20, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split20:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50634)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !50633, !noalias !50634, !nonnull !34, !align !41, !noundef !34
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !50634, !noalias !50633, !nonnull !34, !align !41, !noundef !34
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t), !noalias !50635, !inline_history !50589
  br i1 %i.u, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h877fed193edb526bE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split18:                                         ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !50628, !noalias !50629, !noundef !34
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !50629, !noalias !50628, !noundef !34
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h877fed193edb526bE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !50628, !noalias !50629, !noundef !34
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !50629, !noalias !50628, !noundef !34
  %i.ag = icmp eq i32 %i.ad, %i.af
  %i.ah = icmp eq i64 %i.a, %i.f
  %or.cond = and i1 %i.ah, %i.ag
  br i1 %or.cond, label %bb.e, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp eq i64 %i.a, 0
  br i1 %i.ai, label %.split17, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit"

"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit": ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = tail call fastcc noundef zeroext i1 @"_ZN90_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hb11fd84f38b2e6c3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
  br i1 %i.al, label %.split17, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split17:                                         ; preds = %bb.e, %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50637)
  %i.am = load ptr, ptr %i.aa, align 8, !alias.scope !50636, !noalias !50637, !nonnull !34, !align !41, !noundef !34
  %i.an = load ptr, ptr %i.ab, align 8, !alias.scope !50637, !noalias !50636, !nonnull !34, !align !41, !noundef !34
  %i.ao = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.an), !noalias !50638, !inline_history !50589
  br i1 %i.ao, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h877fed193edb526bE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.f:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50642)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_11
