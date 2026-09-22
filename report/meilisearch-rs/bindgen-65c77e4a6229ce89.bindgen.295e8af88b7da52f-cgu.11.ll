Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/bindgen-65c77e4a6229ce89.bindgen.295e8af88b7da52f-cgu.11?download=true
inline.NumInlined: 237
inline.NumDeleted: 55
begin_hunk_0_@"_ZN185_$LT$core..ops..control_flow..ControlFlow$LT$B$C$C$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..ops..control_flow..ControlFlow$LT$B$C$core..convert..Infallible$GT$$GT$$GT$13from_residual17hee28826116d3a7b7E":bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_ZN3std3ffi6os_str5OsStr20eq_ignore_ascii_case17hbb5b944ad0f845d8E(ptr align 1 %0, i64 %1, ptr align 1 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17hd11c47f8acc0d193E"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call zeroext i1 @"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h6d5ea9114558710eE"(ptr align 1 %0, i64 %1, ptr align 1 %i.d, i64 %i.e)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_ZN3std3ffi6os_str5OsStr6to_str17h324ad6bcc120572fE(ptr align 1 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %0, i64 %1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.3.0 = select i1 %i.c, i64 undef, i64 %i.g
  %.sroa.0.0 = select i1 %i.c, ptr null, ptr %i.e
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @_ZN3std3ffi6os_str5OsStr8is_empty17h3b6fb7f46eabf8bdE(ptr nofree readnone align 1 captures(none) %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2d4b24625fd8dbecE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val.i = load i32, ptr %i.e, align 4           ; 2 uses
  %i.f = icmp eq i32 %.val.i, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val.i, ptr %i.a, align 4
  %i.g = call zeroext i1 @_ZN8bitflags6parser9to_writer17h4782923714c6a79aE(ptr nonnull align 4 %i.a, ptr align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN65_$LT$bindgen.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h72fb495aa5cf5dc3E.exit"

bb.c:                                             ; preds = %bb.a
  call void @_ZN4core3fmt2rt8Argument13new_lower_hex17hc4cf8135be6c378fE(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 4 @66)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$16new_v1_formatted17he8db65ebb4a8ec16E"(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 @67, i64 1, ptr nonnull align 8 %i.c, i64 1, ptr nonnull align 8 @68, i64 1)
  %i.h = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17hdea032126870a48bE(ptr align 8 %1, ptr nonnull align 8 %i.d)
  br label %"_ZN65_$LT$bindgen.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h72fb495aa5cf5dc3E.exit"

"_ZN65_$LT$bindgen.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h72fb495aa5cf5dc3E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h01e6a3d1af351227E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.33.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.3.0..sroa_idx.i, align 2
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @8, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i8, ptr %1, align 1
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %spec.select.i.i = select i1 %i.g, ptr @28, ptr @27
  %spec.select2.i.i = select i1 %i.g, i64 7, i64 4
  store ptr %spec.select.i.i, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %spec.select2.i.i, ptr %i.h, align 8
  %i.i = invoke zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h792c408db9af68dcE"(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.c) #26
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbd9bb7ed76aaa875E"(i1 zeroext %i.i, ptr nonnull align 1 @9, i64 55, ptr nonnull align 8 @11)
          to label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0fc95a431d7a7887E.exit" unwind label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0fc95a431d7a7887E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0fc95a431d7a7887E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  store i64 0, ptr %i.c, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.33.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.3.0..sroa_idx, align 2
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @8, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i8, ptr %1, align 1
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %spec.select.i = select i1 %i.g, ptr @28, ptr @27
  %spec.select2.i = select i1 %i.g, i64 7, i64 4
  store ptr %spec.select.i, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %spec.select2.i, ptr %i.h, align 8
  %i.i = invoke zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h792c408db9af68dcE"(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h685aa45b87bc79d0E"(ptr nonnull align 8 %i.c) #26
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbd9bb7ed76aaa875E"(i1 zeroext %i.i, ptr nonnull align 1 @9, i64 55, ptr nonnull align 8 @11)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #27
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4core3cmp9PartialEq2ne17h3c14c81b8afe79bbE(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #2 {
bb.a:
  %.val = load i8, ptr %0, align 1
  %.val1 = load i8, ptr %1, align 1
  %2 = xor i8 %.val1, %.val
  %3 = trunc i8 %2 to i1
  ret i1 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4core3ops12control_flow11ControlFlow5Break17hc355b24efda754c5E(ptr nofree writeonly sret([224 x i8]) align 8 captures(none) initializes((0, 224)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h1a5cf4f779be9328E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call i64 @_ZN4core3ops8function5FnMut8call_mut17hd7819345617a2b87E(ptr nonnull align 1 %i.b, ptr align 8 %1)
  tail call void @"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h8554412b2729b449E"(ptr align 8 %i.a, i64 %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h502e377780bcec61E"(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call align 8 ptr @"_ZN7bindgen2ir4item4Item12compute_path28_$u7b$$u7b$closure$u7d$$u7d$17hbec213d8ff32b1c8E"(ptr align 8 %i.c, i64 %1)
  %i.e = tail call align 8 ptr @"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17hf8e5110662400c58E"(ptr align 8 %i.a, ptr align 8 %i.d)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h771697410fff903aE"(ptr nofree readnone align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h3e3e2b22e40e9ab9E"(ptr align 1 %i.b, i64 %i.d, ptr nonnull align 1 @188, i64 4)
  br i1 %i.e, label %"_ZN7bindgen7Builder8generate28_$u7b$$u7b$closure$u7d$$u7d$17hf8141d0ad14242e0E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h3e3e2b22e40e9ab9E"(ptr align 1 %i.g, i64 %i.i, ptr nonnull align 1 @189, i64 3)
  br i1 %i.j, label %"_ZN7bindgen7Builder8generate28_$u7b$$u7b$closure$u7d$$u7d$17hf8141d0ad14242e0E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h3e3e2b22e40e9ab9E"(ptr align 1 %i.l, i64 %i.n, ptr nonnull align 1 @190, i64 25)
  br i1 %i.o, label %"_ZN7bindgen7Builder8generate28_$u7b$$u7b$closure$u7d$$u7d$17hf8141d0ad14242e0E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = tail call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h3e3e2b22e40e9ab9E"(ptr align 1 %i.q, i64 %i.s, ptr nonnull align 1 @191, i64 19)
  %i.u = xor i1 %i.t, true
  br label %"_ZN7bindgen7Builder8generate28_$u7b$$u7b$closure$u7d$$u7d$17hf8141d0ad14242e0E.exit"

"_ZN7bindgen7Builder8generate28_$u7b$$u7b$closure$u7d$$u7d$17hf8141d0ad14242e0E.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.u, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17he958ea27b60b623cE"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h0a6640dec2059438E"(ptr align 8 %1) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8
  %i.j = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h131d95e574d98e77E"(ptr nonnull align 8 %i.a, ptr nonnull align 8 @290)
  br i1 %i.j, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 1
  br label %"_ZN7bindgen8Bindings8generate20detect_include_paths28_$u7b$$u7b$closure$u7d$$u7d$17h49bbc5e4ca17d6ebE.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h131d95e574d98e77E"(ptr nonnull align 8 %i.a, ptr nonnull align 8 @292)
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = load ptr, ptr %i.b, align 8
  store i8 1, ptr %i.l, align 1
  br label %"_ZN7bindgen8Bindings8generate20detect_include_paths28_$u7b$$u7b$closure$u7d$$u7d$17h49bbc5e4ca17d6ebE.exit"

bb.f:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load i64, ptr %i.i, align 8
  %i.o = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h3e3e2b22e40e9ab9E"(ptr align 1 %i.m, i64 %i.n, ptr nonnull align 1 @289, i64 2)
  br i1 %i.o, label %"_ZN7bindgen8Bindings8generate20detect_include_paths28_$u7b$$u7b$closure$u7d$$u7d$17h49bbc5e4ca17d6ebE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load i64, ptr %i.i, align 8
  %i.r = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h3e3e2b22e40e9ab9E"(ptr align 1 %i.p, i64 %i.q, ptr nonnull align 1 @293, i64 20)
  %i.s = xor i1 %i.r, true
  br label %"_ZN7bindgen8Bindings8generate20detect_include_paths28_$u7b$$u7b$closure$u7d$$u7d$17h49bbc5e4ca17d6ebE.exit"

"_ZN7bindgen8Bindings8generate20detect_include_paths28_$u7b$$u7b$closure$u7d$$u7d$17h49bbc5e4ca17d6ebE.exit": ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ %i.s, %bb.g ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$i64$GT$4hash17hddc4fc5981bf6737E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  tail call void @_ZN4core4hash6Hasher9write_i6417h56cc348f4b904443E(ptr align 8 %1, i64 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$str$GT$4hash17h32968372ec814f86E"(ptr align 1 %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  tail call void @_ZN4core4hash6Hasher9write_str17hea8d2af49f45f80aE(ptr align 8 %2, ptr align 1 %0, i64 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u32$GT$4hash17h0705152076a477fbE"(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  tail call void @"_ZN59_$LT$rustc_hash..FxHasher$u20$as$u20$core..hash..Hasher$GT$9write_u3217h8bc6be27e6b953faE"(ptr align 8 %1, i32 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6f9006d4faffabf7E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  tail call void @"_ZN59_$LT$rustc_hash..FxHasher$u20$as$u20$core..hash..Hasher$GT$9write_u6417h5bfc7ba334a02327E"(ptr align 8 %1, i64 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls51_$LT$impl$u20$core..hash..Hash$u20$for$u20$bool$GT$4hash17h683335dc680ed962E"(ptr nofree readonly align 1 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  tail call void @"_ZN59_$LT$rustc_hash..FxHasher$u20$as$u20$core..hash..Hasher$GT$8write_u817ha6253c8ebf9f2f01E"(ptr align 8 %1, i8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h0c11b6f703ac9f53E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_ZN4core4hash6Hasher9write_str17hea8d2af49f45f80aE(ptr align 8 %1, ptr align 1 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17hc4bd40114259c1f2E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_ZN4core4hash6Hasher9write_str17hea8d2af49f45f80aE(ptr align 8 %1, ptr align 1 %i.a, i64 %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$isize$GT$4hash17h1d606b606bffb848E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  tail call void @_ZN4core4hash6Hasher11write_isize17h69208bb655c65df2E(ptr align 8 %1, i64 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$usize$GT$4hash17h50d9a6e253a8b8b1E"(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  tail call void @"_ZN59_$LT$rustc_hash..FxHasher$u20$as$u20$core..hash..Hasher$GT$11write_usize17ha2b26e07bda524baE"(ptr align 8 %1, i64 %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
end_hunk_0
