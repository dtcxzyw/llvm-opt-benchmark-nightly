Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/json-parser?download=true
inline.NumInlined: 4577
inline.NumDeleted: 1231
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN2v88internal10JsonParserIhE15ParseJsonObjectENS0_6HandleINS0_3MapEEE:bb.a
  br i1 %.not45.i.i.i.i474, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i476, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2394, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i476: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i473
  %i.aez = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i471, i64 2
  %i.afa = load i8, ptr %i.aez, align 1
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1           ; 2 uses
  %.not46.i.i.i.i477 = icmp eq i8 %i.afd, 9
  br i1 %.not46.i.i.i.i477, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i479, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2391.a, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i479: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i476
  %i.afe = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i471, i64 3
  %i.aff = load i8, ptr %i.afe, align 1
  %i.afg = zext i8 %i.aff to i64
  %i.afh = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1           ; 2 uses
  %.not47.i.i.i.i480 = icmp eq i8 %i.afi, 9
  br i1 %.not47.i.i.i.i480, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i482, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i482: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i479
  %i.afj = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i471, i64 4
  %i.afk = add nsw i64 %.071.i.i.i.i470, -1
  %i.afl = icmp sgt i64 %.071.i.i.i.i470, 1
  br i1 %i.afl, label %.lr.ph.i.i.i.i469, label %._crit_edge.loopexit.i.i.i.i483, !llvm.loop !4

._crit_edge.loopexit.i.i.i.i483:                  ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i482
  %.pre.i.i.i.i484 = ptrtoint ptr %scevgep.i.i.i.i468 to i64
  br label %._crit_edge.i.i.i.i453

._crit_edge.i.i.i.i453:                           ; preds = %._crit_edge.loopexit.i.i.i.i483, %bb.ep
  %.pre-phi.i.i.i.i454 = phi i64 [ %.pre.i.i.i.i484, %._crit_edge.loopexit.i.i.i.i483 ], [ %i.ael, %bb.ep ]
  %.029.lcssa.i.i.i.i455 = phi ptr [ %scevgep.i.i.i.i468, %._crit_edge.loopexit.i.i.i.i483 ], [ %i.aei, %bb.ep ] ; 5 uses
  %i.afm = sub i64 %i.aek, %.pre-phi.i.i.i.i454
  switch i64 %i.afm, label %.loopexit1420.thread [
    i64 3, label %bb.eq
    i64 2, label %bb.er
    i64 1, label %bb.es
  ]

bb.eq:                                            ; preds = %._crit_edge.i.i.i.i453
  %i.afn = load i8, ptr %.029.lcssa.i.i.i.i455, align 1
  %i.afo = zext i8 %i.afn to i64
  %i.afp = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1           ; 2 uses
  %.not.i.i.i.i465 = icmp eq i8 %i.afq, 9
  br i1 %.not.i.i.i.i465, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i466, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i466: ; preds = %bb.eq
  %i.afr = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i455, i64 1
  br label %bb.er

bb.er:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i466, %._crit_edge.i.i.i.i453
  %.1.i.i.i.i462 = phi ptr [ %i.afr, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i466 ], [ %.029.lcssa.i.i.i.i455, %._crit_edge.i.i.i.i453 ] ; 3 uses
  %i.afs = load i8, ptr %.1.i.i.i.i462, align 1
  %i.aft = zext i8 %i.afs to i64
  %i.afu = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1           ; 2 uses
  %.not42.i.i.i.i463 = icmp eq i8 %i.afv, 9
  br i1 %.not42.i.i.i.i463, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i464, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i464: ; preds = %bb.er
  %i.afw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i462, i64 1
  br label %bb.es

bb.es:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i464, %._crit_edge.i.i.i.i453
  %.2.i.i.i.i456 = phi ptr [ %i.afw, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i464 ], [ %.029.lcssa.i.i.i.i455, %._crit_edge.i.i.i.i453 ] ; 2 uses
  %i.afx = load i8, ptr %.2.i.i.i.i456, align 1
  %i.afy = zext i8 %i.afx to i64
  %i.afz = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1           ; 2 uses
  %.not43.i.i.i.i457 = icmp eq i8 %i.aga, 9
  br i1 %.not43.i.i.i.i457, label %.loopexit1420.thread, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, !prof !29

.loopexit1420.thread:                             ; preds = %bb.es, %._crit_edge.i.i.i.i453
  store ptr %i.aej, ptr %i.k, align 8
  store i8 13, ptr %.ph, align 8
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread1259

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i479
  %i.agb = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i471, i64 3
  br label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2391.a: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i476
  %i.agc = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i471, i64 2
  br label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2394: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i473
  %i.agd = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i471, i64 1
  br label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485: ; preds = %.lr.ph.i.i.i.i469, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2391.a, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2394, %bb.es, %bb.eq, %bb.er
  %.0.i460 = phi i8 [ %i.afq, %bb.eq ], [ %i.aga, %bb.es ], [ %i.afv, %bb.er ], [ %i.aey, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2394 ], [ %i.afd, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2391.a ], [ %i.afi, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit ], [ %i.aet, %.lr.ph.i.i.i.i469 ] ; 2 uses
  %.028.i.i.i.i461 = phi ptr [ %.029.lcssa.i.i.i.i455, %bb.eq ], [ %.2.i.i.i.i456, %bb.es ], [ %.1.i.i.i.i462, %bb.er ], [ %i.agd, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2394 ], [ %i.agc, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit2391.a ], [ %i.agb, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485.loopexit.split.loop.exit ], [ %.02970.i.i.i.i471, %.lr.ph.i.i.i.i469 ] ; 4 uses
  store ptr %.028.i.i.i.i461, ptr %i.k, align 8
  store i8 %.0.i460, ptr %.ph, align 8
  switch i8 %.0.i460, label %bb.fa [
    i8 0, label %bb.et
    i8 1, label %bb.eu
    i8 6, label %bb.ev
    i8 7, label %bb.ew
    i8 8, label %bb.ex
    i8 2, label %bb.ey
    i8 4, label %bb.ez
    i8 10, label %.loopexit1420
    i8 11, label %.loopexit1420
    i8 12, label %.loopexit1420
    i8 3, label %.loopexit1420
    i8 5, label %.loopexit1420
    i8 13, label %.loopexit1420
  ]

bb.et:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  %i.age = call ptr @_ZN2v88internal10JsonParserIhE15ParseJsonNumberEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

bb.eu:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  %i.agf = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i461, i64 1
  store ptr %i.agf, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.agg = call { i64, i32 } @_ZN2v88internal10JsonParserIhE14ScanJsonStringEb(ptr noundef nonnull align 8 dereferenceable(928) %0, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract.i.i46 = extractvalue { i64, i32 } %i.agg, 0
  %.fca.1.extract.i.i47 = extractvalue { i64, i32 } %i.agg, 1
  store i64 %.fca.0.extract.i.i46, ptr %13, align 8
  %.sroa.2.0.extract.trunc.i.i49 = trunc i32 %.fca.1.extract.i.i47 to i8
  store i8 %.sroa.2.0.extract.trunc.i.i49, ptr %.sroa.2.0..sroa_idx.i.i48, align 8
  %i.agh = call ptr @_ZN2v88internal10JsonParserIhE10MakeStringERKNS0_10JsonStringENS0_6HandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

bb.ev:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  call void @_ZN2v88internal10JsonParserIhE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split

bb.ew:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  call void @_ZN2v88internal10JsonParserIhE11ScanLiteralILm6EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(6) @.str.1)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split

bb.ex:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  call void @_ZN2v88internal10JsonParserIhE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.2)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split

bb.ey:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  %i.agi = call ptr @_ZN2v88internal10JsonParserIhE15ParseJsonObjectENS0_6HandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr null)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

bb.ez:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  %i.agj = call ptr @_ZN2v88internal10JsonParserIhE14ParseJsonArrayEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

.loopexit1420:                                    ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  %i.agk = icmp eq ptr %.028.i.i.i.i461, %i.aej
  br i1 %i.agk, label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread1259, label %_ZN2v88internal10JsonParserIhE16CurrentCharacterEv.exit487, !prof !33

_ZN2v88internal10JsonParserIhE16CurrentCharacterEv.exit487: ; preds = %.loopexit1420
  %i.agl = load i8, ptr %.028.i.i.i.i461, align 1
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread1259

_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread1259: ; preds = %.loopexit1420.thread, %_ZN2v88internal10JsonParserIhE16CurrentCharacterEv.exit487, %.loopexit1420
  %.0.i488 = phi i8 [ 13, %.loopexit1420 ], [ %i.ago, %_ZN2v88internal10JsonParserIhE16CurrentCharacterEv.exit487 ], [ 13, %.loopexit1420.thread ]
  call void @_ZN2v88internal10JsonParserIhE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %.0.i488, i64 0)
  br label %_ZN2v88internal10JsonParserIhE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread

bb.fa:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit485
  unreachable

_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i: ; preds = %bb.ez, %bb.ey, %bb.eu, %bb.et
  %.sroa.0940.0 = phi ptr [ %i.age, %bb.et ], [ %i.agh, %bb.eu ], [ %i.agi, %bb.ey ], [ %i.agj, %bb.ez ] ; 2 uses
  %i.agp = icmp eq ptr %.sroa.0940.0, null
  br i1 %i.agp, label %_ZN2v88internal10JsonParserIhE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread, label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread

_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split: ; preds = %bb.ev, %bb.ew, %bb.ex
  %.sink2566 = phi i64 [ 664, %bb.ex ], [ 680, %bb.ew ], [ 672, %bb.ev ]
  %i.agq = load ptr, ptr %0, align 8
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 %.sink2566
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread

_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread: ; preds = %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split, %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i
  %.sroa.0940.01258 = phi ptr [ %.sroa.0940.0, %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i ], [ %i.agr, %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split ]
  %i.ags = load ptr, ptr %i.br, align 8           ; 2 uses
  %i.agt = load ptr, ptr %i.lh, align 8
  %i.agu = icmp eq ptr %i.ags, %i.agt
  br i1 %i.agu, label %bb.fb, label %_ZN2v88internal10JsonParserIhE22ParseJsonPropertyValueERKNS0_10JsonStringE.exit73, !prof !29

bb.fb:                                            ; preds = %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal12JsonPropertyELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(408) %i.bq)
  %.pre.i491 = load ptr, ptr %i.br, align 8
  br label %_ZN2v88internal10JsonParserIhE22ParseJsonPropertyValueERKNS0_10JsonStringE.exit73

bb.fc:                                            ; preds = %bb.eo
  %i.agv = load i64, ptr %.0.i.i139, align 8      ; 3 uses
  %i.agw = mul i64 %.sroa.0897.0, 103079215104
  %sext.i.i494 = add i64 %i.agw, 137438953472
  %i.agx = ashr exact i64 %sext.i.i494, 32        ; 2 uses
  %i.agy = add nsw i64 %i.agx, -1
  %i.agz = add i64 %i.agy, %i.agv
  %i.aha = inttoptr i64 %i.agz to ptr
  %i.ahb = load atomic volatile i64, ptr %i.aha monotonic, align 8
  %i.ahc = or disjoint i64 %i.agx, 7
  %i.ahd = add i64 %i.ahc, %i.agv
  %i.ahe = inttoptr i64 %i.ahd to ptr
  %i.ahf = load atomic volatile i64, ptr %i.ahe monotonic, align 8
  %i.ahg = and i64 %i.ahf, 171798691840
  %or.cond2972 = icmp eq i64 %i.ahg, 0
  %15 = add i64 %i.ahb, -1
  %16 = inttoptr i64 %15 to ptr                   ; 6 uses
  %17 = load atomic volatile i64, ptr %16 monotonic, align 8
  %18 = add i64 %17, 11
  %19 = inttoptr i64 %18 to ptr
  %20 = load atomic volatile i16, ptr %19 monotonic, align 2
  br i1 %or.cond2972, label %bb.fd, label %.thread1268.a, !prof !44

bb.fd:                                            ; preds = %bb.fc
  %21 = icmp eq i16 %20, 128
  %i.ahh = and i8 %.sroa.223.0.extract.trunc.i, 4
  %i.ahi = icmp ne i8 %i.ahh, 0
  %or.cond = or i1 %21, %i.ahi
  br i1 %or.cond, label %.thread1268.a, label %bb.fe, !prof !45

bb.fe:                                            ; preds = %bb.fd
  %i.ahj = load atomic volatile i64, ptr %16 monotonic, align 8
  %i.ahk = add i64 %i.ahj, 11
  %i.ahl = inttoptr i64 %i.ahk to ptr             ; 2 uses
  %i.ahm = load atomic volatile i16, ptr %i.ahl monotonic, align 2
  %i.ahn = and i16 %i.ahm, 8
  %i.aho = icmp eq i16 %i.ahn, 0
  br i1 %i.aho, label %.thread1268.a, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ahp = load atomic volatile i16, ptr %i.ahl monotonic, align 2
  switch i16 %i.ahp, label %bb.fl [
    i16 8, label %bb.fg
    i16 10, label %bb.fh
    i16 26, label %bb.fh
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.ahq = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit498

bb.fh:                                            ; preds = %bb.ff, %bb.ff
  %i.ahr = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ahs = load i64, ptr %i.ahr, align 8
  %i.aht = inttoptr i64 %i.ahs to ptr             ; 6 uses
  %i.ahu = load atomic volatile i64, ptr %16 monotonic, align 8
  %i.ahv = add i64 %i.ahu, 11
  %i.ahw = inttoptr i64 %i.ahv to ptr
  %i.ahx = load atomic volatile i16, ptr %i.ahw monotonic, align 2
  %i.ahy = and i16 %i.ahx, 16
  %.not.i.i496 = icmp eq i16 %i.ahy, 0
  br i1 %.not.i.i496, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ahz = load ptr, ptr %i.aht, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load ptr, ptr %i.aia, align 8
  %i.aic = call noundef zeroext i1 %i.aib(ptr noundef nonnull align 8 dereferenceable(8) %i.aht) #18, !inline_history !11
  br i1 %i.aic, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aht) #18
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.aie = load ptr, ptr %i.aid, align 8
  br label %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit498

bb.fk:                                            ; preds = %bb.fi, %bb.fh
  %i.aif = load ptr, ptr %i.aht, align 8
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 72
  %i.aih = load ptr, ptr %i.aig, align 8
  %i.aii = call noundef ptr %i.aih(ptr noundef nonnull align 8 dereferenceable(16) %i.aht) #18, !inline_history !11
  br label %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit498

bb.fl:                                            ; preds = %bb.ff
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #19
  unreachable

_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit498: ; preds = %bb.fg, %bb.fj, %bb.fk
  %.0.i497 = phi ptr [ %i.ahq, %bb.fg ], [ %i.aie, %bb.fj ], [ %i.aii, %bb.fk ]
  %i.aij = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.aik = load i32, ptr %i.aij, align 4          ; 2 uses
  %.sroa.01063.4.extract.shift = lshr i64 %.fca.0.extract.i31, 32
  %.sroa.01063.4.extract.trunc = trunc nuw i64 %.sroa.01063.4.extract.shift to i32
  %i.ail = icmp eq i32 %i.aik, %.sroa.01063.4.extract.trunc
  br i1 %i.ail, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit498
  %i.aim = load ptr, ptr %i.li, align 8
  %i.ain = and i64 %.fca.0.extract.i31, 4294967295
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aim, i64 %i.ain
  %i.aip = zext i32 %i.aik to i64
  %bcmp.i.i499 = call i32 @bcmp(ptr %.0.i497, ptr %i.aio, i64 %i.aip)
  %i.aiq = icmp ne i32 %bcmp.i.i499, 0
  br label %bb.fn

.thread1268.a:                                    ; preds = %bb.fc, %bb.fd, %bb.fe
  %i.air = add i64 %i.agv, 15
  %i.ais = inttoptr i64 %i.air to ptr             ; 2 uses
  %i.ait = load atomic volatile i32, ptr %i.ais monotonic, align 4
  %i.aiu = and i32 %i.ait, -4
  %i.aiv = or disjoint i32 %i.aiu, 1
  store atomic volatile i32 %i.aiv, ptr %i.ais monotonic, align 4
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit498, %bb.fm, %.thread1268.a
  %.131.i1274 = phi i1 [ true, %.thread1268.a ], [ true, %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit498 ], [ %i.aiq, %bb.fm ]
  call void @_ZN2v88internal10JsonParserIhE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext 10, i64 4294967641)
  %i.aiw = load ptr, ptr %i.k, align 8            ; 4 uses
  %i.aix = load ptr, ptr %i.n, align 8            ; 3 uses
  %i.aiy = ptrtoint ptr %i.aix to i64             ; 2 uses
  %i.aiz = ptrtoint ptr %i.aiw to i64             ; 2 uses
  %i.aja = sub i64 %i.aiy, %i.aiz                 ; 2 uses
  %i.ajb = ashr i64 %i.aja, 2                     ; 2 uses
  %i.ajc = icmp sgt i64 %i.ajb, 0
  br i1 %i.ajc, label %.lr.ph.preheader.i.i.i.i514, label %._crit_edge.i.i.i.i500

.lr.ph.preheader.i.i.i.i514:                      ; preds = %bb.fn
  %i.ajd = and i64 %i.aja, -4
  %scevgep.i.i.i.i515 = getelementptr i8, ptr %i.aiw, i64 %i.ajd ; 2 uses
  br label %.lr.ph.i.i.i.i516

.lr.ph.i.i.i.i516:                                ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i529, %.lr.ph.preheader.i.i.i.i514
  %.071.i.i.i.i517 = phi i64 [ %i.ajy, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i529 ], [ %i.ajb, %.lr.ph.preheader.i.i.i.i514 ] ; 2 uses
  %.02970.i.i.i.i518 = phi ptr [ %i.ajx, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i529 ], [ %i.aiw, %.lr.ph.preheader.i.i.i.i514 ] ; 9 uses
  %i.aje = load i8, ptr %.02970.i.i.i.i518, align 1
  %i.ajf = zext i8 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.ajf
  %i.ajh = load i8, ptr %i.ajg, align 1           ; 2 uses
  %.not44.i.i.i.i519 = icmp eq i8 %i.ajh, 9
  br i1 %.not44.i.i.i.i519, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i520, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i520: ; preds = %.lr.ph.i.i.i.i516
  %i.aji = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i518, i64 1
  %i.ajj = load i8, ptr %i.aji, align 1
  %i.ajk = zext i8 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.ajk
  %i.ajm = load i8, ptr %i.ajl, align 1           ; 2 uses
  %.not45.i.i.i.i521 = icmp eq i8 %i.ajm, 9
  br i1 %.not45.i.i.i.i521, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i523, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2405, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i523: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i520
  %i.ajn = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i518, i64 2
  %i.ajo = load i8, ptr %i.ajn, align 1
  %i.ajp = zext i8 %i.ajo to i64
  %i.ajq = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.ajp
  %i.ajr = load i8, ptr %i.ajq, align 1           ; 2 uses
  %.not46.i.i.i.i524 = icmp eq i8 %i.ajr, 9
  br i1 %.not46.i.i.i.i524, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i526, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2402.a, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i526: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i523
  %i.ajs = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i518, i64 3
  %i.ajt = load i8, ptr %i.ajs, align 1
  %i.aju = zext i8 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.aju
  %i.ajw = load i8, ptr %i.ajv, align 1           ; 2 uses
  %.not47.i.i.i.i527 = icmp eq i8 %i.ajw, 9
  br i1 %.not47.i.i.i.i527, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i529, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i529: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i526
  %i.ajx = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i518, i64 4
  %i.ajy = add nsw i64 %.071.i.i.i.i517, -1
  %i.ajz = icmp sgt i64 %.071.i.i.i.i517, 1
  br i1 %i.ajz, label %.lr.ph.i.i.i.i516, label %._crit_edge.loopexit.i.i.i.i530, !llvm.loop !4

._crit_edge.loopexit.i.i.i.i530:                  ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit32.i.i.i.i529
  %.pre.i.i.i.i531 = ptrtoint ptr %scevgep.i.i.i.i515 to i64
  br label %._crit_edge.i.i.i.i500

._crit_edge.i.i.i.i500:                           ; preds = %._crit_edge.loopexit.i.i.i.i530, %bb.fn
  %.pre-phi.i.i.i.i501 = phi i64 [ %.pre.i.i.i.i531, %._crit_edge.loopexit.i.i.i.i530 ], [ %i.aiz, %bb.fn ]
  %.029.lcssa.i.i.i.i502 = phi ptr [ %scevgep.i.i.i.i515, %._crit_edge.loopexit.i.i.i.i530 ], [ %i.aiw, %bb.fn ] ; 5 uses
  %i.aka = sub i64 %i.aiy, %.pre-phi.i.i.i.i501
  switch i64 %i.aka, label %.loopexit1422.thread [
    i64 3, label %bb.fo
    i64 2, label %bb.fp
    i64 1, label %bb.fq
  ]

bb.fo:                                            ; preds = %._crit_edge.i.i.i.i500
  %i.akb = load i8, ptr %.029.lcssa.i.i.i.i502, align 1
  %i.akc = zext i8 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.akc
  %i.ake = load i8, ptr %i.akd, align 1           ; 2 uses
  %.not.i.i.i.i512 = icmp eq i8 %i.ake, 9
  br i1 %.not.i.i.i.i512, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i513, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i513: ; preds = %bb.fo
  %i.akf = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i502, i64 1
  br label %bb.fp

bb.fp:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i513, %._crit_edge.i.i.i.i500
  %.1.i.i.i.i509 = phi ptr [ %i.akf, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit33.i.i.i.i513 ], [ %.029.lcssa.i.i.i.i502, %._crit_edge.i.i.i.i500 ] ; 3 uses
  %i.akg = load i8, ptr %.1.i.i.i.i509, align 1
  %i.akh = zext i8 %i.akg to i64
  %i.aki = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.akh
  %i.akj = load i8, ptr %i.aki, align 1           ; 2 uses
  %.not42.i.i.i.i510 = icmp eq i8 %i.akj, 9
  br i1 %.not42.i.i.i.i510, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i511, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, !prof !29

_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i511: ; preds = %bb.fp
  %i.akk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i509, i64 1
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i511, %._crit_edge.i.i.i.i500
  %.2.i.i.i.i503 = phi ptr [ %i.akk, %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit34.i.i.i.i511 ], [ %.029.lcssa.i.i.i.i502, %._crit_edge.i.i.i.i500 ] ; 2 uses
  %i.akl = load i8, ptr %.2.i.i.i.i503, align 1
  %i.akm = zext i8 %i.akl to i64
  %i.akn = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.akm
  %i.ako = load i8, ptr %i.akn, align 1           ; 2 uses
  %.not43.i.i.i.i504 = icmp eq i8 %i.ako, 9
  br i1 %.not43.i.i.i.i504, label %.loopexit1422.thread, label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, !prof !29

.loopexit1422.thread:                             ; preds = %bb.fq, %._crit_edge.i.i.i.i500
  store ptr %i.aix, ptr %i.k, align 8
  store i8 13, ptr %.ph, align 8
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread1284

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit31.i.i.i.i526
  %i.akp = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i518, i64 3
  br label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2402.a: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit30.i.i.i.i523
  %i.akq = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i518, i64 2
  br label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2405: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserIhE14SkipWhitespaceEvEUlhE_EclIPKhEEbT_.exit.i.i.i.i520
  %i.akr = getelementptr inbounds nuw i8, ptr %.02970.i.i.i.i518, i64 1
  br label %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532

_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532: ; preds = %.lr.ph.i.i.i.i516, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2402.a, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2405, %bb.fq, %bb.fo, %bb.fp
  %.0.i507 = phi i8 [ %i.ake, %bb.fo ], [ %i.ako, %bb.fq ], [ %i.akj, %bb.fp ], [ %i.ajm, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2405 ], [ %i.ajr, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2402.a ], [ %i.ajw, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit ], [ %i.ajh, %.lr.ph.i.i.i.i516 ] ; 2 uses
  %.028.i.i.i.i508 = phi ptr [ %.029.lcssa.i.i.i.i502, %bb.fo ], [ %.2.i.i.i.i503, %bb.fq ], [ %.1.i.i.i.i509, %bb.fp ], [ %i.akr, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2405 ], [ %i.akq, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit2402.a ], [ %i.akp, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532.loopexit.split.loop.exit ], [ %.02970.i.i.i.i518, %.lr.ph.i.i.i.i516 ] ; 4 uses
  store ptr %.028.i.i.i.i508, ptr %i.k, align 8
  store i8 %.0.i507, ptr %.ph, align 8
  switch i8 %.0.i507, label %bb.fy [
    i8 0, label %bb.fr
    i8 1, label %bb.fs
    i8 6, label %bb.ft
    i8 7, label %bb.fu
    i8 8, label %bb.fv
    i8 2, label %bb.fw
    i8 4, label %bb.fx
    i8 10, label %.loopexit1422
    i8 11, label %.loopexit1422
    i8 12, label %.loopexit1422
    i8 3, label %.loopexit1422
    i8 5, label %.loopexit1422
    i8 13, label %.loopexit1422
  ]

bb.fr:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  %i.aks = call ptr @_ZN2v88internal10JsonParserIhE15ParseJsonNumberEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

bb.fs:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  %i.akt = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i508, i64 1
  store ptr %i.akt, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.aku = call { i64, i32 } @_ZN2v88internal10JsonParserIhE14ScanJsonStringEb(ptr noundef nonnull align 8 dereferenceable(928) %0, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract.i.i69 = extractvalue { i64, i32 } %i.aku, 0
  %.fca.1.extract.i.i70 = extractvalue { i64, i32 } %i.aku, 1
  store i64 %.fca.0.extract.i.i69, ptr %10, align 8
  %.sroa.2.0.extract.trunc.i.i72 = trunc i32 %.fca.1.extract.i.i70 to i8
  store i8 %.sroa.2.0.extract.trunc.i.i72, ptr %.sroa.2.0..sroa_idx.i.i71, align 8
  %i.akv = call ptr @_ZN2v88internal10JsonParserIhE10MakeStringERKNS0_10JsonStringENS0_6HandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

bb.ft:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  call void @_ZN2v88internal10JsonParserIhE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split

bb.fu:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  call void @_ZN2v88internal10JsonParserIhE11ScanLiteralILm6EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(6) @.str.1)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split

bb.fv:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  call void @_ZN2v88internal10JsonParserIhE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.2)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split

bb.fw:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  %i.akw = call ptr @_ZN2v88internal10JsonParserIhE15ParseJsonObjectENS0_6HandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr null)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

bb.fx:                                            ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  %i.akx = call ptr @_ZN2v88internal10JsonParserIhE14ParseJsonArrayEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

.loopexit1422:                                    ; preds = %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532, %_ZN2v88internal10JsonParserIhE14SkipWhitespaceEv.exit532
  %i.aky = icmp eq ptr %.028.i.i.i.i508, %i.aix
  br i1 %i.aky, label %_ZN2v88internal10JsonParserIhE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread1284, label %_ZN2v88internal10JsonParserIhE16CurrentCharacterEv.exit534, !prof !33

_ZN2v88internal10JsonParserIhE16CurrentCharacterEv.exit534: ; preds = %.loopexit1422
  %i.akz = load i8, ptr %.028.i.i.i.i508, align 1
  %i.ala = zext i8 %i.akz to i64
  %i.alb = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.ala
end_hunk_0
begin_hunk_1_@_ZN2v88internal10JsonParserItE15ParseJsonObjectENS0_6HandleINS0_3MapEEE:bb.a
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  store ptr %i.to, ptr %i.bd, align 8
  store i64 %.fca.0.extract.i13, ptr %i.tn, align 8
  %.sroa.4463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i8 %.sroa.2.0.extract.trunc.i16, ptr %.sroa.4463.0..sroa_idx, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store ptr %.sroa.0709.0849, ptr %i.tp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  store i8 13, ptr %i.q, align 1
  %i.tq = load ptr, ptr %i.ap, align 8
  %i.tr = load ptr, ptr %i.as, align 8
  %i.ts = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.tq, ptr noundef %i.tr, ptr nonnull %i.q) ; 2 uses
  store ptr %i.ts, ptr %i.ap, align 8
  %i.tt = load i8, ptr %i.q, align 1              ; 3 uses
  store i8 %i.tt, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  %.not.i271 = icmp eq i8 %i.tt, 11
  br i1 %.not.i271, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i255, label %_ZN2v88internal10JsonParserItE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread951, !llvm.loop !118

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i274: ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i274.preheader, %_ZN2v88internal10JsonParserItE5CheckENS0_9JsonTokenE.exit323
  %i.tu = phi ptr [ %i.aah, %_ZN2v88internal10JsonParserItE5CheckENS0_9JsonTokenE.exit323 ], [ %.pre, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i274.preheader ]
  %.0763 = phi i64 [ 4294967639, %_ZN2v88internal10JsonParserItE5CheckENS0_9JsonTokenE.exit323 ], [ 4294967636, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i274.preheader ]
  %.sroa.0555.0 = phi i64 [ %.sroa.0555.2912, %_ZN2v88internal10JsonParserItE5CheckENS0_9JsonTokenE.exit323 ], [ 0, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i274.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  store i8 13, ptr %i.p, align 1
  %i.tv = load ptr, ptr %i.as, align 8
  %i.tw = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.tu, ptr noundef %i.tv, ptr nonnull %i.p) ; 2 uses
  store ptr %i.tw, ptr %i.ap, align 8
  %i.tx = load i8, ptr %i.p, align 1              ; 3 uses
  store i8 %i.tx, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  %i.ty = icmp eq i8 %i.tx, 1
  br i1 %i.ty, label %bb.es, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i275, !prof !30

bb.es:                                            ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i274
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  store ptr %i.tz, ptr %i.ap, align 8
  br label %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit277

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i275: ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i274
  call void @_ZN2v88internal10JsonParserItE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %i.tx, i64 %.0763)
  br label %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit277

_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit277: ; preds = %bb.es, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i275
  %i.ua = call { i64, i32 } @_ZN2v88internal10JsonParserItE19ScanJsonPropertyKeyEPNS2_16JsonContinuationE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull %14) ; 2 uses
  %.fca.0.extract.i31 = extractvalue { i64, i32 } %i.ua, 0 ; 4 uses
  %.fca.1.extract.i32 = extractvalue { i64, i32 } %i.ua, 1 ; 2 uses
  %.sroa.223.0.extract.trunc.i = trunc i32 %.fca.1.extract.i32 to i8 ; 2 uses
  %.sroa.6.8.insert.ext = and i32 %.fca.1.extract.i32, 255 ; 2 uses
  %i.ub = and i8 %.sroa.223.0.extract.trunc.i, 8
  %.not = icmp eq i8 %i.ub, 0
  br i1 %.not, label %bb.fg, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i279

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i279: ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  store i8 13, ptr %i.o, align 1
  %i.uc = load ptr, ptr %i.ap, align 8
  %i.ud = load ptr, ptr %i.as, align 8
  %i.ue = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.uc, ptr noundef %i.ud, ptr nonnull %i.o) ; 2 uses
  store ptr %i.ue, ptr %i.ap, align 8
  %i.uf = load i8, ptr %i.o, align 1              ; 3 uses
  store i8 %i.uf, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  %i.ug = icmp eq i8 %i.uf, 10
  br i1 %i.ug, label %bb.et, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i280, !prof !30

bb.et:                                            ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i279
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 2 ; 2 uses
  store ptr %i.uh, ptr %i.ap, align 8
  br label %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i280: ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i279
  call void @_ZN2v88internal10JsonParserItE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %i.uf, i64 4294967641)
  %.pre1115.a = load ptr, ptr %i.ap, align 8
  br label %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282

_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282: ; preds = %bb.et, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i280
  %i.ui = phi ptr [ %i.uh, %bb.et ], [ %.pre1115.a, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i280 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  store i8 13, ptr %i.n, align 1
  %i.uj = load ptr, ptr %i.as, align 8
  %i.uk = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.ui, ptr noundef %i.uj, ptr nonnull %i.n) ; 4 uses
  store ptr %i.uk, ptr %i.ap, align 8
  %i.ul = load i8, ptr %i.n, align 1              ; 2 uses
  store i8 %i.ul, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  switch i8 %i.ul, label %bb.fe [
    i8 0, label %bb.eu
    i8 1, label %bb.ev
    i8 6, label %bb.ew
    i8 7, label %bb.ex
    i8 8, label %bb.ey
    i8 2, label %bb.ez
    i8 4, label %bb.fa
    i8 10, label %bb.fb
    i8 11, label %bb.fb
    i8 12, label %bb.fb
    i8 3, label %bb.fb
    i8 5, label %bb.fb
    i8 13, label %bb.fb
    i8 9, label %bb.fd
  ]

bb.eu:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  %i.um = call ptr @_ZN2v88internal10JsonParserItE15ParseJsonNumberEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

bb.ev:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 2
  store ptr %i.un, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.uo = call { i64, i32 } @_ZN2v88internal10JsonParserItE14ScanJsonStringEb(ptr noundef nonnull align 8 dereferenceable(928) %0, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract.i.i46 = extractvalue { i64, i32 } %i.uo, 0
  %.fca.1.extract.i.i47 = extractvalue { i64, i32 } %i.uo, 1
  store i64 %.fca.0.extract.i.i46, ptr %13, align 8
  %.sroa.2.0.extract.trunc.i.i49 = trunc i32 %.fca.1.extract.i.i47 to i8
  store i8 %.sroa.2.0.extract.trunc.i.i49, ptr %.sroa.2.0..sroa_idx.i.i48, align 8
  %i.up = call ptr @_ZN2v88internal10JsonParserItE10MakeStringERKNS0_10JsonStringENS0_6HandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

bb.ew:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  call void @_ZN2v88internal10JsonParserItE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split

bb.ex:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  call void @_ZN2v88internal10JsonParserItE11ScanLiteralILm6EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(6) @.str.1)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split

bb.ey:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  call void @_ZN2v88internal10JsonParserItE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.2)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split

bb.ez:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  %i.uq = call ptr @_ZN2v88internal10JsonParserItE15ParseJsonObjectENS0_6HandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr null)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

bb.fa:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  %i.ur = call ptr @_ZN2v88internal10JsonParserItE14ParseJsonArrayEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i

bb.fb:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  %i.us = load ptr, ptr %i.as, align 8
  %i.ut = icmp eq ptr %i.uk, %i.us
  br i1 %i.ut, label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread862, label %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit284, !prof !29

_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit284: ; preds = %bb.fb
  %i.uu = load i16, ptr %i.uk, align 2            ; 2 uses
  %i.uv = icmp ult i16 %i.uu, 256
  br i1 %i.uv, label %bb.fc, label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread862

bb.fc:                                            ; preds = %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit284
  %i.uw = zext nneg i16 %i.uu to i64
  %i.ux = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread862

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread862: ; preds = %bb.fc, %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit284, %bb.fb
  %.0.i285 = phi i8 [ 12, %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit284 ], [ %i.uy, %bb.fc ], [ 13, %bb.fb ]
  call void @_ZN2v88internal10JsonParserItE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %.0.i285, i64 0)
  br label %_ZN2v88internal10JsonParserItE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread949

bb.fd:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #19
  unreachable

bb.fe:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit282
  unreachable

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i: ; preds = %bb.fa, %bb.ez, %bb.ev, %bb.eu
  %.sroa.0599.0 = phi ptr [ %i.um, %bb.eu ], [ %i.up, %bb.ev ], [ %i.uq, %bb.ez ], [ %i.ur, %bb.fa ] ; 2 uses
  %i.uz = icmp eq ptr %.sroa.0599.0, null
  br i1 %i.uz, label %_ZN2v88internal10JsonParserItE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread949, label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split: ; preds = %bb.ew, %bb.ex, %bb.ey
  %.sink1309 = phi i64 [ 664, %bb.ey ], [ 680, %bb.ex ], [ 672, %bb.ew ]
  %i.va = load ptr, ptr %0, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %.sink1309
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread: ; preds = %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i
  %.sroa.0599.0861 = phi ptr [ %.sroa.0599.0, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i ], [ %i.vb, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread.sink.split ]
  %i.vc = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.vd = load ptr, ptr %i.hr, align 8
  %i.ve = icmp eq ptr %i.vc, %i.vd
  br i1 %i.ve, label %bb.ff, label %_ZN2v88internal10JsonParserItE22ParseJsonPropertyValueERKNS0_10JsonStringE.exit73, !prof !29

bb.ff:                                            ; preds = %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i.thread
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal12JsonPropertyELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(408) %i.bc)
  %.pre.i288 = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal10JsonParserItE22ParseJsonPropertyValueERKNS0_10JsonStringE.exit73

bb.fg:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit277
  %i.vf = load i64, ptr %.0.i.i139, align 8       ; 3 uses
  %i.vg = mul i64 %.sroa.0555.0, 103079215104
  %sext.i.i291 = add i64 %i.vg, 137438953472
  %i.vh = ashr exact i64 %sext.i.i291, 32         ; 2 uses
  %i.vi = add nsw i64 %i.vh, -1
  %i.vj = add i64 %i.vi, %i.vf
  %i.vk = inttoptr i64 %i.vj to ptr
  %i.vl = load atomic volatile i64, ptr %i.vk monotonic, align 8
  %i.vm = or disjoint i64 %i.vh, 7
  %i.vn = add i64 %i.vm, %i.vf
  %i.vo = inttoptr i64 %i.vn to ptr
  %i.vp = load atomic volatile i64, ptr %i.vo monotonic, align 8
  %i.vq = and i64 %i.vp, 171798691840
  %or.cond1392 = icmp eq i64 %i.vq, 0
  %15 = add i64 %i.vl, -1
  %16 = inttoptr i64 %15 to ptr                   ; 6 uses
  %17 = load atomic volatile i64, ptr %16 monotonic, align 8
  %18 = add i64 %17, 11
  %19 = inttoptr i64 %18 to ptr
  %20 = load atomic volatile i16, ptr %19 monotonic, align 2
  br i1 %or.cond1392, label %bb.fh, label %.thread874, !prof !44

bb.fh:                                            ; preds = %bb.fg
  %21 = icmp eq i16 %20, 128
  %i.vr = and i8 %.sroa.223.0.extract.trunc.i, 4
  %i.vs = icmp ne i8 %i.vr, 0
  %or.cond = or i1 %21, %i.vs
  br i1 %or.cond, label %.thread874, label %bb.fi, !prof !45

bb.fi:                                            ; preds = %bb.fh
  %i.vt = load atomic volatile i64, ptr %16 monotonic, align 8
  %i.vu = add i64 %i.vt, 11
  %i.vv = inttoptr i64 %i.vu to ptr               ; 2 uses
  %i.vw = load atomic volatile i16, ptr %i.vv monotonic, align 2
  %i.vx = and i16 %i.vw, 8
  %i.vy = icmp eq i16 %i.vx, 0
  br i1 %i.vy, label %.thread874, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.vz = load atomic volatile i16, ptr %i.vv monotonic, align 2
  switch i16 %i.vz, label %bb.fp [
    i16 8, label %bb.fk
    i16 10, label %bb.fl
    i16 26, label %bb.fl
  ]

bb.fk:                                            ; preds = %bb.fj
  %i.wa = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit295

bb.fl:                                            ; preds = %bb.fj, %bb.fj
  %i.wb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.wc = load i64, ptr %i.wb, align 8
  %i.wd = inttoptr i64 %i.wc to ptr               ; 6 uses
  %i.we = load atomic volatile i64, ptr %16 monotonic, align 8
  %i.wf = add i64 %i.we, 11
  %i.wg = inttoptr i64 %i.wf to ptr
  %i.wh = load atomic volatile i16, ptr %i.wg monotonic, align 2
  %i.wi = and i16 %i.wh, 16
  %.not.i.i293 = icmp eq i16 %i.wi, 0
  br i1 %.not.i.i293, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wj = load ptr, ptr %i.wd, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8
  %i.wm = call noundef zeroext i1 %i.wl(ptr noundef nonnull align 8 dereferenceable(8) %i.wd) #18, !inline_history !11
  br i1 %i.wm, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #18
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8
  br label %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit295

bb.fo:                                            ; preds = %bb.fm, %bb.fl
  %i.wp = load ptr, ptr %i.wd, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 72
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = call noundef ptr %i.wr(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #18, !inline_history !11
  br label %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit295

bb.fp:                                            ; preds = %bb.fj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #19
  unreachable

_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit295: ; preds = %bb.fk, %bb.fn, %bb.fo
  %.0.i294 = phi ptr [ %i.wa, %bb.fk ], [ %i.wo, %bb.fn ], [ %i.ws, %bb.fo ] ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.wu = load i32, ptr %i.wt, align 4            ; 3 uses
  %.sroa.0721.4.extract.shift = lshr i64 %.fca.0.extract.i31, 32
  %.sroa.0721.4.extract.trunc = trunc nuw i64 %.sroa.0721.4.extract.shift to i32
  %.not1041 = icmp eq i32 %i.wu, %.sroa.0721.4.extract.trunc
  br i1 %.not1041, label %bb.fq, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i304

bb.fq:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit295
  %i.wv = zext i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.i294, i64 %i.wv
  %i.wx = icmp eq i32 %i.wu, 0
  br i1 %i.wx, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i304, label %.lr.ph.i.i296.preheader

.lr.ph.i.i296.preheader:                          ; preds = %bb.fq
  %i.wy = load ptr, ptr %i.hs, align 8
  %i.wz = and i64 %.fca.0.extract.i31, 4294967295
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %i.wz
  br label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %.lr.ph.i.i296.preheader, %.lr.ph.i.i296
  %.01013.i.i297 = phi ptr [ %i.xf, %.lr.ph.i.i296 ], [ %i.xa, %.lr.ph.i.i296.preheader ] ; 2 uses
  %.01112.i.i298 = phi ptr [ %i.xe, %.lr.ph.i.i296 ], [ %.0.i294, %.lr.ph.i.i296.preheader ] ; 2 uses
  %i.xb = load i8, ptr %.01112.i.i298, align 1
  %i.xc = load i16, ptr %.01013.i.i297, align 2
  %i.xd = zext i8 %i.xb to i16
  %.not.i.i299 = icmp ne i16 %i.xc, %i.xd         ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.01112.i.i298, i64 1 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.01013.i.i297, i64 2
  %.not16.i.i301 = icmp uge ptr %i.xe, %i.ww
  %or.cond970.not = select i1 %.not.i.i299, i1 true, i1 %.not16.i.i301
  br i1 %or.cond970.not, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i304, label %.lr.ph.i.i296, !llvm.loop !17

.thread874:                                       ; preds = %bb.fg, %bb.fh, %bb.fi
  %i.xg = add i64 %i.vf, 15
  %i.xh = inttoptr i64 %i.xg to ptr               ; 2 uses
  %i.xi = load atomic volatile i32, ptr %i.xh monotonic, align 4
  %i.xj = and i32 %i.xi, -4
  %i.xk = or disjoint i32 %i.xj, 1
  store atomic volatile i32 %i.xk, ptr %i.xh monotonic, align 4
  br label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i304

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i304: ; preds = %.lr.ph.i.i296, %bb.fq, %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit295, %.thread874
  %.131.i877 = phi i1 [ true, %.thread874 ], [ false, %bb.fq ], [ true, %_ZN2v88internal12_GLOBAL__N_115GetFastKeyCharsEPNS0_7IsolateENS0_6TaggedINS0_6StringEEENS4_INS0_3MapEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit295 ], [ %.not.i.i299, %.lr.ph.i.i296 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  store i8 13, ptr %i.m, align 1
  %i.xl = load ptr, ptr %i.ap, align 8
  %i.xm = load ptr, ptr %i.as, align 8
  %i.xn = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.xl, ptr noundef %i.xm, ptr nonnull %i.m) ; 2 uses
  store ptr %i.xn, ptr %i.ap, align 8
  %i.xo = load i8, ptr %i.m, align 1              ; 3 uses
  store i8 %i.xo, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  %i.xp = icmp eq i8 %i.xo, 10
  br i1 %i.xp, label %bb.fr, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i305, !prof !30

bb.fr:                                            ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i304
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 2 ; 2 uses
  store ptr %i.xq, ptr %i.ap, align 8
  br label %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i305: ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i304
  call void @_ZN2v88internal10JsonParserItE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %i.xo, i64 4294967641)
  %.pre1116.a = load ptr, ptr %i.ap, align 8
  br label %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307

_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307: ; preds = %bb.fr, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i305
  %i.xr = phi ptr [ %i.xq, %bb.fr ], [ %.pre1116.a, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit.i.i305 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store i8 13, ptr %i.l, align 1
  %i.xs = load ptr, ptr %i.as, align 8
  %i.xt = call noundef ptr @_ZSt9__find_ifIPKtN9__gnu_cxx5__ops10_Iter_predIZN2v88internal10JsonParserItE14SkipWhitespaceEvEUltE_EEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.xr, ptr noundef %i.xs, ptr nonnull %i.l) ; 4 uses
  store ptr %i.xt, ptr %i.ap, align 8
  %i.xu = load i8, ptr %i.l, align 1              ; 2 uses
  store i8 %i.xu, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  switch i8 %i.xu, label %bb.gc [
    i8 0, label %bb.fs
    i8 1, label %bb.ft
    i8 6, label %bb.fu
    i8 7, label %bb.fv
    i8 8, label %bb.fw
    i8 2, label %bb.fx
    i8 4, label %bb.fy
    i8 10, label %bb.fz
    i8 11, label %bb.fz
    i8 12, label %bb.fz
    i8 3, label %bb.fz
    i8 5, label %bb.fz
    i8 13, label %bb.fz
    i8 9, label %bb.gb
  ]

bb.fs:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  %i.xv = call ptr @_ZN2v88internal10JsonParserItE15ParseJsonNumberEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

bb.ft:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 2
  store ptr %i.xw, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.xx = call { i64, i32 } @_ZN2v88internal10JsonParserItE14ScanJsonStringEb(ptr noundef nonnull align 8 dereferenceable(928) %0, i1 noundef zeroext false) ; 2 uses
  %.fca.0.extract.i.i69 = extractvalue { i64, i32 } %i.xx, 0
  %.fca.1.extract.i.i70 = extractvalue { i64, i32 } %i.xx, 1
  store i64 %.fca.0.extract.i.i69, ptr %10, align 8
  %.sroa.2.0.extract.trunc.i.i72 = trunc i32 %.fca.1.extract.i.i70 to i8
  store i8 %.sroa.2.0.extract.trunc.i.i72, ptr %.sroa.2.0..sroa_idx.i.i71, align 8
  %i.xy = call ptr @_ZN2v88internal10JsonParserItE10MakeStringERKNS0_10JsonStringENS0_6HandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

bb.fu:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  call void @_ZN2v88internal10JsonParserItE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split

bb.fv:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  call void @_ZN2v88internal10JsonParserItE11ScanLiteralILm6EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(6) @.str.1)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split

bb.fw:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  call void @_ZN2v88internal10JsonParserItE11ScanLiteralILm5EEEvRAT__Kc(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.2)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split

bb.fx:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  %i.xz = call ptr @_ZN2v88internal10JsonParserItE15ParseJsonObjectENS0_6HandleINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr null)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

bb.fy:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  %i.ya = call ptr @_ZN2v88internal10JsonParserItE14ParseJsonArrayEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66

bb.fz:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307, %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  %i.yb = load ptr, ptr %i.as, align 8
  %i.yc = icmp eq ptr %i.xt, %i.yb
  br i1 %i.yc, label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread885, label %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit309, !prof !29

_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit309: ; preds = %bb.fz
  %i.yd = load i16, ptr %i.xt, align 2            ; 2 uses
  %i.ye = icmp ult i16 %i.yd, 256
  br i1 %i.ye, label %bb.ga, label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread885

bb.ga:                                            ; preds = %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit309
  %i.yf = zext nneg i16 %i.yd to i64
  %i.yg = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_120one_char_json_tokensE, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread885

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread885: ; preds = %bb.ga, %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit309, %bb.fz
  %.0.i310 = phi i8 [ 12, %_ZN2v88internal10JsonParserItE16CurrentCharacterEv.exit309 ], [ %i.yh, %bb.ga ], [ 13, %bb.fz ]
  call void @_ZN2v88internal10JsonParserItE21ReportUnexpectedTokenENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext %.0.i310, i64 0)
  br label %_ZN2v88internal10JsonParserItE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread949

bb.gb:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #19
  unreachable

bb.gc:                                            ; preds = %_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE.exit307
  unreachable

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66: ; preds = %bb.fy, %bb.fx, %bb.ft, %bb.fs
  %.sroa.0632.0 = phi ptr [ %i.xv, %bb.fs ], [ %i.xy, %bb.ft ], [ %i.xz, %bb.fx ], [ %i.ya, %bb.fy ] ; 2 uses
  %i.yi = icmp eq ptr %.sroa.0632.0, null
  br i1 %i.yi, label %_ZN2v88internal10JsonParserItE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread949, label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split: ; preds = %bb.fu, %bb.fv, %bb.fw
  %.sink1311 = phi i64 [ 664, %bb.fw ], [ 680, %bb.fv ], [ 672, %bb.fu ]
  %i.yj = load ptr, ptr %0, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 %.sink1311
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread

_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread: ; preds = %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66
  %.sroa.0632.0884 = phi ptr [ %.sroa.0632.0, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66 ], [ %i.yk, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread.sink.split ]
  %i.yl = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.ym = load ptr, ptr %i.hr, align 8
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %bb.gd, label %bb.ge, !prof !29

bb.gd:                                            ; preds = %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal12JsonPropertyELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(408) %i.bc)
  %.pre.i313 = load ptr, ptr %i.bd, align 8
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread
  %i.yo = phi ptr [ %.pre.i313, %bb.gd ], [ %i.yl, %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i66.thread ] ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  store ptr %i.yp, ptr %i.bd, align 8
  store i64 %.fca.0.extract.i31, ptr %i.yo, align 8
  %.sroa.6.0..sroa_idx547 = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store i32 %.sroa.6.8.insert.ext, ptr %.sroa.6.0..sroa_idx547, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store ptr %.sroa.0632.0884, ptr %i.yq, align 8
  br i1 %.131.i877, label %bb.gf, label %_ZN2v88internal10JsonParserItE22ParseJsonPropertyValueERKNS0_10JsonStringE.exit73.thread908, !prof !29

bb.gf:                                            ; preds = %bb.ge
  %i.yr = call noundef zeroext i1 @_ZN2v88internal10JsonParserItE5CheckENS0_9JsonTokenE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext 11)
  br i1 %i.yr, label %.preheader979, label %_ZN2v88internal10JsonParserItE25ParseJsonObjectPropertiesILNS0_15DescriptorArray17FastIterableStateE1EEEbPNS2_16JsonContinuationENS0_15MessageTemplateENS0_6HandleIS4_EE.exit24.thread951thread-pre-split

.preheader979:                                    ; preds = %bb.gf
  %.sroa.2.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.gg

bb.gg:                                            ; preds = %.preheader979, %bb.gt
  call void @_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext 1, i64 4294967639)
  %i.ys = call { i64, i32 } @_ZN2v88internal10JsonParserItE19ScanJsonPropertyKeyEPNS2_16JsonContinuationE(ptr noundef nonnull align 8 dereferenceable(928) %0, ptr noundef nonnull %14) ; 2 uses
  %.fca.0.extract.i41.i = extractvalue { i64, i32 } %i.ys, 0
  %.fca.1.extract.i42.i = extractvalue { i64, i32 } %i.ys, 1
  %.sroa.2.0.extract.trunc.i44.i = trunc i32 %.fca.1.extract.i42.i to i8
  call void @_ZN2v88internal10JsonParserItE10ExpectNextENS0_9JsonTokenESt8optionalINS0_15MessageTemplateEE(ptr noundef nonnull align 8 dereferenceable(928) %0, i8 noundef zeroext 10, i64 4294967641)
  call void @_ZN2v88internal10JsonParserItE14SkipWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  %i.yt = load i8, ptr %i.aw, align 8
  switch i8 %i.yt, label %bb.gr [
    i8 0, label %bb.gh
    i8 1, label %bb.gi
    i8 6, label %bb.gj
    i8 7, label %bb.gk
    i8 8, label %bb.gl
    i8 2, label %bb.gm
    i8 4, label %bb.gn
    i8 10, label %bb.go
    i8 11, label %bb.go
    i8 12, label %bb.go
    i8 3, label %bb.go
    i8 5, label %bb.go
    i8 13, label %bb.go
    i8 9, label %bb.gq
  ]

bb.gh:                                            ; preds = %bb.gg
  %i.yu = call ptr @_ZN2v88internal10JsonParserItE15ParseJsonNumberEv(ptr noundef nonnull align 8 dereferenceable(928) %0)
  br label %_ZN2v88internal10JsonParserItE23ParseJsonValueRecursiveENS0_6HandleINS0_3MapEEE.exit.i50

bb.gi:                                            ; preds = %bb.gg
  %i.yv = load ptr, ptr %i.ap, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 2
end_hunk_1
