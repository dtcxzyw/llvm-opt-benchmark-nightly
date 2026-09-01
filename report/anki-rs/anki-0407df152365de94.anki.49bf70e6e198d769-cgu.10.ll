Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN53_$LT$S$u20$as$u20$futures_core..stream..TryStream$GT$13try_poll_next17h863f394427f7316bE":bb.a
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !10297, !noalias !10296, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10296
  %.sroa.030.0.copyload31.i = load ptr, ptr %i.e, align 8, !noalias !10309
  %.sroa.7.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0.copyload38.i = load ptr, ptr %.sroa.7.0..sroa_idx37.i, align 8, !noalias !10309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10296
  br label %_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10295
  unreachable

_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i: ; preds = %bb.q, %bb.m
  %.sroa.7.0.i = phi ptr [ %i.ae, %bb.m ], [ %.sroa.7.0.copyload38.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.aj, %bb.m ], [ %i.be, %bb.q ]
  %.sroa.532.0.i = phi ptr [ %i.ah, %bb.m ], [ %i.bh, %bb.q ]
  %.sroa.030.0.i = phi ptr [ @_ZN5bytes9bytes_mut13SHARED_VTABLE17haa9e6d9e7b5468bdE, %bb.m ], [ %.sroa.030.0.copyload31.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10278
  store i64 1, ptr %0, align 8, !alias.scope !10273, !noalias !10281
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.030.0.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !10273, !noalias !10281
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.532.0.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10273, !noalias !10281
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10273, !noalias !10281
  %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.0.i, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10273, !noalias !10281
  br label %"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit"

bb.s:                                             ; preds = %bb.h
  store i64 2, ptr %1, align 8, !alias.scope !10276, !noalias !10282
  store i64 1, ptr %0, align 8, !alias.scope !10273, !noalias !10281
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !10273, !noalias !10281
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10273, !noalias !10281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10278
  br label %"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit"

bb.t:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10273
  unreachable

"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit": ; preds = %bb.c, %bb.g, %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E.exit.i", %_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$anki..types..Usn$u20$as$u20$core..fmt..Debug$GT$3fmt17h82a3b4271d43d4b7E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @886, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @885)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @887, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN54_$LT$csv..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he6b63501fb3a19a4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @887, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN54_$LT$httparse..Error$u20$as$u20$core..error..Error$GT$11description17h3a2c4487f445a458E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #6 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !5312, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN54_$LT$httparse..Error$u20$as$u20$core..error..Error$GT$11description17h3a2c4487f445a458E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN54_$LT$httparse..Error$u20$as$u20$core..error..Error$GT$11description17h3a2c4487f445a458E.580", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %switch.load3, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %switch.ext, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$11description17hebd9261a2db065d3E"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @882, i64 8 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$5cause17h7929946435dd1673E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !align !74, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !17, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @"_ZN54_$LT$snafu..Whatever$u20$as$u20$core..error..Error$GT$6source17h30916d1f18752b4dE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !align !74, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !17, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN55_$LT$$RF$str$u20$as$u20$anki..search..TryIntoSearch$GT$15try_into_search17hb6b61eefc3e47664E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 40)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4anki6search6parser5parse17h572bb13a822b2e02E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !318, !noundef !4
  %.not = icmp eq i64 %i.b, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775779, ptr %i.d, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 2, 21) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [104 x i8], align 8               ; 16 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread: ; preds = %.split.us.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader", %.lr.ph.split.us.i.i, %bb.q, %bb.b, %bb.at, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"
  %.sroa.0.0 = phi i8 [ %i.gy, %bb.at ], [ 0, %bb.b ], [ %.sroa.0.025, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit" ], [ %.sroa.015.5.i, %bb.q ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.at, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10313)
  %i.f = load i8, ptr %0, align 1, !alias.scope !10310, !noalias !10313, !noundef !4 ; 3 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = icmp eq i64 %1, 2
  br i1 %i.h, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 21) %1, i64 4)
  br label %.lr.ph

bb.e:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i"
  %i.j = icmp ult i64 %i.i, %i.l
  br i1 %i.j, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.k = phi i64 [ %1, %bb.d ], [ %i.l, %bb.e ]
  %i.l = add nsw i64 %i.k, -1                     ; 6 uses
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.l, i64 noundef range(i64 2, 21) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821) #44, !noalias !10315
  unreachable

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i": ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !10310, !noalias !10323, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.o, %i.f
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.g

bb.g:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i"
  %i.p = add nuw nsw i64 %1, 15
  %i.q = icmp ult i64 %3, %i.p
  br i1 %i.q, label %.lr.ph.split.us.i.i, label %bb.h

.thread.i:                                        ; preds = %bb.c
  %i.r = icmp ult i64 %3, 17
  br i1 %i.r, label %.lr.ph.split.us.i.i, label %.thread106.i

.thread106.i:                                     ; preds = %.thread.i
  %i.s = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.t = shufflevector <1 x i8> %i.s, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load <1 x i8>, ptr %.phi.trans.insert.i, align 1, !alias.scope !10310, !noalias !10313
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = insertelement <1 x i8> poison, i8 %i.o, i64 0
  %i.v = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.w = shufflevector <1 x i8> %i.v, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

.lr.ph.split.us.i.i:                              ; preds = %bb.g, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 21) %1), !alias.scope !10324, !noalias !10325
  %i.x = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.x, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.y = add i64 %3, -1                           ; 2 uses
  %.not28.i.i239 = icmp ugt i64 %1, %i.y
  br i1 %.not28.i.i239, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"
  %i.z = phi i64 [ %i.ac, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ %i.y, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ]
  %.pn.i240 = phi ptr [ %i.aa, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn.i240, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aa, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 21) %1), !alias.scope !10324, !noalias !10325
  %i.ab = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ab, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.ac = add i64 %i.z, -1                        ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ac
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.i:                                             ; preds = %bb.h, %.thread106.i
  %i.ad = phi <1 x i8> [ %.pre.i, %.thread106.i ], [ %i.u, %bb.h ]
  %i.ae = phi <16 x i8> [ %i.t, %.thread106.i ], [ %i.w, %bb.h ] ; 6 uses
  %storemerge105108.i = phi i64 [ 1, %.thread106.i ], [ %i.l, %bb.h ] ; 6 uses
  %i.af = shufflevector <1 x i8> %i.ad, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10324
  store ptr %2, ptr %i.b, align 8, !noalias !10324
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.ah, align 8, !noalias !10324
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !noalias !10324
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.g, ptr %i.aj, align 8, !noalias !10324
  %i.ak = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ak, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.i
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.i ], [ %.sroa.015.2.3.i, %bb.m ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.cc, %bb.m ] ; 2 uses
  %i.al = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.am = add i64 %.sroa.07.0.lcssa.i, %i.al
  %i.an = icmp uge i64 %i.am, %3
  %i.ao = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3118.i = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond3118.i, label %._crit_edge.i, label %.lr.ph120.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.sroa.07.0116.i = phi i64 [ %i.cc, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0116.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.ap, align 1, !alias.scope !10313, !noalias !10329
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %storemerge105108.i
  %.val.i.i = load <16 x i8>, ptr %i.aq, align 1, !alias.scope !10313, !noalias !10329
  %i.ar = icmp eq <16 x i8> %.val3.i.i, %i.ae
  %i.as = icmp eq <16 x i8> %.val.i.i, %i.af
  %narrow.i.i = select <16 x i1> %i.ar, <16 x i1> %i.as, <16 x i1> zeroinitializer
  %i.at = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !10313, !noalias !10329
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %storemerge105108.i
  %.val.i.1.i = load <16 x i8>, ptr %i.av, align 1, !alias.scope !10313, !noalias !10329
  %i.aw = icmp eq <16 x i8> %.val3.i.1.i, %i.ae
  %i.ax = icmp eq <16 x i8> %.val.i.1.i, %i.af
  %narrow.i.1.i = select <16 x i1> %i.aw, <16 x i1> %i.ax, <16 x i1> zeroinitializer
  %i.ay = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !10313, !noalias !10329
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %storemerge105108.i
  %.val.i.2.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !10313, !noalias !10329
  %i.bb = icmp eq <16 x i8> %.val3.i.2.i, %i.ae
  %i.bc = icmp eq <16 x i8> %.val.i.2.i, %i.af
  %narrow.i.2.i = select <16 x i1> %i.bb, <16 x i1> %i.bc, <16 x i1> zeroinitializer
  %i.bd = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.be, align 1, !alias.scope !10313, !noalias !10329
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %storemerge105108.i
  %.val.i.3.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !10313, !noalias !10329
  %i.bg = icmp eq <16 x i8> %.val3.i.3.i, %i.ae
  %i.bh = icmp eq <16 x i8> %.val.i.3.i, %i.af
  %narrow.i.3.i = select <16 x i1> %i.bg, <16 x i1> %i.bh, <16 x i1> zeroinitializer
  %i.bi = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.bj = icmp eq i16 %i.at, 0
  br i1 %i.bj, label %.preheader109.1.i, label %bb.n

.preheader109.1.i:                                ; preds = %bb.n, %.lr.ph.i
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ch, %bb.n ] ; 3 uses
  %i.bk = icmp eq i16 %i.ay, 0
  br i1 %i.bk, label %.preheader109.2.i, label %bb.j

bb.j:                                             ; preds = %.preheader109.1.i
  %i.bl = or disjoint i64 %.sroa.07.0116.i, 16
  %i.bm = trunc nuw i8 %.sroa.015.2.i to i1
  %i.bn = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.bl, i16 noundef %i.ay, i1 noundef zeroext %i.bm)
  %i.bo = zext i1 %i.bn to i8
  %i.bp = or i8 %.sroa.015.2.i, %i.bo
  br label %.preheader109.2.i

.preheader109.2.i:                                ; preds = %bb.j, %.preheader109.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader109.1.i ], [ %i.bp, %bb.j ] ; 3 uses
  %i.bq = icmp eq i16 %i.bd, 0
  br i1 %i.bq, label %.preheader109.3.i, label %bb.k

bb.k:                                             ; preds = %.preheader109.2.i
  %i.br = or disjoint i64 %.sroa.07.0116.i, 32
  %i.bs = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.bt = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.br, i16 noundef %i.bd, i1 noundef zeroext %i.bs)
  %i.bu = zext i1 %i.bt to i8
  %i.bv = or i8 %.sroa.015.2.1.i, %i.bu
  br label %.preheader109.3.i

.preheader109.3.i:                                ; preds = %bb.k, %.preheader109.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader109.2.i ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bw = icmp eq i16 %i.bi, 0
  br i1 %i.bw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader109.3.i
  %i.bx = or disjoint i64 %.sroa.07.0116.i, 48
  %i.by = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.bz = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.bx, i16 noundef %i.bi, i1 noundef zeroext %i.by)
  %i.ca = zext i1 %i.bz to i8
  %i.cb = or i8 %.sroa.015.2.2.i, %i.ca
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader109.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader109.3.i ], [ %i.cb, %bb.l ] ; 2 uses
  %i.cc = add i64 %.sroa.07.0116.i, 64            ; 3 uses
  %i.cd = add i64 %i.cc, %i.ak
  %i.ce = icmp uge i64 %i.cd, %3
  %i.cf = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.cg = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %.sroa.07.0116.i, i16 noundef %i.at, i1 noundef zeroext false)
  %i.ch = zext i1 %i.cg to i8
  br label %.preheader109.1.i

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %.sroa.015.3.lcssa.i = phi i8 [ %.sroa.015.0.lcssa.i, %.preheader.i ], [ %.sroa.015.4.i, %bb.o ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ao, %.preheader.i ], [ %i.cz, %bb.o ]
  %i.ci = sub i64 %3, %i.g
  %i.cj = add i64 %i.ci, -16                      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj ; 2 uses
  %.val3.i65.i = load <16 x i8>, ptr %i.ck, align 1, !alias.scope !10313, !noalias !10332
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %storemerge105108.i
  %.val.i66.i = load <16 x i8>, ptr %i.cl, align 1, !alias.scope !10313, !noalias !10332
  %i.cm = icmp eq <16 x i8> %.val3.i65.i, %i.ae
  %i.cn = icmp eq <16 x i8> %.val.i66.i, %i.af
  %narrow.i67.i = select <16 x i1> %i.cm, <16 x i1> %i.cn, <16 x i1> zeroinitializer
  %i.co = bitcast <16 x i1> %narrow.i67.i to i16  ; 2 uses
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.q, label %bb.r

.lr.ph120.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.07.1119.i = phi i64 [ %i.cw, %bb.o ], [ %.sroa.07.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.1119.i ; 2 uses
  %.val3.i68.i = load <16 x i8>, ptr %i.cq, align 1, !alias.scope !10313, !noalias !10335
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %storemerge105108.i
  %.val.i69.i = load <16 x i8>, ptr %i.cr, align 1, !alias.scope !10313, !noalias !10335
  %i.cs = icmp eq <16 x i8> %.val3.i68.i, %i.ae
  %i.ct = icmp eq <16 x i8> %.val.i69.i, %i.af
  %narrow.i70.i = select <16 x i1> %i.cs, <16 x i1> %i.ct, <16 x i1> zeroinitializer
  %i.cu = bitcast <16 x i1> %narrow.i70.i to i16  ; 2 uses
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.lr.ph120.i
  %.sroa.015.4.i = phi i8 [ 0, %.lr.ph120.i ], [ %i.db, %bb.p ] ; 2 uses
  %i.cw = add i64 %.sroa.07.1119.i, 16            ; 2 uses
  %i.cx = add i64 %i.cw, %i.al
  %i.cy = icmp uge i64 %i.cx, %3
  %i.cz = trunc nuw i8 %.sroa.015.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cy, %i.cz
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph120.i

bb.p:                                             ; preds = %.lr.ph120.i
  %i.da = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %.sroa.07.1119.i, i16 noundef %i.cu, i1 noundef zeroext false)
  %i.db = zext i1 %i.da to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %._crit_edge.i
  %.sroa.015.5.i = phi i8 [ %.sroa.015.3.lcssa.i, %._crit_edge.i ], [ %i.de, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10324
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.r:                                             ; preds = %._crit_edge.i
  %i.dc = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.cj, i16 noundef %i.co, i1 noundef zeroext %.lcssa.i)
  %i.dd = zext i1 %i.dc to i8
  %i.de = or i8 %.sroa.015.3.lcssa.i, %i.dd
  br label %bb.q

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !10338)
  %i.df = load i64, ptr %i.c, align 8, !range !53, !alias.scope !10338, !noalias !10341, !noundef !4
  %i.dg = trunc nuw i64 %i.df to i1
  br i1 %i.dg, label %bb.s, label %.preheader.i6

bb.s:                                             ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !10338, !noalias !10341, !noundef !4 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !10338, !noalias !10341, !nonnull !4, !align !74, !noundef !4 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !10338, !noalias !10341, !noundef !4 ; 14 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !10338, !noalias !10341, !nonnull !4, !align !74, !noundef !4 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !10338, !noalias !10341, !noundef !4 ; 12 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.du = add i64 %i.ds, -1                       ; 4 uses
  br i1 %i.dk, label %bb.ah, label %bb.u

.preheader.i6:                                    ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10343
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c), !noalias !10341
  %i.dv = load i64, ptr %i.a, align 8, !range !334, !noalias !10343, !noundef !4
  switch i64 %i.dv, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.t
    i64 2, label %.loopexit.i.loopexit
  ]

default.unreachable:                              ; preds = %.preheader.i6
  unreachable

bb.t:                                             ; preds = %.preheader.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10343
  br label %.preheader.i6

.loopexit.i.loopexit:                             ; preds = %.preheader.i6
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i6, %.loopexit.i.loopexit
  %storemerge.i = phi i8 [ 0, %.loopexit.i.loopexit ], [ 1, %.preheader.i6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10343
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !10344)
  call void @llvm.experimental.noalias.scope.decl(metadata !10347)
  call void @llvm.experimental.noalias.scope.decl(metadata !10349)
  %.promoted.i11 = load i64, ptr %i.dt, align 8, !alias.scope !10344, !noalias !10351 ; 2 uses
  %i.dw = add i64 %.promoted.i11, %i.du           ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.do
  br i1 %i.dx, label %.lr.ph.i14, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i14:                                       ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !10344, !noalias !10351, !noundef !4
  %i.ea = load i64, ptr %i.dh, align 8, !alias.scope !10344, !noalias !10351 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !10344, !noalias !10351 ; 2 uses
  %i.ed = sub i64 %i.ds, %i.ec
  %invariant.op = sub i64 1, %i.ea
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %.lr.ph.i14
  %i.ee = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.ef = phi i64 [ %i.dj, %.lr.ph.i14 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.eg = phi i64 [ %i.dw, %.lr.ph.i14 ], [ %i.ep, %.sink.split.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !10347, !noalias !10353, !noundef !4
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = and i64 %i.el, %i.dz
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eo = add i64 %i.ee, %i.ds
  br label %.sink.split.i

bb.x:                                             ; preds = %bb.v
  %.sroa.0.0.i.i16 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.ea) ; 4 uses
  %umax49.i17 = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i16, i64 %i.ds)
  %exitcond.not.i19228.not = icmp ult i64 %.sroa.0.0.i.i16, %i.ds
  br i1 %exitcond.not.i19228.not, label %.lr.ph230, label %.preheader30.preheader

.sink.split.i:                                    ; preds = %bb.ag, %bb.ad, %bb.w
  %.sink.i = phi i64 [ %i.ed, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.w ]
  %.ph71.i = phi i64 [ %i.fe, %bb.ad ], [ %i.fk, %bb.ag ], [ %i.eo, %bb.w ] ; 2 uses
  %i.ep = add i64 %.ph71.i, %i.du                 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.do
  br i1 %i.eq, label %bb.v, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

bb.y:                                             ; preds = %bb.ae
  %i.er = add i64 %.sroa.02.0.i18229, 1           ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.er, %umax49.i17
  br i1 %exitcond.not.i19, label %.preheader30.preheader, label %.lr.ph230

.preheader30.preheader:                           ; preds = %bb.y, %bb.x
  %i.es = icmp ult i64 %i.ef, %i.ea
  br i1 %i.es, label %.lr.ph232, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph230:                                        ; preds = %bb.x, %bb.y
  %.sroa.02.0.i18229 = phi i64 [ %i.er, %bb.y ], [ %.sroa.0.0.i.i16, %bb.x ] ; 4 uses
  %i.et = add i64 %.sroa.02.0.i18229, %i.ee       ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.do
  br i1 %i.eu, label %bb.ae, label %bb.af

.preheader30:                                     ; preds = %bb.ab
  %i.ev = icmp ult i64 %i.ef, %i.ew
  br i1 %i.ev, label %.lr.ph232, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph232:                                        ; preds = %.preheader30.preheader, %.preheader30
  %.sroa.2.0.i22231 = phi i64 [ %i.ew, %.preheader30 ], [ %i.ea, %.preheader30.preheader ]
  %i.ew = add i64 %.sroa.2.0.i22231, -1           ; 6 uses
  %i.ex = icmp ult i64 %i.ew, %i.ds
  br i1 %i.ex, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph232
  %i.ey = add i64 %i.ew, %i.ee                    ; 3 uses
  %i.ez = icmp ult i64 %i.ey, %i.do
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph232
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ew, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822) #44, !noalias !10354
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ew
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !10349, !noalias !10355, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ey
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !10347, !noalias !10353, !noundef !4
  %.not.i23 = icmp eq i8 %i.fb, %i.fd
  br i1 %.not.i23, label %.preheader30, label %bb.ad

bb.ac:                                            ; preds = %bb.z
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ey, i64 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823) #44, !noalias !10354
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fe = add i64 %i.ee, %i.ec
  br label %.sink.split.i

bb.ae:                                            ; preds = %.lr.ph230
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.02.0.i18229
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !10349, !noalias !10355, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.et
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !10347, !noalias !10353, !noundef !4
  %.not21.i21 = icmp eq i8 %i.fg, %i.fi
  br i1 %.not21.i21, label %bb.y, label %bb.ag

bb.af:                                            ; preds = %.lr.ph230
  %i.fj = add i64 %i.ee, %.sroa.0.0.i.i16
  %umax.i20 = call i64 @llvm.umax.i64(i64 %i.do, i64 %i.fj)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i20, i64 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824) #44, !noalias !10354
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %.reass.reass = add i64 %i.ee, %invariant.op
  %i.fk = add i64 %.reass.reass, %.sroa.02.0.i18229
  br label %.sink.split.i

bb.ah:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !10356)
  call void @llvm.experimental.noalias.scope.decl(metadata !10359)
  call void @llvm.experimental.noalias.scope.decl(metadata !10361)
  %.promoted.i = load i64, ptr %i.dt, align 8, !alias.scope !10356, !noalias !10363 ; 2 uses
  %i.fl = add i64 %.promoted.i, %i.du             ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.do
  br i1 %i.fm, label %.lr.ph.i9, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i9:                                        ; preds = %bb.ah
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !10356, !noalias !10363, !noundef !4
  %i.fp = load i64, ptr %i.dh, align 8, !alias.scope !10356, !noalias !10363 ; 8 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !10356, !noalias !10363
  %umax49.i = call i64 @llvm.umax.i64(i64 %i.fp, i64 %i.ds)
  %i.fs = add i64 %i.fp, -1
  %.first_iter = icmp ult i64 %i.fs, %i.ds
  %exitcond.not.i233.not = icmp ult i64 %i.fp, %i.ds
  %invariant.op320 = sub i64 1, %i.fp
  %.not28236 = icmp eq i64 %i.fp, 0
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i9
  %i.ft = phi i64 [ %.promoted.i, %.lr.ph.i9 ], [ %i.gd, %bb.ak ] ; 6 uses
  %i.fu = phi i64 [ %i.fl, %.lr.ph.i9 ], [ %i.ge, %bb.ak ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !10359, !noalias !10365, !noundef !4
  %i.fx = and i8 %i.fw, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fz, %i.fo
  %i.gb = icmp eq i64 %i.ga, 0
end_hunk_0
