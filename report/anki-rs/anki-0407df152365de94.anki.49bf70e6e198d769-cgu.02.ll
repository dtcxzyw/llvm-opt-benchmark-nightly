Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.02?download=true
inline.NumInlined: 5944
inline.NumDeleted: 3301
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 23
begin_hunk_0_@"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$14swap_unchecked17h9b7673f6f23442edE":bb.a
  %i.a = alloca [384 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw [384 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [384 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.a, ptr noundef nonnull align 8 dereferenceable(384) %i.b, i64 384, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef nonnull align 8 dereferenceable(384) %i.c, i64 384, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.c, ptr noundef nonnull align 8 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h5a43964b9fe50884E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6226)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !6225, !noalias !6226, !noundef !14
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !21, !alias.scope !6226, !noalias !6225, !noundef !14
  %i.d = icmp eq i64 %i.c, -9223372036854775808   ; 3 uses
  %not..i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN76_$LT$anki..import_export..text..NameOrId$u20$as$u20$core..cmp..PartialEq$GT$2eq17h624a99097a6de59fE.exit"

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.f, align 8, !alias.scope !6225, !noalias !6226, !noundef !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %i.g, align 8, !alias.scope !6226, !noalias !6225, !noundef !14
  %.not.i.i.i = icmp eq i64 %.val2.i, %.val4.i
  br i1 %.not.i.i.i, label %bb.d, label %"_ZN76_$LT$anki..import_export..text..NameOrId$u20$as$u20$core..cmp..PartialEq$GT$2eq17h624a99097a6de59fE.exit"

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !6226, !noalias !6225, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !6225, !noalias !6226, !nonnull !14, !noundef !14
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val3.i, i64 %.val2.i), !alias.scope !6227, !noalias !6228
  %i.j = icmp eq i32 %bcmp.i.i.i, 0
  br label %"_ZN76_$LT$anki..import_export..text..NameOrId$u20$as$u20$core..cmp..PartialEq$GT$2eq17h624a99097a6de59fE.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6225, !noalias !6226, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !6226, !noalias !6225, !noundef !14
  %i.o = icmp eq i64 %i.l, %i.n
  br label %"_ZN76_$LT$anki..import_export..text..NameOrId$u20$as$u20$core..cmp..PartialEq$GT$2eq17h624a99097a6de59fE.exit"

"_ZN76_$LT$anki..import_export..text..NameOrId$u20$as$u20$core..cmp..PartialEq$GT$2eq17h624a99097a6de59fE.exit": ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.o, %bb.e ], [ %i.j, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h8f93f77da693ba91E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !14
  %.val1 = load i64, ptr %1, align 8, !noundef !14
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hbd2a7232015fe09dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !14
  %.val1 = load i64, ptr %1, align 8, !noundef !14
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @262, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6231, !noundef !14 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !6231, !nonnull !14, !noundef !14
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !6231, !noundef !14 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !6231
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.a)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN58_$LT$anki..decks..DeckId$u20$as$u20$core..fmt..Display$GT$3fmt17h2ed664db73e86c5dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h016b111e09f001e8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !14
  %i.j = shl i64 %i.f, 5                          ; 4 uses
  %i.k = udiv i64 %i.j, 24                        ; 2 uses
  %i.l = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9917ddfec2aff8a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.i)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.m, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr212drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..tags..bulkadd..add_missing_tags..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6d76800a39edf84fE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.t, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6240)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !6240, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !6240, !nonnull !14, !noundef !14
  store i64 0, ptr %i.e, align 8, !alias.scope !6240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6240
  store i64 0, ptr %i.c, align 8, !noalias !6240
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6240
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6240
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.w = ptrtoint ptr %.val1.i to i64
  %i.x = ptrtoint ptr %.val.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6240
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !alias.scope !6240
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !6240
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$u5b$unicase..UniCase$LT$alloc..string..String$GT$$u5d$$GT$17h684a39c701603915E"(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.z)
          to label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit" unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$unicase..UniCase$LT$alloc..string..String$GT$$C$alloc..string..String$GT$$GT$17h4f55898a2494ec47E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #32
          to label %bb.b unwind label %bb.m

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit": ; preds = %.noexc
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit"
  %i.ab = mul nuw i64 %i.k, 24                    ; 4 uses
  %.not10 = icmp eq i64 %i.j, %i.ab
  br i1 %.not10, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.j, %bb.f, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit"
  %.sroa.03.0 = phi ptr [ %i.g, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit" ], [ %i.g, %bb.f ], [ %i.ar, %bb.j ]
  store i64 %i.k, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !6241)
  call void @llvm.experimental.noalias.scope.decl(metadata !6242)
  call void @llvm.experimental.noalias.scope.decl(metadata !6243)
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !6244, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !6244, !nonnull !14, !noundef !14
  %i.ae = ptrtoint ptr %.val1.i.i.i to i64
  %i.af = ptrtoint ptr %.val.i.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 5
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$u5b$unicase..UniCase$LT$alloc..string..String$GT$$u5d$$GT$17h684a39c701603915E"(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.ah)
          to label %"_ZN4core3ptr212drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..tags..bulkadd..add_missing_tags..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6d76800a39edf84fE.exit" unwind label %bb.g, !noalias !6244

bb.g:                                             ; preds = %.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6244
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !6244, !nonnull !14, !noundef !14
  %i.ak = load i64, ptr %i.e, align 8, !alias.scope !6244, !noundef !14
  store i64 %i.ak, ptr %i.b, align 8, !noalias !6244
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !noalias !6244
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !6244

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6244
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6244
  br label %common.resume

"_ZN4core3ptr212drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..tags..bulkadd..add_missing_tags..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6d76800a39edf84fE.exit": ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6244
  %i.an = load ptr, ptr %1, align 8, !alias.scope !6244, !nonnull !14, !noundef !14
  %i.ao = load i64, ptr %i.e, align 8, !alias.scope !6244, !noundef !14
  store i64 %i.ao, ptr %i.a, align 8, !noalias !6244
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !noalias !6244
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6244
  ret void

bb.j:                                             ; preds = %bb.f
  %i.aq = icmp ule i64 %i.ab, %i.j
  call void @llvm.assume(i1 %i.aq)
  %i.ar = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.j, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ab) #34 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %.thread, !prof !56

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.ab) #33
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.e, %bb.b
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h07613ced7a69849bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = shl i64 %i.d, 5                          ; 4 uses
  %i.i = udiv i64 %i.h, 24                        ; 2 uses
  %i.j = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h5b5cfd37fa2d7137E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h153bb1ad1e9e0c4aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr261drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..tags..Tag$GT$$C$anki..tags..service..$LT$impl$u20$anki..services..TagsService$u20$for$u20$anki..collection..Collection$GT$..all_tags..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1d626bf51a70908dE.exit" unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6247)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !6247, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6247, !nonnull !14, !noundef !14 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 5                   ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6247
  store i64 0, ptr %i.a, align 8, !noalias !6247
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !6247
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6247
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2c6a1939b4a7f507E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6247
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !6247
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6247
  %i.y = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.y, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h274a0978c267eac3E.exit", label %.lr.ph

"_ZN4core3ptr36drop_in_place$LT$anki..tags..Tag$GT$17h545a10c8a1d23fbdE.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.z = icmp eq i64 %i.ab, %i.w
  br i1 %i.z, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h274a0978c267eac3E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %"_ZN4core3ptr36drop_in_place$LT$anki..tags..Tag$GT$17h545a10c8a1d23fbdE.exit.i.i"
  %.sroa.0.0.i.i28 = phi i64 [ %i.ab, %"_ZN4core3ptr36drop_in_place$LT$anki..tags..Tag$GT$17h545a10c8a1d23fbdE.exit.i.i" ], [ 0, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i28 ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.0.0.i.i28, 1     ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.e, !noalias !6247

bb.e:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %.body.i.i unwind label %bb.f, !noalias !6247

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6247
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %"_ZN4core3ptr36drop_in_place$LT$anki..tags..Tag$GT$17h545a10c8a1d23fbdE.exit.i.i" unwind label %bb.h, !noalias !6247

bb.g:                                             ; preds = %.lr.ph30
  %i.ae = add i64 %.sroa.0.1.i.i29, 1             ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.w
  br i1 %i.af, label %.body, label %.lr.ph30

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ah = icmp eq i64 %i.ab, %i.w
  br i1 %i.ah, label %.body, label %.lr.ph30

.lr.ph30:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i29 = phi i64 [ %i.ae, %bb.g ], [ %i.ab, %.body.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i29
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$anki..tags..Tag$GT$17h545a10c8a1d23fbdE"(ptr noalias noundef align 8 dereferenceable(32) %i.ai) #32
          to label %bb.g unwind label %bb.i, !noalias !6247

bb.i:                                             ; preds = %.lr.ph30
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6247
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..tags..Tag$C$alloc..string..String$GT$$GT$17h910b1a8f1ace3febE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.o

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h274a0978c267eac3E.exit": ; preds = %"_ZN4core3ptr36drop_in_place$LT$anki..tags..Tag$GT$17h545a10c8a1d23fbdE.exit.i.i", %.noexc
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h274a0978c267eac3E.exit"
  %i.al = mul nuw i64 %i.i, 24                    ; 4 uses
  %.not10 = icmp eq i64 %i.h, %i.al
  br i1 %.not10, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.l, %bb.k, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h274a0978c267eac3E.exit"
  %.sroa.03.0 = phi ptr [ %i.e, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h274a0978c267eac3E.exit" ], [ %i.e, %bb.k ], [ %i.ap, %bb.l ]
  store i64 %i.i, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h153bb1ad1e9e0c4aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ule i64 %i.al, %i.h
  call void @llvm.assume(i1 %i.ao)
  %i.ap = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.al) #34 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.m, label %.thread, !prof !56

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.al) #33
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.b, %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr261drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..tags..Tag$GT$$C$anki..tags..service..$LT$impl$u20$anki..services..TagsService$u20$for$u20$anki..collection..Collection$GT$..all_tags..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1d626bf51a70908dE.exit": ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h08a7225463a8bf53E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !14
  %i.j = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hdb4ba5e5f6e9007dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.i)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.k, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr252drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$anki..tags..findreplace..replace_tags$LT$regex..regex..string..ReplacerRef$LT$$RF$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd20e4faa6649ad2fE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6256)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !6256, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !6256, !nonnull !14, !noundef !14
  store i64 0, ptr %i.e, align 8, !alias.scope !6256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6256
  store i64 0, ptr %i.c, align 8, !noalias !6256
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !6256
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6256
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681df738f5864ce5E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.u = ptrtoint ptr %.val1.i to i64
  %i.v = ptrtoint ptr %.val.i to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6256
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !6256
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !6256
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$$u5b$alloc..borrow..Cow$LT$str$GT$$u5d$$GT$17h384a87053c27e664E"(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.x)
          to label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17he4dc532180d99b88E.exit" unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$alloc..borrow..Cow$LT$str$GT$$C$alloc..string..String$GT$$GT$17h4d5a610eb2cdde76E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #32
          to label %bb.b unwind label %bb.i

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17he4dc532180d99b88E.exit": ; preds = %.noexc
  store i64 %i.f, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !6257)
  call void @llvm.experimental.noalias.scope.decl(metadata !6258)
  call void @llvm.experimental.noalias.scope.decl(metadata !6259)
  %.val.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !6260, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !6260, !nonnull !14, !noundef !14
  %i.ab = ptrtoint ptr %.val1.i.i.i to i64
  %i.ac = ptrtoint ptr %.val.i.i.i to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = udiv exact i64 %i.ad, 24
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$$u5b$alloc..borrow..Cow$LT$str$GT$$u5d$$GT$17h384a87053c27e664E"(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.ae)
          to label %"_ZN4core3ptr252drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$anki..tags..findreplace..replace_tags$LT$regex..regex..string..ReplacerRef$LT$$RF$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd20e4faa6649ad2fE.exit" unwind label %bb.f, !noalias !6260

bb.f:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17he4dc532180d99b88E.exit"
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6260
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !6260, !nonnull !14, !noundef !14
  %i.ah = load i64, ptr %i.e, align 8, !alias.scope !6260, !noundef !14
  store i64 %i.ah, ptr %i.b, align 8, !noalias !6260
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !noalias !6260
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681df738f5864ce5E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !6260

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6260
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6260
  br label %common.resume

"_ZN4core3ptr252drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$anki..tags..findreplace..replace_tags$LT$regex..regex..string..ReplacerRef$LT$$RF$str$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd20e4faa6649ad2fE.exit": ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17he4dc532180d99b88E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6260
  %i.ak = load ptr, ptr %1, align 8, !alias.scope !6260, !nonnull !14, !noundef !14
  %i.al = load i64, ptr %i.e, align 8, !alias.scope !6260, !noundef !14
  store i64 %i.al, ptr %i.a, align 8, !noalias !6260
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !noalias !6260
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681df738f5864ce5E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6260
  ret void

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h0a3cd83b0da7edafE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6287)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !6288, !noalias !6287, !nonnull !14, !noundef !14 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !6288, !noalias !6287, !nonnull !14, !noundef !14 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not18.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.body:                                            ; preds = %.body.i.i.i.i, %"_ZN4core3ptr153drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$C$anki..notes..NoteId$GT$$GT$17hfb7c8bae571b6faeE.exit"
  %.pn = phi { ptr, i32 } [ %eh.lpad-body5, %"_ZN4core3ptr153drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$C$anki..notes..NoteId$GT$$GT$17hfb7c8bae571b6faeE.exit" ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97c6d94f6af4eb50E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
          to label %"_ZN4core3ptr240drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$$C$anki..search..sqlwriter..SqlWriter..write_dupe..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h64dc5e7ccf938836E.exit" unwind label %bb.y

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.3.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !6289, !noalias !6290 ; 3 uses
  %.sroa.32.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %.sroa.01.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd87b226ad63c161E.exit.i.i.i", %.lr.ph.i.i.i
  %i.q = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd87b226ad63c161E.exit.i.i.i" ] ; 3 uses
  %.sroa.4.019.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %.pn2.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd87b226ad63c161E.exit.i.i.i" ] ; 4 uses
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.q, align 8, !noalias !6291
  %.sroa.212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.212.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !6291
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5alloc3vec16in_place_collect18from_iter_in_place17h0a3cd83b0da7edafE:bb.a
"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i4.i.i.i.i.i": ; preds = %bb.i
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit8.i.i.i.i.i" unwind label %bb.c, !noalias !6292

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit8.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i4.i.i.i.i.i", %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i", %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit.thread.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i = phi i1 [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i4.i.i.i.i.i" ], [ true, %bb.h ], [ false, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit.thread.i.i.i.i.i" ], [ false, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6292
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i" unwind label %bb.l, !noalias !6292

bb.l:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit8.i.i.i.i.i"
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i.i.i unwind label %bb.m, !noalias !6292

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6292
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit8.i.i.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.o, !noalias !6293

bb.n:                                             ; preds = %.body.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6292
  unreachable

bb.o:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i"
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.p:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6292
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.q, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd87b226ad63c161E.exit.i.i.i"

bb.q:                                             ; preds = %bb.p
  store i64 %.sroa.011.0.copyload.i.i.i, ptr %.sroa.4.019.i.i.i, align 8, !noalias !6293
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i.i.i, i64 8
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd87b226ad63c161E.exit.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.l, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.ae, %bb.l ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ]
  %i.aj = invoke noundef i64 @"_ZN5alloc3vec13in_place_drop20InPlaceDrop$LT$T$GT$3len17h36fd3a8b4157bdb9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %.body unwind label %bb.r, !noalias !6293 ; 0 uses

bb.r:                                             ; preds = %.body.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6293
  unreachable

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd87b226ad63c161E.exit.i.i.i": ; preds = %bb.q, %bb.p
  %.pn2.i.i.i.i = phi ptr [ %i.ai, %bb.q ], [ %.sroa.4.019.i.i.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6291
  %.not.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hfd87b226ad63c161E.exit.i.i.i"
  %.val.i.pre = load ptr, ptr %i.j, align 8, !alias.scope !6302
  %.val1.i.pre = load ptr, ptr %i.i, align 8, !alias.scope !6302
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.val1.i = phi ptr [ %i.k, %bb.a ], [ %.val1.i.pre, %.loopexit.loopexit ] ; 2 uses
  %.val.i = phi ptr [ %i.l, %bb.a ], [ %.val.i.pre, %.loopexit.loopexit ] ; 4 uses
  %.sroa.4.0.lcssa.i.i.i = phi ptr [ %i.h, %bb.a ], [ %.pn2.i.i.i.i, %.loopexit.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6302)
  %i.al = ptrtoint ptr %.val1.i to i64
  %i.am = ptrtoint ptr %.val.i to i64
  %i.an = sub nuw i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 5                 ; 3 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !6302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6302
  store i64 0, ptr %i.b, align 8, !noalias !6302
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !noalias !6302
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6302
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5b57e2cbe8ffa96E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6302
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !6302
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !6302
  %i.aq = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.aq, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h3b4b76147e5dabd5E.exit", label %.lr.ph

"_ZN4core3ptr72drop_in_place$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$17h49ec91a09386e6b7E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.ar = icmp eq i64 %i.at, %i.ao
  br i1 %i.ar, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h3b4b76147e5dabd5E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %"_ZN4core3ptr72drop_in_place$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$17h49ec91a09386e6b7E.exit.i.i"
  %.sroa.0.0.i.i25 = phi i64 [ %i.at, %"_ZN4core3ptr72drop_in_place$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$17h49ec91a09386e6b7E.exit.i.i" ], [ 0, %.noexc ] ; 2 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i25
  %i.at = add nuw nsw i64 %.sroa.0.0.i.i25, 1     ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.s, !noalias !6302

bb.s:                                             ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body.i.i unwind label %bb.t, !noalias !6302

bb.t:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6302
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %"_ZN4core3ptr72drop_in_place$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$17h49ec91a09386e6b7E.exit.i.i" unwind label %bb.v, !noalias !6302

bb.u:                                             ; preds = %.lr.ph27
  %i.ax = add i64 %.sroa.0.1.i.i26, 1             ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.ao
  br i1 %i.ay, label %.body4, label %.lr.ph27

bb.v:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.v, %bb.s
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.az, %bb.v ], [ %i.av, %bb.s ] ; 2 uses
  %i.ba = icmp eq i64 %i.at, %i.ao
  br i1 %i.ba, label %.body4, label %.lr.ph27

.lr.ph27:                                         ; preds = %.body.i.i, %bb.u
  %.sroa.0.1.i.i26 = phi i64 [ %i.ax, %bb.u ], [ %i.at, %.body.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i26
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$17h49ec91a09386e6b7E"(ptr noalias noundef align 8 dereferenceable(32) %i.bb) #32
          to label %bb.u unwind label %bb.w, !noalias !6302

bb.w:                                             ; preds = %.lr.ph27
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6302
  unreachable

bb.x:                                             ; preds = %.loopexit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body4

.body4:                                           ; preds = %bb.u, %.body.i.i, %bb.x
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.a, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.be, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5b57e2cbe8ffa96E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %"_ZN4core3ptr153drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$C$anki..notes..NoteId$GT$$GT$17hfb7c8bae571b6faeE.exit" unwind label %bb.y

"_ZN4core3ptr153drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$C$anki..notes..NoteId$GT$$GT$17hfb7c8bae571b6faeE.exit": ; preds = %.body4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h3b4b76147e5dabd5E.exit": ; preds = %"_ZN4core3ptr72drop_in_place$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$17h49ec91a09386e6b7E.exit.i.i", %.noexc
  %i.bf = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i to i64
  %i.bg = ptrtoint ptr %i.h to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 3
  %i.bj = shl nuw i64 %i.g, 2
  store i64 %i.bj, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bi, ptr %i.bl, align 8
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h97c6d94f6af4eb50E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
  ret void

bb.y:                                             ; preds = %.body4, %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr240drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..notes..NoteId$C$alloc..string..String$RP$$GT$$C$anki..search..sqlwriter..SqlWriter..write_dupe..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h64dc5e7ccf938836E.exit": ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h0a554a3b70fa023eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = mul i64 %i.d, 160                        ; 6 uses
  %i.i = udiv i64 %i.h, 144                       ; 2 uses
  %i.j = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he65c0596b3624815E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr273drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..notetype..schema11..NoteFieldSchema11$GT$$C$$LT$anki..notetype..schema11..NoteFieldSchema11$u20$as$u20$core..convert..Into$LT$anki..notetype..fields..NoteField$GT$$GT$..into$GT$$GT$17hf51220b5da2ba6c8E"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.q unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 144                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6305)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !6305, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6305, !nonnull !14, !noundef !14 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 160                 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6305
  store i64 0, ptr %i.a, align 8, !noalias !6305
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !6305
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6305
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7f94a004b2ce2f9aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6305
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !6305
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6305
  %i.y = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.y, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h76c95fd2f6b67cd8E.exit", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.w
  br i1 %i.z, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h76c95fd2f6b67cd8E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i16 = phi i64 [ %i.ab, %bb.e ], [ 0, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [160 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i16
  %i.ab = add nuw nsw i64 %.sroa.0.0.i.i16, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$anki..notetype..schema11..NoteFieldSchema11$GT$17h6de786cd3374563aE"(ptr noalias noundef align 8 dereferenceable(160) %i.aa)
          to label %bb.e unwind label %bb.g, !noalias !6305

bb.f:                                             ; preds = %.lr.ph18
  %i.ac = add i64 %.sroa.0.1.i.i17, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.w
  br i1 %i.ad, label %.body, label %.lr.ph18

bb.g:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.w
  br i1 %i.af, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i17 = phi i64 [ %i.ac, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [160 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i17
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$anki..notetype..schema11..NoteFieldSchema11$GT$17h6de786cd3374563aE"(ptr noalias noundef align 8 dereferenceable(160) %i.ag) #32
          to label %bb.f unwind label %bb.h, !noalias !6305

bb.h:                                             ; preds = %.lr.ph18
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6305
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..notetype..schema11..NoteFieldSchema11$C$anki..notetype..fields..NoteField$GT$$GT$17hdbbbc4f140cfa52aE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.p

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h76c95fd2f6b67cd8E.exit": ; preds = %bb.e, %.noexc
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h76c95fd2f6b67cd8E.exit"
  %i.aj = mul nuw i64 %i.i, 144                   ; 4 uses
  %.not10 = icmp eq i64 %i.h, %i.aj
  br i1 %.not10, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.l, %bb.m, %bb.j, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h76c95fd2f6b67cd8E.exit"
  %.sroa.03.0 = phi ptr [ %i.e, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h76c95fd2f6b67cd8E.exit" ], [ %i.e, %bb.j ], [ %i.ao, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.l ]
  store i64 %i.i, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr273drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..notetype..schema11..NoteFieldSchema11$GT$$C$$LT$anki..notetype..schema11..NoteFieldSchema11$u20$as$u20$core..convert..Into$LT$anki..notetype..fields..NoteField$GT$$GT$..into$GT$$GT$17hf51220b5da2ba6c8E"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %bb.j
  %i.am = icmp ult i64 %i.h, 144
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8) #34
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.an = icmp ule i64 %i.aj, %i.h
  call void @llvm.assume(i1 %i.an)
  %i.ao = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.aj) #34 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %.thread, !prof !56

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.aj) #33
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %.body, %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.q:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h10bdc3697b042ce4E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6317)
  %i.i = invoke noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17hadb31f6572c9d883E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 8 uses

bb.b:                                             ; preds = %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..deckconfig..DeckConfigId$GT$$GT$17h984530739a79327dE.exit", %bb.c
  %.val5 = phi i64 [ 0, %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..deckconfig..DeckConfigId$GT$$GT$17h984530739a79327dE.exit" ], [ %i.f, %bb.c ]
  %.val4 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..deckconfig..DeckConfigId$GT$$GT$17h984530739a79327dE.exit" ], [ %i.g, %bb.c ]
  %.pn = phi { ptr, i32 } [ %i.ap, %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..deckconfig..DeckConfigId$GT$$GT$17h984530739a79327dE.exit" ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6318
  store i64 %.val5, ptr %i.d, align 8, !noalias !6318
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.val4, ptr %i.j, align 8, !noalias !6318
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !6317, !nonnull !14, !noundef !14 ; 7 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  %.val.i12 = ptrtoaddr ptr %.val.i to i64
  %i.m = sub i64 %.val.i12, %i.h
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8
  %wide.load13 = load <2 x i64>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %wide.load, ptr %i.p, align 8, !noalias !6317
  store <2 x i64> %wide.load13, ptr %i.q, align 8, !noalias !6317
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !6310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.01.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.01.i.prol = phi i64 [ %i.v, %scalar.ph.prol ], [ %.sroa.0.01.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.0.01.i.prol
  %i.t = load i64, ptr %i.s, align 8, !noundef !14
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.0.01.i.prol
  %i.v = add nuw i64 %.sroa.0.01.i.prol, 1        ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !noalias !6317
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6311

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.01.i.unr = phi i64 [ %.sroa.0.01.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = sub i64 %.sroa.0.01.i.ph, %i.i
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.01.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.0.01.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.0.01.i
  %i.z = load i64, ptr %i.y, align 8, !noundef !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.0.01.i
  %i.ab = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8, !noalias !6317
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab
  %i.af = add nuw i64 %.sroa.0.01.i, 2            ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !noalias !6317
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.af
  %i.aj = add nuw i64 %.sroa.0.01.i, 3            ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !noalias !6317
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !noundef !14
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.aj
  %i.an = add nuw i64 %.sroa.0.01.i, 4            ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !noalias !6317
  %exitcond.not.i.3 = icmp eq i64 %i.an, %i.i
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !6312

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6319)
  store i64 0, ptr %i.e, align 8, !alias.scope !6319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6319
  store i64 0, ptr %i.c, align 8, !noalias !6319
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8, !noalias !6319
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6319
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.aq, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..deckconfig..DeckConfigId$GT$$GT$17h984530739a79327dE.exit" unwind label %bb.f

"_ZN4core3ptr116drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..deckconfig..DeckConfigId$GT$$GT$17h984530739a79327dE.exit": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.e:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6319
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8, !alias.scope !6319
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8, !alias.scope !6319
  store i64 %i.f, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6320
  store i64 0, ptr %i.a, align 8, !noalias !6320
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8, !noalias !6320
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6320
  ret void

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6318
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h125bfe180b2de798E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_ZN5alloc3vec16in_place_collect18from_iter_in_place17h20252c053ac2197fE:bb.a
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ae
  %i.ai = add nuw i64 %.sroa.0.01.i, 3            ; 2 uses
  %i.aj = load <2 x i32>, ptr %i.ag, align 4
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !noalias !6398
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ai
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ai
  %i.am = add nuw i64 %.sroa.0.01.i, 4            ; 2 uses
  %i.an = load <2 x i32>, ptr %i.ak, align 4
  store <2 x i32> %i.an, ptr %i.al, align 4, !noalias !6398
  %exitcond.not.i.3 = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !6393

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6402)
  store i64 0, ptr %i.e, align 8, !alias.scope !6402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6402
  store i64 0, ptr %i.c, align 8, !noalias !6402
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ao, align 8, !noalias !6402
  store ptr inttoptr (i64 4 to ptr), ptr %1, align 8, !alias.scope !6402
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ddd2d562cfd516bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.aq, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ddd2d562cfd516bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr141drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..scheduler..FsrsReview$C$fsrs..dataset..FSRSReview$GT$$GT$17h1d0fc3d1bdf11244E.exit" unwind label %bb.f

"_ZN4core3ptr141drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..scheduler..FsrsReview$C$fsrs..dataset..FSRSReview$GT$$GT$17h1d0fc3d1bdf11244E.exit": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.e:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6402
  store ptr inttoptr (i64 4 to ptr), ptr %i.as, align 8, !alias.scope !6402
  store ptr inttoptr (i64 4 to ptr), ptr %i.ar, align 8, !alias.scope !6402
  store i64 %i.f, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6403
  store i64 0, ptr %i.a, align 8, !noalias !6403
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.av, align 8, !noalias !6403
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ddd2d562cfd516bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6403
  ret void

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6399
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h290a68003332da44E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hb79715ae85247411E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr275drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notetypes..notetype..Template$GT$$C$$LT$anki_proto..notetypes..notetype..Template$u20$as$u20$core..convert..Into$LT$anki..notetype..templates..CardTemplate$GT$$GT$..into$GT$$GT$17h6639b0a8f1d8952fE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 224                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6406)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6406, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6406, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 224                 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6406
  store i64 0, ptr %i.a, align 8, !noalias !6406
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6406
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6406
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdec46add31760c8fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6406
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6406
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6406
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h65c2ab00faa89d18E.exit", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h65c2ab00faa89d18E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i3 = phi i64 [ %i.z, %bb.e ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [224 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$anki_proto..notetypes..notetype..Template$GT$17hb4527da849c62d2cE"(ptr noalias noundef align 8 dereferenceable(224) %i.y)
          to label %bb.e unwind label %bb.g, !noalias !6406

bb.f:                                             ; preds = %.lr.ph5
  %i.aa = add i64 %.sroa.0.1.i.i4, 1              ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.u
  br i1 %i.ab, label %.body, label %.lr.ph5

bb.g:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.z, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i4 = phi i64 [ %i.aa, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [224 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$anki_proto..notetypes..notetype..Template$GT$17hb4527da849c62d2cE"(ptr noalias noundef align 8 dereferenceable(224) %i.ae) #32
          to label %bb.f unwind label %bb.h, !noalias !6406

bb.h:                                             ; preds = %.lr.ph5
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6406
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr163drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..notetypes..notetype..Template$C$anki..notetype..templates..CardTemplate$GT$$GT$17h5fc58b4ebce78313E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.j

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h65c2ab00faa89d18E.exit": ; preds = %bb.e, %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr275drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notetypes..notetype..Template$GT$$C$$LT$anki_proto..notetypes..notetype..Template$u20$as$u20$core..convert..Into$LT$anki..notetype..templates..CardTemplate$GT$$GT$..into$GT$$GT$17h6639b0a8f1d8952fE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.j:                                             ; preds = %.body, %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h33b7fa0bed2253ffE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = mul i64 %i.d, 104                        ; 6 uses
  %i.i = udiv i64 %i.h, 72                        ; 2 uses
  %i.j = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hc08ddd628b2b6f22E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54d6e0d08ef0add5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr250drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..decks..DeckTreeNode$GT$$C$$LT$anki..decks..tree..LegacyDueCounts$u20$as$u20$core..convert..From$LT$anki_proto..decks..DeckTreeNode$GT$$GT$..from$GT$$GT$17h7d56199e28bfc193E.exit" unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 72                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6409)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !6409, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6409, !nonnull !14, !noundef !14 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 104                 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6409
  store i64 0, ptr %i.a, align 8, !noalias !6409
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !6409
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6409
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4c6d2b884394913E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6409
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !6409
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6409
  %i.y = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.y, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc437f108cb0a586bE.exit", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.w
  br i1 %i.z, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc437f108cb0a586bE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i16 = phi i64 [ %i.ab, %bb.e ], [ 0, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [104 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i16
  %i.ab = add nuw nsw i64 %.sroa.0.0.i.i16, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..DeckTreeNode$GT$17h511c888cf982d340E"(ptr noalias noundef align 8 dereferenceable(104) %i.aa)
          to label %bb.e unwind label %bb.g, !noalias !6409

bb.f:                                             ; preds = %.lr.ph18
  %i.ac = add i64 %.sroa.0.1.i.i17, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.w
  br i1 %i.ad, label %.body, label %.lr.ph18

bb.g:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.w
  br i1 %i.af, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i17 = phi i64 [ %i.ac, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [104 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i17
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..DeckTreeNode$GT$17h511c888cf982d340E"(ptr noalias noundef align 8 dereferenceable(104) %i.ag) #32
          to label %bb.f unwind label %bb.h, !noalias !6409

bb.h:                                             ; preds = %.lr.ph18
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6409
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..decks..DeckTreeNode$C$anki..decks..tree..LegacyDueCounts$GT$$GT$17h63fad9cf1d4b3d1dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.p

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc437f108cb0a586bE.exit": ; preds = %bb.e, %.noexc
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc437f108cb0a586bE.exit"
  %i.aj = mul nuw i64 %i.i, 72                    ; 4 uses
  %.not10 = icmp eq i64 %i.h, %i.aj
  br i1 %.not10, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.l, %bb.m, %bb.j, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc437f108cb0a586bE.exit"
  %.sroa.03.0 = phi ptr [ %i.e, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hc437f108cb0a586bE.exit" ], [ %i.e, %bb.j ], [ %i.ao, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.l ]
  store i64 %i.i, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54d6e0d08ef0add5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %bb.j
  %i.am = icmp ult i64 %i.h, 72
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8) #34
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.an = icmp ule i64 %i.aj, %i.h
  call void @llvm.assume(i1 %i.an)
  %i.ao = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.aj) #34 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %.thread, !prof !56

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.aj) #33
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.b, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr250drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..decks..DeckTreeNode$GT$$C$$LT$anki..decks..tree..LegacyDueCounts$u20$as$u20$core..convert..From$LT$anki_proto..decks..DeckTreeNode$GT$$GT$..from$GT$$GT$17h7d56199e28bfc193E.exit": ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h33d19d9c4fc43610E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he14d44bdf7261ed7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..notetype..schema11..CardRequirementSchema11$GT$$C$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$core..convert..Into$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$$GT$..into$GT$$GT$17h5e22e5995b1079e7E"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6412)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6412, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6412, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 5                   ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6412
  store i64 0, ptr %i.a, align 8, !noalias !6412
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6412
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6412
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h34b0c821cd51652fE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6412
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6412
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6412
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h55587142613a98f1E.exit", label %.lr.ph

"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE.exit.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i.i"
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h55587142613a98f1E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE.exit.i.i"
  %.sroa.0.0.i.i15 = phi i64 [ %i.z, %"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE.exit.i.i" ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52d6f739fdf6f61eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i.i" unwind label %bb.e, !noalias !6412

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body.i.i unwind label %bb.f, !noalias !6412

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6412
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE.exit.i.i" unwind label %bb.h, !noalias !6412

bb.g:                                             ; preds = %.lr.ph17
  %i.ac = add i64 %.sroa.0.1.i.i16, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph17

bb.h:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit.i.i.i"
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = icmp eq i64 %i.z, %i.u
  br i1 %i.af, label %.body, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i16 = phi i64 [ %i.ac, %bb.g ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i16
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE"(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #32
          to label %bb.g unwind label %bb.i, !noalias !6412

bb.i:                                             ; preds = %.lr.ph17
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6412
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..notetype..schema11..CardRequirementSchema11$C$anki_proto..notetypes..notetype..config..CardRequirement$GT$$GT$17h4cfaa91ed4f6adecE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.k

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h55587142613a98f1E.exit": ; preds = %"_ZN4core3ptr70drop_in_place$LT$anki..notetype..schema11..CardRequirementSchema11$GT$17h42e35018754e6cdfE.exit.i.i", %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..notetype..schema11..CardRequirementSchema11$GT$$C$$LT$anki..notetype..schema11..CardRequirementSchema11$u20$as$u20$core..convert..Into$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$$GT$..into$GT$$GT$17h5e22e5995b1079e7E"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %.body, %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h37a20ec826fa365dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !14
  %i.j = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17ha176328f346cebf4E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.i)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr137drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..revlog..RevlogEntry$C$fsrs..simulation..RevlogEntry$GT$$GT$17h360447e264de639fE.exit", %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %"_ZN4core3ptr137drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..revlog..RevlogEntry$C$fsrs..simulation..RevlogEntry$GT$$GT$17h360447e264de639fE.exit" ], [ %i.l, %bb.c ]
  %.val4 = load ptr, ptr %1, align 8, !alias.scope !23, !nonnull !14, !noundef !14
  %.val5 = load i64, ptr %i.e, align 8, !alias.scope !23, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6419
  store i64 %.val5, ptr %i.d, align 8, !noalias !6419
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.val4, ptr %i.k, align 8, !noalias !6419
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2656731625c11b30E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b
end_hunk_2
begin_hunk_3_@_ZN5alloc3vec16in_place_collect18from_iter_in_place17h8002dbf8c36a861fE:bb.a
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf7c87cf868d02d0aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5d758c5155ca0edbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr323drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$RP$$GT$$C$anki..notetype..service..$LT$impl$u20$anki..services..NotetypesService$u20$for$u20$anki..collection..Collection$GT$..get_notetype_names..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8dc8078e8e4c0758E.exit" unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke fastcc void @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb76e0e668de4ea27E"(ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr178drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$RP$$C$anki_proto..notetypes..NotetypeNameId$GT$$GT$17h05b8e7b2a83205b2E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5d758c5155ca0edbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr323drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$RP$$GT$$C$anki..notetype..service..$LT$impl$u20$anki..services..NotetypesService$u20$for$u20$anki..collection..Collection$GT$..get_notetype_names..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8dc8078e8e4c0758E.exit": ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h833f0df6544c7c67E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = invoke { ptr, ptr } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h25c94c13816e4ff3E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$alloc..string..String$C$anki..decks..DeckId$GT$$GT$17h882ef6c2c5a99ab3E.exit", %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$alloc..string..String$C$anki..decks..DeckId$GT$$GT$17h882ef6c2c5a99ab3E.exit" ], [ %i.h, %bb.c ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd92233d89406864E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
          to label %"_ZN4core3ptr379drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$anki..sync..collection..start..string_list_to_ids$LT$anki..decks..DeckId$C$serde_json..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$$GT$17h450155b4ca183ff9E.exit" unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h729856a653a46954E"(ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.j, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddc20c1fa5644519E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$alloc..string..String$C$anki..decks..DeckId$GT$$GT$17h882ef6c2c5a99ab3E.exit" unwind label %bb.g

"_ZN4core3ptr123drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$alloc..string..String$C$anki..decks..DeckId$GT$$GT$17h882ef6c2c5a99ab3E.exit": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, ptr } %i.g, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = mul nuw i64 %i.c, 3
  store i64 %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.r, align 8
  tail call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd92233d89406864E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr379drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$anki..sync..collection..start..string_list_to_ids$LT$anki..decks..DeckId$C$serde_json..error..Error$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$serde_json..error..Error$GT$$GT$$GT$17h450155b4ca183ff9E.exit": ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h8617010b5f4b533cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h9feda857936f0eadE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd92233d89406864E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr221drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$anki..import_export..$LT$impl$u20$anki..notes..Note$GT$..into_log_note..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0a0c703c7289ed7bE.exit" unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke fastcc void @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h729856a653a46954E"(ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr125drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17ha3c81ead910b31f7E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd92233d89406864E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr221drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$anki..import_export..$LT$impl$u20$anki..notes..Note$GT$..into_log_note..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0a0c703c7289ed7bE.exit": ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h862cc912d09236bcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !14
  %i.j = shl i64 %i.f, 5                          ; 4 uses
  %i.k = udiv i64 %i.j, 24                        ; 2 uses
  %i.l = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0cb8b60ff610ea60E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.i)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.m, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..tags..register..$LT$impl$u20$anki..collection..Collection$GT$..canonify_tags_inner..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h85a2c6c72fd071e4E"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.t, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6610)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !6610, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !6610, !nonnull !14, !noundef !14
  store i64 0, ptr %i.e, align 8, !alias.scope !6610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6610
  store i64 0, ptr %i.c, align 8, !noalias !6610
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6610
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6610
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.w = ptrtoint ptr %.val1.i to i64
  %i.x = ptrtoint ptr %.val.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6610
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !alias.scope !6610
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !6610
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$u5b$unicase..UniCase$LT$alloc..string..String$GT$$u5d$$GT$17h684a39c701603915E"(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.z)
          to label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit" unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$unicase..UniCase$LT$alloc..string..String$GT$$C$alloc..string..String$GT$$GT$17h4f55898a2494ec47E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #32
          to label %bb.b unwind label %bb.m

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit": ; preds = %.noexc
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit"
  %i.ab = mul nuw i64 %i.k, 24                    ; 4 uses
  %.not10 = icmp eq i64 %i.j, %i.ab
  br i1 %.not10, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.j, %bb.f, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit"
  %.sroa.03.0 = phi ptr [ %i.g, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit" ], [ %i.g, %bb.f ], [ %i.ar, %bb.j ]
  store i64 %i.k, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !6611)
  call void @llvm.experimental.noalias.scope.decl(metadata !6612)
  call void @llvm.experimental.noalias.scope.decl(metadata !6613)
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !6614, !nonnull !14, !noundef !14 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !6614, !nonnull !14, !noundef !14
  %i.ae = ptrtoint ptr %.val1.i.i.i to i64
  %i.af = ptrtoint ptr %.val.i.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 5
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$u5b$unicase..UniCase$LT$alloc..string..String$GT$$u5d$$GT$17h684a39c701603915E"(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.ah)
          to label %"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..tags..register..$LT$impl$u20$anki..collection..Collection$GT$..canonify_tags_inner..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h85a2c6c72fd071e4E.exit" unwind label %bb.g, !noalias !6614

bb.g:                                             ; preds = %.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6614
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !6614, !nonnull !14, !noundef !14
  %i.ak = load i64, ptr %i.e, align 8, !alias.scope !6614, !noundef !14
  store i64 %i.ak, ptr %i.b, align 8, !noalias !6614
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !noalias !6614
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !6614

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6614
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6614
  br label %common.resume

"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..tags..register..$LT$impl$u20$anki..collection..Collection$GT$..canonify_tags_inner..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h85a2c6c72fd071e4E.exit": ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6614
  %i.an = load ptr, ptr %1, align 8, !alias.scope !6614, !nonnull !14, !noundef !14
  %i.ao = load i64, ptr %i.e, align 8, !alias.scope !6614, !noundef !14
  store i64 %i.ao, ptr %i.a, align 8, !noalias !6614
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !noalias !6614
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6614
  ret void

bb.j:                                             ; preds = %bb.f
  %i.aq = icmp ule i64 %i.ab, %i.j
  call void @llvm.assume(i1 %i.aq)
  %i.ar = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.j, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ab) #34 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %.thread, !prof !56

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.ab) #33
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.e, %bb.b
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h86917bb107b15f82E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [152 x i8], align 8               ; 10 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [168 x i8], align 8               ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !14 ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 10 uses
  %i.k = mul i64 %i.i, 152                        ; 6 uses
  %i.l = udiv i64 %i.k, 48                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6635)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !6636, !noalias !6637, !nonnull !14, !noundef !14 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !6636, !noalias !6637, !nonnull !14, !noundef !14 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not9.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.body:                                            ; preds = %.body.i.i.i.i.i.i, %bb.s, %bb.b, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.v ], [ %i.q, %bb.b ], [ %i.br, %bb.s ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8a16110e9c34aebE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %1)
          to label %"_ZN4core3ptr363drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$anki..card..Card$GT$$C$anki..scheduler..fsrs..simulator..is_included_card$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_request_to_config..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8a05b10e6c3376dcE.exit" unwind label %bb.ad

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 165
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 164
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 146
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.r, align 8, !alias.scope !6638, !nonnull !14, !align !15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.y, align 8, !alias.scope !6638, !nonnull !14, !align !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 108
  %i.al = load ptr, ptr %i.ae, align 8, !alias.scope !6638, !nonnull !14, !align !24
  %i.am = load ptr, ptr %i.af, align 8, !alias.scope !6638, !nonnull !14, !align !15 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.an = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.ao, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i" ] ; 3 uses
  %storemerge10.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %.pn3.i.pn.i.i.i.i.i, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i" ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152 ; 3 uses
  store ptr %i.ao, ptr %i.n, align 8, !alias.scope !6636, !noalias !6637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6639
  store ptr %i.j, ptr %i.f, align 8, !noalias !6639
  store ptr %storemerge10.i.i.i.i, ptr %i.s, align 8, !noalias !6639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.t, ptr noundef nonnull align 8 dereferenceable(152) %i.an, i64 152, i1 false), !noalias !6640
  call void @llvm.experimental.noalias.scope.decl(metadata !6641)
  %.val7.i.i.i.i.i = load i8, ptr %i.u, align 1, !range !47, !alias.scope !6641, !noalias !6639, !noundef !14
  switch i8 %.val7.i.i.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i [
    i8 -1, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
    i8 4, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
  ]

_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i: ; preds = %bb.c
  %.val.i.i.i.i.i = load i8, ptr %i.v, align 4, !alias.scope !6641, !noalias !6639
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6642
  store ptr %i.j, ptr %i.e, align 8, !noalias !6643
  store ptr %storemerge10.i.i.i.i, ptr %i.w, align 8, !noalias !6643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.an, i64 152, i1 false), !noalias !6640
  call void @llvm.experimental.noalias.scope.decl(metadata !6644)
  %i.ap = load float, ptr %i.ai, align 8, !noalias !6645, !noundef !14
  %i.aq = load i32, ptr %i.x, align 8, !range !32, !alias.scope !6644, !noalias !6646, !noundef !14
  %i.ar = trunc nuw i32 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = load <2 x float>, ptr %i.ad, align 4, !alias.scope !6644, !noalias !6646
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6645
  %i.at = load i16, ptr %i.z, align 2, !alias.scope !6644, !noalias !6646, !noundef !14
  %i.au = uitofp i16 %i.at to float
  %i.av = fdiv float %i.au, 1.000000e+03
  %i.aw = load i32, ptr %i.aa, align 4, !alias.scope !6644, !noalias !6646, !noundef !14
  %i.ax = uitofp i32 %i.aw to float
  %i.ay = load float, ptr %i.ak, align 4, !noalias !6645, !noundef !14
  invoke void @"_ZN4fsrs9inference35_$LT$impl$u20$fsrs..model..FSRS$GT$21memory_state_from_sm217hf88b80e37c54259fE"(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(84) %i.aj, float noundef %i.av, float noundef %i.ax, float noundef %i.ay)
          to label %bb.g unwind label %bb.n, !noalias !6645

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr %i.b, align 4, !range !38, !noalias !6645, !noundef !14
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load <2 x float>, ptr %i.ab, align 4, !noalias !6645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6645
  br i1 %i.ba, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i" unwind label %bb.i, !noalias !6646

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body.i.i.i.i.i.i unwind label %bb.j, !noalias !6646

bb.j:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6646
  unreachable

"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i": ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.thread.i.i.i.i.i.i" unwind label %bb.p, !noalias !6643

"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6643
  br label %bb.u

bb.k:                                             ; preds = %bb.g, %bb.e
  %i.be = phi <2 x float> [ %i.as, %bb.e ], [ %i.bb, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.t, i64 152, i1 false), !noalias !6639
  %i.bf = load i32, ptr %i.al, align 4, !noalias !6645, !noundef !14
  %i.bg = load ptr, ptr %i.am, align 8, !noalias !6645, !nonnull !14, !noundef !14
  %i.bh = atomicrmw add ptr %i.bg, i64 1 monotonic, align 8, !noalias !6645
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.am, align 8, !noalias !6645, !nonnull !14, !noundef !14
  %i.bk = extractelement <2 x float> %i.be, i64 0
  %i.bl = extractelement <2 x float> %i.be, i64 1
  invoke void @"_ZN4anki9scheduler4fsrs9simulator34_$LT$impl$u20$anki..card..Card$GT$7convert17hc2e8acc08568c14dE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %i.a, i32 noundef %i.bf, float noundef %i.bk, float noundef %i.bl, float noundef %i.ap, ptr noundef nonnull %i.bj)
          to label %"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.i.i.i.i.i.i" unwind label %bb.p, !noalias !6643

bb.m:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.c) #32
          to label %.body.i.i.i.i.i.i unwind label %bb.o, !noalias !6646

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6646
  unreachable

bb.p:                                             ; preds = %bb.l, %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i"
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.i.i.i.i.i.i": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6645
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !6643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6643
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %storemerge10.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !6643
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge10.i.i.i.i, i64 48
  br label %bb.u

.body.i.i.i.i.i.i:                                ; preds = %bb.p, %bb.n, %bb.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %i.bc, %bb.i ], [ %i.bm, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$fsrs..simulation..Card$GT$$GT$17hae30856b785345ceE"(ptr noalias noundef align 8 dereferenceable(16) %i.e) #32
          to label %.body unwind label %bb.r, !noalias !6643

bb.r:                                             ; preds = %.body.i.i.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6643
  unreachable

_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i: ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i, %bb.c, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i" unwind label %bb.s, !noalias !6639

bb.s:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.t, !noalias !6639

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6639
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i": ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i" unwind label %bb.b

bb.u:                                             ; preds = %bb.q, %"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.i.i.i.i.i.i", %"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.thread.i.i.i.i.i.i"
  %.pn3.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.q ], [ %storemerge10.i.i.i.i, %"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.thread.i.i.i.i.i.i" ], [ %storemerge10.i.i.i.i, %"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$26simulate_request_to_config28_$u7b$$u7b$closure$u7d$$u7d$17h53e9c1c537186a48E.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6642
  br label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i", %bb.u
  %.pn3.i.pn.i.i.i.i.i = phi ptr [ %.pn3.i.i.i.i.i.i, %bb.u ], [ %storemerge10.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6639
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.o
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i", %bb.a
  %storemerge.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.a ], [ %.pn3.i.pn.i.i.i.i.i, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf5f22309896c49b6E.exit.i.i.i.i" ]
  %i.bt = ptrtoint ptr %storemerge.lcssa.i.i.i.i to i64
  %i.bu = ptrtoint ptr %i.j to i64
  %i.bv = sub nuw i64 %i.bt, %i.bu
  %i.bw = udiv exact i64 %i.bv, 48                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.i, ptr %i.by, align 8
  invoke fastcc void @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h5e82d5588bfc3ca2E"(ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.ab, %.loopexit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..card..Card$C$fsrs..simulation..Card$GT$$GT$17he6d960560b1513e5E"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #32
          to label %.body unwind label %bb.ad

bb.w:                                             ; preds = %.loopexit
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = mul nuw i64 %i.l, 48                    ; 4 uses
  %.not10 = icmp eq i64 %i.k, %i.ca
  br i1 %.not10, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.z, %bb.aa, %bb.x, %bb.w
  %.sroa.03.0 = phi ptr [ %i.j, %bb.w ], [ %i.j, %bb.x ], [ %i.cf, %bb.aa ], [ inttoptr (i64 8 to ptr), %bb.z ]
  store i64 %i.l, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bw, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8a16110e9c34aebE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %1)
  ret void

bb.y:                                             ; preds = %bb.x
  %i.cd = icmp ult i64 %i.k, 48
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 8) #34
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.ce = icmp ule i64 %i.ca, %i.k
  call void @llvm.assume(i1 %i.ce)
  %i.cf = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.k, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ca) #34 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ab, label %.thread, !prof !56

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.ca) #33
          to label %bb.ac unwind label %bb.v

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %.body, %bb.v
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr363drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$anki..card..Card$GT$$C$anki..scheduler..fsrs..simulator..is_included_card$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_request_to_config..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8a05b10e6c3376dcE.exit": ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h86a9473964b6f7ffE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !14
  %i.j = invoke { ptr, ptr } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf02d44e6b3dabf48E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %i.i)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.l, %bb.c ]
  %.val4 = load ptr, ptr %1, align 8, !alias.scope !6655, !nonnull !14, !noundef !14
  %.val5 = load i64, ptr %i.e, align 8, !alias.scope !6655, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6656
  store i64 %.val5, ptr %i.c, align 8, !noalias !6656
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val4, ptr %i.k, align 8, !noalias !6656
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a789c83cac8fae0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.s, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6657)
  store i64 0, ptr %i.e, align 8, !alias.scope !6657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6657
  store i64 0, ptr %i.b, align 8, !noalias !6657
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !6657
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6657
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a789c83cac8fae0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr157drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..notetype..NotetypeId$C$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17h751eca1dc35f70f8E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #32
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6657
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !alias.scope !6657
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !6657
  store i64 %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %1, align 8, !alias.scope !6655, !nonnull !14, !noundef !14
  %.val3 = load i64, ptr %i.e, align 8, !alias.scope !6655, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6658
  store i64 %.val3, ptr %i.a, align 8, !noalias !6658
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.y, align 8, !noalias !6658
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a789c83cac8fae0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6658
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6656
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h872de8c071fd3abbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 25 uses
  %i.b = alloca [152 x i8], align 8               ; 25 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [168 x i8], align 8               ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 10 uses
  %i.j = mul i64 %i.h, 152                        ; 6 uses
  %i.k = udiv i64 %i.j, 48                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6679)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6682)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !6683, !noalias !6681, !nonnull !14, !noundef !14 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !6683, !noalias !6681, !nonnull !14, !noundef !14 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not22.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.body:                                            ; preds = %.body.i.i.i.i.i.i, %bb.v, %bb.b, %bb.y
  %.pn = phi { ptr, i32 } [ %i.do, %bb.y ], [ %i.q, %bb.b ], [ %i.dg, %bb.v ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8a16110e9c34aebE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %1)
          to label %"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$anki..card..Card$GT$$C$anki..scheduler..fsrs..simulator..is_included_card$GT$$C$anki..deckconfig..service..$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$..get_retention_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45e4ea6cf7873f9fE.exit" unwind label %bb.ag

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 165
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 149
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 150
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 149
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 150
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.53.0..sroa_idx4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.bk = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.bl, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i" ] ; 3 uses
  %storemerge23.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %.pn2.i.pn.i.i.i.i.i, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i" ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 152 ; 3 uses
  store ptr %i.bl, ptr %i.n, align 8, !alias.scope !6683, !noalias !6681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6684
  store ptr %i.i, ptr %i.e, align 8, !noalias !6684
  store ptr %storemerge23.i.i.i.i, ptr %i.r, align 8, !noalias !6684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.s, ptr noundef nonnull align 8 dereferenceable(152) %i.bk, i64 152, i1 false), !noalias !6685
  call void @llvm.experimental.noalias.scope.decl(metadata !6686)
  %.val7.i.i.i.i.i = load i8, ptr %i.t, align 1, !range !47, !alias.scope !6686, !noalias !6684, !noundef !14
  switch i8 %.val7.i.i.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i [
    i8 -1, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
    i8 4, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
  ]

_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i: ; preds = %bb.c
  %.val.i.i.i.i.i = load i8, ptr %i.u, align 4, !alias.scope !6686, !noalias !6684
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %i.bk, i64 152, i1 false), !noalias !6685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6688
  store ptr %i.i, ptr %i.d, align 8, !noalias !6687
  store ptr %storemerge23.i.i.i.i, ptr %i.v, align 8, !noalias !6687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6687
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !6689, !noalias !6690 ; 2 uses
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !6689, !noalias !6690 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6691)
  call void @llvm.experimental.noalias.scope.decl(metadata !6692)
  %i.bm = load i32, ptr %i.x, align 8, !range !32, !alias.scope !6692, !noalias !6693, !noundef !14 ; 2 uses
  %i.bn = trunc nuw i32 %i.bm to i1               ; 2 uses
  %i.bo = load float, ptr %i.y, align 4, !alias.scope !6692, !noalias !6693 ; 2 uses
  %.sroa.0.0.i.i9.i.i.i.i.i = select i1 %i.bn, float %i.bo, float f0x3F666666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6694
  call void @llvm.experimental.noalias.scope.decl(metadata !6695)
  call void @llvm.experimental.noalias.scope.decl(metadata !6696)
  %i.bp = load <2 x i64>, ptr %i.z, align 8, !alias.scope !6697, !noalias !6698
  %i.bq = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !6697, !noalias !6698
  %i.br = load i8, ptr %i.ad, align 4, !range !46, !alias.scope !6697, !noalias !6698, !noundef !14
  %i.bs = load i8, ptr %i.ae, align 1, !range !47, !alias.scope !6697, !noalias !6698, !noundef !14
  %i.bt = load <2 x i16>, ptr %i.ab, align 8, !alias.scope !6697, !noalias !6698
  %i.bu = load <4 x i32>, ptr %i.ac, align 4, !alias.scope !6697, !noalias !6698
  %i.bv = load <2 x i32>, ptr %i.af, align 4, !alias.scope !6697, !noalias !6698
  %i.bw = load i32, ptr %i.ag, align 4, !alias.scope !6697, !noalias !6698, !noundef !14
  %i.bx = load i64, ptr %i.ah, align 8, !alias.scope !6697, !noalias !6698, !noundef !14
  %i.by = load i8, ptr %i.ai, align 2, !alias.scope !6697, !noalias !6698, !noundef !14
  %i.bz = load i32, ptr %i.aj, align 8, !range !32, !alias.scope !6697, !noalias !6698, !noundef !14 ; 2 uses
  %i.ca = load i32, ptr %i.ak, align 4, !alias.scope !6697, !noalias !6698
  %i.cb = load i32, ptr %i.al, align 8, !range !32, !alias.scope !6697, !noalias !6698, !noundef !14 ; 2 uses
  %.sroa.53.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !alias.scope !6697, !noalias !6698 ; 3 uses
  %i.cc = load i32, ptr %i.am, align 8, !range !32, !alias.scope !6697, !noalias !6698, !noundef !14 ; 2 uses
  %i.cd = load float, ptr %i.an, align 4, !alias.scope !6697, !noalias !6698
  %i.ce = load i64, ptr %i.b, align 8, !range !26, !alias.scope !6697, !noalias !6698, !noundef !14 ; 2 uses
  %i.cf = load i64, ptr %i.ao, align 8, !alias.scope !6697, !noalias !6698
  %i.cg = trunc i64 %.sroa.53.0.copyload.i.i.i.i.i.i.i.i to i32
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = lshr i64 %.sroa.53.0.copyload.i.i.i.i.i.i.i.i, 32
  %i.cj = trunc nuw i64 %i.ci to i32
  %i.ck = bitcast i32 %i.cj to float
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.f unwind label %bb.e, !noalias !6693

bb.e:                                             ; preds = %bb.m, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i", %bb.d
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.i, %bb.e
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cl, %bb.e ], [ %i.cu, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b) #32
          to label %.body.i.i.i.i.i.i unwind label %bb.r, !noalias !6693

bb.f:                                             ; preds = %bb.d
  %i.cm = trunc nuw i64 %i.ce to i1
  %.sroa.511.0.i.i.i.i.i.i.i.i = select i1 %i.cm, i64 %i.cf, i64 undef
  %i.cn = trunc nuw i32 %i.cc to i1
  %.sroa.59.0.i.i.i.i.i.i.i.i = select i1 %i.cn, float %i.cd, float undef
  %.sroa.57.0.i.i.i.i.i.i.i.i = select i1 %i.bn, float %i.bo, float undef
  %i.co = trunc nuw i32 %i.cb to i1               ; 2 uses
  %.sroa.53.0.i.i.i.i.i.i.i.i = select i1 %i.co, i64 %.sroa.53.0.copyload.i.i.i.i.i.i.i.i, i64 undef
  %i.cp = trunc nuw i32 %i.bz to i1
  %.sroa.5.0.i.i.i.i.i.i.i.i = select i1 %i.cp, i32 %i.ca, i32 undef
  store <2 x i64> %i.bp, ptr %i.ar, align 8, !alias.scope !6695, !noalias !6699
  store <2 x i64> %i.bq, ptr %i.as, align 8, !alias.scope !6695, !noalias !6699
  store i8 %i.br, ptr %i.av, align 4, !alias.scope !6695, !noalias !6699
  store i8 %i.bs, ptr %i.aw, align 1, !alias.scope !6695, !noalias !6699
  store <2 x i16> %i.bt, ptr %i.at, align 8, !alias.scope !6695, !noalias !6699
  store <4 x i32> %i.bu, ptr %i.au, align 4, !alias.scope !6695, !noalias !6699
  store <2 x i32> %i.bv, ptr %i.ax, align 4, !alias.scope !6695, !noalias !6699
  store i32 %i.bw, ptr %i.ay, align 4, !alias.scope !6695, !noalias !6699
  store i64 %i.bx, ptr %i.az, align 8, !alias.scope !6695, !noalias !6699
  store i8 %i.by, ptr %i.ba, align 2, !alias.scope !6695, !noalias !6699
  store i32 %i.bz, ptr %i.bb, align 8, !alias.scope !6695, !noalias !6699
  store i32 %.sroa.5.0.i.i.i.i.i.i.i.i, ptr %i.bc, align 4, !alias.scope !6695, !noalias !6699
  store i32 %i.cb, ptr %i.bd, align 8, !alias.scope !6695, !noalias !6699
  store i64 %.sroa.53.0.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx4.i.i.i.i.i.i.i.i, align 4, !alias.scope !6695, !noalias !6699
  store i32 %i.bm, ptr %i.be, align 8, !alias.scope !6695, !noalias !6699
  store float %.sroa.57.0.i.i.i.i.i.i.i.i, ptr %i.bf, align 4, !alias.scope !6695, !noalias !6699
  store i32 %i.cc, ptr %i.bg, align 8, !alias.scope !6695, !noalias !6699
  store float %.sroa.59.0.i.i.i.i.i.i.i.i, ptr %i.bh, align 4, !alias.scope !6695, !noalias !6699
  store i64 %i.ce, ptr %i.a, align 8, !alias.scope !6695, !noalias !6699
  store i64 %.sroa.511.0.i.i.i.i.i.i.i.i, ptr %i.bi, align 8, !alias.scope !6695, !noalias !6699
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  %i.cq = load i32, ptr %.val.i.i.i.i.i.i, align 4, !noalias !6694, !noundef !14
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i.i.i) ]
  %i.cr = load ptr, ptr %.val4.i.i.i.i.i.i, align 8, !noalias !6694, !nonnull !14, !noundef !14
  %i.cs = atomicrmw add ptr %i.cr, i64 1 monotonic, align 8, !noalias !6693
  %i.ct = icmp slt i64 %i.cs, 0
  br i1 %i.ct, label %bb.n, label %bb.m

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.c, align 8, !alias.scope !6691, !noalias !6700
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i" unwind label %bb.i, !noalias !6693

bb.i:                                             ; preds = %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.j, !noalias !6693

bb.j:                                             ; preds = %bb.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6693
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !6693

"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6694
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit16.i.i.i.i.i.i.i" unwind label %bb.k, !noalias !6693

bb.k:                                             ; preds = %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i"
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body.i.i.i.i.i.i unwind label %bb.l, !noalias !6693

bb.l:                                             ; preds = %bb.k
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6693
  unreachable

"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit16.i.i.i.i.i.i.i": ; preds = %bb.o, %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i.i.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$22get_retention_workload28_$u7b$$u7b$closure$u7d$$u7d$17hf1a17e6ccd80aeabE.exit.i.i.i.i.i.i" unwind label %bb.s, !noalias !6687

bb.m:                                             ; preds = %bb.g
  %i.cy = load ptr, ptr %.val4.i.i.i.i.i.i, align 8, !noalias !6694, !nonnull !14, !noundef !14
  invoke void @"_ZN4anki9scheduler4fsrs9simulator34_$LT$impl$u20$anki..card..Card$GT$7convert17hc2e8acc08568c14dE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %i.a, i32 noundef %i.cq, float noundef %i.ch, float noundef %i.ck, float noundef %.sroa.0.0.i.i9.i.i.i.i.i, ptr noundef nonnull %i.cy)
          to label %bb.o unwind label %bb.e, !noalias !6687

bb.n:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6694
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit16.i.i.i.i.i.i.i" unwind label %bb.p, !noalias !6693

bb.p:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body.i.i.i.i.i.i unwind label %bb.q, !noalias !6693

bb.q:                                             ; preds = %bb.p
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6693
  unreachable

bb.r:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6693
  unreachable

bb.s:                                             ; preds = %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit16.i.i.i.i.i.i.i"
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$22get_retention_workload28_$u7b$$u7b$closure$u7d$$u7d$17hf1a17e6ccd80aeabE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit16.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6687
  %i.dd = load ptr, ptr %i.c, align 8, !noalias !6687, !noundef !14
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$22get_retention_workload28_$u7b$$u7b$closure$u7d$$u7d$17hf1a17e6ccd80aeabE.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %storemerge23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !6687
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge23.i.i.i.i, i64 48
  br label %bb.x

.body.i.i.i.i.i.i:                                ; preds = %bb.s, %bb.p, %bb.k, %.body.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.s ], [ %i.cz, %bb.p ], [ %i.cw, %bb.k ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$fsrs..simulation..Card$GT$$GT$17hae30856b785345ceE"(ptr noalias noundef align 8 dereferenceable(16) %i.d) #32
          to label %.body unwind label %bb.u, !noalias !6687

bb.u:                                             ; preds = %.body.i.i.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6687
  unreachable

_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i: ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.i.i.i.i.i, %bb.c, %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i" unwind label %bb.v, !noalias !6684

bb.v:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body unwind label %bb.w, !noalias !6684

bb.w:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6684
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i": ; preds = %_ZN4core3ops8function5FnMut8call_mut17h08818058cc051128E.exit.thread.i.i.i.i.i
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i" unwind label %bb.b

bb.x:                                             ; preds = %bb.t, %"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$22get_retention_workload28_$u7b$$u7b$closure$u7d$$u7d$17hf1a17e6ccd80aeabE.exit.i.i.i.i.i.i"
  %.pn2.i.i.i.i.i.i = phi ptr [ %i.de, %bb.t ], [ %storemerge23.i.i.i.i, %"_ZN4anki10deckconfig7service92_$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$22get_retention_workload28_$u7b$$u7b$closure$u7d$$u7d$17hf1a17e6ccd80aeabE.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6688
  br label %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i"

"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i", %bb.x
  %.pn2.i.pn.i.i.i.i.i = phi ptr [ %.pn2.i.i.i.i.i.i, %bb.x ], [ %storemerge23.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6684
  %.not.i.i.i.i = icmp eq ptr %i.bl, %i.o
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i", %bb.a
  %storemerge.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.a ], [ %.pn2.i.pn.i.i.i.i.i, %"_ZN4core4iter8adapters6filter15filter_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h60336f6b024b9c3fE.exit.i.i.i.i" ]
  %i.di = ptrtoint ptr %storemerge.lcssa.i.i.i.i to i64
  %i.dj = ptrtoint ptr %i.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  %i.dl = udiv exact i64 %i.dk, 48                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %i.dn, align 8
  invoke fastcc void @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h5e82d5588bfc3ca2E"(ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.ae, %.loopexit
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..card..Card$C$fsrs..simulation..Card$GT$$GT$17he6d960560b1513e5E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #32
          to label %.body unwind label %bb.ag

bb.z:                                             ; preds = %.loopexit
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = mul nuw i64 %i.k, 48                    ; 4 uses
  %.not10 = icmp eq i64 %i.j, %i.dp
  br i1 %.not10, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.ac, %bb.ad, %bb.aa, %bb.z
  %.sroa.03.0 = phi ptr [ %i.i, %bb.z ], [ %i.i, %bb.aa ], [ %i.du, %bb.ad ], [ inttoptr (i64 8 to ptr), %bb.ac ]
  store i64 %i.k, ptr %0, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dl, ptr %i.dr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8a16110e9c34aebE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %1)
  ret void

bb.ab:                                            ; preds = %bb.aa
  %i.ds = icmp ult i64 %i.j, 48
  br i1 %i.ds, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.j, i64 noundef 8) #34
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.dt = icmp ule i64 %i.dp, %i.j
  call void @llvm.assume(i1 %i.dt)
  %i.du = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.i, i64 noundef %i.j, i64 noundef 8, i64 noundef range(i64 0, -15) %i.dp) #34 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ae, label %.thread, !prof !56

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.dp) #33
          to label %bb.af unwind label %bb.y

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %.body, %bb.y
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..filter..Filter$LT$alloc..vec..into_iter..IntoIter$LT$anki..card..Card$GT$$C$anki..scheduler..fsrs..simulator..is_included_card$GT$$C$anki..deckconfig..service..$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$..get_retention_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45e4ea6cf7873f9fE.exit": ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h89cb10ac1c3b9637E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h47668403f689199fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notetypes..notetype..Field$GT$$C$$LT$anki_proto..notetypes..notetype..Field$u20$as$u20$core..convert..Into$LT$anki..notetype..fields..NoteField$GT$$GT$..into$GT$$GT$17hccc324a58852130eE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 144                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6703)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6703, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6703, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 144                 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6703
  store i64 0, ptr %i.a, align 8, !noalias !6703
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6703
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6703
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h59263e07ee115eacE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6703
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6703
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6703
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h539711cc0047acadE.exit", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h539711cc0047acadE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i3 = phi i64 [ %i.z, %bb.e ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki_proto..notetypes..notetype..Field$GT$17ha8da90a5eb31fe6eE"(ptr noalias noundef align 8 dereferenceable(144) %i.y)
          to label %bb.e unwind label %bb.g, !noalias !6703

bb.f:                                             ; preds = %.lr.ph5
  %i.aa = add i64 %.sroa.0.1.i.i4, 1              ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.u
  br i1 %i.ab, label %.body, label %.lr.ph5

bb.g:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.z, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i4 = phi i64 [ %i.aa, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [144 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$anki_proto..notetypes..notetype..Field$GT$17ha8da90a5eb31fe6eE"(ptr noalias noundef align 8 dereferenceable(144) %i.ae) #32
          to label %bb.f unwind label %bb.h, !noalias !6703

bb.h:                                             ; preds = %.lr.ph5
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6703
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..notetypes..notetype..Field$C$anki..notetype..fields..NoteField$GT$$GT$17h86c5dae06846a706E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.j

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h539711cc0047acadE.exit": ; preds = %bb.e, %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notetypes..notetype..Field$GT$$C$$LT$anki_proto..notetypes..notetype..Field$u20$as$u20$core..convert..Into$LT$anki..notetype..fields..NoteField$GT$$GT$..into$GT$$GT$17hccc324a58852130eE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.j:                                             ; preds = %.body, %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h9ca590a6042653ccE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hf2191fd135755b40E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr340drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..notetype..NotetypeId$C$alloc..string..String$C$u32$RP$$GT$$C$anki..notetype..service..$LT$impl$u20$anki..services..NotetypesService$u20$for$u20$anki..collection..Collection$GT$..get_notetype_names_and_counts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h207d85aed1e6713cE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6706)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6706, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6706, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 40                  ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6706
  store i64 0, ptr %i.a, align 8, !noalias !6706
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6706
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6706
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7ab5c09512130dbE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
end_hunk_3
begin_hunk_4_@_ZN5alloc3vec16in_place_collect18from_iter_in_place17hbb045e5c5cf8e3f4E:bb.a
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.af
  %i.aj = add nuw i64 %.sroa.0.01.i, 3            ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !noalias !6800
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !noundef !14
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.aj
  %i.an = add nuw i64 %.sroa.0.01.i, 4            ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !noalias !6800
  %exitcond.not.i.3 = icmp eq i64 %i.an, %i.i
  br i1 %exitcond.not.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !6795

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6802)
  store i64 0, ptr %i.e, align 8, !alias.scope !6802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6802
  store i64 0, ptr %i.c, align 8, !noalias !6802
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8, !noalias !6802
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6802
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.aq, align 8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr104drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..card..CardId$GT$$GT$17h354dfa0dd8dcf2afE.exit" unwind label %bb.f

"_ZN4core3ptr104drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..card..CardId$GT$$GT$17h354dfa0dd8dcf2afE.exit": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.e:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6802
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8, !alias.scope !6802
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8, !alias.scope !6802
  store i64 %i.f, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6803
  store i64 0, ptr %i.a, align 8, !noalias !6803
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8, !noalias !6803
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6803
  ret void

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6801
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hc359bc242931e939E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h03ae9dfa30a9fc35E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr212drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..template..RenderedNode$GT$$C$anki..card_rendering..service..rendered_nodes_to_proto..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h944eab2a2db9a16fE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 72                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6806)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6806, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6806, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 72                  ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6806
  store i64 0, ptr %i.a, align 8, !noalias !6806
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6806
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6806
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfbd7168f6d4c23aeE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6806
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6806
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6806
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h9a953856e7752408E.exit", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h9a953856e7752408E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i3 = phi i64 [ %i.z, %bb.e ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$anki..template..RenderedNode$GT$17hd23feeade96e2bbbE"(ptr noalias noundef align 8 dereferenceable(72) %i.y)
          to label %bb.e unwind label %bb.g, !noalias !6806

bb.f:                                             ; preds = %.lr.ph5
  %i.aa = add i64 %.sroa.0.1.i.i4, 1              ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.u
  br i1 %i.ab, label %.body, label %.lr.ph5

bb.g:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.z, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i4 = phi i64 [ %i.aa, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$anki..template..RenderedNode$GT$17hd23feeade96e2bbbE"(ptr noalias noundef align 8 dereferenceable(72) %i.ae) #32
          to label %bb.f unwind label %bb.h, !noalias !6806

bb.h:                                             ; preds = %.lr.ph5
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6806
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..template..RenderedNode$C$anki_proto..card_rendering..RenderedTemplateNode$GT$$GT$17h1367c03d6fdf6fd2E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.j

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h9a953856e7752408E.exit": ; preds = %bb.e, %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr212drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..template..RenderedNode$GT$$C$anki..card_rendering..service..rendered_nodes_to_proto..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h944eab2a2db9a16fE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.j:                                             ; preds = %.body, %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hc7ec2c6949da14b5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = mul i64 %i.d, 168                        ; 6 uses
  %i.i = udiv i64 %i.h, 152                       ; 2 uses
  %i.j = invoke { ptr, ptr } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h8967cadbbaf92bc2E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr346drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..cards..Card$GT$$C$$LT$anki_proto..cards..Card$u20$as$u20$core..convert..TryInto$LT$anki..card..Card$GT$$GT$..try_into$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h9f4cde120853c8f2E"(ptr noalias noundef align 8 dereferenceable(40) %1) #32
          to label %bb.r unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 152                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6809)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !6809, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6809, !nonnull !14, !noundef !14 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 168                 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6809
  store i64 0, ptr %i.a, align 8, !noalias !6809
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !6809
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6809
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd29512edaff7d955E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6809
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !6809
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6809
  %i.y = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.y, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h1bc9b9029c95568eE.exit", label %.lr.ph

"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.z = icmp eq i64 %i.ab, %i.w
  br i1 %i.z, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h1bc9b9029c95568eE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit.i.i"
  %.sroa.0.0.i.i28 = phi i64 [ %i.ab, %"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit.i.i" ], [ 0, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [168 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i28
  %i.ab = add nuw nsw i64 %.sroa.0.0.i.i28, 1     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.e, !noalias !6809

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body.i.i unwind label %bb.f, !noalias !6809

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6809
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit.i.i" unwind label %bb.h, !noalias !6809

bb.g:                                             ; preds = %.lr.ph30
  %i.af = add i64 %.sroa.0.1.i.i29, 1             ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.w
  br i1 %i.ag, label %.body, label %.lr.ph30

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ai = icmp eq i64 %i.ab, %i.w
  br i1 %i.ai, label %.body, label %.lr.ph30

.lr.ph30:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i29 = phi i64 [ %i.af, %bb.g ], [ %i.ab, %.body.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [168 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i29
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E"(ptr noalias noundef align 8 dereferenceable(168) %i.aj) #32
          to label %bb.g unwind label %bb.i, !noalias !6809

bb.i:                                             ; preds = %.lr.ph30
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6809
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..cards..Card$C$anki..card..Card$GT$$GT$17h959a19ed0acdf364E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.q

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h1bc9b9029c95568eE.exit": ; preds = %"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit.i.i", %.noexc
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h1bc9b9029c95568eE.exit"
  %i.am = mul nuw i64 %i.i, 152                   ; 4 uses
  %.not10 = icmp eq i64 %i.h, %i.am
  br i1 %.not10, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.m, %bb.n, %bb.k, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h1bc9b9029c95568eE.exit"
  %.sroa.03.0 = phi ptr [ %i.e, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h1bc9b9029c95568eE.exit" ], [ %i.e, %bb.k ], [ %i.ar, %bb.n ], [ inttoptr (i64 8 to ptr), %bb.m ]
  store i64 %i.i, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr346drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..cards..Card$GT$$C$$LT$anki_proto..cards..Card$u20$as$u20$core..convert..TryInto$LT$anki..card..Card$GT$$GT$..try_into$GT$$C$core..result..Result$LT$core..convert..Infallible$C$anki..error..AnkiError$GT$$GT$$GT$17h9f4cde120853c8f2E"(ptr noalias noundef align 8 dereferenceable(40) %1)
  ret void

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ult i64 %i.h, 152
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8) #34
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.aq = icmp ule i64 %i.am, %i.h
  call void @llvm.assume(i1 %i.aq)
  %i.ar = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.am) #34 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.o, label %.thread, !prof !56

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.am) #33
          to label %bb.p unwind label %bb.j

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %.body, %bb.b
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.r:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hcf91aaa20c6b0a45E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he8d7b27dc9c680daE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr315drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$$C$$LT$anki_proto..notetypes..notetype..config..CardRequirement$u20$as$u20$core..convert..Into$LT$anki..notetype..schema11..CardRequirementSchema11$GT$$GT$..into$GT$$GT$17h8905dfff643ade82E"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6812)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6812, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6812, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 5                   ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6812
  store i64 0, ptr %i.a, align 8, !noalias !6812
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6812
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6812
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb820c644ef0516d0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6812
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6812
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6812
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4b41fe60752e4e9fE.exit", label %.lr.ph

"_ZN4core3ptr77drop_in_place$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$17hd42a993b7148532aE.exit.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h4122196ad32e793fE.exit.i.i.i"
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4b41fe60752e4e9fE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %"_ZN4core3ptr77drop_in_place$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$17hd42a993b7148532aE.exit.i.i"
  %.sroa.0.0.i.i15 = phi i64 [ %i.z, %"_ZN4core3ptr77drop_in_place$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$17hd42a993b7148532aE.exit.i.i" ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b5f4a6a8e13b6c4E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h4122196ad32e793fE.exit.i.i.i" unwind label %bb.e, !noalias !6812

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body.i.i unwind label %bb.f, !noalias !6812

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6812
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h4122196ad32e793fE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %"_ZN4core3ptr77drop_in_place$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$17hd42a993b7148532aE.exit.i.i" unwind label %bb.h, !noalias !6812

bb.g:                                             ; preds = %.lr.ph17
  %i.ac = add i64 %.sroa.0.1.i.i16, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph17

bb.h:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h4122196ad32e793fE.exit.i.i.i"
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = icmp eq i64 %i.z, %i.u
  br i1 %i.af, label %.body, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i16 = phi i64 [ %i.ac, %bb.g ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i16
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$17hd42a993b7148532aE"(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #32
          to label %bb.g unwind label %bb.i, !noalias !6812

bb.i:                                             ; preds = %.lr.ph17
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6812
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..notetypes..notetype..config..CardRequirement$C$anki..notetype..schema11..CardRequirementSchema11$GT$$GT$17hea60770a26e045dcE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.k

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4b41fe60752e4e9fE.exit": ; preds = %"_ZN4core3ptr77drop_in_place$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$17hd42a993b7148532aE.exit.i.i", %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr315drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..notetypes..notetype..config..CardRequirement$GT$$C$$LT$anki_proto..notetypes..notetype..config..CardRequirement$u20$as$u20$core..convert..Into$LT$anki..notetype..schema11..CardRequirementSchema11$GT$$GT$..into$GT$$GT$17h8905dfff643ade82E"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %.body, %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hd0b983f2f95ef388E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6824)
  %i.i = invoke noundef i64 @_ZN4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4size17h932b749468242c96E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.c     ; 8 uses

bb.b:                                             ; preds = %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..notes..NoteId$GT$$GT$17hc87104dccc5b5c12E.exit", %bb.c
  %.val7 = phi i64 [ 0, %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..notes..NoteId$GT$$GT$17hc87104dccc5b5c12E.exit" ], [ %i.f, %bb.c ]
  %.val6 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..notes..NoteId$GT$$GT$17hc87104dccc5b5c12E.exit" ], [ %i.g, %bb.c ]
  %.pn = phi { ptr, i32 } [ %i.ap, %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$i64$C$anki..notes..NoteId$GT$$GT$17hc87104dccc5b5c12E.exit" ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6825
  store i64 %.val7, ptr %i.d, align 8, !noalias !6825
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.val6, ptr %i.j, align 8, !noalias !6825
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0423c32f0b19e68E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b
end_hunk_4
begin_hunk_5_@_ZN5alloc3vec16in_place_collect18from_iter_in_place17hd4eb7bfa68ae12c9E:bb.a
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$$u5b$unicase..UniCase$LT$alloc..string..String$GT$$u5d$$GT$17h684a39c701603915E"(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.ae)
          to label %"_ZN4core3ptr284drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..scheduler..filtered..custom_study..$LT$impl$u20$anki..collection..Collection$GT$..custom_study_defaults..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hfdf2a3b457819829E.exit" unwind label %bb.f, !noalias !6855

bb.f:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit"
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6855
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !6855, !nonnull !14, !noundef !14
  %i.ah = load i64, ptr %i.e, align 8, !alias.scope !6855, !noundef !14
  store i64 %i.ah, ptr %i.b, align 8, !noalias !6855
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !noalias !6855
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !6855

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6855
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6855
  br label %common.resume

"_ZN4core3ptr284drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$unicase..UniCase$LT$alloc..string..String$GT$$GT$$C$anki..scheduler..filtered..custom_study..$LT$impl$u20$anki..collection..Collection$GT$..custom_study_defaults..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hfdf2a3b457819829E.exit": ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h19378b3fef491804E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6855
  %i.ak = load ptr, ptr %1, align 8, !alias.scope !6855, !nonnull !14, !noundef !14
  %i.al = load i64, ptr %i.e, align 8, !alias.scope !6855, !noundef !14
  store i64 %i.al, ptr %i.a, align 8, !noalias !6855
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !noalias !6855
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc7317ffe6e5cd564E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6855
  ret void

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hdbb41c3d72b5a723E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h69be5f168679110bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr297drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$$C$$LT$anki..decks..schema11..FilteredSearchTermSchema11$u20$as$u20$core..convert..Into$LT$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$..into$GT$$GT$17hbb0ebc5285f2efedE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6858, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6858, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 5                   ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6858
  store i64 0, ptr %i.a, align 8, !noalias !6858
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6858
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6858
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd9ad84c13447e68eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6858
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6858
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6858
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd3b3407d1972a276E.exit", label %.lr.ph

"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd3b3407d1972a276E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E.exit.i.i"
  %.sroa.0.0.i.i15 = phi i64 [ %i.z, %"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E.exit.i.i" ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.e, !noalias !6858

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %.body.i.i unwind label %bb.f, !noalias !6858

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6858
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E.exit.i.i" unwind label %bb.h, !noalias !6858

bb.g:                                             ; preds = %.lr.ph17
  %i.ac = add i64 %.sroa.0.1.i.i16, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph17

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i"
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = icmp eq i64 %i.z, %i.u
  br i1 %i.af, label %.body, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i16 = phi i64 [ %i.ac, %bb.g ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i16
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E"(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #32
          to label %bb.g unwind label %bb.i, !noalias !6858

bb.i:                                             ; preds = %.lr.ph17
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6858
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr177drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..decks..schema11..FilteredSearchTermSchema11$C$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$17h3bed33989731e223E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.k

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd3b3407d1972a276E.exit": ; preds = %"_ZN4core3ptr70drop_in_place$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$17h4af333d10bd42ae4E.exit.i.i", %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr297drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..schema11..FilteredSearchTermSchema11$GT$$C$$LT$anki..decks..schema11..FilteredSearchTermSchema11$u20$as$u20$core..convert..Into$LT$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$..into$GT$$GT$17hbb0ebc5285f2efedE"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %.body, %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17he46426bf4de59c2bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = mul i64 %i.d, 232                        ; 6 uses
  %i.i = udiv i64 %i.h, 224                       ; 2 uses
  %i.j = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h7582e0212c079f51E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr285drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..notetype..schema11..CardTemplateSchema11$GT$$C$$LT$anki..notetype..schema11..CardTemplateSchema11$u20$as$u20$core..convert..Into$LT$anki..notetype..templates..CardTemplate$GT$$GT$..into$GT$$GT$17h55c5a9cecd6001d4E"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.q unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 224                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6861)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !6861, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6861, !nonnull !14, !noundef !14 ; 2 uses
  %i.t = ptrtoint ptr %.val1.i to i64
  %i.u = ptrtoint ptr %.val.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 232                 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6861
  store i64 0, ptr %i.a, align 8, !noalias !6861
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !6861
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6861
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5bf1dbb752a17d7cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6861
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !6861
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6861
  %i.y = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.y, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd9dd149b1e445b08E.exit", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.w
  br i1 %i.z, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd9dd149b1e445b08E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %bb.e
  %.sroa.0.0.i.i16 = phi i64 [ %i.ab, %bb.e ], [ 0, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [232 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i16
  %i.ab = add nuw nsw i64 %.sroa.0.0.i.i16, 1     ; 4 uses
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$anki..notetype..schema11..CardTemplateSchema11$GT$17h7d609264a98e22f0E"(ptr noalias noundef align 8 dereferenceable(232) %i.aa)
          to label %bb.e unwind label %bb.g, !noalias !6861

bb.f:                                             ; preds = %.lr.ph18
  %i.ac = add i64 %.sroa.0.1.i.i17, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.w
  br i1 %i.ad, label %.body, label %.lr.ph18

bb.g:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.w
  br i1 %i.af, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i17 = phi i64 [ %i.ac, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [232 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i17
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$anki..notetype..schema11..CardTemplateSchema11$GT$17h7d609264a98e22f0E"(ptr noalias noundef align 8 dereferenceable(232) %i.ag) #32
          to label %bb.f unwind label %bb.h, !noalias !6861

bb.h:                                             ; preds = %.lr.ph18
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6861
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki..notetype..schema11..CardTemplateSchema11$C$anki..notetype..templates..CardTemplate$GT$$GT$17h626cd60ef1cf4ae8E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.p

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd9dd149b1e445b08E.exit": ; preds = %bb.e, %.noexc
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd9dd149b1e445b08E.exit"
  %i.aj = mul nuw i64 %i.i, 224                   ; 4 uses
  %.not10 = icmp eq i64 %i.h, %i.aj
  br i1 %.not10, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.l, %bb.m, %bb.j, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd9dd149b1e445b08E.exit"
  %.sroa.03.0 = phi ptr [ %i.e, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd9dd149b1e445b08E.exit" ], [ %i.e, %bb.j ], [ %i.ao, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.l ]
  store i64 %i.i, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr285drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki..notetype..schema11..CardTemplateSchema11$GT$$C$$LT$anki..notetype..schema11..CardTemplateSchema11$u20$as$u20$core..convert..Into$LT$anki..notetype..templates..CardTemplate$GT$$GT$..into$GT$$GT$17h55c5a9cecd6001d4E"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %bb.j
  %i.am = icmp ult i64 %i.h, 224
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8) #34
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.an = icmp ule i64 %i.aj, %i.h
  call void @llvm.assume(i1 %i.an)
  %i.ao = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.aj) #34 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %.thread, !prof !56

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef %i.aj) #33
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %.body, %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.q:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hebaba8eaec67752bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h8d72eb25199c2300E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..scheduler..FsrsItem$GT$$C$anki..scheduler..service..fsrs_item_proto_to_fsrs$GT$$GT$17h8559984cf1b0e786E"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6864)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6864, !nonnull !14, !noundef !14 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6864, !nonnull !14, !noundef !14 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 24                  ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6864
  store i64 0, ptr %i.a, align 8, !noalias !6864
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !6864
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6864
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e9ad3c1df9ff571E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6864
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6864
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6864
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h84f904199c5837caE.exit", label %.lr.ph

"_ZN4core3ptr52drop_in_place$LT$anki_proto..scheduler..FsrsItem$GT$17hb06b967d997780bcE.exit.i.i": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..scheduler..FsrsReview$GT$$GT$17hf8e9d2cf0b14b1deE.exit.i.i.i"
  %i.x = icmp eq i64 %i.z, %i.u
  br i1 %i.x, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h84f904199c5837caE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.noexc, %"_ZN4core3ptr52drop_in_place$LT$anki_proto..scheduler..FsrsItem$GT$17hb06b967d997780bcE.exit.i.i"
  %.sroa.0.0.i.i15 = phi i64 [ %i.z, %"_ZN4core3ptr52drop_in_place$LT$anki_proto..scheduler..FsrsItem$GT$17hb06b967d997780bcE.exit.i.i" ], [ 0, %.noexc ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4692947f239ce6d7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..scheduler..FsrsReview$GT$$GT$17hf8e9d2cf0b14b1deE.exit.i.i.i" unwind label %bb.e, !noalias !6864

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ddd2d562cfd516bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i.i unwind label %bb.f, !noalias !6864

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6864
  unreachable

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..scheduler..FsrsReview$GT$$GT$17hf8e9d2cf0b14b1deE.exit.i.i.i": ; preds = %.lr.ph
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ddd2d562cfd516bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %"_ZN4core3ptr52drop_in_place$LT$anki_proto..scheduler..FsrsItem$GT$17hb06b967d997780bcE.exit.i.i" unwind label %bb.h, !noalias !6864

bb.g:                                             ; preds = %.lr.ph17
  %i.ac = add i64 %.sroa.0.1.i.i16, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph17

bb.h:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..scheduler..FsrsReview$GT$$GT$17hf8e9d2cf0b14b1deE.exit.i.i.i"
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = icmp eq i64 %i.z, %i.u
  br i1 %i.af, label %.body, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i16 = phi i64 [ %i.ac, %bb.g ], [ %i.z, %.body.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i16
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..scheduler..FsrsItem$GT$17hb06b967d997780bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #32
          to label %bb.g unwind label %bb.i, !noalias !6864

bb.i:                                             ; preds = %.lr.ph17
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !6864
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$anki_proto..scheduler..FsrsItem$C$fsrs..dataset..FSRSItem$GT$$GT$17h2cb8addf4874704fE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.b unwind label %bb.k

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h84f904199c5837caE.exit": ; preds = %"_ZN4core3ptr52drop_in_place$LT$anki_proto..scheduler..FsrsItem$GT$17hb06b967d997780bcE.exit.i.i", %.noexc
  store i64 %i.d, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr181drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..scheduler..FsrsItem$GT$$C$anki..scheduler..service..fsrs_item_proto_to_fsrs$GT$$GT$17h8559984cf1b0e786E"(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %.body, %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hf1b52306675b7508E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !14
  %i.h = invoke { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hfb65eba67e18d8e1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr252drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$anki_proto..deck_config..DeckConfig$GT$$C$$LT$anki_proto..deck_config..DeckConfig$u20$as$u20$core..convert..Into$LT$anki..deckconfig..DeckConfig$GT$$GT$..into$GT$$GT$17hf0704851024debaaE"(ptr noalias noundef align 8 dereferenceable(32) %1) #32
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 384                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_5
