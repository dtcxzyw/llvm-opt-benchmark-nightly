Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.05?download=true
inline.NumInlined: 368
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4core4iter8adapters11try_process17h271b551a7775dd57E:bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !342, !noalias !343
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit"

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit": ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea7fb7e382271fe9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e59d24f0c891d2dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$17h95a747667989b4ddE.exit" unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e59d24f0c891d2dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit"

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$17h95a747667989b4ddE.exit": ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke void @"_ZN4core3ptr48drop_in_place$LT$anki_io..error..FileIoError$GT$17h0e43f6457ad480f5E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$17h95a747667989b4ddE.exit" unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core4iter8adapters11try_process17h69eb4aa1ed0dff9cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  %i.d = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !355
  store ptr %i.c, ptr %i.a, align 8, !alias.scope !356, !noalias !357
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !356, !noalias !357
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !356, !noalias !357
  invoke void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h7d904f9eadd652e4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anyhow..Error$GT$$GT$17hbe5ce3631a03cf7dE.exit", label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !355
  %i.g = load ptr, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not.not = icmp eq ptr %i.g, null
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit"

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit": ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !358
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !358
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea7fb7e382271fe9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e59d24f0c891d2dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anyhow..Error$GT$$GT$17hbe5ce3631a03cf7dE.exit" unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e59d24f0c891d2dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit"

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anyhow..Error$GT$$GT$17hbe5ce3631a03cf7dE.exit": ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.e, %.body ], [ %i.e, %bb.i ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17h1d51c478f0628b67E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anyhow..Error$GT$$GT$17hbe5ce3631a03cf7dE.exit" unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core4iter8adapters11try_process17h98adf6809adf1918E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -9223372036854775808, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !371
  store ptr %i.c, ptr %i.a, align 8, !alias.scope !372, !noalias !373
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !372, !noalias !373
  invoke void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h9d97c6bc6d11bbf6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$17h95a747667989b4ddE.exit", label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !371
  %i.f = load i64, ptr %i.c, align 8, !range !7, !noundef !4
  %.not.not = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !374, !noalias !375
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit"

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit": ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea7fb7e382271fe9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e59d24f0c891d2dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$17h95a747667989b4ddE.exit" unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8e59d24f0c891d2dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$camino..Utf8PathBuf$GT$$GT$17h5c02991f400737b2E.exit"

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$17h95a747667989b4ddE.exit": ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke void @"_ZN4core3ptr48drop_in_place$LT$anki_io..error..FileIoError$GT$17h0e43f6457ad480f5E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$anki_io..error..FileIoError$GT$$GT$17h95a747667989b4ddE.exit" unwind label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h179f9f75b506338cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4bde9f419123c6e5E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h4dc991622a1474c0E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h52adea4c1fef52c0E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h5940ef452c93c235E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h5d05b89477db533fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h9b927fc6110b4a6dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h9ead1d4dc327a70dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hb7b148b1afcee683E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc479bcbffae0958bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc6914750c292e1ddE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc72a357fb50de772E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hd16f2b5a4cfc25e9E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hd67f3d8295944b23E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hdb3e4418ca07b69dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hddbba671175c1bc4E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17he5f6fdd80ed9c396E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hffa93b5517d45f53E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @0, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_ZN4core5error5Error5cause17had5f862a851a6141E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_ZN4core5error5Error5cause17hbd1a616d8846d24cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..error..Error$GT$6source17h26f7a35434573f51E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_ZN4core5error5Error5cause17he1baf3a91e52bd24E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h1698d2b252a702f1E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h4beb9201f2fdecd6E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h92fe6f81d602316aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17hc6cc5b46fa648bc7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h1dccebdf499865ceE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h230cda164950b441E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h24877fb14023f7faE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h31e11c0d9e80de8bE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h3ab2eadcfd6a0785E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h3abbde17b34e1a39E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h4181fa06b1ae5427E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h5e25c0c6777d1fc2E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h7cb52aeb619f7752E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h7fc47b1b66df9b18E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h81b2e01b95b5737eE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h8da3b323d46a59ceE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17ha9c7519a667e1379E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hb4fc052f24475b88E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hb6cdf3043263c19fE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hc43835e93b66846bE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hc5c3ebbb50cdf33bE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hd4fb889f87b72b51E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hdc0fca95b5d16bafE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17he3e48cc728e335dbE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17hf912495a620a2599E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h00c837e08c35c9bbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h28e4984f44d71959E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h290f800c1a98543bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h32314db81bd20922E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  ret void
}
end_hunk_0
begin_hunk_1_@"_ZN65_$LT$ftl..Cli$u20$as$u20$clap_builder..derive..CommandFactory$GT$7command17hef394a3b7dcdd74bE":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.af, ptr noundef nonnull align 8 dereferenceable(712) %i.al, i64 712, i1 false), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command3new17h405c02369c0f4d6eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ad, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 10)
          to label %bb.l unwind label %bb.ae, !noalias !506

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN85_$LT$ftl..garbage_collection..WriteJsonArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h16a57f449081f85aE"(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(712) %i.ad)
          to label %bb.m unwind label %bb.ae, !noalias !506

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command5about17hed9669dbc62cedd9E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 166)
          to label %bb.n unwind label %bb.ae, !noalias !506

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN12clap_builder7builder7command7Command10long_about17hc9a9cdd60c7ce548E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.ab, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef)
          to label %bb.o unwind label %bb.ae, !noalias !506

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.ae, i64 712, i1 false), !alias.scope !511, !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.g, ptr noundef nonnull align 8 dereferenceable(712) %i.al, i64 712, i1 false), !noalias !506
  call void @_ZN12clap_builder7builder7command7Command19subcommand_internal17h906aea18a4cc100eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.h), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.z, ptr noundef nonnull align 8 dereferenceable(712) %i.ag, i64 712, i1 false), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command3new17h405c02369c0f4d6eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @79, i64 noundef 15)
          to label %bb.p unwind label %bb.ad, !noalias !506

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN90_$LT$ftl..garbage_collection..GarbageCollectArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h0c025d977ce29c3fE"(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(712) %i.x)
          to label %bb.q unwind label %bb.ad, !noalias !506

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command5about17hed9669dbc62cedd9E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 92)
          to label %bb.r unwind label %bb.ad, !noalias !506

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN12clap_builder7builder7command7Command10long_about17hc9a9cdd60c7ce548E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.v, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef)
          to label %bb.s unwind label %bb.ad, !noalias !506

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.y, i64 712, i1 false), !alias.scope !514, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.e, ptr noundef nonnull align 8 dereferenceable(712) %i.ag, i64 712, i1 false), !noalias !506
  call void @_ZN12clap_builder7builder7command7Command19subcommand_internal17h906aea18a4cc100eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.f), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.t, ptr noundef nonnull align 8 dereferenceable(712) %i.aa, i64 712, i1 false), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command3new17h405c02369c0f4d6eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 9)
          to label %bb.t unwind label %bb.ac, !noalias !506

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN92_$LT$ftl..garbage_collection..DeprecateEntriesArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h1aef6721279bf2f2E"(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(712) %i.r)
          to label %bb.u unwind label %bb.ac, !noalias !506

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command5about17hed9669dbc62cedd9E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 177)
          to label %bb.v unwind label %bb.ac, !noalias !506

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN12clap_builder7builder7command7Command10long_about17hc9a9cdd60c7ce548E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.p, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef)
          to label %bb.w unwind label %bb.ac, !noalias !506

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.s, i64 712, i1 false), !alias.scope !517, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.c, ptr noundef nonnull align 8 dereferenceable(712) %i.aa, i64 712, i1 false), !noalias !506
  call void @_ZN12clap_builder7builder7command7Command19subcommand_internal17h906aea18a4cc100eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.d), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.o, ptr noundef nonnull align 8 dereferenceable(712) %i.u, i64 712, i1 false), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command3new17h405c02369c0f4d6eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @83, i64 noundef 6)
          to label %bb.x unwind label %bb.aa, !noalias !506

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 700 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !506, !noundef !4
  %i.bm = or i32 %i.bl, 66048
  store i32 %i.bm, ptr %i.bk, align 4, !noalias !506
  invoke void @"_ZN79_$LT$ftl..string..StringCommand$u20$as$u20$clap_builder..derive..Subcommand$GT$19augment_subcommands17h9d146afb9c87a3bfE"(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(712) %i.m)
          to label %bb.y unwind label %bb.aa, !noalias !506

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !506
  invoke void @_ZN12clap_builder7builder7command7Command5about17hed9669dbc62cedd9E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 56)
          to label %bb.z unwind label %bb.aa, !noalias !506

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN12clap_builder7builder7command7Command10long_about17hc9a9cdd60c7ce548E(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.k, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef)
          to label %"_ZN55_$LT$ftl..Cli$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h6a2f54a828b1e750E.exit" unwind label %bb.aa, !noalias !506

common.resume.i:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.thr_comm24.i.i, %bb.ad ], [ %lpad.thr_comm40.i.i, %bb.aa ], [ %lpad.thr_comm16.i.i, %bb.ae ], [ %lpad.thr_comm32.i.i, %bb.ac ], [ %lpad.thr_comm.i.i, %bb.af ], [ %i.bo, %bb.ag ], [ %i.bd, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %lpad.thr_comm40.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.o) #23
          to label %common.resume.i unwind label %bb.ab, !noalias !506

bb.ab:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !506
  unreachable

bb.ac:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %lpad.thr_comm32.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.t) #23
          to label %common.resume.i unwind label %bb.ab, !noalias !506

bb.ad:                                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %lpad.thr_comm24.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.z) #23
          to label %common.resume.i unwind label %bb.ab, !noalias !506

bb.ae:                                            ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %lpad.thr_comm16.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.af) #23
          to label %common.resume.i unwind label %bb.ab, !noalias !506

bb.af:                                            ; preds = %bb.j, %bb.i, %bb.h
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.ak) #23
          to label %common.resume.i unwind label %bb.ab, !noalias !506

bb.ag:                                            ; preds = %bb.b, %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$clap_builder..builder..command..Command$GT$17hb2ad6e452fee6bc4E"(ptr noalias noundef align 8 dereferenceable(712) %i.aq) #23
          to label %common.resume.i unwind label %bb.ah, !noalias !494

bb.ah:                                            ; preds = %bb.ag
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !494
  unreachable

"_ZN55_$LT$ftl..Cli$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h6a2f54a828b1e750E.exit": ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.n, i64 712, i1 false), !alias.scope !520, !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef nonnull align 8 dereferenceable(712) %i.u, i64 712, i1 false), !noalias !506
  call void @_ZN12clap_builder7builder7command7Command19subcommand_internal17h906aea18a4cc100eE(ptr noalias noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(712) %i.b), !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !494
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !493, !noalias !524, !noundef !4
  %i.bs = or i32 %i.br, 66048
  store i32 %i.bs, ptr %i.bq, align 4, !alias.scope !493, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$11description17hefbc3333ebb66613E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @66, i64 11 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$5cause17h6723bab80b9b354aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$6source17h95e13e9831afa7b6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h074a291b71ffec4cE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @90, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h2c4458e4f8e83e63E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @92, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h3036b0abc2c46cb6E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @94, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h3145533821c6242dE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @96, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h460df38207556e76E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @98, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h493c16df9e018d48E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @100, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h78d1f2cafea2cb45E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @102, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17hb106e60ab042a8cfE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @104, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17hbe564c023fcfcdf5E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @106, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_ZN6anyhow5error12no_backtrace17ha76ee576cb20a584E(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h2b50fc08a4021a12E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @108, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h483ff4a66380e7f3E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @110, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h68fcef60834a35efE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @112, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h694e1f1f99623edcE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @114, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h773b7f7fa2409e5cE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @116, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h92cb90fb48e3f12aE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @118, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h9c53a1adb5161ff2E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @120, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17he83728e11aa88d23E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @122, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17hffaf09eb81c2bbb8E(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @124, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17h066b346f008a3cdfE(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !4
  %i.b = icmp eq i128 %i.a, -93652901832424836513689306266955195027
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17h07aaf9086b0195a6E(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !4
  %i.b = icmp eq i128 %i.a, 95649384156650164125097140555998499511
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}
end_hunk_1
