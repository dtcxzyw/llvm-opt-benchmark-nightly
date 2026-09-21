Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN53_$LT$S$u20$as$u20$futures_core..stream..TryStream$GT$13try_poll_next17h863f394427f7316bE":bb.a
  invoke void %i.ba(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %i.bd, i64 noundef %i.ar)
          to label %common.resume.i unwind label %bb.r, !noalias !10305, !inline_history !0

bb.q:                                             ; preds = %bb.n
  %i.be = sub nuw i64 %i.ar, %i.ak
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !10307, !noalias !10306, !noundef !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10306
  %.sroa.030.0.copyload31.i = load ptr, ptr %i.e, align 8, !noalias !10313
  %.sroa.7.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0.copyload38.i = load ptr, ptr %.sroa.7.0..sroa_idx37.i, align 8, !noalias !10313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10306
  br label %_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10305
  unreachable

_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i: ; preds = %bb.q, %bb.m
  %.sroa.7.0.i = phi ptr [ %i.ae, %bb.m ], [ %.sroa.7.0.copyload38.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.aj, %bb.m ], [ %i.be, %bb.q ]
  %.sroa.532.0.i = phi ptr [ %i.ah, %bb.m ], [ %i.bh, %bb.q ]
  %.sroa.030.0.i = phi ptr [ @_ZN5bytes9bytes_mut13SHARED_VTABLE17haa9e6d9e7b5468bdE, %bb.m ], [ %.sroa.030.0.copyload31.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10296
  store i64 1, ptr %0, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.030.0.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.532.0.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.0.i, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  br label %"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit"

bb.s:                                             ; preds = %bb.h
  store i64 2, ptr %1, align 8, !alias.scope !10295, !noalias !10299
  store i64 1, ptr %0, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10294, !noalias !10298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10296
  br label %"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit"

bb.t:                                             ; preds = %.body.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !10294
  unreachable

"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE.exit": ; preds = %bb.c, %bb.g, %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E.exit.i", %_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10296
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
  %i.a = load i8, ptr %0, align 1, !range !66, !noundef !13 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !align !22, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14, !noundef !13
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
  %i.b = load ptr, ptr %i.a, align 8, !align !22, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !13, !align !14, !noundef !13
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
  %i.b = load i64, ptr %i.a, align 8, !range !34, !noundef !13
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
  %.sroa.0.0 = phi i8 [ %i.gw, %bb.at ], [ 0, %bb.b ], [ %.sroa.0.025, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit" ], [ %.sroa.015.5.i, %bb.q ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.at, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10347)
  %i.f = load i8, ptr %0, align 1, !alias.scope !10346, !noalias !10347, !noundef !13 ; 6 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = icmp eq i64 %1, 2
  br i1 %i.h, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 21) %1, i64 4) ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, %1
  br i1 %i.j, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i", label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

4:                                                ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i"
  %5 = icmp ult i64 %i.i, %18
  br i1 %5, label %.lr.ph.1, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph.1:                                         ; preds = %4
  %6 = add nsw i64 %1, -2                         ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %8, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.1
  %i.k = icmp ult i64 %i.i, %6
  br i1 %i.k, label %.lr.ph.2, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph.2:                                         ; preds = %bb.e
  %9 = add nsw i64 %1, -3                         ; 4 uses
  %10 = icmp samesign ugt i64 %1, 2
  br i1 %10, label %.lr.ph.a, label %19

.lr.ph.a:                                         ; preds = %.lr.ph.2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %12 = load i8, ptr %11, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %12, %i.f
  br i1 %.not.i.not.i.i.2, label %13, label %bb.g

13:                                               ; preds = %.lr.ph.a
  %14 = icmp ult i64 %i.i, %9
  br i1 %14, label %.lr.ph.3, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph.3:                                         ; preds = %13
  %15 = add nsw i64 %1, -4                        ; 3 uses
  %.not283 = icmp eq i64 %1, 3
  br i1 %.not283, label %19, label %bb.f

bb.f:                                             ; preds = %.lr.ph.3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %17, %i.f
  br i1 %.not.i.not.i.i.3, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit, label %bb.g

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i": ; preds = %bb.d
  %18 = add nsw i64 %1, -1                        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !10346, !noalias !10348, !noundef !13 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.m, %i.f
  br i1 %.not.i.not.i.i, label %4, label %bb.g

19:                                               ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa278 = phi i64 [ %15, %.lr.ph.3 ], [ %9, %.lr.ph.2 ]
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa278, i64 noundef range(i64 2, 21) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821) #44, !noalias !10349
  unreachable

bb.g:                                             ; preds = %bb.f, %.lr.ph.a, %.lr.ph.1, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i"
  %.lcssa281 = phi i8 [ %i.m, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i" ], [ %8, %.lr.ph.1 ], [ %12, %.lr.ph.a ], [ %17, %bb.f ]
  %.lcssa279 = phi i64 [ %18, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i" ], [ %6, %.lr.ph.1 ], [ %9, %.lr.ph.a ], [ %15, %bb.f ]
  %i.n = add nuw nsw i64 %1, 15
  %i.o = icmp ult i64 %3, %i.n
  br i1 %i.o, label %.lr.ph.split.us.i.i, label %bb.h

.thread.i:                                        ; preds = %bb.c
  %i.p = icmp ult i64 %3, 17
  br i1 %i.p, label %.lr.ph.split.us.i.i, label %.thread106.i

.thread106.i:                                     ; preds = %.thread.i
  %i.q = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.r = shufflevector <1 x i8> %i.q, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load <1 x i8>, ptr %.phi.trans.insert.i, align 1, !alias.scope !10346, !noalias !10347
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = insertelement <1 x i8> poison, i8 %.lcssa281, i64 0
  %i.t = insertelement <1 x i8> poison, i8 %i.f, i64 0
  %i.u = shufflevector <1 x i8> %i.t, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

.lr.ph.split.us.i.i:                              ; preds = %bb.g, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 21) %1), !alias.scope !10350, !noalias !10351
  %i.v = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.v, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.w = add i64 %3, -1                           ; 2 uses
  %.not28.i.i239 = icmp ugt i64 %1, %i.w
  br i1 %.not28.i.i239, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"
  %i.x = phi i64 [ %i.aa, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ %i.w, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ]
  %.pn.i240 = phi ptr [ %i.y, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.preheader" ]
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i240, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 2, 21) %1), !alias.scope !10350, !noalias !10351
  %i.z = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.z, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.aa = add i64 %i.x, -1                        ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.aa
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.i:                                             ; preds = %bb.h, %.thread106.i
  %i.ab = phi <1 x i8> [ %.pre.i, %.thread106.i ], [ %i.s, %bb.h ]
  %i.ac = phi <16 x i8> [ %i.r, %.thread106.i ], [ %i.u, %bb.h ] ; 6 uses
  %storemerge105108.i = phi i64 [ 1, %.thread106.i ], [ %.lcssa279, %bb.h ] ; 6 uses
  %i.ad = shufflevector <1 x i8> %i.ab, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10350
  store ptr %2, ptr %i.b, align 8, !noalias !10350
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.af, align 8, !noalias !10350
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !10350
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.g, ptr %i.ah, align 8, !noalias !10350
  %i.ai = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.i
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.i ], [ %.sroa.015.2.3.i, %bb.m ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.ca, %bb.m ] ; 2 uses
  %i.aj = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.ak = add i64 %.sroa.07.0.lcssa.i, %i.aj
  %i.al = icmp uge i64 %i.ak, %3
  %i.am = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3118.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond3118.i, label %._crit_edge.i, label %.lr.ph120.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.sroa.07.0116.i = phi i64 [ %i.ca, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0116.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !10347, !noalias !10352
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %storemerge105108.i
  %.val.i.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !10347, !noalias !10352
  %i.ap = icmp eq <16 x i8> %.val3.i.i, %i.ac
  %i.aq = icmp eq <16 x i8> %.val.i.i, %i.ad
  %narrow.i.i = select <16 x i1> %i.ap, <16 x i1> %i.aq, <16 x i1> zeroinitializer
  %i.ar = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.as, align 1, !alias.scope !10347, !noalias !10352
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %storemerge105108.i
  %.val.i.1.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !10347, !noalias !10352
  %i.au = icmp eq <16 x i8> %.val3.i.1.i, %i.ac
  %i.av = icmp eq <16 x i8> %.val.i.1.i, %i.ad
  %narrow.i.1.i = select <16 x i1> %i.au, <16 x i1> %i.av, <16 x i1> zeroinitializer
  %i.aw = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.ax, align 1, !alias.scope !10347, !noalias !10352
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %storemerge105108.i
  %.val.i.2.i = load <16 x i8>, ptr %i.ay, align 1, !alias.scope !10347, !noalias !10352
  %i.az = icmp eq <16 x i8> %.val3.i.2.i, %i.ac
  %i.ba = icmp eq <16 x i8> %.val.i.2.i, %i.ad
  %narrow.i.2.i = select <16 x i1> %i.az, <16 x i1> %i.ba, <16 x i1> zeroinitializer
  %i.bb = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.bc, align 1, !alias.scope !10347, !noalias !10352
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %storemerge105108.i
  %.val.i.3.i = load <16 x i8>, ptr %i.bd, align 1, !alias.scope !10347, !noalias !10352
  %i.be = icmp eq <16 x i8> %.val3.i.3.i, %i.ac
  %i.bf = icmp eq <16 x i8> %.val.i.3.i, %i.ad
  %narrow.i.3.i = select <16 x i1> %i.be, <16 x i1> %i.bf, <16 x i1> zeroinitializer
  %i.bg = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.bh = icmp eq i16 %i.ar, 0
  br i1 %i.bh, label %.preheader109.1.i, label %bb.n

.preheader109.1.i:                                ; preds = %bb.n, %.lr.ph.i
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cf, %bb.n ] ; 3 uses
  %i.bi = icmp eq i16 %i.aw, 0
  br i1 %i.bi, label %.preheader109.2.i, label %bb.j

bb.j:                                             ; preds = %.preheader109.1.i
  %i.bj = or disjoint i64 %.sroa.07.0116.i, 16
  %i.bk = trunc nuw i8 %.sroa.015.2.i to i1
  %i.bl = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.bj, i16 noundef %i.aw, i1 noundef zeroext %i.bk)
  %i.bm = zext i1 %i.bl to i8
  %i.bn = or i8 %.sroa.015.2.i, %i.bm
  br label %.preheader109.2.i

.preheader109.2.i:                                ; preds = %bb.j, %.preheader109.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader109.1.i ], [ %i.bn, %bb.j ] ; 3 uses
  %i.bo = icmp eq i16 %i.bb, 0
  br i1 %i.bo, label %.preheader109.3.i, label %bb.k

bb.k:                                             ; preds = %.preheader109.2.i
  %i.bp = or disjoint i64 %.sroa.07.0116.i, 32
  %i.bq = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.br = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.bp, i16 noundef %i.bb, i1 noundef zeroext %i.bq)
  %i.bs = zext i1 %i.br to i8
  %i.bt = or i8 %.sroa.015.2.1.i, %i.bs
  br label %.preheader109.3.i

.preheader109.3.i:                                ; preds = %bb.k, %.preheader109.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader109.2.i ], [ %i.bt, %bb.k ] ; 3 uses
  %i.bu = icmp eq i16 %i.bg, 0
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader109.3.i
  %i.bv = or disjoint i64 %.sroa.07.0116.i, 48
  %i.bw = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.bx = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.bv, i16 noundef %i.bg, i1 noundef zeroext %i.bw)
  %i.by = zext i1 %i.bx to i8
  %i.bz = or i8 %.sroa.015.2.2.i, %i.by
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader109.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader109.3.i ], [ %i.bz, %bb.l ] ; 2 uses
  %i.ca = add i64 %.sroa.07.0116.i, 64            ; 3 uses
  %i.cb = add i64 %i.ca, %i.ai
  %i.cc = icmp uge i64 %i.cb, %3
  %i.cd = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.ce = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %.sroa.07.0116.i, i16 noundef %i.ar, i1 noundef zeroext false)
  %i.cf = zext i1 %i.ce to i8
  br label %.preheader109.1.i

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %.sroa.015.3.lcssa.i = phi i8 [ %.sroa.015.0.lcssa.i, %.preheader.i ], [ %.sroa.015.4.i, %bb.o ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.am, %.preheader.i ], [ %i.cx, %bb.o ]
  %i.cg = sub i64 %3, %i.g
  %i.ch = add i64 %i.cg, -16                      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch ; 2 uses
  %.val3.i65.i = load <16 x i8>, ptr %i.ci, align 1, !alias.scope !10347, !noalias !10353
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %storemerge105108.i
  %.val.i66.i = load <16 x i8>, ptr %i.cj, align 1, !alias.scope !10347, !noalias !10353
  %i.ck = icmp eq <16 x i8> %.val3.i65.i, %i.ac
  %i.cl = icmp eq <16 x i8> %.val.i66.i, %i.ad
  %narrow.i67.i = select <16 x i1> %i.ck, <16 x i1> %i.cl, <16 x i1> zeroinitializer
  %i.cm = bitcast <16 x i1> %narrow.i67.i to i16  ; 2 uses
  %i.cn = icmp eq i16 %i.cm, 0
  br i1 %i.cn, label %bb.q, label %bb.r

.lr.ph120.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.07.1119.i = phi i64 [ %i.cu, %bb.o ], [ %.sroa.07.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.1119.i ; 2 uses
  %.val3.i68.i = load <16 x i8>, ptr %i.co, align 1, !alias.scope !10347, !noalias !10354
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %storemerge105108.i
  %.val.i69.i = load <16 x i8>, ptr %i.cp, align 1, !alias.scope !10347, !noalias !10354
  %i.cq = icmp eq <16 x i8> %.val3.i68.i, %i.ac
  %i.cr = icmp eq <16 x i8> %.val.i69.i, %i.ad
  %narrow.i70.i = select <16 x i1> %i.cq, <16 x i1> %i.cr, <16 x i1> zeroinitializer
  %i.cs = bitcast <16 x i1> %narrow.i70.i to i16  ; 2 uses
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.lr.ph120.i
  %.sroa.015.4.i = phi i8 [ 0, %.lr.ph120.i ], [ %i.cz, %bb.p ] ; 2 uses
  %i.cu = add i64 %.sroa.07.1119.i, 16            ; 2 uses
  %i.cv = add i64 %i.cu, %i.aj
  %i.cw = icmp uge i64 %i.cv, %3
  %i.cx = trunc nuw i8 %.sroa.015.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cw, %i.cx
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph120.i

bb.p:                                             ; preds = %.lr.ph120.i
  %i.cy = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %.sroa.07.1119.i, i16 noundef %i.cs, i1 noundef zeroext false)
  %i.cz = zext i1 %i.cy to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %._crit_edge.i
  %.sroa.015.5.i = phi i8 [ %.sroa.015.3.lcssa.i, %._crit_edge.i ], [ %i.dc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10350
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.r:                                             ; preds = %._crit_edge.i
  %i.da = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, i64 noundef %i.ch, i16 noundef %i.cm, i1 noundef zeroext %.lcssa.i)
  %i.db = zext i1 %i.da to i8
  %i.dc = or i8 %.sroa.015.3.lcssa.i, %i.db
  br label %bb.q

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit: ; preds = %4, %bb.e, %13, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !10355)
  %i.dd = load i64, ptr %i.c, align 8, !range !18, !alias.scope !10355, !noalias !10356, !noundef !13
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %bb.s, label %.preheader.i6

bb.s:                                             ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !10355, !noalias !10356, !noundef !13 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !10355, !noalias !10356, !nonnull !13, !align !22, !noundef !13 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !10355, !noalias !10356, !noundef !13 ; 14 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !10355, !noalias !10356, !nonnull !13, !align !22, !noundef !13 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !10355, !noalias !10356, !noundef !13 ; 12 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ds = add i64 %i.dq, -1                       ; 4 uses
  br i1 %i.di, label %bb.ah, label %bb.u

.preheader.i6:                                    ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10357
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c), !noalias !10356
  %i.dt = load i64, ptr %i.a, align 8, !range !36, !noalias !10357, !noundef !13
  switch i64 %i.dt, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.t
    i64 2, label %.loopexit.i.loopexit
  ]

default.unreachable:                              ; preds = %.preheader.i6
  unreachable

bb.t:                                             ; preds = %.preheader.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10357
  br label %.preheader.i6

.loopexit.i.loopexit:                             ; preds = %.preheader.i6
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i6, %.loopexit.i.loopexit
  %storemerge.i = phi i8 [ 0, %.loopexit.i.loopexit ], [ 1, %.preheader.i6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10357
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !10358)
  call void @llvm.experimental.noalias.scope.decl(metadata !10359)
  call void @llvm.experimental.noalias.scope.decl(metadata !10360)
  %.promoted.i11 = load i64, ptr %i.dr, align 8, !alias.scope !10358, !noalias !10361 ; 2 uses
  %i.du = add i64 %.promoted.i11, %i.ds           ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dm
  br i1 %i.dv, label %.lr.ph.i14, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i14:                                       ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !10358, !noalias !10361, !noundef !13
  %i.dy = load i64, ptr %i.df, align 8, !alias.scope !10358, !noalias !10361 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !10358, !noalias !10361 ; 2 uses
  %i.eb = sub i64 %i.dq, %i.ea
  %invariant.op = sub i64 1, %i.dy
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %.lr.ph.i14
  %i.ec = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.ed = phi i64 [ %i.dh, %.lr.ph.i14 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.ee = phi i64 [ %i.du, %.lr.ph.i14 ], [ %i.en, %.sink.split.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !10359, !noalias !10362, !noundef !13
  %i.eh = and i8 %i.eg, 63
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.ej, %i.dx
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.em = add i64 %i.ec, %i.dq
  br label %.sink.split.i

bb.x:                                             ; preds = %bb.v
  %.sroa.0.0.i.i16 = call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.dy) ; 4 uses
  %umax49.i17 = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i16, i64 %i.dq)
  %exitcond.not.i19228.not = icmp ult i64 %.sroa.0.0.i.i16, %i.dq
  br i1 %exitcond.not.i19228.not, label %.lr.ph230, label %.preheader30.preheader

.sink.split.i:                                    ; preds = %bb.ag, %bb.ad, %bb.w
  %.sink.i = phi i64 [ %i.eb, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.w ]
  %.ph71.i = phi i64 [ %i.fc, %bb.ad ], [ %i.fi, %bb.ag ], [ %i.em, %bb.w ] ; 2 uses
  %i.en = add i64 %.ph71.i, %i.ds                 ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.dm
  br i1 %i.eo, label %bb.v, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

bb.y:                                             ; preds = %bb.ae
  %i.ep = add i64 %.sroa.02.0.i18229, 1           ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.ep, %umax49.i17
  br i1 %exitcond.not.i19, label %.preheader30.preheader, label %.lr.ph230

.preheader30.preheader:                           ; preds = %bb.y, %bb.x
  %i.eq = icmp ult i64 %i.ed, %i.dy
  br i1 %i.eq, label %.lr.ph232, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph230:                                        ; preds = %bb.x, %bb.y
  %.sroa.02.0.i18229 = phi i64 [ %i.ep, %bb.y ], [ %.sroa.0.0.i.i16, %bb.x ] ; 4 uses
  %i.er = add i64 %.sroa.02.0.i18229, %i.ec       ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.dm
  br i1 %i.es, label %bb.ae, label %bb.af

.preheader30:                                     ; preds = %bb.ab
  %i.et = icmp ult i64 %i.ed, %i.eu
  br i1 %i.et, label %.lr.ph232, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph232:                                        ; preds = %.preheader30.preheader, %.preheader30
  %.sroa.2.0.i22231 = phi i64 [ %i.eu, %.preheader30 ], [ %i.dy, %.preheader30.preheader ]
  %i.eu = add i64 %.sroa.2.0.i22231, -1           ; 6 uses
  %i.ev = icmp ult i64 %i.eu, %i.dq
  br i1 %i.ev, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph232
  %i.ew = add i64 %i.eu, %i.ec                    ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %i.dm
  br i1 %i.ex, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph232
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.eu, i64 noundef %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822) #44, !noalias !10363
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eu
  %i.ez = load i8, ptr %i.ey, align 1, !alias.scope !10360, !noalias !10364, !noundef !13
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ew
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !10359, !noalias !10362, !noundef !13
  %.not.i23 = icmp eq i8 %i.ez, %i.fb
  br i1 %.not.i23, label %.preheader30, label %bb.ad

bb.ac:                                            ; preds = %bb.z
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ew, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823) #44, !noalias !10363
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fc = add i64 %i.ec, %i.ea
  br label %.sink.split.i

bb.ae:                                            ; preds = %.lr.ph230
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.02.0.i18229
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !10360, !noalias !10364, !noundef !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.er
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !10359, !noalias !10362, !noundef !13
  %.not21.i21 = icmp eq i8 %i.fe, %i.fg
  br i1 %.not21.i21, label %bb.y, label %bb.ag

bb.af:                                            ; preds = %.lr.ph230
  %i.fh = add i64 %i.ec, %.sroa.0.0.i.i16
  %umax.i20 = call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.fh)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i20, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824) #44, !noalias !10363
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %.reass.reass = add i64 %i.ec, %invariant.op
  %i.fi = add i64 %.reass.reass, %.sroa.02.0.i18229
  br label %.sink.split.i

bb.ah:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !10365)
  call void @llvm.experimental.noalias.scope.decl(metadata !10366)
  call void @llvm.experimental.noalias.scope.decl(metadata !10367)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !10365, !noalias !10368 ; 2 uses
  %i.fj = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm
  br i1 %i.fk, label %.lr.ph.i9, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i9:                                        ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !10365, !noalias !10368, !noundef !13
  %i.fn = load i64, ptr %i.df, align 8, !alias.scope !10365, !noalias !10368 ; 8 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !10365, !noalias !10368
  %umax49.i = call i64 @llvm.umax.i64(i64 %i.fn, i64 %i.dq)
  %i.fq = add i64 %i.fn, -1
  %.first_iter = icmp ult i64 %i.fq, %i.dq
  %exitcond.not.i233.not = icmp ult i64 %i.fn, %i.dq
  %invariant.op320 = sub i64 1, %i.fn
  %.not28236 = icmp eq i64 %i.fn, 0
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i9
  %i.fr = phi i64 [ %.promoted.i, %.lr.ph.i9 ], [ %i.gb, %bb.ak ] ; 6 uses
  %i.fs = phi i64 [ %i.fj, %.lr.ph.i9 ], [ %i.gc, %bb.ak ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !10366, !noalias !10369, !noundef !13
  %i.fv = and i8 %i.fu, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fm
  %i.fz = icmp eq i64 %i.fy, 0
end_hunk_0
begin_hunk_1_@llvm.abs.i64
!10148 = !{!10142, !10141, !10139, !10138, !10136, !10135}
!10149 = distinct !{!10149, !"_ZN4core3str7pattern8Searcher11next_reject17h9a62f176f593540aE"}
!10150 = distinct !{!10150, !10149, !"_ZN4core3str7pattern8Searcher11next_reject17h9a62f176f593540aE: argument 1"}
!10151 = distinct !{!10151, !10149, !"_ZN4core3str7pattern8Searcher11next_reject17h9a62f176f593540aE: argument 0"}
!10152 = distinct !{!10152, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE"}
!10153 = distinct !{!10153, !10152, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE: argument 1"}
!10154 = distinct !{!10154, !10152, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h41ffa342c77486abE: argument 0"}
!10155 = distinct !{!10155, !"_ZN4core3str11validations15next_code_point17h63f46af0d134d2efE"}
!10156 = distinct !{!10156, !10155, !"_ZN4core3str11validations15next_code_point17h63f46af0d134d2efE: argument 0"}
!10157 = !{!10156, !10154, !10153, !10151, !10150}
!10158 = distinct !{!10158, !"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE"}
!10159 = distinct !{!10159, !10158, !"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE: argument 1"}
!10160 = distinct !{!10160, !10158, !"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hae4be1053e217c6fE: argument 0"}
!10161 = distinct !{!10161, !"_ZN4core3str7pattern8Searcher11next_reject17hc75b6bbfec31f43eE"}
!10162 = distinct !{!10162, !10161, !"_ZN4core3str7pattern8Searcher11next_reject17hc75b6bbfec31f43eE: argument 1"}
!10163 = distinct !{!10163, !10161, !"_ZN4core3str7pattern8Searcher11next_reject17hc75b6bbfec31f43eE: argument 0"}
!10164 = distinct !{!10164, !"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E"}
!10165 = distinct !{!10165, !10164, !"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E: argument 1"}
!10166 = distinct !{!10166, !10164, !"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h3ae5bed8ca7c8eb6E: argument 0"}
!10167 = distinct !{!10167, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1172b5589cb0c115E"}
!10168 = distinct !{!10168, !10167, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1172b5589cb0c115E: argument 0"}
!10169 = distinct !{!10169, !"_ZN4core3str11validations15next_code_point17h63f46af0d134d2efE"}
!10170 = distinct !{!10170, !10169, !"_ZN4core3str11validations15next_code_point17h63f46af0d134d2efE: argument 0"}
!10171 = !{!10170, !10168, !10166, !10165, !10163, !10162, !10160, !10159}
!10172 = !{!10166, !10165, !10163, !10162, !10160, !10159}
!10173 = distinct !{!10173, !"_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE"}
!10174 = distinct !{!10174, !10173, !"_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE: argument 0"}
!10175 = distinct !{!10175, !10173, !"_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE: argument 1"}
!10176 = distinct !{!10176, !"_ZN4core4iter6traits8iterator8Iterator3zip17h66e5fbfbbb05ea3cE"}
!10177 = distinct !{!10177, !10176, !"_ZN4core4iter6traits8iterator8Iterator3zip17h66e5fbfbbb05ea3cE: argument 1"}
!10178 = distinct !{!10178, !10176, !"_ZN4core4iter6traits8iterator8Iterator3zip17h66e5fbfbbb05ea3cE: argument 0"}
!10179 = distinct !{!10179, !"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hd8f13022d2dcb684E"}
!10180 = distinct !{!10180, !10179, !"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hd8f13022d2dcb684E: argument 0"}
!10181 = !{!10174}
!10182 = !{!10175}
!10183 = !{!10178, !10177, !10174, !10175}
!10184 = !{!10180, !10178, !10177, !10174, !10175}
!10185 = !{!10180, !10178}
!10186 = distinct !{!10186, !"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf814d1280ee7aacbE"}
!10187 = distinct !{!10187, !10186, !"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf814d1280ee7aacbE: argument 0"}
!10188 = distinct !{!10188, !"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hdd9f3388f871e691E"}
!10189 = distinct !{!10189, !10188, !"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hdd9f3388f871e691E: argument 0"}
!10190 = !{!10189, !10187}
!10191 = distinct !{!10191, !"_ZN67_$LT$anki..sync..error..HttpError$u20$as$u20$core..error..Error$GT$6source17h84bf46eaeed1c227E"}
!10192 = distinct !{!10192, !10191, !"_ZN67_$LT$anki..sync..error..HttpError$u20$as$u20$core..error..Error$GT$6source17h84bf46eaeed1c227E: argument 0"}
!10193 = !{!10192}
!10194 = distinct !{!10194, !"_ZN62_$LT$axum_core..error..Error$u20$as$u20$core..error..Error$GT$6source17hcf9ec8e9f308e700E"}
!10195 = distinct !{!10195, !10194, !"_ZN62_$LT$axum_core..error..Error$u20$as$u20$core..error..Error$GT$6source17hcf9ec8e9f308e700E: argument 0"}
!10196 = !{!10195}
!10197 = distinct !{!10197, !"_ZN85_$LT$axum_extra..typed_header..TypedHeaderRejection$u20$as$u20$core..error..Error$GT$6source17hfe18e39071b92926E"}
!10198 = distinct !{!10198, !10197, !"_ZN85_$LT$axum_extra..typed_header..TypedHeaderRejection$u20$as$u20$core..error..Error$GT$6source17hfe18e39071b92926E: argument 0"}
!10199 = !{!10198}
!10200 = distinct !{!10200, !"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E"}
!10201 = distinct !{!10201, !10200, !"_ZN59_$LT$multer..error..Error$u20$as$u20$core..error..Error$GT$6source17hed086590f0c08236E: argument 0"}
!10202 = !{!10201}
!10203 = distinct !{!10203, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h9e4694dfab7882cdE"}
!10204 = distinct !{!10204, !10203, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h9e4694dfab7882cdE: argument 0"}
!10205 = distinct !{!10205, !10203, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h9e4694dfab7882cdE: argument 1"}
!10206 = distinct !{!10206, !10203, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h9e4694dfab7882cdE: argument 2"}
!10207 = distinct !{!10207, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h241a405ed1e9b8e4E"}
!10208 = distinct !{!10208, !10207, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h241a405ed1e9b8e4E: argument 1"}
!10209 = distinct !{!10209, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h241a405ed1e9b8e4E"}
!10210 = distinct !{!10210, !10209, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h241a405ed1e9b8e4E: argument 1"}
!10211 = distinct !{!10211, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E"}
!10212 = distinct !{!10212, !10211, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E: argument 1"}
!10213 = distinct !{!10213, !10211, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E: argument 0"}
!10214 = distinct !{!10214, !"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E"}
!10215 = distinct !{!10215, !10214, !"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E: argument 0"}
!10216 = distinct !{!10216, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE"}
!10217 = distinct !{!10217, !10216, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE: argument 0"}
!10218 = distinct !{!10218, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!10219 = distinct !{!10219, !10218, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!10220 = !{!10204}
!10221 = !{!10205}
!10222 = !{!10204, !10205, !10206}
!10223 = !{!10204, !10206}
!10224 = !{!10205, !10206}
!10225 = !{!10208, !10204, !10206}
!10226 = !{!10208, !10204}
!10227 = !{!10210, !10204, !10206}
!10228 = !{!10210, !10204}
!10229 = !{!10212}
!10230 = !{!10213, !10204, !10205, !10206}
!10231 = !{!10213, !10212, !10204}
!10232 = !{!10213, !10212, !10204, !10205, !10206}
!10233 = !{!10215}
!10234 = !{!10215, !10213, !10212, !10204, !10205, !10206}
!10235 = !{!10217}
!10236 = !{!10219}
!10237 = !{!10219, !10217}
!10238 = !{!10219, !10217, !10213, !10212, !10204}
!10239 = !{!10212, !10204, !10205, !10206}
!10240 = distinct !{!10240, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h27d6926fc9cdca6bE"}
!10241 = distinct !{!10241, !10240, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h27d6926fc9cdca6bE: argument 0"}
!10242 = distinct !{!10242, !10240, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h27d6926fc9cdca6bE: argument 1"}
!10243 = distinct !{!10243, !10240, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17h27d6926fc9cdca6bE: argument 2"}
!10244 = distinct !{!10244, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17hf06aab8ddaa57f6dE"}
!10245 = distinct !{!10245, !10244, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17hf06aab8ddaa57f6dE: argument 1"}
!10246 = distinct !{!10246, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17hf06aab8ddaa57f6dE"}
!10247 = distinct !{!10247, !10246, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17hf06aab8ddaa57f6dE: argument 1"}
!10248 = distinct !{!10248, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E"}
!10249 = distinct !{!10249, !10248, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E: argument 1"}
!10250 = distinct !{!10250, !10248, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E: argument 0"}
!10251 = distinct !{!10251, !"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E"}
!10252 = distinct !{!10252, !10251, !"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E: argument 0"}
!10253 = distinct !{!10253, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE"}
!10254 = distinct !{!10254, !10253, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE: argument 0"}
!10255 = distinct !{!10255, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!10256 = distinct !{!10256, !10255, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!10257 = !{!10241}
!10258 = !{!10242}
!10259 = !{!10241, !10242, !10243}
!10260 = !{!10241, !10243}
!10261 = !{!10242, !10243}
!10262 = !{!10245, !10241, !10243}
!10263 = !{!10245, !10241}
!10264 = !{!10247, !10241, !10243}
!10265 = !{!10247, !10241}
!10266 = !{!10249}
!10267 = !{!10250, !10241, !10242, !10243}
!10268 = !{!10250, !10249, !10241}
!10269 = !{!10250, !10249, !10241, !10242, !10243}
!10270 = !{!10252}
!10271 = !{!10252, !10250, !10249, !10241, !10242, !10243}
!10272 = !{!10254}
!10273 = !{!10256}
!10274 = !{!10256, !10254}
!10275 = !{!10256, !10254, !10250, !10249, !10241}
!10276 = !{!10249, !10241, !10242, !10243}
!10277 = distinct !{!10277, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE"}
!10278 = distinct !{!10278, !10277, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE: argument 0"}
!10279 = distinct !{!10279, !10277, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE: argument 1"}
!10280 = distinct !{!10280, !10277, !"_ZN101_$LT$tokio_util..io..reader_stream..ReaderStream$LT$R$GT$$u20$as$u20$futures_core..stream..Stream$GT$9poll_next17hc26b51415893a95fE: argument 2"}
!10281 = distinct !{!10281, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E"}
!10282 = distinct !{!10282, !10281, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E: argument 1"}
!10283 = distinct !{!10283, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E"}
!10284 = distinct !{!10284, !10283, !"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h104ce7fff7fef693E: argument 1"}
!10285 = distinct !{!10285, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E"}
!10286 = distinct !{!10286, !10285, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E: argument 1"}
!10287 = distinct !{!10287, !10285, !"_ZN5bytes9bytes_mut8BytesMut6freeze17h41dc8ce3224f9045E: argument 0"}
!10288 = distinct !{!10288, !"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E"}
!10289 = distinct !{!10289, !10288, !"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hbf9f5a157d8eea25E: argument 0"}
!10290 = distinct !{!10290, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE"}
!10291 = distinct !{!10291, !10290, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE: argument 0"}
!10292 = distinct !{!10292, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!10293 = distinct !{!10293, !10292, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!10294 = !{!10278}
!10295 = !{!10279}
!10296 = !{!10278, !10279, !10280}
!10297 = !{!10278, !10280}
!10298 = !{!10279, !10280}
!10299 = !{!10282, !10278, !10280}
!10300 = !{!10282, !10278}
!10301 = !{!10284, !10278, !10280}
!10302 = !{!10284, !10278}
!10303 = !{!10286}
!10304 = !{!10287, !10278, !10279, !10280}
!10305 = !{!10287, !10286, !10278}
!10306 = !{!10287, !10286, !10278, !10279, !10280}
!10307 = !{!10289}
!10308 = !{!10289, !10287, !10286, !10278, !10279, !10280}
!10309 = !{!10291}
!10310 = !{!10293}
!10311 = !{!10293, !10291}
!10312 = !{!10293, !10291, !10287, !10286, !10278}
!10313 = !{!10286, !10278, !10279, !10280}
!10314 = distinct !{!10314, !"_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E"}
!10315 = distinct !{!10315, !10314, !"_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E: argument 0"}
!10316 = distinct !{!10316, !10314, !"_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E: argument 1"}
!10317 = distinct !{!10317, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17ha40d4836fd96ea00E"}
!10318 = distinct !{!10318, !10317, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17ha40d4836fd96ea00E: argument 1"}
!10319 = distinct !{!10319, !10317, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17ha40d4836fd96ea00E: argument 0"}
!10320 = distinct !{!10320, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E"}
!10321 = distinct !{!10321, !10320, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E: argument 0"}
!10322 = distinct !{!10322, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0785c84234113333E"}
!10323 = distinct !{!10323, !10322, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0785c84234113333E: argument 0"}
!10324 = distinct !{!10324, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hadc71a375e69b747E"}
!10325 = distinct !{!10325, !10324, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hadc71a375e69b747E: argument 1"}
!10326 = distinct !{!10326, !10324, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hadc71a375e69b747E: argument 0"}
!10327 = distinct !{!10327, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0cb2440b0654eb69E"}
!10328 = distinct !{!10328, !10327, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0cb2440b0654eb69E: argument 0"}
!10329 = distinct !{!10329, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0cb2440b0654eb69E"}
!10330 = distinct !{!10330, !10329, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0cb2440b0654eb69E: argument 0"}
!10331 = distinct !{!10331, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0cb2440b0654eb69E"}
!10332 = distinct !{!10332, !10331, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h0cb2440b0654eb69E: argument 0"}
!10333 = distinct !{!10333, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"}
!10334 = distinct !{!10334, !10333, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 1"}
!10335 = distinct !{!10335, !10333, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 0"}
!10336 = distinct !{!10336, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE"}
!10337 = distinct !{!10337, !10336, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 1"}
!10338 = distinct !{!10338, !10336, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 2"}
!10339 = distinct !{!10339, !10336, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 3"}
!10340 = distinct !{!10340, !10336, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 0"}
!10341 = distinct !{!10341, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE"}
!10342 = distinct !{!10342, !10341, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 1"}
!10343 = distinct !{!10343, !10341, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 2"}
!10344 = distinct !{!10344, !10341, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 3"}
!10345 = distinct !{!10345, !10341, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 0"}
!10346 = !{!10315}
!10347 = !{!10316}
!10348 = !{!10323, !10321, !10319, !10318, !10316}
!10349 = !{!10323, !10321, !10319, !10318, !10315, !10316}
!10350 = !{!10315, !10316}
!10351 = !{!10326, !10325}
!10352 = !{!10328, !10315}
!10353 = !{!10330, !10315}
!10354 = !{!10332, !10315}
!10355 = !{!10334}
!10356 = !{!10335}
!10357 = !{!10335, !10334}
!10358 = !{!10337}
!10359 = !{!10338}
!10360 = !{!10339}
!10361 = !{!10340, !10338, !10339}
!10362 = !{!10340, !10337, !10339}
!10363 = !{!10340, !10337, !10338, !10339}
!10364 = !{!10340, !10337, !10338}
!10365 = !{!10342}
!10366 = !{!10343}
!10367 = !{!10344}
!10368 = !{!10345, !10343, !10344}
!10369 = !{!10345, !10342, !10344}
!10370 = !{!10345, !10342, !10343, !10344}
!10371 = !{!10345, !10342, !10343}
!10372 = distinct !{!10372, !"_ZN4anki4sync7request17header_and_stream27decode_zstd_body_for_server28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h95374ae789c92176E"}
!10373 = distinct !{!10373, !10372, !"_ZN4anki4sync7request17header_and_stream27decode_zstd_body_for_server28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h95374ae789c92176E: argument 0"}
!10374 = distinct !{!10374, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!10375 = distinct !{!10375, !10374, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!10376 = distinct !{!10376, !10374, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!10377 = distinct !{!10377, !10374, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!10378 = distinct !{!10378, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!10379 = distinct !{!10379, !10378, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!10380 = distinct !{!10380, !10378, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!10381 = distinct !{!10381, !"_ZN4core3ptr44drop_in_place$LT$axum_core..error..Error$GT$17h3ecdb965b16da003E"}
!10382 = distinct !{!10382, !10381, !"_ZN4core3ptr44drop_in_place$LT$axum_core..error..Error$GT$17h3ecdb965b16da003E: argument 0"}
!10383 = !{!10373}
!10384 = !{!10380, !10379, !10377, !10376, !10375, !10373}
!10385 = !{!10380, !10377, !10376, !10373}
!10386 = !{!10382}
!10387 = distinct !{!10387, !"_ZN4anki4sync7request17header_and_stream34decode_zstd_body_stream_for_client28_$u7b$$u7b$closure$u7d$$u7d$17he7bf1686c96ef056E"}
!10388 = distinct !{!10388, !10387, !"_ZN4anki4sync7request17header_and_stream34decode_zstd_body_stream_for_client28_$u7b$$u7b$closure$u7d$$u7d$17he7bf1686c96ef056E: argument 0"}
!10389 = distinct !{!10389, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!10390 = distinct !{!10390, !10389, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!10391 = distinct !{!10391, !10389, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!10392 = distinct !{!10392, !10389, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!10393 = distinct !{!10393, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!10394 = distinct !{!10394, !10393, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!10395 = distinct !{!10395, !10393, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!10396 = !{!10388}
!10397 = !{!10395, !10394, !10392, !10391, !10390, !10388}
!10398 = !{!10395, !10392, !10391, !10388}
!10399 = distinct !{!10399, !"_ZN4anki4sync7request17header_and_stream16encode_zstd_body28_$u7b$$u7b$closure$u7d$$u7d$17h6e255be33e7c32f7E"}
!10400 = distinct !{!10400, !10399, !"_ZN4anki4sync7request17header_and_stream16encode_zstd_body28_$u7b$$u7b$closure$u7d$$u7d$17h6e255be33e7c32f7E: argument 0"}
!10401 = distinct !{!10401, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E"}
!10402 = distinct !{!10402, !10401, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 1"}
!10403 = distinct !{!10403, !10401, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 0"}
!10404 = !{!10400}
!10405 = !{!10403, !10402, !10400}
!10406 = !{!10403, !10400}
!10407 = distinct !{!10407, !"_ZN4anki4sync7request17header_and_stream34decode_zstd_body_stream_for_client28_$u7b$$u7b$closure$u7d$$u7d$17h34eedc11fb7e354cE"}
!10408 = distinct !{!10408, !10407, !"_ZN4anki4sync7request17header_and_stream34decode_zstd_body_stream_for_client28_$u7b$$u7b$closure$u7d$$u7d$17h34eedc11fb7e354cE: argument 0"}
!10409 = distinct !{!10409, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E"}
!10410 = distinct !{!10410, !10409, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 1"}
!10411 = distinct !{!10411, !10409, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 0"}
!10412 = !{!10408}
!10413 = !{!10411, !10410, !10408}
!10414 = !{!10411, !10408}
!10415 = distinct !{!10415, !"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17hadb8186f66f9ce0fE"}
!10416 = distinct !{!10416, !10415, !"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17hadb8186f66f9ce0fE: argument 0"}
!10417 = distinct !{!10417, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E"}
!10418 = distinct !{!10418, !10417, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 1"}
!10419 = distinct !{!10419, !10417, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 0"}
!10420 = !{!10416}
!10421 = !{!10419, !10418, !10416}
!10422 = !{!10419, !10416}
!10423 = distinct !{!10423, !"_ZN4core3ops8function5FnMut8call_mut17h2ab16c8a90e99cf4E"}
!10424 = distinct !{!10424, !10423, !"_ZN4core3ops8function5FnMut8call_mut17h2ab16c8a90e99cf4E: argument 0"}
!10425 = distinct !{!10425, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0804ac123387cf11E"}
!10426 = distinct !{!10426, !10425, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0804ac123387cf11E: argument 0"}
!10427 = distinct !{!10427, !"_ZN5alloc5boxed7convert156_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$4from17hb93ba564094e6c99E"}
!10428 = distinct !{!10428, !10427, !"_ZN5alloc5boxed7convert156_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$4from17hb93ba564094e6c99E: argument 0"}
!10429 = distinct !{!10429, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6ab34b2c21a1ef99E"}
!10430 = distinct !{!10430, !10429, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6ab34b2c21a1ef99E: argument 0"}
!10431 = !{!10430, !10428, !10426, !10424}
!10432 = !{!10428, !10426, !10424}
!10433 = !{!10424}
!10434 = distinct !{!10434, !"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17h4d67771aa12565c3E"}
!10435 = distinct !{!10435, !10434, !"_ZN4anki4sync7request17header_and_stream23encode_zstd_body_stream28_$u7b$$u7b$closure$u7d$$u7d$17h4d67771aa12565c3E: argument 0"}
!10436 = distinct !{!10436, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E"}
!10437 = distinct !{!10437, !10436, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 2"}
!10438 = distinct !{!10438, !10436, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 1"}
!10439 = distinct !{!10439, !10436, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17hd04ad85a7ee557f9E: argument 0"}
!10440 = distinct !{!10440, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E"}
!10441 = distinct !{!10441, !10440, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 1"}
!10442 = distinct !{!10442, !10440, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hdc8d66336697d8a1E: argument 0"}
!10443 = !{!10435}
!10444 = !{!10442, !10441, !10439, !10438, !10437, !10435}
!10445 = !{!10442, !10439, !10438, !10435}
!10446 = distinct !{!10446, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E"}
!10447 = distinct !{!10447, !10446, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 1"}
!10448 = distinct !{!10448, !10446, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E: argument 0"}
!10449 = !{!10448, !10447}
!10450 = !{!10448}
!10451 = distinct !{!10451, !"_ZN5alloc6string6String4push17h8a8122a4affdfdffE"}
!10452 = distinct !{!10452, !10451, !"_ZN5alloc6string6String4push17h8a8122a4affdfdffE: argument 0"}
!10453 = !{!10452}
!10454 = distinct !{!10454, !"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hcc453b24f9b46eccE"}
!10455 = distinct !{!10455, !10454, !"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hcc453b24f9b46eccE: argument 1"}
!10456 = distinct !{!10456, !10454, !"_ZN84_$LT$http_body_util..util..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17hcc453b24f9b46eccE: argument 0"}
!10457 = distinct !{null}
!10458 = distinct !{!10458, !"_ZN5bytes9bytes_mut8BytesMut8from_vec17h7e40864ca9bb639dE"}
!10459 = distinct !{!10459, !10458, !"_ZN5bytes9bytes_mut8BytesMut8from_vec17h7e40864ca9bb639dE: argument 0"}
!10460 = distinct !{!10460, !10458, !"_ZN5bytes9bytes_mut8BytesMut8from_vec17h7e40864ca9bb639dE: argument 1"}
!10461 = distinct !{!10461, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE"}
!10462 = distinct !{!10462, !10461, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE: argument 0"}
!10463 = distinct !{!10463, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!10464 = distinct !{!10464, !10463, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!10465 = distinct !{null, null}
!10466 = distinct !{!10466, !"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h4a0f47e8a34bcf34E"}
!10467 = distinct !{!10467, !10466, !"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$bytes..bytes..Bytes$GT$$GT$17h4a0f47e8a34bcf34E: argument 0"}
!10468 = distinct !{!10468, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE"}
!10469 = distinct !{!10469, !10468, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE: argument 0"}
!10470 = distinct !{!10470, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!10471 = distinct !{!10471, !10470, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!10472 = distinct !{null, null}
!10473 = !{!10455}
!10474 = !{!10456}
!10475 = !{!10456, !10455}
!10476 = !{!10459}
!10477 = !{!10460, !10456}
!10478 = !{!10462}
!10479 = !{!10464}
!10480 = !{!10464, !10462}
!10481 = !{!10464, !10462, !10456}
!10482 = !{!10467}
!10483 = !{!10469}
!10484 = !{!10471}
!10485 = !{!10471, !10469, !10467, !10456}
!10486 = !{!10471, !10469, !10467}
!10487 = distinct !{!10487, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"}
!10488 = distinct !{!10488, !10487, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 1"}
!10489 = distinct !{!10489, !10487, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 0"}
!10490 = distinct !{!10490, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE"}
!10491 = distinct !{!10491, !10490, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 1"}
!10492 = distinct !{!10492, !10490, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 2"}
!10493 = distinct !{!10493, !10490, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 3"}
!10494 = distinct !{!10494, !10490, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 0"}
!10495 = distinct !{!10495, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE"}
!10496 = distinct !{!10496, !10495, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 1"}
!10497 = distinct !{!10497, !10495, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 2"}
!10498 = distinct !{!10498, !10495, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 3"}
!10499 = distinct !{!10499, !10495, !"_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE: argument 0"}
!10500 = !{!10488}
!10501 = !{!10489}
!10502 = !{!10489, !10488}
!10503 = !{!10491}
!10504 = !{!10492}
!10505 = !{!10493}
!10506 = !{!10494, !10492, !10493}
!10507 = !{!10494, !10491, !10493}
!10508 = !{!10494, !10491, !10492}
!10509 = !{!10496}
!10510 = !{!10497}
!10511 = !{!10498}
!10512 = !{!10499, !10497, !10498}
!10513 = !{!10499, !10496, !10498}
!10514 = !{!10499, !10496, !10497}
!10515 = distinct !{!10515, !"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17h6a9948844c469740E"}
!10516 = distinct !{!10516, !10515, !"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17h6a9948844c469740E: argument 0"}
!10517 = !{!10516}
!10518 = distinct !{!10518, !"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17h918d5fa611af7b9cE"}
!10519 = distinct !{!10519, !10518, !"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17h918d5fa611af7b9cE: argument 0"}
!10520 = !{!10519}
!10521 = distinct !{!10521, !"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17hf7775e975de82dd0E"}
!10522 = distinct !{!10522, !10521, !"_ZN5alloc5boxed16Box$LT$T$C$A$GT$17try_new_uninit_in17hf7775e975de82dd0E: argument 0"}
!10523 = !{!10522}
!10524 = distinct !{!10524, !"_ZN4core4iter6traits8iterator8Iterator7collect17h9cf066758824df5aE"}
!10525 = distinct !{!10525, !10524, !"_ZN4core4iter6traits8iterator8Iterator7collect17h9cf066758824df5aE: argument 1"}
!10526 = distinct !{!10526, !10524, !"_ZN4core4iter6traits8iterator8Iterator7collect17h9cf066758824df5aE: argument 0"}
!10527 = distinct !{!10527, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd948cb708b0fca40E"}
!10528 = distinct !{!10528, !10527, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd948cb708b0fca40E: argument 1"}
!10529 = distinct !{!10529, !10527, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hd948cb708b0fca40E: argument 0"}
!10530 = distinct !{!10530, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6e98ffe46e30e77cE"}
!10531 = distinct !{!10531, !10530, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6e98ffe46e30e77cE: argument 1"}
!10532 = distinct !{!10532, !10530, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h6e98ffe46e30e77cE: argument 0"}
!10533 = !{!10529, !10528, !10526, !10525}
!10534 = !{!10532, !10531}
!10535 = !{!10529, !10526}
!10536 = !{!10528, !10525}
!10537 = distinct !{!10537, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0114144b26e10cc9E"}
!10538 = distinct !{!10538, !10537, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0114144b26e10cc9E: argument 0"}
!10539 = !{!10538}
!10540 = distinct !{!10540, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17he8734cead832473cE"}
!10541 = distinct !{!10541, !10540, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17he8734cead832473cE: argument 0"}
!10542 = !{!10541}
!10543 = distinct !{!10543, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6ab34b2c21a1ef99E"}
!10544 = distinct !{!10544, !10543, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6ab34b2c21a1ef99E: argument 0"}
!10545 = !{!10544}
!10546 = distinct !{!10546, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4745251544adb45fE"}
!10547 = distinct !{!10547, !10546, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4745251544adb45fE: argument 0"}
!10548 = !{!10547}
!10549 = distinct !{!10549, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9823c5ddcd24b444E"}
end_hunk_1
