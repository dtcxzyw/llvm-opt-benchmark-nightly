Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_git-9b9061dfbb4059df.nickel_lang_git.add27a617623cd68-cgu.0?download=true
inline.NumInlined: 107
inline.NumDeleted: 62
begin_hunk_0_@_ZN6anyhow5error23object_reallocate_boxed17h525261abbeb2d755E:bb.a

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.d, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17he9f55792cdc3f7edE(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !6, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.e = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 16, i64 noundef 8) #16 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d, !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h08ef10598294adc8E"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #18
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !noalias !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h08ef10598294adc8E"(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @25, 1
  ret { ptr, ptr } %i.m

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #19
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.g, %bb.c ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 72, i64 noundef 8) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h177264a2b124613aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hfdf2cfa1462b3e22E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hfdf2cfa1462b3e22E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h36914931173780e7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h750044c40b34004fE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h750044c40b34004fE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h750044c40b34004fE.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17he23aaa95fa5eb0c6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hcc67ba05f6a6961bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h36914931173780e7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @31, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !116
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 80, i64 noundef 8) #16, !noalias !116 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c0fe0cd84bd5c39E.exit", !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h432231cc689d7792E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c0fe0cd84bd5c39E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hcc67ba05f6a6961bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @30, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %1, ptr %i.d, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !119
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 72, i64 noundef 8) #16, !noalias !119 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c1c39d96ec359f2E.exit", !prof !4

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h08ef10598294adc8E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17ha01748f7f740639cE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #19
  unreachable

"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17ha01748f7f740639cE.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c1c39d96ec359f2E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN6anyhow9__private10format_err17hed671fa8c37bdbceE(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  switch i64 %i.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE.exit"

bb.c:                                             ; preds = %bb.b, %bb.e
  %.sroa.6.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.b ]
  %.sroa.01.0 = phi ptr [ %i.k, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.i = tail call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17he23aaa95fa5eb0c6E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.6.0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE.exit"

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  br label %bb.c

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE.exit", %bb.c
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE.exit" ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE.exit": ; preds = %bb.d, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i64 48, i1 false), !noalias !128
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  %i.n = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h177264a2b124613aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1cb80a49bcb57837E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8d48b5b6ca9aa683E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h0d4f2c5acb77798aE"(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hfe77c1374fc1b720E"(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h2bf7e325d074b6f0E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hc8f719f781d94145E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h587830cca7d8a17bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc8c4d81afc7c6ffE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !3
  %i.c = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h47e6d09f1966a9f6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !3
  %i.c = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$anyhow..wrapper..MessageError$LT$M$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hb54e653231979787E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare void @"_ZN66_$LT$gix_hash..borrowed..oid$u20$as$u20$alloc..borrow..ToOwned$GT$8to_owned17h66f57f04573d76e3E"(ptr dead_on_unwind noalias noundef writable sret([20 x i8]) align 1 captures(address) dereferenceable(20), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6anyhow5error60_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..Error$GT$3fmt17he2ec66ae71b90a56E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN68_$LT$gix_hash..object_id..ObjectId$u20$as$u20$core..fmt..Display$GT$3fmt17h27c2380a13688d19E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(20), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @"_ZN6anyhow5error67_$LT$impl$u20$core..ops..deref..Deref$u20$for$u20$anyhow..Error$GT$5deref17hc352731d979dec3bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN7gix_url5impls61_$LT$impl$u20$core..fmt..Display$u20$for$u20$gix_url..Url$GT$3fmt17h9919d17e4699d549E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{i64 8}
!6 = !{i64 1}
!7 = !{i8 0, i8 7}
!8 = distinct !{!8, i1 true, !"_ZN12gix_protocol9handshake4refs46_$LT$impl$u20$gix_protocol..handshake..Ref$GT$6unpack17h75cafac5b26298a2E"}
!9 = distinct !{!9, !8, !"_ZN12gix_protocol9handshake4refs46_$LT$impl$u20$gix_protocol..handshake..Ref$GT$6unpack17h75cafac5b26298a2E: argument 1"}
!10 = !{i64 0, i64 -9223372036854775803}
!11 = !{i8 0, i8 2}
!12 = !{!9}
!13 = distinct !{!13, i1 true, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E"}
!14 = distinct !{!14, !13, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E: argument 0"}
!15 = distinct !{!15, i1 true, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E"}
!16 = distinct !{!16, !15, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E: argument 0"}
!17 = !{!14}
!18 = !{!16}
!19 = distinct !{!19, i1 true, !"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E"}
!20 = distinct !{!20, !19, !"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E: argument 0"}
!21 = distinct !{!21, i1 true, !"_ZN4core3ptr42drop_in_place$LT$std..backtrace..Inner$GT$17h81a9465ef34e6eaeE"}
!22 = distinct !{!22, !21, !"_ZN4core3ptr42drop_in_place$LT$std..backtrace..Inner$GT$17h81a9465ef34e6eaeE: argument 0"}
!23 = distinct !{!23, i1 true, !"_ZN4core3ptr150drop_in_place$LT$std..sync..lazy_lock..LazyLock$LT$std..backtrace..Capture$C$std..backtrace..helper..lazy_resolve..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6849f0e7274a4fd7E"}
!24 = distinct !{!24, !23, !"_ZN4core3ptr150drop_in_place$LT$std..sync..lazy_lock..LazyLock$LT$std..backtrace..Capture$C$std..backtrace..helper..lazy_resolve..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6849f0e7274a4fd7E: argument 0"}
!25 = distinct !{!25, i1 true, !"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e1d0f961723585fE"}
!26 = distinct !{!26, !25, !"_ZN85_$LT$std..sync..lazy_lock..LazyLock$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e1d0f961723585fE: argument 0"}
!27 = distinct !{!27, i1 true, !"_ZN4core3ptr44drop_in_place$LT$std..backtrace..Capture$GT$17h575e3233b3984d06E"}
!28 = distinct !{!28, !27, !"_ZN4core3ptr44drop_in_place$LT$std..backtrace..Capture$GT$17h575e3233b3984d06E: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$std..backtrace..BacktraceFrame$GT$$GT$17h6d123a4308a23d2bE"}
!30 = distinct !{!30, !29, !"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$std..backtrace..BacktraceFrame$GT$$GT$17h6d123a4308a23d2bE: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E"}
!32 = distinct !{!32, !31, !"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$std..backtrace..BacktraceSymbol$GT$$GT$17h722bd9a8b318b035E"}
!34 = distinct !{!34, !33, !"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$std..backtrace..BacktraceSymbol$GT$$GT$17h722bd9a8b318b035E: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZN4core3ptr62drop_in_place$LT$$u5b$std..backtrace..BacktraceSymbol$u5d$$GT$17h12b8d870bf963ddbE"}
!36 = distinct !{!36, !35, !"_ZN4core3ptr62drop_in_place$LT$$u5b$std..backtrace..BacktraceSymbol$u5d$$GT$17h12b8d870bf963ddbE: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E"}
!38 = distinct !{!38, !37, !"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$std..backtrace..BytesOrWide$GT$$GT$17ha24676baf310b90bE"}
!40 = distinct !{!40, !39, !"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$std..backtrace..BytesOrWide$GT$$GT$17ha24676baf310b90bE: argument 0"}
!41 = distinct !{!41, i1 true, !"_ZN4core3ptr48drop_in_place$LT$std..backtrace..BytesOrWide$GT$17h0fba2a56cc4b071eE"}
!42 = distinct !{!42, !41, !"_ZN4core3ptr48drop_in_place$LT$std..backtrace..BytesOrWide$GT$17h0fba2a56cc4b071eE: argument 0"}
!43 = !{i64 0, i64 4}
!44 = !{!20}
!45 = !{!22}
!46 = !{!24}
!47 = !{!26}
!48 = !{!26, !24, !22, !20}
!49 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!50 = !{!28}
!51 = !{!30}
!52 = !{!30, !28, !24, !22, !20}
!53 = !{!32}
!54 = !{!34}
!55 = !{!34, !32}
!56 = !{!36}
!57 = !{!38}
!58 = !{i64 0, i64 -9223372036854775807}
!59 = !{!38, !36}
!60 = !{!34, !32, !30, !28, !24, !22, !20}
!61 = !{!38, !36, !34, !32, !30, !28, !24, !22, !20}
!62 = !{!40}
!63 = !{i64 0, i64 3}
!64 = !{!40, !38, !36}
!65 = !{!42}
!66 = !{!42, !40, !38, !36}
!67 = !{!42, !40, !38, !36, !34, !32, !30, !28, !24, !22, !20}
!68 = !{i64 0, i64 -9223372036854775808}
!69 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h0d4f2c5acb77798aE"}
!70 = !{ptr @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hfe77c1374fc1b720E"}
!71 = distinct !{!71, i1 true, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!72 = distinct !{!72, !71, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!74 = distinct !{!74, !73, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!76 = distinct !{!76, !75, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!77 = !{!72}
!78 = !{!74}
!79 = !{!76}
!80 = distinct !{!80, i1 true, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!81 = distinct !{!81, !80, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!82 = distinct !{null}
!83 = distinct !{!83, i1 true, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!84 = distinct !{!84, !83, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!86 = distinct !{!86, !85, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!88 = distinct !{!88, !87, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!89 = !{i8 0, i8 4}
!90 = !{!81}
!91 = !{!84}
!92 = !{!86}
!93 = !{!88}
!94 = distinct !{!94, i1 true, !"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h432231cc689d7792E"}
!95 = distinct !{!95, !94, !"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h432231cc689d7792E: argument 0"}
!96 = distinct !{!96, i1 true, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E"}
!97 = distinct !{!97, !96, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E"}
!99 = distinct !{!99, !98, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E: argument 0"}
!100 = !{!95}
!101 = !{!97}
!102 = !{!97, !95}
!103 = !{!99}
!104 = !{!99, !95}
!105 = distinct !{!105, i1 true, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcbf166a4291b59dfE"}
!106 = distinct !{!106, !105, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcbf166a4291b59dfE: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E"}
!108 = distinct !{!108, !107, !"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E: argument 0"}
!109 = !{!106}
!110 = !{!108}
!111 = distinct !{!111, i1 true, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h93b1f6f0be8b2a06E"}
!112 = distinct !{!112, !111, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h93b1f6f0be8b2a06E: argument 0"}
!113 = !{!112}
!114 = distinct !{!114, i1 true, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c0fe0cd84bd5c39E"}
!115 = distinct !{!115, !114, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4c0fe0cd84bd5c39E: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, i1 true, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c1c39d96ec359f2E"}
!118 = distinct !{!118, !117, !"_ZN5alloc5boxed12Box$LT$T$GT$3new17h6c1c39d96ec359f2E: argument 0"}
!119 = !{!118}
!120 = distinct !{!120, i1 true, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE"}
!121 = distinct !{!121, !120, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE: argument 2"}
!122 = distinct !{!122, !120, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE: argument 1"}
!123 = distinct !{!123, !120, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h4fcf81409fea4fbcE: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h4379110c5d615f33E"}
!125 = distinct !{!125, !124, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h4379110c5d615f33E: argument 1"}
!126 = distinct !{!126, !124, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h4379110c5d615f33E: argument 0"}
!127 = !{!126, !125, !123, !122, !121}
!128 = !{!126, !123, !122}
!129 = !{!125, !122, !121}
end_hunk_0
