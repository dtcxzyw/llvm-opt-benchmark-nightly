Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.11?download=true
inline.NumInlined: 433
inline.NumDeleted: 262
begin_hunk_0_@"_ZN64_$LT$anki_io..error..FileIoError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb191c47308b3d168E":bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @74, i64 noundef 2, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @27, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h74eb3348ed036be9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @82, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @83, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$11description17hefbc3333ebb66613E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @72, i64 11 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$5cause17h6723bab80b9b354aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN66_$LT$anki_io..error..FileIoError$u20$as$u20$core..error..Error$GT$6source17h95e13e9831afa7b6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h21cef95856bafc28E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @91, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h2bce5053e7fabcfcE(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @93, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h3c389f0486ce92eaE(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @95, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h77114db65a9b7375E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @43, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17hb121846c8af6ca45E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @97, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_ZN6anyhow5error12no_backtrace17ha76ee576cb20a584E(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h0f353a55768b4e5bE(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @99, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h94954d43d47a8f59E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @101, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17h9b1703be8884edf7E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @103, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17hf150304386d3ec65E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @105, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error12object_boxed17hfce7cc7bb2afcc67E(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @107, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17h6de55df840261f3fE(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, -163680180555130691116900902775116917808
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17h701d638f76bb7adcE(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, 82957352856857069842157919874181726482
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17hadb27c8becaf7603E(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, 164692792922995196943609666521115412323
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error15object_downcast17he9fd35e9b122ed49E(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  %i.b = icmp eq i128 %i.a, -69308422068989301611478926754130305610
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZN6anyhow5error16context_downcast17hf8dabc5555d5d681E(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !5
  switch i128 %i.a, label %bb.d [
    i128 -93652901832424836513689306266955195027, label %bb.b
    i128 161763396755659809476855697968974569214, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_context17h45ef665ec61a4a72E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h27392df74027c465E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %3)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h27392df74027c465E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @112, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !687
  %i.d = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 64, 153) 152, i64 noundef 8) #29, !noalias !687 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h43a751e0add978ffE.exit", !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 152) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr117drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$anki_process..Error$GT$$GT$$GT$17h0769e0f0387ee4ceE"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h43a751e0add978ffE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h4f2b8133063e3775E"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @111, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !690
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 64, 153) 64, i64 noundef 8) #29, !noalias !690 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h989cbf56f865115bE.exit", !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$reqwest..error..Error$GT$$GT$17h32f422faf40e1580E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h989cbf56f865115bE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h6ce2d4990bc12efbE"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @110, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !693
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 64, 153) 80, i64 noundef 8) #29, !noalias !693 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h17f8c0ce17b1ebf2E.exit", !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 80) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$zip..result..ZipError$GT$$GT$17hb86af14e7dd7195cE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h17f8c0ce17b1ebf2E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9b8c0b07c23b09e9E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @109, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !696
  %i.d = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 64, 153) 112, i64 noundef 8) #29, !noalias !696 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7168af4c0fdd5abE.exit", !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 112) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr80drop_in_place$LT$anyhow..error..ErrorImpl$LT$anki_io..error..FileIoError$GT$$GT$17hd8bc203359541385E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc7168af4c0fdd5abE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hc32cf631eb96c5a3E"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @108, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !699
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 64, 153) 64, i64 noundef 8) #29, !noalias !699 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c29e2d5fd4ed784E.exit", !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h89aa55885620a123E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c29e2d5fd4ed784E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h5887c4f1a38c7f45E"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hd488b4993b8cf742E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hd488b4993b8cf742E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h4f2b8133063e3775E"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Error$GT$17hf13ec595b1cc9bedE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h959eb18da6454eabE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hc27e3c163e245f27E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17hc27e3c163e245f27E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h6ce2d4990bc12efbE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h5568fed9e7206a73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #27
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h117089bf30158a43E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h117089bf30158a43E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hc32cf631eb96c5a3E"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hea326f767360609aE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17h7feb9ff6f8afe076E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h9e41bcfa055b2c3eE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h9e41bcfa055b2c3eE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h9b8c0b07c23b09e9E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr48drop_in_place$LT$anki_io..error..FileIoError$GT$17hbfb2b9029039efaaE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #27
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17hb998e5a4ca366e3fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @114, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN73_$LT$flate2..ffi..c..Stream$LT$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5158831b507037fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %i.b = tail call noundef i32 @"_ZN75_$LT$flate2..ffi..c..DirDecompress$u20$as$u20$flate2..ffi..c..Direction$GT$7destroy17h9c933e5c038a7163E"(ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17h56cfd4550c4bda73E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h6f1281bc36d96ed5E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val)
  %i.n = call noundef i64 @"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7a722497bc1df4ddE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.l, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.n)
  %.not = icmp ugt i64 %2, %.sroa.0.0.i
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @123, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.t, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !730, !noalias !731, !noundef !5
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !730, !noalias !731, !noundef !5 ; 2 uses
  %i.y = load i64, ptr %.val, align 8, !range !13, !alias.scope !730, !noalias !731, !noundef !5 ; 2 uses
  %.not13.i.i = icmp ult i64 %i.x, %i.y
  %i.z = select i1 %.not13.i.i, i64 0, i64 %i.y
  %.sroa.05.0.i.i = sub nuw i64 %i.x, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !730, !noalias !731, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.sroa.05.0.i.i ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %.val16.i.i = load i64, ptr %i.ad, align 8, !noalias !732, !noundef !5 ; 2 uses
  %i.ae = icmp eq i64 %.val16.i.i, %2
  br i1 %i.ae, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !732
  call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h6f1281bc36d96ed5E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val), !noalias !731
  %i.af = call noundef i64 @"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7a722497bc1df4ddE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.h, i64 noundef 0), !noalias !731 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !732
  %.not14.i.i = icmp ugt i64 %2, %i.af
  br i1 %.not14.i.i, label %bb.i, label %bb.j, !prof !9

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp ugt i64 %.val16.i.i, %2
  br i1 %i.ag, label %bb.h, label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !732
  call void @"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17h20b6a828a9039f96E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %2), !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !732
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17h5c79e4ddde42879aE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.x unwind label %bb.w, !noalias !731

bb.h:                                             ; preds = %bb.f
  call void @"_ZN65_$LT$bytes..bytes..Bytes$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17h20b6a828a9039f96E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %2), !noalias !730
  br label %"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17ha2e39d63e55e91b3E.exit"

bb.i:                                             ; preds = %bb.e
  call void @_ZN3std9panicking11begin_panic17h593fe9db43da0fabE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @122, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #26, !noalias !731
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !732
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h70eece5d17de217aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !731
  %i.ah = load i64, ptr %i.g, align 8, !range !7, !noalias !732, !noundef !5
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !8, !noalias !732, !noundef !5 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.k, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75f72b1d2c2cab38E.exit.i.i", !prof !9

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %i.al, align 8, !noalias !732
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ak, i64 %i.am) #26, !noalias !731
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75f72b1d2c2cab38E.exit.i.i": ; preds = %bb.j
  %i.an = load ptr, ptr %i.al, align 8, !noalias !732, !nonnull !5, !noundef !5
  %i.ao = icmp ule i64 %2, %i.ak
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !732
  %i.ap = lshr i64 %i.ak, 10
  %i.aq = call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false)
  %i.ar = sub nuw nsw i64 64, %i.aq
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 7)
  %i.as = shl nuw nsw i64 %.sroa.0.0.i.i.i.i, 2
  %i.at = getelementptr i8, ptr null, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 1
  store ptr %i.an, ptr %i.i, align 8, !alias.scope !733, !noalias !734
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 0, ptr %i.av, align 8, !alias.scope !733, !noalias !734
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %i.ak, ptr %i.aw, align 8, !alias.scope !733, !noalias !734
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.ax, align 8, !alias.scope !733, !noalias !734
  %i.ay = icmp eq i64 %i.af, %2
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75f72b1d2c2cab38E.exit.i.i"
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17h99c4139445a8c4faE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef %2)
          to label %bb.n unwind label %bb.u, !noalias !731

bb.m:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75f72b1d2c2cab38E.exit.i.i"
  invoke void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17hf47c5d5cced77f92E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.n unwind label %bb.u, !noalias !731

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !noalias !732 ; 4 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %i.av, align 8, !noalias !732 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %i.aw, align 8, !noalias !732
  %.sroa.8.0.copyload.i.i = load ptr, ptr %i.ax, align 8, !noalias !732 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !732
  %i.az = ptrtoint ptr %.sroa.8.0.copyload.i.i to i64 ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.o, label %.noexc.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bb, align 8, !alias.scope !736, !noalias !737
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.bc, align 8, !alias.scope !736, !noalias !737
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload.i.i, ptr %i.bd, align 8, !alias.scope !736, !noalias !737
  store ptr @_ZN5bytes9bytes_mut13SHARED_VTABLE17haa9e6d9e7b5468bdE, ptr %0, align 8, !alias.scope !736, !noalias !737
  br label %bb.t

.noexc.i.i:                                       ; preds = %bb.n
  %i.be = lshr i64 %i.az, 5                       ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @_ZN5bytes9bytes_mut11rebuild_vec17h163fb5854d8d5b53E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.5.0.copyload.i.i, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef %i.be), !noalias !731
end_hunk_0
begin_hunk_1_@"_ZN87_$LT$core..future..poll_fn..PollFn$LT$F$GT$$u20$as$u20$core..future..future..Future$GT$4poll17ha24ebce4ce665a6fE":bb.a
  %.val14.i.i = load ptr, ptr %i.ai, align 8, !noalias !848, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 112
  %.val15.i.i = load i64, ptr %i.aj, align 8, !noalias !848, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aa, i64 128
  %.val20.i.i = load ptr, ptr %i.ak, align 8, !noalias !848, !nonnull !5, !noundef !5
  %i.al = getelementptr i8, ptr %i.aa, i64 136
  %.val21.i.i = load i64, ptr %i.al, align 8, !noalias !848, !noundef !5
  %.sroa.725.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  store ptr %.val16.i.i, ptr %.sroa.725.0..sroa_idx.i.i, align 8, !noalias !848
  %.sroa.826.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  store i64 %.val17.i.i, ptr %.sroa.826.0..sroa_idx.i.i, align 8, !noalias !848
  %.sroa.927.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  store ptr %.val14.i.i, ptr %.sroa.927.0..sroa_idx.i.i, align 8, !noalias !848
  %.sroa.1028.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  store i64 %.val15.i.i, ptr %.sroa.1028.0..sroa_idx.i.i, align 8, !noalias !848
  %.sroa.1129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  store ptr %.val20.i.i, ptr %.sroa.1129.0..sroa_idx.i.i, align 8, !noalias !848
  %.sroa.1230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  store i64 %.val21.i.i, ptr %.sroa.1230.0..sroa_idx.i.i, align 8, !noalias !848
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 225 ; 2 uses
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i, align 1, !noalias !848
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5170.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6150.i.i.i)
  br label %bb.q

bb.d:                                             ; preds = %.body.i.i, %bb.ek
  %.pn8.i.i = phi { ptr, i32 } [ %i.jt, %bb.ek ], [ %.pn.i.i, %.body.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$runner..archive..DownloadArgs$GT$17hb64ddd52629d86d0E"(ptr noalias noundef align 8 dereferenceable(72) %i.an) #27
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$runner..archive..ExtractArgs$GT$17ha20affd1306791f7E"(ptr noalias noundef align 8 dereferenceable(48) %i.w) #27
          to label %bb.h unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !849
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !noalias !848
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val18.i.i = load ptr, ptr %i.aq, align 8, !noalias !849, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val19.i.i = load i64, ptr %i.ar, align 8, !noalias !849, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.val.i.i = load ptr, ptr %i.as, align 8, !noalias !849, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.val13.i.i = load i64, ptr %i.at, align 8, !noalias !849, !noundef !5
  %i.au = invoke noundef ptr @_ZN6runner7archive15extract_archive17h1c9482adf27d196bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val18.i.i, i64 noundef %.val19.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val13.i.i)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$runner..archive..ExtractArgs$GT$17ha20affd1306791f7E"(ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.e
  %.pn10.i.i = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.ao, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !849
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !849
  br label %bb.k

bb.k:                                             ; preds = %bb.el, %bb.j
  %.sroa.05.0.i.i = phi ptr [ %i.au, %bb.j ], [ %i.jr, %bb.el ]
  store i8 1, ptr %i.ab, align 8, !noalias !848
  %i.aw = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.05.0.i.i, 1
  br label %"_ZN6runner7archive15archive_command28_$u7b$$u7b$closure$u7d$$u7d$17h0fc8628ac28a646dE.exit.i"

bb.l:                                             ; preds = %.body.i.i, %bb.e, %bb.d
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.em, %bb.h, %bb.d
  %.pn10.pn.i.i = phi { ptr, i32 } [ %.pn10.i.i, %bb.h ], [ %i.jv, %bb.em ], [ %.pn8.i.i, %bb.d ]
  store i8 2, ptr %i.ab, align 8, !noalias !848
  resume { ptr, i32 } %.pn10.pn.i.i

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h3b6db46748f97cb2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #26
  unreachable

bb.o:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h9ee303addc83bb21E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #26
  unreachable

bb.p:                                             ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 225 ; 8 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !22, !noalias !850
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 144 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5170.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !849
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6150.i.i.i)
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
    i8 4, label %bb.cb
  ]

._crit_edge.i:                                    ; preds = %bb.p
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !850
  %.phi.trans.insert1.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %.pre2.i = load i64, ptr %.phi.trans.insert1.i, align 8, !noalias !850
  %.phi.trans.insert3.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %.pre4.i = load ptr, ptr %.phi.trans.insert3.i, align 8, !noalias !850
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %.pre6.i = load i64, ptr %.phi.trans.insert5.i, align 8, !noalias !850
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i, %.thread.i.i
  %i.az = phi i64 [ %.val15.i.i, %.thread.i.i ], [ %.pre6.i, %._crit_edge.i ]
  %i.ba = phi ptr [ %.val14.i.i, %.thread.i.i ], [ %.pre4.i, %._crit_edge.i ]
  %i.bb = phi i64 [ %.val17.i.i, %.thread.i.i ], [ %.pre2.i, %._crit_edge.i ] ; 2 uses
  %i.bc = phi ptr [ %.val16.i.i, %.thread.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.bd = phi ptr [ %.sroa.14.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 5 uses
  %i.be = phi ptr [ %i.am, %.thread.i.i ], [ %i.ay, %._crit_edge.i ] ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store i8 0, ptr %i.bf, align 8, !noalias !850
  store ptr %i.ba, ptr %i.be, align 8, !noalias !850
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 152 ; 2 uses
  store i64 %i.az, ptr %i.bg, align 8, !noalias !850
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 160 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !850, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !850, !noundef !5 ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !noalias !850
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 168 ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !noalias !850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !851
  invoke void @_ZN3std2fs8metadata17hdd952ddc7d999df8E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bj, i64 noundef %i.bl)
          to label %.noexc.i.i.i unwind label %bb.s

.noexc.i.i.i:                                     ; preds = %bb.q
  %i.bn = load i64, ptr %i.j, align 8, !range !16, !noalias !851, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 2
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.noexc.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bo)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !851
  br label %.thread.i.i.i

bb.u:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !852
  %i.bq = load ptr, ptr %i.bh, align 8, !noalias !850, !nonnull !5, !align !6, !noundef !5
  %i.br = load i64, ptr %i.bm, align 8, !noalias !850, !noundef !5
  invoke void @_ZN7anki_io9read_file17h98a1d942fd7b8b02E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bq, i64 noundef %i.br)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !852
  br label %.body67.i.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.bt = load i64, ptr %i.t, align 8, !range !8, !alias.scope !854, !noalias !855, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bt, -9223372036854775808
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !alias.scope !856, !noalias !852
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.11.0..sroa_idx123.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx123.i.i.i, i64 24, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !852
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i, i64 24, i1 false), !noalias !852
  store i64 %i.bt, ptr %i.i, align 8, !noalias !852
  %i.bv = invoke noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hea326f767360609aE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.ao unwind label %bb.aj

.body.i.i.i:                                      ; preds = %bb.ae, %bb.ab, %bb.y
  %.pn38.i.i.i = phi { ptr, i32 } [ %i.ce, %bb.ae ], [ %i.cc, %bb.ab ], [ %i.bw, %bb.y ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #27
          to label %.body67.i.i.i unwind label %bb.an

bb.y:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i61.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i.i.i.i", %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i, i64 24, i1 false), !noalias !852
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val44.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !852, !nonnull !5, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val45.i.i.i = load i64, ptr %i.by, align 8, !noalias !852, !noundef !5
  invoke void @_ZN6runner7archive9sha2_data17h283052357f550143E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val44.i.i.i, i64 noundef %.val45.i.i.i)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val47.i.i.i = load i64, ptr %i.bz, align 8, !noalias !852, !noundef !5 ; 2 uses
  %.val49.i.i.i = load i64, ptr %i.bg, align 8, !noalias !850, !noundef !5
  %.not.i58.i.i.i = icmp eq i64 %.val47.i.i.i, %.val49.i.i.i
  br i1 %.not.i58.i.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.i.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.thread.i.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.i.i.i": ; preds = %bb.aa
  %.val48.i.i.i = load ptr, ptr %i.be, align 8, !noalias !850, !nonnull !5, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val46.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !852, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val46.i.i.i, ptr nonnull readonly %.val48.i.i.i, i64 %.val47.i.i.i)
  %i.cb = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cb, label %bb.ad, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.thread.i.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.thread.i.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.i.i.i", %bb.aa
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i.i.i.i" unwind label %bb.ab

bb.ab:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.thread.i.i.i"
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i.i.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.thread.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i" unwind label %bb.y

bb.ad:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit.i.i.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i61.i.i.i" unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body.i.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i61.i.i.i": ; preds = %bb.ad
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit65.i.i.i" unwind label %bb.y

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i.i.i.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i"
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body67.i.i.i unwind label %bb.ai

bb.ah:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i.i.i" unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

.body67.i.i.i:                                    ; preds = %bb.ak, %bb.aj, %bb.ag, %.body.i.i.i, %bb.v
  %.pn40.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %.pn38.i.i.i, %.body.i.i.i ], [ %i.cg, %bb.ag ], [ %i.ci, %bb.aj ], [ %i.ck, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !852
  br label %bb.aq

bb.aj:                                            ; preds = %bb.al, %bb.ah, %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i.i.i

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i.i.i": ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !852
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i.i.i", %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !852
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !850
  %.sroa.9140.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  store i64 %i.bb, ptr %.sroa.9140.0..sroa_idx.i.i.i, align 8, !noalias !850
  %.sroa.11142.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 289 ; 2 uses
  store i8 0, ptr %.sroa.11142.0..sroa_idx.i.i.i, align 1, !noalias !850
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9146.i.i.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  br label %bb.au

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit65.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i61.i.i.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit65.i.i.i"
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body67.i.i.i unwind label %bb.am

bb.al:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit65.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit73.i.i.i" unwind label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit73.i.i.i": ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !852
  br label %bb.ap

bb.an:                                            ; preds = %bb.ef, %.body93.i.i.i, %bb.ed, %bb.dw, %bb.dh, %.body77.i.i.i, %.body.i.i.i
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.ao:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !852
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit112.i.i.i", %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i", %bb.ao, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit73.i.i.i"
  %i.cn = phi ptr [ %i.bd, %bb.ao ], [ %i.bd, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit73.i.i.i" ], [ %i.fj, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i" ], [ %i.gm, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit112.i.i.i" ]
  %i.co = phi ptr [ %i.be, %bb.ao ], [ %i.be, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit73.i.i.i" ], [ %i.fk, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i" ], [ %i.gn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit112.i.i.i" ]
  %.sroa.08.0.i.i.i = phi ptr [ %i.bv, %bb.ao ], [ null, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit73.i.i.i" ], [ %.sroa.08.2.i.i.i, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i" ], [ null, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit112.i.i.i" ]
  store i8 1, ptr %i.cn, align 1, !noalias !850
  %i.cp = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.08.0.i.i.i, 1
  br label %bb.eh

bb.aq:                                            ; preds = %bb.ca, %.body67.i.i.i, %bb.s
  %i.cq = phi ptr [ %i.bd, %.body67.i.i.i ], [ %i.fp, %bb.ca ], [ %i.bd, %bb.s ]
  %i.cr = phi ptr [ %i.be, %.body67.i.i.i ], [ %i.fq, %bb.ca ], [ %i.be, %bb.s ]
  %.pn40.pn.i.i.i = phi { ptr, i32 } [ %.pn40.i.i.i, %.body67.i.i.i ], [ %.pn35.pn.i.i.i, %bb.ca ], [ %i.bp, %bb.s ]
  store i8 2, ptr %i.cq, align 1, !noalias !850
  br label %.body.i.i

bb.ar:                                            ; preds = %bb.p
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h3b6db46748f97cb2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #26
          to label %.noexc.i.i unwind label %bb.eg

.noexc.i.i:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.p
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h9ee303addc83bb21E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #26
          to label %.noexc22.i.i unwind label %bb.eg

.noexc22.i.i:                                     ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !852
end_hunk_1
begin_hunk_2_@"_ZN87_$LT$core..future..poll_fn..PollFn$LT$F$GT$$u20$as$u20$core..future..future..Future$GT$4poll17ha24ebce4ce665a6fE":bb.a
  %i.db = invoke { i64, ptr } @_ZN7reqwest10async_impl6client13ClientBuilder5build17hc605c26e10fb1b35E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(952) %i.g)
          to label %bb.ax unwind label %bb.av, !noalias !859 ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.dc = extractvalue { i64, ptr } %i.db, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !858
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = extractvalue { i64, ptr } %i.db, 0      ; 2 uses
  store i64 %i.dd, ptr %i.cy, align 8, !noalias !857
  %i.de = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  store ptr %i.dc, ptr %i.de, align 8, !noalias !857
  %i.df = trunc nuw i64 %i.dd to i1
  br i1 %i.df, label %.thread185.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 280 ; 2 uses
  store ptr %i.dc, ptr %i.dg, align 8, !noalias !857
  store i8 0, ptr %i.cz, align 8, !noalias !857
  invoke void @_ZN7reqwest10async_impl6client6Client3get17hbb001b797fcabe26E(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cv)
          to label %bb.ba unwind label %bb.az, !noalias !859

bb.az:                                            ; preds = %bb.ay
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.di = invoke { i64, ptr } @_ZN7reqwest10async_impl7request14RequestBuilder4send17h6a2cb789fe6f38e4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.h)
          to label %bb.bd unwind label %bb.bc, !noalias !859 ; 2 uses

bb.bb:                                            ; preds = %bb.bc, %bb.az
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %i.dj, %bb.bc ], [ %i.dh, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !858
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !858
  %i.dk = extractvalue { i64, ptr } %i.di, 0
  %i.dl = extractvalue { i64, ptr } %i.di, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  store i64 %i.dk, ptr %i.dm, align 8, !noalias !857
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !857
  br label %bb.bi

bb.be:                                            ; preds = %bb.bm, %bb.bj, %bb.bb
  %i.do = phi ptr [ %i.dw, %bb.bm ], [ %i.dw, %bb.bj ], [ %i.ct, %bb.bb ] ; 2 uses
  %i.dp = phi ptr [ %i.dx, %bb.bm ], [ %i.dx, %bb.bj ], [ %i.cu, %bb.bb ] ; 2 uses
  %i.dq = phi ptr [ %i.dy, %bb.bm ], [ %i.dy, %bb.bj ], [ %i.cx, %bb.bb ] ; 2 uses
  %i.dr = phi ptr [ %i.dz, %bb.bm ], [ %i.dz, %bb.bj ], [ %i.cy, %bb.bb ] ; 2 uses
  %.pn6.i.i.i.i = phi { ptr, i32 } [ %i.ee, %bb.bm ], [ %i.eb, %bb.bj ], [ %.pn2.i.i.i.i, %bb.bb ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aa, i64 280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !863, !noalias !857, !nonnull !5, !noundef !5
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !noalias !864
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.bf, label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i"

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h182276ab6784abedE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i" unwind label %bb.bq, !noalias !865

.thread185.i.i.i:                                 ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !858
  store i8 0, ptr %i.cz, align 8, !noalias !857
  store i8 1, ptr %i.cx, align 1, !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9146.i.i.i)
  br label %bb.bu

bb.bg:                                            ; preds = %bb.at
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h3b6db46748f97cb2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #26
          to label %.noexc75.i.i.i unwind label %bb.br

.noexc75.i.i.i:                                   ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.at
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h9ee303addc83bb21E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #26
          to label %.noexc76.i.i.i unwind label %bb.br

.noexc76.i.i.i:                                   ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bd, %bb.at
  %i.dw = phi ptr [ %i.ct, %bb.bd ], [ %.phi.trans.insert.i.i, %bb.at ] ; 9 uses
  %i.dx = phi ptr [ %i.cu, %bb.bd ], [ %i.ay, %bb.at ] ; 9 uses
  %i.dy = phi ptr [ %i.cx, %bb.bd ], [ %.phi.trans.insert.i.i.i, %bb.at ] ; 5 uses
  %i.dz = phi ptr [ %i.cy, %bb.bd ], [ %i.cs, %bb.at ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !858
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 248 ; 3 uses
  invoke void @"_ZN85_$LT$reqwest..async_impl..client..Pending$u20$as$u20$core..future..future..Future$GT$4poll17h14f46e72637afb0eE"(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bk unwind label %bb.bj, !noalias !865

bb.bj:                                            ; preds = %bb.bi
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !858
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$reqwest..async_impl..client..Pending$GT$17h359dfc6b212a77c6E"(ptr noalias noundef align 8 dereferenceable(16) %i.ea) #27
          to label %bb.be unwind label %bb.bq, !noalias !865

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load i64, ptr %i.f, align 8, !range !15, !noalias !858, !noundef !5 ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 4
  br i1 %i.ed, label %bb.bs, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.3.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload14.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx13.i.i.i.i, align 8, !noalias !858 ; 2 uses
  %.sroa.4.0..sroa_idx15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx15.i.i.i.i, i64 120, i1 false), !noalias !858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !858
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$reqwest..async_impl..client..Pending$GT$17h359dfc6b212a77c6E"(ptr noalias noundef align 8 dereferenceable(16) %i.ea)
          to label %bb.bn unwind label %bb.bm, !noalias !865

bb.bm:                                            ; preds = %bb.bl
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bn:                                            ; preds = %bb.bl
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aa, i64 280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !869, !noalias !857, !nonnull !5, !noundef !5
  %i.eh = atomicrmw sub ptr %i.eg, i64 1 release, align 8, !noalias !870
  %i.ei = icmp eq i64 %i.eh, 1
  br i1 %i.ei, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h182276ab6784abedE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %bb.bt unwind label %bb.bp, !noalias !865

bb.bp:                                            ; preds = %bb.bo
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i"

bb.bq:                                            ; preds = %bb.bj, %bb.bf
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !865
  unreachable

"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i": ; preds = %bb.bp, %bb.bf, %bb.be, %bb.av
  %i.el = phi ptr [ %i.do, %bb.be ], [ %i.dw, %bb.bp ], [ %i.ct, %bb.av ], [ %i.do, %bb.bf ]
  %i.em = phi ptr [ %i.dp, %bb.be ], [ %i.dx, %bb.bp ], [ %i.cu, %bb.av ], [ %i.dp, %bb.bf ]
  %i.en = phi ptr [ %i.dq, %bb.be ], [ %i.dy, %bb.bp ], [ %i.cx, %bb.av ], [ %i.dq, %bb.bf ]
  %i.eo = phi ptr [ %i.dr, %bb.be ], [ %i.dz, %bb.bp ], [ %i.cy, %bb.av ], [ %i.dr, %bb.bf ]
  %.pn8.i.i.i.i = phi { ptr, i32 } [ %.pn6.i.i.i.i, %bb.be ], [ %i.ej, %bb.bp ], [ %i.da, %bb.av ], [ %.pn6.i.i.i.i, %bb.bf ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  store i8 0, ptr %i.ep, align 8, !noalias !857
  store i8 2, ptr %i.en, align 1, !noalias !857
  br label %.body77.i.i.i

bb.br:                                            ; preds = %bb.bh, %bb.bg
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body77.i.i.i

bb.bs:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !858
  store i8 3, ptr %i.dy, align 1, !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9146.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !852
  store i8 3, ptr %i.dw, align 1, !noalias !850
  br label %bb.eh

.body80.i.i.i:                                    ; preds = %.body77.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !852
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bo, %bb.bn
  %i.er = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  store i8 0, ptr %i.er, align 8, !noalias !857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9146.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.i.i.i.i, i64 120, i1 false), !noalias !871
  store i8 1, ptr %i.dy, align 1, !noalias !857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6150.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9146.i.i.i, i64 120, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9146.i.i.i)
  %i.es = icmp eq i64 %i.ec, 3
  br i1 %i.es, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %.thread185.i.i.i
  %i.et = phi ptr [ %i.ct, %.thread185.i.i.i ], [ %i.dw, %bb.bt ] ; 2 uses
  %i.eu = phi ptr [ %i.cu, %.thread185.i.i.i ], [ %i.dx, %bb.bt ] ; 2 uses
  %.sroa.3.0.i189.i.i.i = phi ptr [ %i.dc, %.thread185.i.i.i ], [ %.sroa.3.0.copyload14.i.i.i.i, %bb.bt ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i189.i.i.i) ]
  %i.ev = invoke noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h5887c4f1a38c7f45E"(ptr noalias noundef nonnull align 8 %.sroa.3.0.i189.i.i.i)
          to label %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit.i.i.i" unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %.sroa.12135.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.12135.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6150.i.i.i, i64 120, i1 false), !noalias !852
  store i64 %i.ec, ptr %i.q, align 8, !noalias !852
  %.sroa.10132.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.3.0.copyload14.i.i.i.i, ptr %.sroa.10132.0..sroa_idx.i.i.i, align 8, !noalias !852
  invoke void @_ZN7reqwest10async_impl8response8Response16error_for_status17hb2f055a05b874aa4E(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.q)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ew = phi ptr [ %i.dw, %bb.bv ], [ %i.et, %bb.bu ]
  %i.ex = phi ptr [ %i.dx, %bb.bv ], [ %i.eu, %bb.bu ]
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !852
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ez = load i64, ptr %i.r, align 8, !range !11, !alias.scope !873, !noalias !874, !noundef !5 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !875, !noalias !852 ; 2 uses
  br i1 %i.fa, label %bb.by, label %.thread219.i.i.i

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !852
  %i.fd = invoke noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h5887c4f1a38c7f45E"(ptr noalias noundef nonnull align 8 %i.fc)
          to label %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i" unwind label %bb.bz

.thread219.i.i.i:                                 ; preds = %bb.bx
  %.sroa.12.0..sroa_idx129.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5153.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.12.0..sroa_idx129.i.i.i, i64 120, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !852
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store i64 %i.ez, ptr %i.s, align 8, !noalias !852
  %.sroa.4152.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.fc, ptr %.sroa.4152.0..sroa_idx.i.i.i, align 8, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !852
  store i8 0, ptr %i.fe, align 8, !noalias !850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dz, ptr noundef nonnull align 8 dereferenceable(136) %i.s, i64 136, i1 false), !noalias !850
  %.sroa.9164.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 648 ; 2 uses
  store i8 0, ptr %.sroa.9164.0..sroa_idx.i.i.i, align 8, !noalias !850
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6167.sroa.7.i.i.i)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i86.i.i.i)
  br label %bb.cc

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i": ; preds = %.body93.i.i.i, %bb.ee, %bb.dh, %bb.dc
  %i.fg = phi ptr [ %i.gm, %bb.ee ], [ %i.gm, %bb.dh ], [ %i.gm, %bb.dc ], [ %i.jl, %.body93.i.i.i ]
  %i.fh = phi ptr [ %i.gn, %bb.ee ], [ %i.gn, %bb.dh ], [ %i.gn, %bb.dc ], [ %i.jm, %.body93.i.i.i ]
  %.pn32.i.i.i = phi { ptr, i32 } [ %i.jk, %bb.ee ], [ %i.hq, %bb.dh ], [ %i.hh, %bb.dc ], [ %.pn17.i.i.i, %.body93.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !852
  br label %bb.ec

bb.bz:                                            ; preds = %bb.by
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit.i.i.i": ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !852
  br label %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i"

"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i": ; preds = %bb.dv, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit.i.i.i", %bb.by
  %i.fj = phi ptr [ %i.gm, %bb.dv ], [ %i.et, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit.i.i.i" ], [ %i.dw, %bb.by ]
  %i.fk = phi ptr [ %i.gn, %bb.dv ], [ %i.eu, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit.i.i.i" ], [ %i.dx, %bb.by ]
  %.sroa.08.2.i.i.i = phi ptr [ %.sroa.08.3.i.i.i, %bb.dv ], [ %i.ev, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit.i.i.i" ], [ %i.fd, %bb.by ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store i8 0, ptr %i.fl, align 8, !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !852
  br label %bb.ap

.body77.i.i.i:                                    ; preds = %bb.br, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i"
  %i.fm = phi ptr [ %i.el, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i" ], [ %.phi.trans.insert.i.i, %bb.br ]
  %i.fn = phi ptr [ %i.em, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i" ], [ %i.ay, %bb.br ]
  %i.fo = phi ptr [ %i.eo, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i" ], [ %i.cs, %bb.br ]
  %.pn11.i.i.i = phi { ptr, i32 } [ %.pn8.i.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E.exit.i.i.i.i" ], [ %i.eq, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9146.i.i.i)
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$reqwest..get$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h1c9c7968bf7a15e6E"(ptr noundef nonnull align 8 %i.fo) #27
          to label %.body80.i.i.i unwind label %bb.an

bb.ca:                                            ; preds = %bb.ef, %bb.ec, %bb.bz, %bb.bw, %.body80.i.i.i
  %i.fp = phi ptr [ %i.jf, %bb.ec ], [ %i.jf, %bb.ef ], [ %i.ew, %bb.bw ], [ %i.dw, %bb.bz ], [ %i.fm, %.body80.i.i.i ]
  %i.fq = phi ptr [ %i.jg, %bb.ec ], [ %i.jg, %bb.ef ], [ %i.ex, %bb.bw ], [ %i.dx, %bb.bz ], [ %i.fn, %.body80.i.i.i ]
  %.pn35.pn.i.i.i = phi { ptr, i32 } [ %.pn32.pn.i.i.i, %bb.ec ], [ %.pn32.pn.i.i.i, %bb.ef ], [ %i.ey, %bb.bw ], [ %i.fi, %bb.bz ], [ %.pn11.i.i.i, %.body80.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store i8 0, ptr %i.fr, align 8, !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !852
  br label %bb.aq

bb.cb:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !852
  %.phi.trans.insert212.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 648 ; 3 uses
  %.pre213.i.i.i = load i8, ptr %.phi.trans.insert212.i.i.i, align 8, !range !21, !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6167.sroa.7.i.i.i)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aa, i64 232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i86.i.i.i)
  switch i8 %.pre213.i.i.i, label %default.unreachable [
    i8 0, label %bb.cc
    i8 1, label %bb.ck
    i8 2, label %bb.cl
    i8 3, label %bb.cm
  ]

bb.cc:                                            ; preds = %bb.cb, %.thread219.i.i.i
  %i.ft = phi ptr [ %i.dw, %.thread219.i.i.i ], [ %.phi.trans.insert.i.i, %bb.cb ] ; 2 uses
  %i.fu = phi ptr [ %i.dx, %.thread219.i.i.i ], [ %i.ay, %bb.cb ] ; 2 uses
  %i.fv = phi ptr [ %.sroa.9164.0..sroa_idx.i.i.i, %.thread219.i.i.i ], [ %.phi.trans.insert212.i.i.i, %bb.cb ] ; 2 uses
  %i.fw = phi ptr [ %i.ff, %.thread219.i.i.i ], [ %i.fs, %bb.cb ] ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.fx, ptr noundef nonnull align 8 dereferenceable(136) %i.fw, i64 136, i1 false), !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.fw, i64 128, i1 false), !noalias !876
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.fz = load <2 x ptr>, ptr %i.fy, align 8, !alias.scope !878, !noalias !877
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h8ddb8436d415d0ceE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.ce unwind label %bb.cd, !noalias !879

bb.cd:                                            ; preds = %bb.cc
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !alias.scope !880, !noalias !877, !align !10, !noundef !5
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17hecf62886de48f91dE"(ptr %.val1.i.i.i.i.i.i) #27
          to label %.body.i.i.i.i unwind label %bb.ch, !noalias !879

bb.ce:                                            ; preds = %bb.cc
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val.i.i.i.i.i.i = load ptr, ptr %i.gc, align 8, !alias.scope !880, !noalias !877, !align !10, !noundef !5 ; 4 uses
  %i.gd = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.gd, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0bfe4e0082f543f1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.val.i.i.i.i.i.i)
          to label %"_ZN4core3ptr282drop_in_place$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$17hbdf17150125ecff7E.exit.i.i.i.i.i.i.i.i" unwind label %bb.cg, !noalias !879

bb.cg:                                            ; preds = %bb.cf
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef 32, i64 noundef 8) #29, !noalias !879
  br label %.body.i.i.i.i

"_ZN4core3ptr282drop_in_place$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$17hbdf17150125ecff7E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.cf
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef 32, i64 noundef 8) #29, !noalias !879
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !879
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.cg, %bb.cd
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ga, %bb.cd ], [ %i.ge, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !877
  br label %bb.cj

bb.ci:                                            ; preds = %"_ZN4core3ptr282drop_in_place$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$http..extensions..AnyClone$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$17hbdf17150125ecff7E.exit.i.i.i.i.i.i.i.i", %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !877
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !876
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aa, i64 504
  store i64 3, ptr %i.gg, align 8, !noalias !876
  %.sroa.814.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 600
  store i64 0, ptr %.sroa.814.0..sroa_idx.i.i.i.i, align 8, !noalias !876
  %.sroa.915.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 608
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.915.0..sroa_idx.i.i.i.i, align 8, !noalias !876
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 632
  store <2 x ptr> %i.fz, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !876
  br label %bb.cm

bb.cj:                                            ; preds = %bb.cq, %bb.cn, %.body.i.i.i.i
  %i.gh = phi ptr [ %i.gm, %bb.cq ], [ %i.gm, %bb.cn ], [ %i.ft, %.body.i.i.i.i ]
  %i.gi = phi ptr [ %i.gn, %bb.cq ], [ %i.gn, %bb.cn ], [ %i.fu, %.body.i.i.i.i ]
  %i.gj = phi ptr [ %i.go, %bb.cq ], [ %i.go, %bb.cn ], [ %i.fv, %.body.i.i.i.i ]
  %i.gk = phi ptr [ %i.gp, %bb.cq ], [ %i.gp, %bb.cn ], [ %i.fw, %.body.i.i.i.i ]
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %i.gu, %bb.cq ], [ %i.gr, %bb.cn ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aa, i64 496
  %.val8.i.i.i.i = load ptr, ptr %i.gl, align 8, !noalias !876, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$alloc..boxed..Box$LT$url..Url$GT$$GT$17h3ff42ce9cb91f384E"(ptr %.val8.i.i.i.i) #27
          to label %.body9.i.i.i.i unwind label %bb.cy, !noalias !881

bb.ck:                                            ; preds = %bb.cb
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h3b6db46748f97cb2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #26
          to label %.noexc91.i.i.i unwind label %bb.cz

.noexc91.i.i.i:                                   ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.cb
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h9ee303addc83bb21E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #26
          to label %.noexc92.i.i.i unwind label %bb.cz

.noexc92.i.i.i:                                   ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.ci, %bb.cb
  %i.gm = phi ptr [ %.phi.trans.insert.i.i, %bb.cb ], [ %i.ft, %bb.ci ] ; 13 uses
  %i.gn = phi ptr [ %i.ay, %bb.cb ], [ %i.fu, %bb.ci ] ; 15 uses
  %i.go = phi ptr [ %.phi.trans.insert212.i.i.i, %bb.cb ], [ %i.fv, %bb.ci ] ; 5 uses
  %i.gp = phi ptr [ %i.fs, %bb.cb ], [ %i.fw, %bb.ci ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !877
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aa, i64 504 ; 3 uses
  invoke void @"_ZN103_$LT$http_body_util..combinators..collect..Collect$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hecf63d4056974589E"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.gq, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.co unwind label %bb.cn, !noalias !881

bb.cn:                                            ; preds = %bb.cm
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !877
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$reqwest..async_impl..decoder..Decoder$GT$$GT$17h05e65232907777e3E"(ptr noalias noundef align 8 dereferenceable(144) %i.gq) #27
          to label %bb.cj unwind label %bb.cy, !noalias !881

bb.co:                                            ; preds = %bb.cm
  %i.gs = load i64, ptr %i.d, align 8, !range !882, !noalias !877, !noundef !5 ; 3 uses
  %i.gt = icmp eq i64 %i.gs, 5
  br i1 %i.gt, label %bb.da, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.sroa.3.0..sroa_idx.i88.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i88.i.i.i, align 8, !noalias !877 ; 3 uses
  %.sroa.4.0..sroa_idx.i89.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i86.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx.i89.i.i.i, i64 112, i1 false), !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !877
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$reqwest..async_impl..decoder..Decoder$GT$$GT$17h05e65232907777e3E"(ptr noalias noundef align 8 dereferenceable(144) %i.gq)
          to label %bb.cr unwind label %bb.cq, !noalias !881

bb.cq:                                            ; preds = %bb.ct, %bb.cp
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.gv = icmp eq i64 %i.gs, 4
  br i1 %i.gv, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i) ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i.i, ptr %i.gw, align 8, !alias.scope !883, !noalias !884
  store ptr null, ptr %i.c, align 8, !alias.scope !883, !noalias !884
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E.exit.i.i.i.i"

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !885
  store i64 %i.gs, ptr %i.b, align 8, !noalias !886
  %.sroa.3.0..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa_idx18.i.i.i.i, align 8, !noalias !886
  %.sroa.4.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i86.i.i.i, i64 112, i1 false), !noalias !886
  invoke void @"_ZN14http_body_util9collected18Collected$LT$B$GT$8to_bytes17h8caa91237fc133beE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.b)
          to label %.noexc.i.i.i.i unwind label %bb.cq, !noalias !881

.noexc.i.i.i.i:                                   ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !885
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E.exit.i.i.i.i"

"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E.exit.i.i.i.i": ; preds = %.noexc.i.i.i.i, %bb.cs
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aa, i64 496
  %.val.i.i.i.i = load ptr, ptr %i.gx, align 8, !noalias !876, !nonnull !5, !noundef !5 ; 5 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i.i.i.i" unwind label %bb.cu, !noalias !881

bb.cu:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E.exit.i.i.i.i"
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i.i.i)
          to label %bb.cx unwind label %bb.cv, !noalias !881

bb.cv:                                            ; preds = %bb.cu
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !881
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i.i.i.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$3map17h5943d2bccace59b8E.exit.i.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i.i.i)
          to label %bb.db unwind label %bb.cw, !noalias !881

bb.cw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i.i.i.i"
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ha, %bb.cw ], [ %i.gy, %bb.cu ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 88, i64 noundef 8) #29, !noalias !881
  br label %.body9.i.i.i.i

.body9.i.i.i.i:                                   ; preds = %bb.cx, %bb.cj
  %i.hb = phi ptr [ %i.gh, %bb.cj ], [ %i.gm, %bb.cx ]
  %i.hc = phi ptr [ %i.gi, %bb.cj ], [ %i.gn, %bb.cx ]
  %i.hd = phi ptr [ %i.gj, %bb.cj ], [ %i.go, %bb.cx ]
  %i.he = phi ptr [ %i.gk, %bb.cj ], [ %i.gp, %bb.cx ]
  %.pn6.i87.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i, %bb.cj ], [ %eh.lpad-body.i.i.i.i.i, %bb.cx ]
  store i8 2, ptr %i.hd, align 8, !noalias !876
  br label %.body93.i.i.i

bb.cy:                                            ; preds = %bb.cn, %bb.cj
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !881
  unreachable

bb.cz:                                            ; preds = %bb.cl, %bb.ck
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i.i.i

bb.da:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !877
  store i8 3, ptr %i.go, align 8, !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i86.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6167.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !852
  store i8 4, ptr %i.gm, align 1, !noalias !850
  br label %bb.eh

bb.db:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i.i.i.i"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 88, i64 noundef 8) #29, !noalias !881
  %.sroa.6167.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !noalias !887 ; 2 uses
  %.sroa.6167.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6167.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6167.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !887 ; 4 uses
  %.sroa.6167.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6167.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6167.sroa.7.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !887
  store i8 1, ptr %i.go, align 8, !noalias !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i86.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5170.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6167.sroa.7.i.i.i, i64 16, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6167.sroa.7.i.i.i)
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd79c348213a923b9E"(ptr noundef nonnull align 8 %i.gp)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i"

bb.dd:                                            ; preds = %bb.db
  %i.hi = icmp eq ptr %.sroa.6167.sroa.0.0.copyload.i.i.i, null
  br i1 %i.hi, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6167.sroa.6.0.copyload.i.i.i) ]
  %i.hj = invoke noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h5887c4f1a38c7f45E"(ptr noalias noundef nonnull align 8 %.sroa.6167.sroa.6.0.copyload.i.i.i)
          to label %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit96.i.i.i" unwind label %bb.ee

bb.df:                                            ; preds = %bb.dd
  %.sroa.5173.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5173.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5170.i.i.i, i64 16, i1 false), !noalias !852
  store ptr %.sroa.6167.sroa.0.0.copyload.i.i.i, ptr %i.o, align 8, !noalias !852
  %.sroa.4172.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %.sroa.6167.sroa.6.0.copyload.i.i.i, ptr %.sroa.4172.0..sroa_idx.i.i.i, align 8, !noalias !852
  %.val51.i.i.i = load i64, ptr %.sroa.5173.0..sroa_idx.i.i.i, align 8, !noalias !852, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !890
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h70eece5d17de217aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val51.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc97.i.i.i unwind label %bb.dh

.noexc97.i.i.i:                                   ; preds = %bb.df
  %i.hk = load i64, ptr %i.a, align 8, !range !7, !noalias !890, !noundef !5
  %i.hl = trunc nuw i64 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !8, !noalias !890, !noundef !5 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.hl, label %bb.dg, label %bb.di, !prof !9

bb.dg:                                            ; preds = %.noexc97.i.i.i
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !890
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.hn, i64 %i.hp) #26
          to label %.noexc98.i.i.i unwind label %bb.dh

.noexc98.i.i.i:                                   ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.hr = load ptr, ptr %i.o, align 8, !alias.scope !893, !noalias !852, !nonnull !5, !align !10, !noundef !5
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !893, !nonnull !5, !noundef !5
  %i.hu = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.hv = load ptr, ptr %.sroa.4172.0..sroa_idx.i.i.i, align 8, !alias.scope !893, !noalias !852, !noundef !5
  %i.hw = load i64, ptr %.sroa.5173.0..sroa_idx.i.i.i, align 8, !alias.scope !893, !noalias !852, !noundef !5
  invoke void %i.ht(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hv, i64 noundef %i.hw)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i" unwind label %bb.an, !inline_history !0

bb.di:                                            ; preds = %.noexc97.i.i.i
  %i.hx = load ptr, ptr %i.ho, align 8, !noalias !890, !nonnull !5, !noundef !5 ; 3 uses
  %i.hy = icmp ule i64 %.val51.i.i.i, %i.hn
  call void @llvm.assume(i1 %i.hy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !890
  store i64 %i.hn, ptr %i.p, align 8, !alias.scope !894, !noalias !895
  %i.hz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.hx, ptr %i.hz, align 8, !alias.scope !894, !noalias !895
  %i.ia = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hx, ptr nonnull readonly align 1 %.sroa.6167.sroa.6.0.copyload.i.i.i, i64 %.val51.i.i.i, i1 false), !noalias !894
  store i64 %.val51.i.i.i, ptr %i.ia, align 8, !alias.scope !894, !noalias !895
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.ib = load ptr, ptr %i.o, align 8, !alias.scope !898, !noalias !852, !nonnull !5, !align !10, !noundef !5
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !898, !nonnull !5, !noundef !5
  %i.ie = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.if = load ptr, ptr %.sroa.4172.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !852, !noundef !5
  %i.ig = load i64, ptr %.sroa.5173.0..sroa_idx.i.i.i, align 8, !alias.scope !898, !noalias !852, !noundef !5
  invoke void %i.id(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef %i.if, i64 noundef %i.ig)
          to label %bb.dj unwind label %.thread203.i.i.i, !inline_history !0

.thread203.i.i.i:                                 ; preds = %bb.di
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !852
  br label %bb.ed

.split.thread.i.i.i:                              ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i114.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i108.i.i.i"
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !852
  br label %bb.ec

.split.i.i.i:                                     ; preds = %bb.dj
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !852
  br label %bb.ed

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !852
  invoke void @_ZN6runner7archive9sha2_data17h283052357f550143E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hx, i64 noundef %.val51.i.i.i)
          to label %bb.dk unwind label %.split.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.ii = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val53.i.i.i = load i64, ptr %i.ii, align 8, !noalias !852, !noundef !5 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.aa, i64 152
  %.val55.i.i.i = load i64, ptr %i.ij, align 8, !noalias !850, !noundef !5
  %.not.i102.i.i.i = icmp eq i64 %.val53.i.i.i, %.val55.i.i.i
  br i1 %.not.i102.i.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.i.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread.i.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.i.i.i": ; preds = %bb.dk
  %.val54.i.i.i = load ptr, ptr %i.gn, align 8, !noalias !850, !nonnull !5, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val52.i.i.i = load ptr, ptr %i.ik, align 8, !noalias !852, !nonnull !5, !noundef !5
  %bcmp.i104.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val52.i.i.i, ptr nonnull readonly %.val54.i.i.i, i64 %.val53.i.i.i)
  %.not.i.i.i = icmp eq i32 %bcmp.i104.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.dl, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread.i.i.i"

bb.dl:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.i.i.i"
  %i.il = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.im = load ptr, ptr %i.il, align 8, !noalias !850, !nonnull !5, !align !6, !noundef !5
  %i.in = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.io = load i64, ptr %i.in, align 8, !noalias !850, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !852
  %i.ip = invoke noundef ptr @_ZN3std2fs5write17h30af28f016d71b16E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.im, i64 noundef %i.io, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.dn unwind label %bb.dm     ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !852
  br label %bb.dw

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !852
  %.not21.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not21.i.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ir = invoke noalias noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.ip)
          to label %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5464523ba31b9544E.exit.i.i.i" unwind label %bb.ds

bb.dp:                                            ; preds = %bb.dn
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i108.i.i.i" unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread207.i.i.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i108.i.i.i": ; preds = %bb.dp
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit112.i.i.i" unwind label %.split.thread.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit112.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i108.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !852
  %i.iu = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  store i8 0, ptr %i.iu, align 8, !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !852
  br label %bb.ap

bb.ds:                                            ; preds = %bb.do
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5464523ba31b9544E.exit.i.i.i": ; preds = %bb.do
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i114.i.i.i" unwind label %bb.dt

bb.dt:                                            ; preds = %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5464523ba31b9544E.exit.i.i.i"
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread207.i.i.i unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i114.i.i.i": ; preds = %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h5464523ba31b9544E.exit.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit119.i.i.i" unwind label %.split.thread.i.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit119.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i114.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !852
  br label %bb.dv

bb.dv:                                            ; preds = %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit96.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit119.i.i.i"
  %.sroa.08.3.i.i.i = phi ptr [ %i.hj, %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit96.i.i.i" ], [ %i.ir, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit119.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !852
  br label %"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit85.i.i.i"

bb.dw:                                            ; preds = %bb.dz, %bb.dx, %bb.ds, %bb.dm
  %.pn28.i.i.i = phi { ptr, i32 } [ %i.je, %bb.dz ], [ %i.iy, %bb.dx ], [ %i.iq, %bb.dm ], [ %i.iv, %bb.ds ] ; 2 uses
  %.sroa.07.2.i.i.i = phi i1 [ true, %bb.dz ], [ true, %bb.dx ], [ false, %bb.dm ], [ false, %bb.ds ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #27
          to label %bb.eb unwind label %bb.an

bb.dx:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread.i.i.i"
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !852
  br label %bb.dw

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread.i.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.i.i.i", %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !852
  store ptr %i.gn, ptr %i.l, align 8, !noalias !852
  %.sroa.5175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h119398b619542a0dE", ptr %.sroa.5175.0..sroa_idx.i.i.i, align 8, !noalias !852
  %i.iz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.iz, align 8, !noalias !852
  %.sroa.5177.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.5177.0..sroa_idx.i.i.i, align 8, !noalias !852
  store ptr @121, ptr %i.m, align 8, !alias.scope !899, !noalias !900
  %i.ja = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 3, ptr %i.ja, align 8, !alias.scope !899, !noalias !900
  %i.jb = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.jb, align 8, !alias.scope !899, !noalias !900
  %i.jc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.jc, align 8, !alias.scope !899, !noalias !900
  %i.jd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 2, ptr %i.jd, align 8, !alias.scope !899, !noalias !900
  invoke void @_ZN3std2io5stdio6_print17h3fda082316a9dfcbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.dy unwind label %bb.dx

bb.dy:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h62f3a8afe6e61b44E.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !852
  invoke void @_ZN3std7process4exit17h76e2716ffe762badE(i32 noundef 1) #26
          to label %bb.ea unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.ea:                                            ; preds = %bb.dy
  unreachable

.thread207.i.i.i:                                 ; preds = %bb.dt, %bb.dq
  %.pn28.pn.ph.i.i.i = phi { ptr, i32 } [ %i.iw, %bb.dt ], [ %i.is, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !852
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !852
  br i1 %.sroa.07.2.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.ed, %bb.eb, %.thread207.i.i.i, %.split.thread.i.i.i, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i"
  %i.jf = phi ptr [ %i.fg, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i" ], [ %i.gm, %bb.ed ], [ %i.gm, %bb.eb ], [ %i.gm, %.thread207.i.i.i ], [ %i.gm, %.split.thread.i.i.i ] ; 2 uses
  %i.jg = phi ptr [ %i.fh, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i" ], [ %i.gn, %bb.ed ], [ %i.gn, %bb.eb ], [ %i.gn, %.thread207.i.i.i ], [ %i.gn, %.split.thread.i.i.i ] ; 2 uses
  %.pn32.pn.i.i.i = phi { ptr, i32 } [ %.pn32.i.i.i, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i" ], [ %.pn28.pn.pn206.i.i.i, %bb.ed ], [ %.pn28.i.i.i, %bb.eb ], [ %.pn28.pn.ph.i.i.i, %.thread207.i.i.i ], [ %lpad.thr_comm.i.i.i, %.split.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !852
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %i.ji = load i8, ptr %i.jh, align 8, !range !901, !noalias !850, !noundef !5
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.ef, label %bb.ca

bb.ed:                                            ; preds = %bb.eb, %.split.i.i.i, %.thread203.i.i.i
  %.pn28.pn.pn206.i.i.i = phi { ptr, i32 } [ %i.ih, %.thread203.i.i.i ], [ %.pn28.i.i.i, %bb.eb ], [ %lpad.thr_comm.split-lp.i.i.i, %.split.i.i.i ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #27
          to label %bb.ec unwind label %bb.an

bb.ee:                                            ; preds = %bb.de
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i"

"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hcb0ccc9fe6b3a917E.exit96.i.i.i": ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !852
  br label %bb.dv

.body93.i.i.i:                                    ; preds = %bb.cz, %.body9.i.i.i.i
  %i.jl = phi ptr [ %i.hb, %.body9.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.cz ]
  %i.jm = phi ptr [ %i.hc, %.body9.i.i.i.i ], [ %i.ay, %bb.cz ]
  %i.jn = phi ptr [ %i.he, %.body9.i.i.i.i ], [ %i.fs, %bb.cz ]
  %.pn17.i.i.i = phi { ptr, i32 } [ %.pn6.i87.i.i.i, %.body9.i.i.i.i ], [ %i.hg, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6167.sroa.7.i.i.i)
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$reqwest..async_impl..response..Response..bytes..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd79c348213a923b9E"(ptr noundef nonnull align 8 %i.jn) #27
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE.exit.i.i.i" unwind label %bb.an

bb.ef:                                            ; preds = %bb.ec
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$reqwest..async_impl..response..Response$GT$17h30134b2fe10fbe0fE"(ptr noalias noundef align 8 dereferenceable(136) %i.s) #27
          to label %bb.ca unwind label %bb.an

bb.eg:                                            ; preds = %bb.as, %bb.ar
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.eh:                                            ; preds = %bb.da, %bb.bs, %bb.ap
  %i.jp = phi ptr [ %i.co, %bb.ap ], [ %i.dx, %bb.bs ], [ %i.gn, %bb.da ]
  %common.ret.op.i.i.i = phi { i64, ptr } [ %i.cp, %bb.ap ], [ { i64 1, ptr undef }, %bb.bs ], [ { i64 1, ptr undef }, %bb.da ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5170.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !849
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6150.i.i.i)
  %i.jq = extractvalue { i64, ptr } %common.ret.op.i.i.i, 0
  %i.jr = extractvalue { i64, ptr } %common.ret.op.i.i.i, 1
  %i.js = trunc nuw i64 %i.jq to i1
  br i1 %i.js, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i8 3, ptr %i.ab, align 8, !noalias !848
  br label %"_ZN6runner7archive15archive_command28_$u7b$$u7b$closure$u7d$$u7d$17h0fc8628ac28a646dE.exit.i"

bb.ej:                                            ; preds = %bb.eh
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$runner..archive..download_and_check..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfaa491af8de5dab9E"(ptr noundef nonnull align 8 %i.jp)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.el:                                            ; preds = %bb.ej
  %i.ju = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$runner..archive..DownloadArgs$GT$17hb64ddd52629d86d0E"(ptr noalias noundef align 8 dereferenceable(72) %i.ju)
          to label %bb.k unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.body.i.i:                                        ; preds = %bb.eg, %bb.aq
  %i.jw = phi ptr [ %i.cr, %bb.aq ], [ %i.ay, %bb.eg ]
end_hunk_2
