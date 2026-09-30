Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_git-9b9061dfbb4059df.nickel_lang_git.add27a617623cd68-cgu.0?download=true
inline.NumInlined: 107
inline.NumDeleted: 62
begin_hunk_0_@_ZN15nickel_lang_git16source_object_id17h339a519860ca4a06E:bb.a
  br label %bb.h

bb.j:                                             ; preds = %"_ZN12gix_protocol9handshake4refs46_$LT$impl$u20$gix_protocol..handshake..Ref$GT$6unpack17h75cafac5b26298a2E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.u, align 8
  %i.v = call fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17hed671fa8c37bdbceE(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 6, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN168_$LT$nickel_lang_git.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_git..Target$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17ha257e8fbe8dceebfE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN173_$LT$nickel_lang_git.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_git..Target$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hd330d2b8a6e410a0E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha81adbe072b099f9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN6anyhow5error60_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..Error$GT$3fmt17he2ec66ae71b90a56E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h099beba44542f965E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN68_$LT$gix_hash..object_id..ObjectId$u20$as$u20$core..fmt..Display$GT$3fmt17h27c2380a13688d19E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(20) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6cea20085cfbc7c4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h77583b0062122947E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN62_$LT$nickel_lang_git..Target$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac2836ebc0d0f9fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbc0e09614c1fca57E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc57170790025c4d7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN7gix_url5impls61_$LT$impl$u20$core..fmt..Display$u20$for$u20$gix_url..Url$GT$3fmt17h9919d17e4699d549E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17h432231cc689d7792E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h08ef10598294adc8E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !19 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !19, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !19
  br label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E.exit"

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %.val.i1 = load i64, ptr %i.f, align 8, !alias.scope !20 ; 2 uses
  %i.g = icmp eq i64 %.val.i1, 0
  br i1 %i.g, label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E.exit3", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i2 = load ptr, ptr %i.h, align 8, !alias.scope !20, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2, i64 noundef %.val.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !20
  br label %"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E.exit3"

"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E.exit3": ; preds = %bb.d, %bb.e
  ret void

"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h08ef10598294adc8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !45, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E.exit", label %bb.b

"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E.exit": ; preds = %bb.k, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4c80499b5d716b2E.exit.i.i.i.i.i", %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !50, !noundef !3
  switch i32 %i.f, label %bb.d [
    i32 3, label %.sink.split.i.i.i.i
    i32 2, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E.exit"
    i32 0, label %.sink.split.i.i.i.i
  ], !prof !51

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  store ptr @33, ptr %i.a, align 8, !noalias !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !50
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #17, !noalias !50
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.c, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !54, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !54, !noundef !3 ; 2 uses
  %i.m = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.m, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4c80499b5d716b2E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.sink.split.i.i.i.i, %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E.exit.i.i.i.i.i.i" ], [ 0, %.sink.split.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 3 uses
  %i.o = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !57, !noalias !54, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !57, !noalias !54, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.s = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc094e62c8277f65fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.u = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !range !60, !alias.scope !61, !noalias !62, !noundef !3 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h96e3c95baff3c704E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !61, !noalias !62, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !63
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h96e3c95baff3c704E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h96e3c95baff3c704E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.x = load i64, ptr %i.t, align 8, !range !65, !alias.scope !66, !noalias !62, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 2
  br i1 %i.y, label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h96e3c95baff3c704E.exit.i.i.i.i.i.i.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %1 = icmp eq i64 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !68, !noalias !62 ; 3 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %1, label %2, label %bb.h

2:                                                ; preds = %bb.f
  br i1 %i.aa, label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !68, !noalias !62, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !69
  br label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  br i1 %i.aa, label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %3 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %3, align 8, !alias.scope !68, !noalias !62, !nonnull !3, !noundef !3
  %i.ac = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 2) #16, !noalias !69
  br label %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %2, %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h96e3c95baff3c704E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.ad = icmp eq i64 %i.u, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.ad, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc094e62c8277f65fE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc094e62c8277f65fE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr52drop_in_place$LT$std..backtrace..BacktraceSymbol$GT$17he8ebb0f26ce17723E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !range !70, !alias.scope !57, !noalias !54, !noundef !3 ; 2 uses
  %i.ae = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E.exit.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc094e62c8277f65fE.exit.i.i.i.i.i.i.i.i"
  %i.af = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 72
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !62
  br label %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E.exit.i.i.i.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E.exit.i.i.i.i.i.i": ; preds = %bb.j, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc094e62c8277f65fE.exit.i.i.i.i.i.i.i.i"
  %i.ag = icmp eq i64 %i.o, %.val1.i.i.i.i.i
  br i1 %i.ag, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4c80499b5d716b2E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4c80499b5d716b2E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr51drop_in_place$LT$std..backtrace..BacktraceFrame$GT$17h77d0ec5bca5001a7E.exit.i.i.i.i.i.i", %.sink.split.i.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !70, !alias.scope !54, !noundef !3 ; 2 uses
  %i.ah = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ah, label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4c80499b5d716b2E.exit.i.i.i.i.i"
  %i.ai = mul nuw i64 %.val2.i.i.i.i.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !54
  br label %"_ZN4core3ptr46drop_in_place$LT$std..backtrace..Backtrace$GT$17he1c29cde2c8d17f8E.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr79drop_in_place$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$17h721009c4193cc4e4E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h750044c40b34004fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #16
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h750044c40b34004fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h750044c40b34004fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17ha01748f7f740639cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h08ef10598294adc8E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h2db5f6992c24dcb6E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @4, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h9ccadf44718ccbc6E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @4, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc3ef34450e254a3cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @4, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hd57ee62ec58b483bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @4, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h47493705c5d33549E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4e52cec275bcaf4dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h94a23f5eb1cbfcf5E(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !71
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17hed22395457338cbbE(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17had6e87419c4c0405E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !72
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17h23a31b6811c69bbaE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17ha3e7561630a4591bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h391f6acfb96d5d5bE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h644094a1b4a86b4eE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h82a10b14d88eb70fE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h8f239025a042b996E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h300c6685248dbe00E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @5, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h3dff23e142db2902E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h6bb94235a533f24aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hca27aa7f46fc9cbeE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @8, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @"_ZN61_$LT$nickel_lang_git..Error$u20$as$u20$core..error..Error$GT$6source17h92892344f8da6af0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !7, !noundef !3 ; 2 uses
  %i.b = icmp ne i8 %i.a, 5
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i8 %i.a, 6
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call { ptr, ptr } @"_ZN6anyhow5error67_$LT$impl$u20$core..ops..deref..Deref$u20$for$u20$anyhow..Error$GT$5deref17hc352731d979dec3bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi ptr [ %i.g, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.i
}
end_hunk_0
