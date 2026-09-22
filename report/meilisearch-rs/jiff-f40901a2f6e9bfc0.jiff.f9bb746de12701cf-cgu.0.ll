Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4035
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4core3fmt5Write10write_char17h57b14d5d9a817421E:bb.a
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !924
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !924
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !924
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !924
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !924
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !924
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !924
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !924
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !924
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !924
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !927, !noalias !928, !nonnull !11, !align !13, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !927, !noalias !928, !nonnull !11, !align !12, !noundef !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !11, !noalias !929, !nonnull !11
  %i.ah = call { i64, ptr } %i.ag(ptr noundef nonnull align 1 %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i), !noalias !927, !inline_history !930 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = trunc nuw i64 %i.ai to i1               ; 2 uses
  br i1 %i.aj, label %bb.h, label %"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h26e9e5ef0fefb923E.exit"

bb.h:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  %i.ak = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !931
  store ptr %i.ak, ptr %i.a, align 8, !noalias !931
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !932
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.j, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a), !noalias !925, !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i": ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !931
  br label %"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h26e9e5ef0fefb923E.exit"

"_ZN68_$LT$jiff..fmt..StdFmtWrite$LT$W$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h26e9e5ef0fefb923E.exit": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit, %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17hd8ac62ba8806fe0aE(ptr noalias nofree noundef align 1 captures(none) dereferenceable(10) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.a = icmp samesign ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !945
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !945
  %.sroa.0.1..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx12, align 1, !alias.scope !945
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  store i8 %i.t, ptr %.sroa.0, align 4, !alias.scope !945
  %.sroa.0.1..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.i, ptr %.sroa.0.1..sroa_idx11, align 1, !alias.scope !945
  %.sroa.0.2..sroa_idx13 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.e, ptr %.sroa.0.2..sroa_idx13, align 2, !alias.scope !945
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.sroa.0, align 4, !alias.scope !945
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !945
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !945
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !945
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !948, !noalias !949, !noundef !11
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.0.05.i, %i.w      ; 2 uses
  %i.y = icmp samesign ugt i64 %i.x, 9            ; 2 uses
  br i1 %i.y, label %"_ZN85_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b1eea9fba001bedE.exit", label %bb.h, !prof !24

bb.h:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false), !alias.scope !950, !noalias !951
  %i.aa = trunc nuw nsw i64 %i.x to i8
  store i8 %i.aa, ptr %i.u, align 1, !alias.scope !948, !noalias !949
  br label %"_ZN85_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b1eea9fba001bedE.exit"

"_ZN85_$LT$jiff..shared..util..array_str..ArrayStr$LT$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h7b1eea9fba001bedE.exit": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 %i.y
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h10a505d611ceca2cE(ptr noalias noundef align 1 dereferenceable(10) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h3b007c0b73405283E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !956
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1720, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !957, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !955
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h30fb2336d784710eE(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17ha8eac46ab9231023E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !962
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1721, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !963, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !961
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h963987316eae0747E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h73a046e82500a713E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !969
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @35, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !970, !inline_history !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !968
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.0.val, ptr nofree readonly captures(address, read_provenance) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h75c4c0931cf3a32aE"(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !975, !noalias !976, !align !12, !noundef !11 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !975, !noalias !976
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4core3ops8function6FnOnce9call_once17hae61b8185a40f25cE.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #45, !noalias !977
  unreachable

_ZN4core3ops8function6FnOnce9call_once17hae61b8185a40f25cE.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !noalias !977
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr103drop_in_place$LT$core..result..Result$LT$jiff..fmt..Parsed$LT$$LP$$RP$$GT$$C$jiff..error..Error$GT$$GT$17h7222318899dceb8cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !11
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !987, !noundef !11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !988
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr138drop_in_place$LT$core..result..Result$LT$jiff..fmt..Parsed$LT$jiff..fmt..temporal..parser..ParsedDateTime$GT$$C$jiff..error..Error$GT$$GT$17h3f3b4c52a6d68ca3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !49, !noundef !11
  %.not = icmp eq i32 %i.a, 4
  br i1 %.not, label %bb.b, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !998, !noundef !11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !999
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr190drop_in_place$LT$core..result..Result$LT$$LP$jiff..tz..posix..PosixTimeZone$LT$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$C$$RF$$u5b$u8$u5d$$RP$$C$jiff..error..Error$GT$$GT$17h5da36c7f0e05cd86E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !18, !noundef !11
  %.not = icmp eq i8 %i.a, 4
  br i1 %.not, label %bb.b, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit": ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1009, !noundef !11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1010
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b), !inline_history !0
  br label %"_ZN4core3ptr39drop_in_place$LT$jiff..error..Error$GT$17hadb9d69fbefd2150E.exit"
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr374drop_in_place$LT$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$17h8d5a8e1a612c11b2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.a, align 8, !range !15, !alias.scope !1019, !noundef !11 ; 2 uses
  %switch.i = icmp sgt i64 %.val.i, 0
  br i1 %switch.i, label %bb.b, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc921628f5bf5c8aaE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1019, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1020
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc921628f5bf5c8aaE.exit.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc921628f5bf5c8aaE.exit.i": ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %.val.i2.i = load i64, ptr %0, align 8, !alias.scope !1022 ; 2 uses
  %i.c = icmp eq i64 %.val.i2.i, 0
  br i1 %i.c, label %"_ZN4core3ptr131drop_in_place$LT$jiff..shared..TzifFixed$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$17h2f788a40f145abf5E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc921628f5bf5c8aaE.exit.i"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i3.i = load ptr, ptr %i.d, align 8, !alias.scope !1022, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3.i, i64 noundef %.val.i2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1022
  br label %"_ZN4core3ptr131drop_in_place$LT$jiff..shared..TzifFixed$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$17h2f788a40f145abf5E.exit"

"_ZN4core3ptr131drop_in_place$LT$jiff..shared..TzifFixed$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$17h2f788a40f145abf5E.exit": ; preds = %bb.c, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc921628f5bf5c8aaE.exit.i"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$GT$17h16097732b4310291E.exit5", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr131drop_in_place$LT$jiff..shared..TzifFixed$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$17h2f788a40f145abf5E.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.h = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$GT$17h16097732b4310291E.exit5"

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$GT$17h16097732b4310291E.exit5": ; preds = %bb.d, %"_ZN4core3ptr131drop_in_place$LT$jiff..shared..TzifFixed$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$GT$$GT$17h2f788a40f145abf5E.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %.val.i6 = load i64, ptr %i.i, align 8, !alias.scope !1023 ; 2 uses
  %i.j = icmp eq i64 %.val.i6, 0
  br i1 %i.j, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h7e12fffa872600e5E.exit.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$GT$17h16097732b4310291E.exit5"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val4.i = load ptr, ptr %i.k, align 8, !alias.scope !1023, !nonnull !11, !noundef !11
  %i.l = shl nuw i64 %.val.i6, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1023
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h7e12fffa872600e5E.exit.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h7e12fffa872600e5E.exit.i": ; preds = %bb.e, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$GT$17h16097732b4310291E.exit5"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val9.i = load i64, ptr %i.m, align 8, !alias.scope !1023 ; 2 uses
  %i.n = icmp eq i64 %.val9.i, 0
  br i1 %i.n, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit17.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h7e12fffa872600e5E.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !1023, !nonnull !11, !noundef !11
  %i.p = shl nuw i64 %.val9.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1023
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit17.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit17.i": ; preds = %bb.f, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i64$GT$$GT$17h7e12fffa872600e5E.exit.i"
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val5.i = load i64, ptr %i.q, align 8, !alias.scope !1023 ; 2 uses
  %i.r = icmp eq i64 %.val5.i, 0
  br i1 %i.r, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit19.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit17.i"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val6.i = load ptr, ptr %i.s, align 8, !alias.scope !1023, !nonnull !11, !noundef !11
  %i.t = shl nuw i64 %.val5.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1023
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit19.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit19.i": ; preds = %bb.g, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit17.i"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val13.i = load i64, ptr %i.u, align 8, !alias.scope !1023 ; 2 uses
  %i.v = icmp eq i64 %.val13.i, 0
  br i1 %i.v, label %"_ZN4core3ptr246drop_in_place$LT$jiff..shared..TzifTransitions$LT$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$17h7c9f3ce6bb847f37E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$GT$17h983db323c0de2dffE.exit19.i"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val14.i = load ptr, ptr %i.w, align 8, !alias.scope !1023, !nonnull !11, !noundef !11
  %i.x = shl nuw i64 %.val13.i, 1
end_hunk_0
begin_hunk_1_@"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E":bb.a

"_ZN4core6option15Option$LT$T$GT$7or_else17h33508de9ca379c09E.exit.i": ; preds = %bb.gm
  %.sroa.63.0.copyload.i.i.i699 = load i8, ptr %.sroa.63.0..sroa_idx.i.i.i698, align 4, !noalias !5624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !5624
  br label %bb.qc

bb.gq:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val86.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.val86.i, i64 64
  %i.aie = load i32, ptr %i.aid, align 8, !range !55, !noalias !5629, !noundef !11
  %i.aif = getelementptr inbounds nuw i8, ptr %.val86.i, i64 68
  %i.aig = load i32, ptr %i.aif, align 4, !noalias !5629 ; 2 uses
  %i.aih = trunc nuw i32 %i.aie to i1
  br i1 %i.aih, label %bb.gr, label %bb.gv

bb.gr:                                            ; preds = %bb.gq
  %i.aii = trunc i32 %.sroa.4.02669 to i1
  br i1 %i.aii, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aij = icmp eq i8 %.sroa.6.0.extract.trunc2672, 0
  br i1 %i.aij, label %bb.gv, label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %.sroa.09.0.i697 = call i32 @llvm.abs.i32(i32 %i.aig, i1 false)
  %.sroa.01346.0.insert.ext = zext i32 %.sroa.09.0.i697 to i64
  %.sroa.01346.5.insert.insert = or disjoint i64 %.sroa.01346.0.insert.ext, 9899899617280
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt5"

bb.gu:                                            ; preds = %bb.gs
  %.sroa.025.0.i = call i32 @llvm.abs.i32(i32 %i.aig, i1 false)
  %.sroa.01346.0.insert.ext1354 = zext i32 %.sroa.025.0.i to i64
  %.sroa.01346.4.insert.insert1359 = or disjoint i64 %.sroa.6.0.extract.shift2671, %.sroa.01346.0.insert.ext1354
  %.sroa.01346.5.insert.insert1362 = or disjoint i64 %.sroa.01346.4.insert.insert1359, 4294967296
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt5"

bb.gv:                                            ; preds = %bb.gs, %bb.gq
  %.sink2759 = phi i8 [ 3, %bb.gq ], [ 8, %bb.gs ]
  %i.aik = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef %.sink2759), !noalias !5629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !5630
  store i8 1, ptr %i.bg, align 8, !noalias !5630
  store i8 78, ptr %.sroa.5.0..sroa_idx2.i692, align 1, !noalias !5631
  store i8 0, ptr %.sroa.61368.1..sroa.5.0..sroa_idx2.i692.sroa_idx, align 2, !noalias !5631
  %i.ail = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bg, ptr noundef nonnull %i.aik), !noalias !5630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !5630
  br label %.thread2479

"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit683": ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  br label %.thread2726

bb.gw:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val89.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.val89.i, i64 108
  %i.ain = load i8, ptr %i.aim, align 4, !range !22, !noalias !5632, !noundef !11
  switch i8 %i.ain, label %.thread2726 [
    i8 2, label %bb.gx
    i8 0, label %bb.gz
  ]

bb.gx:                                            ; preds = %bb.gw
  %i.aio = getelementptr inbounds nuw i8, ptr %.val89.i, i64 102
  %i.aip = load i8, ptr %i.aio, align 2, !range !21, !noalias !5632, !noundef !11
  %i.aiq = trunc nuw i8 %i.aip to i1
  br i1 %i.aiq, label %bb.gy, label %bb.qd

bb.gy:                                            ; preds = %bb.gx
  %i.air = getelementptr inbounds nuw i8, ptr %.val89.i, i64 103
  %i.ais = load i8, ptr %i.air, align 1, !noalias !5632
  %i.ait = icmp slt i8 %i.ais, 12
  br i1 %i.ait, label %bb.gz, label %.thread2726

bb.gz:                                            ; preds = %bb.gy, %bb.gw
  br label %.thread2726

bb.ha:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val90.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.val90.i, i64 108
  %i.aiv = load i8, ptr %i.aiu, align 4, !range !22, !noalias !5633, !noundef !11 ; 2 uses
  %.not.i663 = icmp eq i8 %i.aiv, 2
  br i1 %.not.i663, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aiw = trunc nuw i8 %i.aiv to i1              ; 2 uses
  %cond.i664 = icmp eq i8 %.sroa.9.0.extract.trunc2673, 4
  br i1 %cond.i664, label %bb.hj, label %bb.hi

bb.hc:                                            ; preds = %bb.ha
  %i.aix = getelementptr inbounds nuw i8, ptr %.val90.i, i64 102
  %i.aiy = load i8, ptr %i.aix, align 2, !range !21, !noalias !5633, !noundef !11
  %i.aiz = trunc nuw i8 %i.aiy to i1
  br i1 %i.aiz, label %bb.hd, label %bb.qe

bb.hd:                                            ; preds = %bb.hc
  %i.aja = getelementptr inbounds nuw i8, ptr %.val90.i, i64 103
  %i.ajb = load i8, ptr %i.aja, align 1, !noalias !5633
  %i.ajc = icmp slt i8 %i.ajb, 12
  %cond32.i = icmp eq i8 %.sroa.9.0.extract.trunc2673, 4 ; 2 uses
  br i1 %i.ajc, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %spec.select.i667 = select i1 %cond32.i, ptr @250, ptr @252
  br label %.thread2726

bb.hf:                                            ; preds = %bb.hd
  br i1 %cond32.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hi, %bb.hf
  br label %.thread2726

bb.hh:                                            ; preds = %bb.hj, %bb.hf
  br label %.thread2726.thread3127

bb.hi:                                            ; preds = %bb.hb
  br i1 %i.aiw, label %.thread2726, label %bb.hg

bb.hj:                                            ; preds = %bb.hb
  br i1 %i.aiw, label %.thread2726.thread3127, label %bb.hh

bb.hk:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  switch i8 %.sroa.16.0.extract.trunc2674, label %bb.qf [
    i8 0, label %bb.qg
    i8 1, label %bb.qn
  ]

bb.hl:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val92.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.val92.i, i64 92
  %i.aje = load i8, ptr %i.ajd, align 4, !range !21, !noalias !5634, !noundef !11
  %i.ajf = trunc nuw i8 %i.aje to i1
  %i.ajg = getelementptr inbounds nuw i8, ptr %.val92.i, i64 93
  %i.ajh = load i8, ptr %i.ajg, align 1, !noalias !5634
  br i1 %i.ajf, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.thread.i", label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !5635
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime7to_date17hf8614c6855a6894eE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val92.i), !noalias !5634
  %i.aji = load i16, ptr %i.bh, align 8, !range !62, !noalias !5635, !noundef !11
  %i.ajj = trunc nuw i16 %i.aji to i1
  br i1 %i.ajj, label %bb.hn, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.i"

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.experimental.noalias.scope.decl(metadata !5636), !noalias !5428
  call void @llvm.experimental.noalias.scope.decl(metadata !5637), !noalias !5428
  %i.ajk = load ptr, ptr %i.fw, align 8, !alias.scope !5638, !noalias !5635, !noundef !11 ; 2 uses
  %i.ajl = icmp eq ptr %i.ajk, null
  br i1 %i.ajl, label %bb.qu, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ajm = atomicrmw sub ptr %i.ajk, i64 1 release, align 8, !noalias !5639
  %i.ajn = icmp eq i64 %i.ajm, 1
  br i1 %i.ajn, label %bb.hp, label %bb.qu

bb.hp:                                            ; preds = %bb.ho
  fence acquire, !noalias !5428
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fw), !noalias !5635, !inline_history !0
  br label %bb.qu

"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.i": ; preds = %bb.hm
  %.sroa.63.0.copyload.i.i.i = load i8, ptr %.sroa.63.0..sroa_idx.i.i.i, align 4, !noalias !5635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !5635
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.thread.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.thread.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.i", %bb.hl
  %.pn3.i3.i657 = phi i8 [ %.sroa.63.0.copyload.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.i" ], [ %i.ajh, %bb.hl ] ; 4 uses
  %i.ajo = add i8 %.pn3.i3.i657, -1
  %or.cond.i658 = icmp ult i8 %i.ajo, 3
  br i1 %or.cond.i658, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4", label %bb.hq

bb.hq:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h517e8b4b5e06ffffE.exit.thread.i"
  %i.ajp = add i8 %.pn3.i3.i657, -4
  %or.cond1.i659 = icmp ult i8 %i.ajp, 3
  br i1 %or.cond1.i659, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4", label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ajq = add i8 %.pn3.i3.i657, -7
  %or.cond2.i = icmp ult i8 %i.ajq, 3
  br i1 %or.cond2.i, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4", label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ajr = add i8 %.pn3.i3.i657, -10
  %or.cond3.i = icmp ult i8 %i.ajr, 3
  br i1 %or.cond3.i, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4", label %bb.ht, !prof !20

bb.ht:                                            ; preds = %bb.hs
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #45, !noalias !5634
  unreachable

bb.hu:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val93.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 4 uses
  %.val94.i = load ptr, ptr %i.ek, align 8, !alias.scope !5427, !noalias !5428 ; 7 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.val93.i, i64 102
  %i.ajt = load i8, ptr %i.ajs, align 2, !range !21, !noalias !5640, !noundef !11
  %i.aju = trunc nuw i8 %i.ajt to i1
  br i1 %i.aju, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ajv = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5640
  br label %bb.im

bb.hw:                                            ; preds = %bb.hu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val94.i) ], !noalias !5428
  %i.ajw = getelementptr inbounds nuw i8, ptr %.val93.i, i64 103
  %i.ajx = load i8, ptr %i.ajw, align 1, !noalias !5640
  %i.ajy = call i8 @llvm.abs.i8(i8 %i.ajx, i1 false) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5641), !noalias !5428
  call void @llvm.experimental.noalias.scope.decl(metadata !5642), !noalias !5428
  %i.ajz = load ptr, ptr %.val94.i, align 8, !alias.scope !5643, !noalias !5644, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16 ; 3 uses
  %i.akb = load i16, ptr %i.aka, align 8, !noalias !5645, !noundef !11
  %i.akc = zext i16 %i.akb to i64
  %i.akd = add nuw nsw i64 %i.akc, 2
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8 ; 2 uses
  %i.akf = load i64, ptr %i.ake, align 8, !noalias !5645, !noundef !11
  %i.akg = icmp ugt i64 %i.akd, %i.akf
  br i1 %i.akg, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i656, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i653, !prof !23

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i656: ; preds = %bb.hw
  %i.akh = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val94.i), !noalias !5644 ; 2 uses
  %i.aki = extractvalue { i64, ptr } %i.akh, 0
  %i.akj = trunc nuw i64 %i.aki to i1
  br i1 %i.akj, label %bb.ia, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i653

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i653: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i656, %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !5646), !noalias !5428
  %i.akk = icmp ult i8 %i.ajy, 100
  br i1 %i.akk, label %bb.hy, label %bb.hx, !prof !16

bb.hx:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i653
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #45, !noalias !5647
  unreachable

bb.hy:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i653
  %i.akl = load i64, ptr %i.ake, align 8, !alias.scope !5646, !noalias !5648, !noundef !11
  %i.akm = load i16, ptr %i.aka, align 8, !alias.scope !5646, !noalias !5648, !noundef !11 ; 2 uses
  %i.akn = zext i16 %i.akm to i64                 ; 2 uses
  %i.ako = sub nuw i64 %i.akl, %i.akn
  %i.akp = icmp ugt i64 %i.ako, 1
  br i1 %i.akp, label %bb.ib, label %bb.hz, !prof !16

bb.hz:                                            ; preds = %bb.hy
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45, !noalias !5647
  unreachable

bb.ia:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i656
  %i.akq = extractvalue { i64, ptr } %i.akh, 1
  br label %bb.im

bb.ib:                                            ; preds = %bb.hy
  %i.akr = load ptr, ptr %i.ajz, align 8, !alias.scope !5646, !noalias !5648, !nonnull !11, !align !13, !noundef !11
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.akn ; 2 uses
  %i.akt = shl nuw i8 %i.ajy, 1
  %i.aku = zext i8 %i.akt to i64
  %i.akv = getelementptr inbounds nuw i8, ptr @134, i64 %i.aku ; 2 uses
  %i.akw = load i8, ptr %i.akv, align 1, !noalias !5647, !noundef !11
  store i8 %i.akw, ptr %i.aks, align 1, !noalias !5647
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aks, i64 1
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akv, i64 1
  %i.akz = load i8, ptr %i.aky, align 1, !noalias !5647, !noundef !11
  store i8 %i.akz, ptr %i.akx, align 1, !noalias !5647
  %i.ala = add i16 %i.akm, 2
  store i16 %i.ala, ptr %i.aka, align 8, !alias.scope !5646, !noalias !5648
  call void @llvm.experimental.noalias.scope.decl(metadata !5649), !noalias !5428
  %i.alb = load ptr, ptr %.val94.i, align 8, !alias.scope !5649, !noalias !5644, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 8 ; 2 uses
  %i.ald = load i64, ptr %i.alc, align 8, !noalias !5650, !noundef !11
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 16 ; 3 uses
  %i.alf = load i16, ptr %i.ale, align 8, !noalias !5650, !noundef !11 ; 2 uses
  %i.alg = zext i16 %i.alf to i64                 ; 2 uses
  %i.alh = icmp eq i64 %i.ald, %i.alg
  br i1 %i.alh, label %bb.ic, label %.thread.i654, !prof !23

bb.ic:                                            ; preds = %bb.ib
  %i.ali = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val94.i), !noalias !5644 ; 2 uses
  %i.alj = extractvalue { i64, ptr } %i.ali, 0
  %i.alk = trunc nuw i64 %i.alj to i1
  br i1 %i.alk, label %bb.if, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %.pre.i655 = load i64, ptr %i.alc, align 8, !alias.scope !5651, !noalias !5650
  %.pre21.i = load i16, ptr %i.ale, align 8, !alias.scope !5651, !noalias !5650 ; 2 uses
  %.pre22.i = zext i16 %.pre21.i to i64           ; 2 uses
  %i.all = icmp eq i64 %.pre.i655, %.pre22.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5651), !noalias !5428
  br i1 %i.all, label %bb.ie, label %.thread.i654, !prof !67

bb.ie:                                            ; preds = %bb.id
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !5652
  unreachable

bb.if:                                            ; preds = %bb.ic
  %i.alm = extractvalue { i64, ptr } %i.ali, 1
  br label %bb.im

.thread.i654:                                     ; preds = %bb.ib, %bb.id
  %i.aln = phi i16 [ %.pre21.i, %bb.id ], [ %i.alf, %bb.ib ]
  %.pre-phi28.i = phi i64 [ %.pre22.i, %bb.id ], [ %i.alg, %bb.ib ]
  %i.alo = load ptr, ptr %i.alb, align 8, !alias.scope !5651, !noalias !5650, !nonnull !11, !align !13, !noundef !11
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 %.pre-phi28.i
  store i8 58, ptr %i.alp, align 1, !noalias !5652
  %i.alq = add i16 %i.aln, 1
  store i16 %i.alq, ptr %i.ale, align 8, !alias.scope !5651, !noalias !5650
  %i.alr = getelementptr inbounds nuw i8, ptr %.val93.i, i64 104
  %i.als = load i8, ptr %i.alr, align 8, !range !21, !noalias !5653, !noundef !11
  %i.alt = trunc nuw i8 %i.als to i1
  br i1 %i.alt, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %.thread.i654
  %i.alu = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5653
  br label %bb.im

bb.ih:                                            ; preds = %.thread.i654
  %i.alv = getelementptr inbounds nuw i8, ptr %.val93.i, i64 105
  %i.alw = load i8, ptr %i.alv, align 1, !noalias !5653
  %i.alx = call i8 @llvm.abs.i8(i8 %i.alw, i1 false) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5654), !noalias !5428
  call void @llvm.experimental.noalias.scope.decl(metadata !5655), !noalias !5428
  %i.aly = load ptr, ptr %.val94.i, align 8, !alias.scope !5656, !noalias !5644, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 16 ; 3 uses
  %i.ama = load i16, ptr %i.alz, align 8, !noalias !5657, !noundef !11
  %i.amb = zext i16 %i.ama to i64
  %i.amc = add nuw nsw i64 %i.amb, 2
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aly, i64 8 ; 2 uses
  %i.ame = load i64, ptr %i.amd, align 8, !noalias !5657, !noundef !11
  %i.amf = icmp ugt i64 %i.amc, %i.ame
  br i1 %i.amf, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i43.i, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i39.i, !prof !23

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i43.i: ; preds = %bb.ih
  %i.amg = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val94.i), !noalias !5644 ; 2 uses
  %i.amh = extractvalue { i64, ptr } %i.amg, 0
  %i.ami = trunc nuw i64 %i.amh to i1
  br i1 %i.ami, label %bb.il, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i39.i

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i39.i: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i43.i, %bb.ih
  call void @llvm.experimental.noalias.scope.decl(metadata !5658), !noalias !5428
  %i.amj = icmp ult i8 %i.alx, 100
  br i1 %i.amj, label %bb.ij, label %bb.ii, !prof !16

bb.ii:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i39.i
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #45, !noalias !5659
  unreachable

bb.ij:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i39.i
  %i.amk = load i64, ptr %i.amd, align 8, !alias.scope !5658, !noalias !5660, !noundef !11
  %i.aml = load i16, ptr %i.alz, align 8, !alias.scope !5658, !noalias !5660, !noundef !11 ; 2 uses
  %i.amm = zext i16 %i.aml to i64                 ; 2 uses
  %i.amn = sub nuw i64 %i.amk, %i.amm
  %i.amo = icmp ugt i64 %i.amn, 1
  br i1 %i.amo, label %bb.in, label %bb.ik, !prof !16

bb.ik:                                            ; preds = %bb.ij
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45, !noalias !5659
  unreachable

bb.il:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i43.i
  %i.amp = extractvalue { i64, ptr } %i.amg, 1
  br label %bb.im

bb.im:                                            ; preds = %bb.ia, %bb.if, %bb.ig, %bb.il, %bb.hv
  %.sroa.01469.0.ph = phi ptr [ %i.ajv, %bb.hv ], [ %i.alu, %bb.ig ], [ %i.amp, %bb.il ], [ %i.alm, %bb.if ], [ %i.akq, %bb.ia ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !5661
  store i8 1, ptr %i.bi, align 8, !noalias !5661
  store i8 82, ptr %.sroa.5.0..sroa_idx2.i648, align 1, !noalias !5662
  store i8 0, ptr %.sroa.61475.1..sroa.5.0..sroa_idx2.i648.sroa_idx, align 2, !noalias !5662
  %i.amq = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi, ptr noundef %.sroa.01469.0.ph), !noalias !5661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !5661
  br label %.thread2479

bb.in:                                            ; preds = %bb.ij
  %i.amr = load ptr, ptr %i.aly, align 8, !alias.scope !5658, !noalias !5660, !nonnull !11, !align !13, !noundef !11
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 %i.amm ; 2 uses
  %i.amt = shl nuw i8 %i.alx, 1
  %i.amu = zext i8 %i.amt to i64
  %i.amv = getelementptr inbounds nuw i8, ptr @134, i64 %i.amu ; 2 uses
  %i.amw = load i8, ptr %i.amv, align 1, !noalias !5659, !noundef !11
  store i8 %i.amw, ptr %i.ams, align 1, !noalias !5659
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ams, i64 1
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 1
  %i.amz = load i8, ptr %i.amy, align 1, !noalias !5659, !noundef !11
  store i8 %i.amz, ptr %i.amx, align 1, !noalias !5659
  %i.ana = add i16 %i.aml, 2
  store i16 %i.ana, ptr %i.alz, align 8, !alias.scope !5658, !noalias !5660
  br label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$10write_item17he3502e125bb061a5E.exit.thread2474"

bb.io:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  call void @llvm.experimental.noalias.scope.decl(metadata !5663)
  %i.anb = load ptr, ptr %0, align 8, !alias.scope !5663, !noalias !5664, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.anc = load ptr, ptr %i.en, align 8, !alias.scope !5663, !noalias !5664, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.and = load ptr, ptr %i.ek, align 8, !alias.scope !5663, !noalias !5664, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.ane = icmp eq i8 %.sroa.9.0.extract.trunc2673, 3
  br i1 %i.ane, label %bb.it, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5665
  store ptr %i.y, ptr %i.x, align 8, !alias.scope !5666, !noalias !5667
  store i64 100, ptr %i.hp, align 8, !alias.scope !5666, !noalias !5667
  store i16 0, ptr %i.hq, align 8, !alias.scope !5666, !noalias !5667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5665
  store ptr %i.x, ptr %i.w, align 8, !alias.scope !5668, !noalias !5669
  store ptr %i.and, ptr %i.hr, align 8, !alias.scope !5668, !noalias !5669
  store ptr @198, ptr %i.hs, align 8, !alias.scope !5668, !noalias !5669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5665
  store ptr %i.anb, ptr %i.v, align 8, !noalias !5665
  store ptr @242, ptr %i.ht, align 8, !noalias !5665
  store i64 12, ptr %i.hu, align 8, !noalias !5665
  store ptr %i.anc, ptr %i.hv, align 8, !noalias !5665
  store ptr %i.w, ptr %i.hw, align 8, !noalias !5665
  %i.anf = call { i64, ptr } @"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v), !noalias !5670, !inline_history !4817 ; 2 uses
  %i.ang = extractvalue { i64, ptr } %i.anf, 0
  %i.anh = trunc nuw i64 %i.ang to i1
  br i1 %i.anh, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ani = extractvalue { i64, ptr } %i.anf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5671
  store i8 6, ptr %i.u, align 8, !noalias !5671
  %i.anj = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noundef %i.ani), !noalias !5672, !inline_history !4817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5671
  br label %_ZN4jiff3fmt7strtime6Custom18format_12hour_time17h4866f1a1ddd5c57fE.exit.i.thread

bb.ir:                                            ; preds = %bb.ip
  %.sroa.09.0.copyload.i2772 = load ptr, ptr %i.w, align 8, !noalias !5665, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.410.0.copyload.i2773 = load ptr, ptr %i.hr, align 8, !noalias !5665, !nonnull !11, !noundef !11
  %.sroa.511.0.copyload.i2774 = load ptr, ptr %i.hs, align 8, !noalias !5665, !nonnull !11, !noundef !11
  %i.ank = load ptr, ptr %.sroa.09.0.copyload.i2772, align 8, !noalias !5673, !nonnull !11, !align !13, !noundef !11
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload.i2772, i64 16 ; 2 uses
  %i.anm = load i16, ptr %i.anl, align 8, !noalias !5673, !noundef !11
  %i.ann = zext i16 %i.anm to i64
  %i.ano = getelementptr inbounds nuw i8, ptr %.sroa.511.0.copyload.i2774, i64 24
  %i.anp = load ptr, ptr %i.ano, align 8, !invariant.load !11, !noalias !5673, !nonnull !11
  %i.anq = call { i64, ptr } %i.anp(ptr noundef nonnull align 1 %.sroa.410.0.copyload.i2773, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ank, i64 noundef %i.ann), !noalias !5673, !inline_history !4822 ; 2 uses
  %i.anr = extractvalue { i64, ptr } %i.anq, 0
  %i.ans = trunc nuw i64 %i.anr to i1
  br i1 %i.ans, label %bb.is, label %_ZN4jiff3fmt7strtime6Custom18format_12hour_time17h4866f1a1ddd5c57fE.exit.i

bb.is:                                            ; preds = %bb.ir
  %i.ant = extractvalue { i64, ptr } %i.anq, 1
  br label %_ZN4jiff3fmt7strtime6Custom18format_12hour_time17h4866f1a1ddd5c57fE.exit.i.thread

bb.it:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5674
  store ptr %i.t, ptr %i.s, align 8, !alias.scope !5675, !noalias !5676
  store i64 100, ptr %i.hx, align 8, !alias.scope !5675, !noalias !5676
  store i16 0, ptr %i.hy, align 8, !alias.scope !5675, !noalias !5676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5674
  store ptr %i.s, ptr %i.r, align 8, !alias.scope !5677, !noalias !5678
  store ptr %i.and, ptr %i.hz, align 8, !alias.scope !5677, !noalias !5678
  store ptr @198, ptr %i.ia, align 8, !alias.scope !5677, !noalias !5678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5674
  store ptr %i.anb, ptr %i.q, align 8, !noalias !5674
  store ptr @241, ptr %i.ib, align 8, !noalias !5674
  store i64 13, ptr %i.ic, align 8, !noalias !5674
  store ptr %i.anc, ptr %i.id, align 8, !noalias !5674
  store ptr %i.r, ptr %i.ie, align 8, !noalias !5674
  %i.anu = call { i64, ptr } @"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q), !noalias !5670, !inline_history !4817 ; 2 uses
  %i.anv = extractvalue { i64, ptr } %i.anu, 0
  %i.anw = trunc nuw i64 %i.anv to i1
  br i1 %i.anw, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.anx = extractvalue { i64, ptr } %i.anu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5679
  store i8 6, ptr %i.p, align 8, !noalias !5679
  %i.any = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h2bfe5a8911315e0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noundef %i.anx), !noalias !5680, !inline_history !4817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5679
  br label %_ZN4jiff3fmt7strtime14BrokenDownTime18format_with_config17h790fd198166d76dcE.exit2783.thread

bb.iv:                                            ; preds = %bb.it
  %.sroa.09.0.copyload.i2778 = load ptr, ptr %i.r, align 8, !noalias !5674, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.410.0.copyload.i2779 = load ptr, ptr %i.hz, align 8, !noalias !5674, !nonnull !11, !noundef !11
  %.sroa.511.0.copyload.i2780 = load ptr, ptr %i.ia, align 8, !noalias !5674, !nonnull !11, !noundef !11
  %i.anz = load ptr, ptr %.sroa.09.0.copyload.i2778, align 8, !noalias !5681, !nonnull !11, !align !13, !noundef !11
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload.i2778, i64 16 ; 2 uses
  %i.aob = load i16, ptr %i.aoa, align 8, !noalias !5681, !noundef !11
  %i.aoc = zext i16 %i.aob to i64
  %i.aod = getelementptr inbounds nuw i8, ptr %.sroa.511.0.copyload.i2780, i64 24
  %i.aoe = load ptr, ptr %i.aod, align 8, !invariant.load !11, !noalias !5681, !nonnull !11
  %i.aof = call { i64, ptr } %i.aoe(ptr noundef nonnull align 1 %.sroa.410.0.copyload.i2779, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.anz, i64 noundef %i.aoc), !noalias !5681, !inline_history !4822 ; 2 uses
  %i.aog = extractvalue { i64, ptr } %i.aof, 0
  %i.aoh = trunc nuw i64 %i.aog to i1
  br i1 %i.aoh, label %bb.iw, label %_ZN4jiff3fmt7strtime14BrokenDownTime18format_with_config17h790fd198166d76dcE.exit2783

bb.iw:                                            ; preds = %bb.iv
  %i.aoi = extractvalue { i64, ptr } %i.aof, 1
  br label %_ZN4jiff3fmt7strtime14BrokenDownTime18format_with_config17h790fd198166d76dcE.exit2783.thread

_ZN4jiff3fmt7strtime14BrokenDownTime18format_with_config17h790fd198166d76dcE.exit2783.thread: ; preds = %bb.iu, %bb.iw
  %.pn15.i2781.ph = phi ptr [ %i.aoi, %bb.iw ], [ %i.any, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5674
  br label %bb.ix

_ZN4jiff3fmt7strtime14BrokenDownTime18format_with_config17h790fd198166d76dcE.exit2783: ; preds = %bb.iv
  store i16 0, ptr %i.aoa, align 8, !noalias !5681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5674
  br label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$10write_item17he3502e125bb061a5E.exit.thread2474"

_ZN4jiff3fmt7strtime6Custom18format_12hour_time17h4866f1a1ddd5c57fE.exit.i.thread: ; preds = %bb.iq, %bb.is
  %.pn15.i2775.ph = phi ptr [ %i.ant, %bb.is ], [ %i.anj, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5665
  br label %bb.ix

_ZN4jiff3fmt7strtime6Custom18format_12hour_time17h4866f1a1ddd5c57fE.exit.i: ; preds = %bb.ir
  store i16 0, ptr %i.anl, align 8, !noalias !5673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5665
  br label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$10write_item17he3502e125bb061a5E.exit.thread2474"

bb.ix:                                            ; preds = %_ZN4jiff3fmt7strtime14BrokenDownTime18format_with_config17h790fd198166d76dcE.exit2783.thread, %_ZN4jiff3fmt7strtime6Custom18format_12hour_time17h4866f1a1ddd5c57fE.exit.i.thread
  %.pn15.i2781.pn3124 = phi ptr [ %.pn15.i2781.ph, %_ZN4jiff3fmt7strtime14BrokenDownTime18format_with_config17h790fd198166d76dcE.exit2783.thread ], [ %.pn15.i2775.ph, %_ZN4jiff3fmt7strtime6Custom18format_12hour_time17h4866f1a1ddd5c57fE.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !5682
  store i8 1, ptr %i.bj, align 8, !noalias !5682
  store i8 114, ptr %.sroa.5.0..sroa_idx2.i634, align 1, !noalias !5683
  store i8 0, ptr %.sroa.61485.1..sroa.5.0..sroa_idx2.i634.sroa_idx, align 2, !noalias !5683
  %i.aoj = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr noundef %.pn15.i2781.pn3124), !noalias !5682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !5682
  br label %.thread2479

bb.iy:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val95.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %.val95.i, i64 106
  %i.aol = load i8, ptr %i.aok, align 2, !range !21, !noalias !5684, !noundef !11
  %i.aom = trunc nuw i8 %i.aol to i1
  br i1 %i.aom, label %bb.qw, label %bb.qv

bb.iz:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val96.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !5685
  call fastcc void @_ZN4jiff3fmt7strtime14BrokenDownTime12to_timestamp17he651092a9b6473ddE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.val96.i), !noalias !5685
  %i.aon = load i64, ptr %i.bl, align 8, !range !53, !noalias !5685, !noundef !11
  %i.aoo = trunc nuw i64 %i.aon to i1
  br i1 %i.aoo, label %bb.ja, label %bb.qy

bb.ja:                                            ; preds = %bb.iz
  %i.aop = load ptr, ptr %i.fv, align 8, !noalias !5685, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !5685
  store ptr %i.aop, ptr %i.bk, align 8, !noalias !5685
  %i.aoq = icmp eq ptr %i.aop, null
  br i1 %i.aoq, label %bb.qx, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aor = atomicrmw sub ptr %i.aop, i64 1 release, align 8, !noalias !5686
  %i.aos = icmp eq i64 %i.aor, 1
  br i1 %i.aos, label %bb.jc, label %bb.qx

bb.jc:                                            ; preds = %bb.jb
  fence acquire, !noalias !5428
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9b7ec78a5db80eeeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bk), !noalias !5685, !inline_history !0
  br label %bb.qx

bb.jd:                                            ; preds = %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$15parse_extension17hbcb0238c9a672235E.exit.thread"
  %.val97.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 6 uses
  %.val98.i = load ptr, ptr %i.ek, align 8, !alias.scope !5427, !noalias !5428 ; 11 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %.val97.i, i64 102
  %i.aou = load i8, ptr %i.aot, align 2, !range !21, !noalias !5687, !noundef !11
  %i.aov = trunc nuw i8 %i.aou to i1
  br i1 %i.aov, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aow = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5687
  br label %bb.kf

bb.jf:                                            ; preds = %bb.jd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ], !noalias !5428
  %i.aox = getelementptr inbounds nuw i8, ptr %.val97.i, i64 103
  %i.aoy = load i8, ptr %i.aox, align 1, !noalias !5687
  %i.aoz = call i8 @llvm.abs.i8(i8 %i.aoy, i1 false) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5688), !noalias !5428
  call void @llvm.experimental.noalias.scope.decl(metadata !5689), !noalias !5428
  %i.apa = load ptr, ptr %.val98.i, align 8, !alias.scope !5690, !noalias !5691, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 16 ; 3 uses
  %i.apc = load i16, ptr %i.apb, align 8, !noalias !5692, !noundef !11
  %i.apd = zext i16 %i.apc to i64
  %i.ape = add nuw nsw i64 %i.apd, 2
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apa, i64 8 ; 2 uses
  %i.apg = load i64, ptr %i.apf, align 8, !noalias !5692, !noundef !11
  %i.aph = icmp ugt i64 %i.ape, %i.apg
  br i1 %i.aph, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i617, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i614, !prof !23

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i617: ; preds = %bb.jf
  %i.api = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val98.i), !noalias !5691 ; 2 uses
  %i.apj = extractvalue { i64, ptr } %i.api, 0
  %i.apk = trunc nuw i64 %i.apj to i1
  br i1 %i.apk, label %bb.jj, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i614

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i614: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i617, %bb.jf
  call void @llvm.experimental.noalias.scope.decl(metadata !5693), !noalias !5428
  %i.apl = icmp ult i8 %i.aoz, 100
  br i1 %i.apl, label %bb.jh, label %bb.jg, !prof !16

bb.jg:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i614
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #45, !noalias !5694
  unreachable

bb.jh:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i.i614
  %i.apm = load i64, ptr %i.apf, align 8, !alias.scope !5693, !noalias !5695, !noundef !11
  %i.apn = load i16, ptr %i.apb, align 8, !alias.scope !5693, !noalias !5695, !noundef !11 ; 2 uses
  %i.apo = zext i16 %i.apn to i64                 ; 2 uses
  %i.app = sub nuw i64 %i.apm, %i.apo
  %i.apq = icmp ugt i64 %i.app, 1
  br i1 %i.apq, label %bb.jk, label %bb.ji, !prof !16

bb.ji:                                            ; preds = %bb.jh
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45, !noalias !5694
  unreachable

bb.jj:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i.i617
  %i.apr = extractvalue { i64, ptr } %i.api, 1
  br label %bb.kf

bb.jk:                                            ; preds = %bb.jh
  %i.aps = load ptr, ptr %i.apa, align 8, !alias.scope !5693, !noalias !5695, !nonnull !11, !align !13, !noundef !11
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.apo ; 2 uses
  %i.apu = shl nuw i8 %i.aoz, 1
  %i.apv = zext i8 %i.apu to i64
  %i.apw = getelementptr inbounds nuw i8, ptr @134, i64 %i.apv ; 2 uses
  %i.apx = load i8, ptr %i.apw, align 1, !noalias !5694, !noundef !11
  store i8 %i.apx, ptr %i.apt, align 1, !noalias !5694
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apt, i64 1
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 1
  %i.aqa = load i8, ptr %i.apz, align 1, !noalias !5694, !noundef !11
  store i8 %i.aqa, ptr %i.apy, align 1, !noalias !5694
  %i.aqb = add i16 %i.apn, 2
  store i16 %i.aqb, ptr %i.apb, align 8, !alias.scope !5693, !noalias !5695
  call void @llvm.experimental.noalias.scope.decl(metadata !5696), !noalias !5428
  %i.aqc = load ptr, ptr %.val98.i, align 8, !alias.scope !5696, !noalias !5691, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8 ; 2 uses
  %i.aqe = load i64, ptr %i.aqd, align 8, !noalias !5697, !noundef !11
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16 ; 3 uses
  %i.aqg = load i16, ptr %i.aqf, align 8, !noalias !5697, !noundef !11 ; 2 uses
  %i.aqh = zext i16 %i.aqg to i64                 ; 2 uses
  %i.aqi = icmp eq i64 %i.aqe, %i.aqh
  br i1 %i.aqi, label %bb.jl, label %.thread.i615, !prof !23

bb.jl:                                            ; preds = %bb.jk
  %i.aqj = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val98.i), !noalias !5691 ; 2 uses
  %i.aqk = extractvalue { i64, ptr } %i.aqj, 0
  %i.aql = trunc nuw i64 %i.aqk to i1
  br i1 %i.aql, label %bb.jo, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %.pre.i616 = load i64, ptr %i.aqd, align 8, !alias.scope !5698, !noalias !5697
  %.pre33.i = load i16, ptr %i.aqf, align 8, !alias.scope !5698, !noalias !5697 ; 2 uses
  %.pre37.i = zext i16 %.pre33.i to i64           ; 2 uses
  %i.aqm = icmp eq i64 %.pre.i616, %.pre37.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5698), !noalias !5428
  br i1 %i.aqm, label %bb.jn, label %.thread.i615, !prof !67

bb.jn:                                            ; preds = %bb.jm
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !5699
  unreachable

bb.jo:                                            ; preds = %bb.jl
  %i.aqn = extractvalue { i64, ptr } %i.aqj, 1
  br label %bb.kf

.thread.i615:                                     ; preds = %bb.jk, %bb.jm
  %i.aqo = phi i16 [ %.pre33.i, %bb.jm ], [ %i.aqg, %bb.jk ]
  %.pre-phi47.i = phi i64 [ %.pre37.i, %bb.jm ], [ %i.aqh, %bb.jk ]
  %i.aqp = load ptr, ptr %i.aqc, align 8, !alias.scope !5698, !noalias !5697, !nonnull !11, !align !13, !noundef !11
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.pre-phi47.i
  store i8 58, ptr %i.aqq, align 1, !noalias !5699
  %i.aqr = add i16 %i.aqo, 1
  store i16 %i.aqr, ptr %i.aqf, align 8, !alias.scope !5698, !noalias !5697
  %i.aqs = getelementptr inbounds nuw i8, ptr %.val97.i, i64 104
  %i.aqt = load i8, ptr %i.aqs, align 8, !range !21, !noalias !5700, !noundef !11
  %i.aqu = trunc nuw i8 %i.aqt to i1
  br i1 %i.aqu, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %.thread.i615
  %i.aqv = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5700
  br label %bb.kf

bb.jq:                                            ; preds = %.thread.i615
  %i.aqw = getelementptr inbounds nuw i8, ptr %.val97.i, i64 105
  %i.aqx = load i8, ptr %i.aqw, align 1, !noalias !5700
  %i.aqy = call i8 @llvm.abs.i8(i8 %i.aqx, i1 false) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5701), !noalias !5428
  call void @llvm.experimental.noalias.scope.decl(metadata !5702), !noalias !5428
  %i.aqz = load ptr, ptr %.val98.i, align 8, !alias.scope !5703, !noalias !5691, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 16 ; 3 uses
  %i.arb = load i16, ptr %i.ara, align 8, !noalias !5704, !noundef !11
  %i.arc = zext i16 %i.arb to i64
  %i.ard = add nuw nsw i64 %i.arc, 2
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8 ; 2 uses
  %i.arf = load i64, ptr %i.are, align 8, !noalias !5704, !noundef !11
  %i.arg = icmp ugt i64 %i.ard, %i.arf
  br i1 %i.arg, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i68.i, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i64.i, !prof !23

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i68.i: ; preds = %bb.jq
  %i.arh = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val98.i), !noalias !5691 ; 2 uses
  %i.ari = extractvalue { i64, ptr } %i.arh, 0
  %i.arj = trunc nuw i64 %i.ari to i1
  br i1 %i.arj, label %bb.ju, label %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i64.i

_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i64.i: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i68.i, %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !5705), !noalias !5428
  %i.ark = icmp ult i8 %i.aqy, 100
  br i1 %i.ark, label %bb.js, label %bb.jr, !prof !16

bb.jr:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i64.i
  call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #45, !noalias !5706
  unreachable

bb.js:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.thread.i64.i
  %i.arl = load i64, ptr %i.are, align 8, !alias.scope !5705, !noalias !5707, !noundef !11
  %i.arm = load i16, ptr %i.ara, align 8, !alias.scope !5705, !noalias !5707, !noundef !11 ; 2 uses
  %i.arn = zext i16 %i.arm to i64                 ; 2 uses
  %i.aro = sub nuw i64 %i.arl, %i.arn
  %i.arp = icmp ugt i64 %i.aro, 1
  br i1 %i.arp, label %bb.jv, label %bb.jt, !prof !16

bb.jt:                                            ; preds = %bb.js
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45, !noalias !5706
  unreachable

bb.ju:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter23if_will_fill_then_flush17haf827fddea62ef1cE.exit.i68.i
  %i.arq = extractvalue { i64, ptr } %i.arh, 1
  br label %bb.kf

bb.jv:                                            ; preds = %bb.js
  %i.arr = load ptr, ptr %i.aqz, align 8, !alias.scope !5705, !noalias !5707, !nonnull !11, !align !13, !noundef !11
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.arn ; 2 uses
  %i.art = shl nuw i8 %i.aqy, 1
  %i.aru = zext i8 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @134, i64 %i.aru ; 2 uses
  %i.arw = load i8, ptr %i.arv, align 1, !noalias !5706, !noundef !11
  store i8 %i.arw, ptr %i.ars, align 1, !noalias !5706
  %i.arx = getelementptr inbounds nuw i8, ptr %i.ars, i64 1
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arv, i64 1
  %i.arz = load i8, ptr %i.ary, align 1, !noalias !5706, !noundef !11
  store i8 %i.arz, ptr %i.arx, align 1, !noalias !5706
  %i.asa = add i16 %i.arm, 2
  store i16 %i.asa, ptr %i.ara, align 8, !alias.scope !5705, !noalias !5707
  call void @llvm.experimental.noalias.scope.decl(metadata !5708), !noalias !5428
  %i.asb = load ptr, ptr %.val98.i, align 8, !alias.scope !5708, !noalias !5691, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 8 ; 2 uses
  %i.asd = load i64, ptr %i.asc, align 8, !noalias !5709, !noundef !11
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asb, i64 16 ; 3 uses
  %i.asf = load i16, ptr %i.ase, align 8, !noalias !5709, !noundef !11 ; 2 uses
  %i.asg = zext i16 %i.asf to i64                 ; 2 uses
  %i.ash = icmp eq i64 %i.asd, %i.asg
  br i1 %i.ash, label %bb.jw, label %.thread48.i, !prof !23

bb.jw:                                            ; preds = %bb.jv
  %i.asi = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val98.i), !noalias !5691 ; 2 uses
  %i.asj = extractvalue { i64, ptr } %i.asi, 0
  %i.ask = trunc nuw i64 %i.asj to i1
  br i1 %i.ask, label %bb.jz, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %.pre35.i = load i64, ptr %i.asc, align 8, !alias.scope !5710, !noalias !5709
  %.pre36.i = load i16, ptr %i.ase, align 8, !alias.scope !5710, !noalias !5709 ; 2 uses
  %.pre38.i = zext i16 %.pre36.i to i64           ; 2 uses
  %i.asl = icmp eq i64 %.pre35.i, %.pre38.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5710), !noalias !5428
  br i1 %i.asl, label %bb.jy, label %.thread48.i, !prof !67

bb.jy:                                            ; preds = %bb.jx
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !5711
  unreachable

bb.jz:                                            ; preds = %bb.jw
  %i.asm = extractvalue { i64, ptr } %i.asi, 1
  br label %bb.kf

end_hunk_1
begin_hunk_2_@"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$6format17hba04c3c00b5ddfc4E":bb.a
  %i.bkv = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cu, ptr noundef nonnull %i.bku), !noalias !5856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !5856
  br label %.thread2479

bb.pk:                                            ; preds = %bb.fo, %bb.fm
  %.pn3.i.ph.i747 = phi i16 [ %.sroa.09.0.extract.trunc.i.i.i746, %bb.fo ], [ %i.afh, %bb.fm ]
  %i.bkw = sext i16 %.pn3.i.ph.i747 to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.pl:                                            ; preds = %bb.fx, %bb.fw, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !5607
  %i.bkx = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !5858
  store i8 1, ptr %i.cv, align 8, !noalias !5858
  store i8 103, ptr %.sroa.5.0..sroa_idx2.i375, align 1, !noalias !5859
  store i8 0, ptr %.sroa.61179.1..sroa.5.0..sroa_idx2.i375.sroa_idx, align 2, !noalias !5859
  %i.bky = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cv, ptr noundef nonnull %i.bkx), !noalias !5858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !5858
  br label %.thread2479

bb.pm:                                            ; preds = %bb.fu, %bb.fs
  %.pn3.i.ph.i741 = phi i16 [ %.sroa.09.0.extract.trunc.i.i.i, %bb.fu ], [ %i.aft, %bb.fs ]
  %i.bkz = srem i16 %.pn3.i.ph.i741, 100
  %i.bla = sext i16 %i.bkz to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.pn:                                            ; preds = %bb.fy
  %i.blb = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !5860
  store i8 1, ptr %i.cw, align 8, !noalias !5860
  store i8 72, ptr %.sroa.5.0..sroa_idx2.i363, align 1, !noalias !5861
  store i8 0, ptr %.sroa.61200.1..sroa.5.0..sroa_idx2.i363.sroa_idx, align 2, !noalias !5861
  %i.blc = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cw, ptr noundef nonnull %i.blb), !noalias !5860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !5860
  br label %.thread2479

bb.po:                                            ; preds = %bb.fy
  %i.bld = getelementptr inbounds nuw i8, ptr %.val80.i, i64 103
  %i.ble = load i8, ptr %i.bld, align 1, !noalias !5612
  %i.blf = sext i8 %i.ble to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.pp:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !5429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !5862
  store i8 1, ptr %i.cx, align 8, !noalias !5862
  store i8 98, ptr %.sroa.5.0..sroa_idx2.i351, align 1, !noalias !5863
  store i8 0, ptr %.sroa.61216.1..sroa.5.0..sroa_idx2.i351.sroa_idx, align 2, !noalias !5863
  %i.blg = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cx, ptr noundef %i.agh), !noalias !5862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !5862
  br label %.thread2479

bb.pq:                                            ; preds = %bb.fz
  %.sroa.41907.0.copyload = load i64, ptr %.sroa.41907.0..sroa_idx, align 8, !noalias !5429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !5429
  br label %.thread2726

bb.pr:                                            ; preds = %bb.ga
  %i.blh = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !5864
  store i8 1, ptr %i.cy, align 8, !noalias !5864
  store i8 72, ptr %.sroa.5.0..sroa_idx2.i339, align 1, !noalias !5865
  store i8 0, ptr %.sroa.61237.1..sroa.5.0..sroa_idx2.i339.sroa_idx, align 2, !noalias !5865
  %i.bli = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cy, ptr noundef nonnull %i.blh), !noalias !5864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !5864
  br label %.thread2479

bb.ps:                                            ; preds = %bb.ga
  %i.blj = getelementptr inbounds nuw i8, ptr %.val81.i, i64 103
  %i.blk = load i8, ptr %i.blj, align 1, !noalias !5613 ; 4 uses
  %i.bll = icmp eq i8 %i.blk, 0
  %i.blm = icmp sgt i8 %i.blk, 12
  %i.bln = add nsw i8 %i.blk, -12
  %spec.select.i732 = select i1 %i.blm, i8 %i.bln, i8 %i.blk
  %.sroa.0.0.i733 = select i1 %i.bll, i8 12, i8 %spec.select.i732
  %i.blo = sext i8 %.sroa.0.0.i733 to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.pt:                                            ; preds = %bb.gh, %bb.gg, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !5615
  %i.blp = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !5866
  store i8 1, ptr %i.cz, align 8, !noalias !5866
  store i8 106, ptr %.sroa.5.0..sroa_idx2.i327, align 1, !noalias !5867
  store i8 0, ptr %.sroa.61258.1..sroa.5.0..sroa_idx2.i327.sroa_idx, align 2, !noalias !5867
  %i.blq = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cz, ptr noundef nonnull %i.blp), !noalias !5866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !5866
  br label %.thread2479

bb.pu:                                            ; preds = %_ZN4jiff5civil4date4Date11day_of_year17h4d1cd4ba0f4f11a2E.exit.i.i.i723, %bb.gb
  %.pn3.i.ph.i726 = phi i16 [ %i.ahe, %_ZN4jiff5civil4date4Date11day_of_year17h4d1cd4ba0f4f11a2E.exit.i.i.i723 ], [ %i.ago, %bb.gb ]
  %i.blr = sext i16 %.pn3.i.ph.i726 to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.pv:                                            ; preds = %bb.gi
  %i.bls = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !5868
  store i8 1, ptr %i.da, align 8, !noalias !5868
  store i8 107, ptr %.sroa.5.0..sroa_idx2.i315, align 1, !noalias !5869
  store i8 0, ptr %.sroa.61279.1..sroa.5.0..sroa_idx2.i315.sroa_idx, align 2, !noalias !5869
  %i.blt = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.da, ptr noundef nonnull %i.bls), !noalias !5868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !5868
  br label %.thread2479

bb.pw:                                            ; preds = %bb.gi
  %i.blu = getelementptr inbounds nuw i8, ptr %.val83.i, i64 103
  %i.blv = load i8, ptr %i.blu, align 1, !noalias !5620
  %i.blw = sext i8 %i.blv to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.px:                                            ; preds = %bb.gj
  %i.blx = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !5870
  store i8 1, ptr %i.db, align 8, !noalias !5870
  store i8 108, ptr %.sroa.5.0..sroa_idx2.i303, align 1, !noalias !5871
  store i8 0, ptr %.sroa.61300.1..sroa.5.0..sroa_idx2.i303.sroa_idx, align 2, !noalias !5871
  %i.bly = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.db, ptr noundef nonnull %i.blx), !noalias !5870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !5870
  br label %.thread2479

bb.py:                                            ; preds = %bb.gj
  %i.blz = getelementptr inbounds nuw i8, ptr %.val84.i, i64 103
  %i.bma = load i8, ptr %i.blz, align 1, !noalias !5621 ; 4 uses
  %i.bmb = icmp eq i8 %i.bma, 0
  %i.bmc = icmp sgt i8 %i.bma, 12
  %i.bmd = add nsw i8 %i.bma, -12
  %spec.select.i711 = select i1 %i.bmc, i8 %i.bmd, i8 %i.bma
  %.sroa.0.0.i712 = select i1 %i.bmb, i8 12, i8 %spec.select.i711
  %i.bme = sext i8 %.sroa.0.0.i712 to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.pz:                                            ; preds = %bb.gk
  %i.bmf = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !5872
  store i8 1, ptr %i.dc, align 8, !noalias !5872
  store i8 77, ptr %.sroa.5.0..sroa_idx2.i291, align 1, !noalias !5873
  store i8 0, ptr %.sroa.61321.1..sroa.5.0..sroa_idx2.i291.sroa_idx, align 2, !noalias !5873
  %i.bmg = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dc, ptr noundef nonnull %i.bmf), !noalias !5872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !5872
  br label %.thread2479

bb.qa:                                            ; preds = %bb.gk
  %i.bmh = getelementptr inbounds nuw i8, ptr %.val85.i, i64 105
  %i.bmi = load i8, ptr %i.bmh, align 1, !noalias !5622
  %i.bmj = sext i8 %i.bmi to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.qb:                                            ; preds = %bb.gp, %bb.go, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !5624
  %i.bmk = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !5874
  store i8 1, ptr %i.dd, align 8, !noalias !5874
  store i8 109, ptr %.sroa.5.0..sroa_idx2.i279, align 1, !noalias !5875
  store i8 0, ptr %.sroa.61342.1..sroa.5.0..sroa_idx2.i279.sroa_idx, align 2, !noalias !5875
  %i.bml = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dd, ptr noundef nonnull %i.bmk), !noalias !5874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !5874
  br label %.thread2479

bb.qc:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h33508de9ca379c09E.exit.i", %bb.gl
  %.pn3.i3.i700 = phi i8 [ %.sroa.63.0.copyload.i.i.i699, %"_ZN4core6option15Option$LT$T$GT$7or_else17h33508de9ca379c09E.exit.i" ], [ %i.ahw, %bb.gl ]
  %i.bmm = sext i8 %.pn3.i3.i700 to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.qd:                                            ; preds = %bb.gx
  %i.bmn = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !5876
  store i8 1, ptr %i.de, align 8, !noalias !5876
  store i8 80, ptr %.sroa.5.0..sroa_idx2.i267, align 1, !noalias !5877
  store i8 0, ptr %.sroa.61404.1..sroa.5.0..sroa_idx2.i267.sroa_idx, align 2, !noalias !5877
  %i.bmo = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.de, ptr noundef nonnull %i.bmn), !noalias !5876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !5876
  br label %.thread2479

bb.qe:                                            ; preds = %bb.hc
  %i.bmp = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !5878
  store i8 1, ptr %i.df, align 8, !noalias !5878
  store i8 112, ptr %.sroa.5.0..sroa_idx2.i255, align 1, !noalias !5879
  store i8 0, ptr %.sroa.61424.1..sroa.5.0..sroa_idx2.i255.sroa_idx, align 2, !noalias !5879
  %i.bmq = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.df, ptr noundef nonnull %i.bmp), !noalias !5878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !5878
  br label %.thread2479

bb.qf:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !5429
  store i8 81, ptr %i.fx, align 1, !noalias !5429
  store i8 0, ptr %i.dy, align 8, !noalias !5429
  %i.bmr = call noundef ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.dy), !noalias !5428, !inline_history !4357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !5429
  br label %.thread2479

bb.qg:                                            ; preds = %bb.hk
  %.val107.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %.val108.i = load ptr, ptr %i.ek, align 8, !alias.scope !5427, !noalias !5428 ; 5 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %.val107.i, i64 40
  %i.bmt = load i64, ptr %i.bms, align 8, !range !15, !noalias !5880, !noundef !11
  %.not.i235 = icmp eq i64 %i.bmt, -9223372036854775808
  br i1 %.not.i235, label %bb.qk, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val108.i) ], !noalias !5428
  %i.bmu = getelementptr inbounds nuw i8, ptr %.val107.i, i64 48
  %i.bmv = load ptr, ptr %i.bmu, align 8, !noalias !5880, !nonnull !11, !noundef !11 ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %.val107.i, i64 56
  %i.bmx = load i64, ptr %i.bmw, align 8, !noalias !5880, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5881), !noalias !5428
  %i.bmy = load ptr, ptr %.val108.i, align 8, !alias.scope !5881, !noalias !5882, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 8 ; 2 uses
  %i.bna = load i64, ptr %i.bmz, align 8, !noalias !5883, !noundef !11
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmy, i64 16 ; 3 uses
  %i.bnc = load i16, ptr %i.bnb, align 8, !noalias !5883, !noundef !11 ; 2 uses
  %i.bnd = zext i16 %i.bnc to i64                 ; 2 uses
  %i.bne = sub i64 %i.bna, %i.bnd
  %i.bnf = icmp ugt i64 %i.bmx, %i.bne
  br i1 %i.bnf, label %bb.qi, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread4.i236, !prof !23

bb.qi:                                            ; preds = %bb.qh
  %i.bng = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val108.i), !noalias !5882 ; 2 uses
  %i.bnh = extractvalue { i64, ptr } %i.bng, 0
  %i.bni = trunc nuw i64 %i.bnh to i1
  br i1 %i.bni, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i241, label %bb.qj

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread4.i236: ; preds = %bb.qj, %bb.qh
  %.pre-phi.i.i237 = phi i64 [ %i.bnq, %bb.qj ], [ %i.bnd, %bb.qh ]
  %i.bnj = phi i16 [ %i.bnp, %bb.qj ], [ %i.bnc, %bb.qh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5884), !noalias !5428
  %i.bnk = load ptr, ptr %i.bmy, align 8, !alias.scope !5884, !noalias !5885, !nonnull !11, !align !13, !noundef !11
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnk, i64 %.pre-phi.i.i237
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bnl, ptr nonnull readonly align 1 %i.bmv, i64 %i.bmx, i1 false), !alias.scope !5886, !noalias !5887
  %i.bnm = trunc i64 %i.bmx to i16
  %i.bnn = add i16 %i.bnj, %i.bnm
  store i16 %i.bnn, ptr %i.bnb, align 8, !alias.scope !5884, !noalias !5885
  br label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$10write_item17he3502e125bb061a5E.exit.thread2474"

bb.qj:                                            ; preds = %bb.qi
  %i.bno = load i64, ptr %i.bmz, align 8, !noalias !5883, !noundef !11
  %i.bnp = load i16, ptr %i.bnb, align 8, !noalias !5883, !noundef !11 ; 2 uses
  %i.bnq = zext i16 %i.bnp to i64                 ; 2 uses
  %i.bnr = sub i64 %i.bno, %i.bnq
  %i.bns = icmp ugt i64 %i.bmx, %i.bnr
  br i1 %i.bns, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i240, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread4.i236

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i240: ; preds = %bb.qj
  %i.bnt = getelementptr inbounds nuw i8, ptr %.val108.i, i64 8
  %i.bnu = load ptr, ptr %i.bnt, align 8, !alias.scope !5881, !noalias !5882, !nonnull !11, !align !13, !noundef !11
  %i.bnv = getelementptr inbounds nuw i8, ptr %.val108.i, i64 16
  %i.bnw = load ptr, ptr %i.bnv, align 8, !alias.scope !5881, !noalias !5882, !nonnull !11, !align !12, !noundef !11
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 24
  %i.bny = load ptr, ptr %i.bnx, align 8, !invariant.load !11, !noalias !5883, !nonnull !11
  %i.bnz = call { i64, ptr } %i.bny(ptr noundef nonnull align 1 %i.bnu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bmv, i64 noundef %i.bmx), !noalias !5888, !inline_history !5229 ; 2 uses
  %i.boa = extractvalue { i64, ptr } %i.bnz, 0
  %i.bob = trunc nuw i64 %i.boa to i1
  br i1 %i.bob, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i241, label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$10write_item17he3502e125bb061a5E.exit.thread2474"

bb.qk:                                            ; preds = %bb.qg
  %i.boc = getelementptr inbounds nuw i8, ptr %.val107.i, i64 72
  %i.bod = load i32, ptr %i.boc, align 8, !range !55, !noalias !5880, !noundef !11
  %i.boe = trunc nuw i32 %i.bod to i1
  br i1 %i.boe, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt7", label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.bof = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 5), !noalias !5880
  br label %bb.qm

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i241: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i240, %bb.qi
  %.pn.i242 = phi { i64, ptr } [ %i.bnz, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i240 ], [ %i.bng, %bb.qi ]
  %.sroa.4.0.i3.i243 = extractvalue { i64, ptr } %.pn.i242, 1
  br label %bb.qm

bb.qm:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i241, %bb.ql
  %.sroa.01428.0 = phi ptr [ %.sroa.4.0.i3.i243, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i241 ], [ %i.bof, %bb.ql ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !5889
  store i8 1, ptr %i.dg, align 8, !noalias !5889
  store i8 81, ptr %.sroa.5.0..sroa_idx2.i231, align 1, !noalias !5890
  store i8 0, ptr %.sroa.61434.1..sroa.5.0..sroa_idx2.i231.sroa_idx, align 2, !noalias !5890
  %i.bog = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dg, ptr noundef %.sroa.01428.0), !noalias !5889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !5889
  br label %.thread2479

bb.qn:                                            ; preds = %bb.hk
  %.val109.i = load ptr, ptr %i.en, align 8, !alias.scope !5427, !noalias !5428, !nonnull !11, !align !12, !noundef !11 ; 5 uses
  %.val110.i = load ptr, ptr %i.ek, align 8, !alias.scope !5427, !noalias !5428 ; 5 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %.val109.i, i64 40
  %i.boi = load i64, ptr %i.boh, align 8, !range !15, !noalias !5891, !noundef !11
  %.not.i220 = icmp eq i64 %i.boi, -9223372036854775808
  br i1 %.not.i220, label %bb.qr, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val110.i) ], !noalias !5428
  %i.boj = getelementptr inbounds nuw i8, ptr %.val109.i, i64 48
  %i.bok = load ptr, ptr %i.boj, align 8, !noalias !5891, !nonnull !11, !noundef !11 ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %.val109.i, i64 56
  %i.bom = load i64, ptr %i.bol, align 8, !noalias !5891, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5892), !noalias !5428
  %i.bon = load ptr, ptr %.val110.i, align 8, !alias.scope !5892, !noalias !5893, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 8 ; 2 uses
  %i.bop = load i64, ptr %i.boo, align 8, !noalias !5894, !noundef !11
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bon, i64 16 ; 3 uses
  %i.bor = load i16, ptr %i.boq, align 8, !noalias !5894, !noundef !11 ; 2 uses
  %i.bos = zext i16 %i.bor to i64                 ; 2 uses
  %i.bot = sub i64 %i.bop, %i.bos
  %i.bou = icmp ugt i64 %i.bom, %i.bot
  br i1 %i.bou, label %bb.qp, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread4.i, !prof !23

bb.qp:                                            ; preds = %bb.qo
  %i.bov = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.val110.i), !noalias !5893 ; 2 uses
  %i.bow = extractvalue { i64, ptr } %i.bov, 0
  %i.box = trunc nuw i64 %i.bow to i1
  br i1 %i.box, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i, label %bb.qq

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread4.i: ; preds = %bb.qq, %bb.qo
  %.pre-phi.i.i = phi i64 [ %i.bpf, %bb.qq ], [ %i.bos, %bb.qo ]
  %i.boy = phi i16 [ %i.bpe, %bb.qq ], [ %i.bor, %bb.qo ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5895), !noalias !5428
  %i.boz = load ptr, ptr %i.bon, align 8, !alias.scope !5895, !noalias !5896, !nonnull !11, !align !13, !noundef !11
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 %.pre-phi.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bpa, ptr nonnull readonly align 1 %i.bok, i64 %i.bom, i1 false), !alias.scope !5897, !noalias !5898
  %i.bpb = trunc i64 %i.bom to i16
  %i.bpc = add i16 %i.boy, %i.bpb
  store i16 %i.bpc, ptr %i.boq, align 8, !alias.scope !5895, !noalias !5896
  br label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$10write_item17he3502e125bb061a5E.exit.thread2474"

bb.qq:                                            ; preds = %bb.qp
  %i.bpd = load i64, ptr %i.boo, align 8, !noalias !5894, !noundef !11
  %i.bpe = load i16, ptr %i.boq, align 8, !noalias !5894, !noundef !11 ; 2 uses
  %i.bpf = zext i16 %i.bpe to i64                 ; 2 uses
  %i.bpg = sub i64 %i.bpd, %i.bpf
  %i.bph = icmp ugt i64 %i.bom, %i.bpg
  br i1 %i.bph, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread4.i

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i: ; preds = %bb.qq
  %i.bpi = getelementptr inbounds nuw i8, ptr %.val110.i, i64 8
  %i.bpj = load ptr, ptr %i.bpi, align 8, !alias.scope !5892, !noalias !5893, !nonnull !11, !align !13, !noundef !11
  %i.bpk = getelementptr inbounds nuw i8, ptr %.val110.i, i64 16
  %i.bpl = load ptr, ptr %i.bpk, align 8, !alias.scope !5892, !noalias !5893, !nonnull !11, !align !12, !noundef !11
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 24
  %i.bpn = load ptr, ptr %i.bpm, align 8, !invariant.load !11, !noalias !5894, !nonnull !11
  %i.bpo = call { i64, ptr } %i.bpn(ptr noundef nonnull align 1 %i.bpj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bok, i64 noundef %i.bom), !noalias !5899, !inline_history !5246 ; 2 uses
  %i.bpp = extractvalue { i64, ptr } %i.bpo, 0
  %i.bpq = trunc nuw i64 %i.bpp to i1
  br i1 %i.bpq, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i, label %"_ZN4jiff3fmt7strtime7printer18Formatter$LT$L$GT$10write_item17he3502e125bb061a5E.exit.thread2474"

bb.qr:                                            ; preds = %bb.qn
  %i.bpr = getelementptr inbounds nuw i8, ptr %.val109.i, i64 72
  %i.bps = load i32, ptr %i.bpr, align 8, !range !55, !noalias !5891, !noundef !11
  %i.bpt = trunc nuw i32 %i.bps to i1
  br i1 %i.bpt, label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt7", label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.bpu = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 5), !noalias !5891
  br label %bb.qt

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i, %bb.qp
  %.pn.i = phi { i64, ptr } [ %i.bpo, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i ], [ %i.bov, %bb.qp ]
  %.sroa.4.0.i3.i = extractvalue { i64, ptr } %.pn.i, 1
  br label %bb.qt

bb.qt:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i, %bb.qs
  %.sroa.01438.0 = phi ptr [ %.sroa.4.0.i3.i, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i ], [ %i.bpu, %bb.qs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !5900
  store i8 1, ptr %i.dh, align 8, !noalias !5900
  store i8 81, ptr %.sroa.5.0..sroa_idx2.i216, align 1, !noalias !5901
  store i8 1, ptr %.sroa.61444.1..sroa.5.0..sroa_idx2.i216.sroa_idx, align 2, !noalias !5901
  %i.bpv = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dh, ptr noundef %.sroa.01438.0), !noalias !5900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !5900
  br label %.thread2479

bb.qu:                                            ; preds = %bb.hn, %bb.ho, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !5635
  %i.bpw = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !5902
  store i8 1, ptr %i.di, align 8, !noalias !5902
  store i8 113, ptr %.sroa.5.0..sroa_idx2.i204, align 1, !noalias !5903
  store i8 0, ptr %.sroa.61465.1..sroa.5.0..sroa_idx2.i204.sroa_idx, align 2, !noalias !5903
  %i.bpx = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.di, ptr noundef nonnull %i.bpw), !noalias !5902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !5902
  br label %.thread2479

bb.qv:                                            ; preds = %bb.iy
  %i.bpy = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 3), !noalias !5684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !5904
  store i8 1, ptr %i.dj, align 8, !noalias !5904
  store i8 83, ptr %.sroa.5.0..sroa_idx2.i192, align 1, !noalias !5905
  store i8 0, ptr %.sroa.61506.1..sroa.5.0..sroa_idx2.i192.sroa_idx, align 2, !noalias !5905
  %i.bpz = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dj, ptr noundef nonnull %i.bpy), !noalias !5904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !5904
  br label %.thread2479

bb.qw:                                            ; preds = %bb.iy
  %i.bqa = getelementptr inbounds nuw i8, ptr %.val95.i, i64 107
  %i.bqb = load i8, ptr %i.bqa, align 1, !noalias !5684
  %i.bqc = sext i8 %i.bqb to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.qx:                                            ; preds = %bb.jc, %bb.jb, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !5685
  %i.bqd = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 1), !noalias !5685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !5906
  store i8 1, ptr %i.dk, align 8, !noalias !5906
  store i8 115, ptr %.sroa.5.0..sroa_idx2.i180, align 1, !noalias !5907
  store i8 0, ptr %.sroa.61527.1..sroa.5.0..sroa_idx2.i180.sroa_idx, align 2, !noalias !5907
  %i.bqe = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dk, ptr noundef nonnull %i.bqd), !noalias !5906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !5906
  br label %.thread2479

bb.qy:                                            ; preds = %bb.iz
  %i.bqf = load i64, ptr %i.fv, align 8, !noalias !5685, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !5685
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.qz:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h7b7795206767cdd0E.exit.thread.i", %bb.kw
  %i.bqg = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !5908
  store i8 1, ptr %i.dl, align 8, !noalias !5908
  store i8 85, ptr %.sroa.5.0..sroa_idx2.i168, align 1, !noalias !5909
  store i8 0, ptr %.sroa.61574.1..sroa.5.0..sroa_idx2.i168.sroa_idx, align 2, !noalias !5909
  %i.bqh = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dl, ptr noundef nonnull %i.bqg), !noalias !5908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !5908
  br label %.thread2479

bb.ra:                                            ; preds = %bb.lc, %bb.lb, %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !5734
  %i.bqi = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !5910
  store i8 1, ptr %i.dm, align 8, !noalias !5910
  store i8 117, ptr %.sroa.5.0..sroa_idx2.i156, align 1, !noalias !5911
  store i8 0, ptr %.sroa.61595.1..sroa.5.0..sroa_idx2.i156.sroa_idx, align 2, !noalias !5911
  %i.bqj = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dm, ptr noundef nonnull %i.bqi), !noalias !5910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !5910
  br label %.thread2479

bb.rb:                                            ; preds = %bb.kz, %bb.kx
  %.sroa.0.0.i.ph.i = phi i8 [ %i.axq, %bb.kz ], [ %i.awq, %bb.kx ]
  %i.bqk = zext nneg i8 %.sroa.0.0.i.ph.i to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.rc:                                            ; preds = %bb.lh, %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !5740
  %i.bql = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !5912
  store i8 1, ptr %i.dn, align 8, !noalias !5912
  store i8 86, ptr %.sroa.5.0..sroa_idx2.i144, align 1, !noalias !5913
  store i8 0, ptr %.sroa.61616.1..sroa.5.0..sroa_idx2.i144.sroa_idx, align 2, !noalias !5913
  %i.bqm = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dn, ptr noundef nonnull %i.bql), !noalias !5912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !5912
  br label %.thread2479

bb.rd:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hf6e864e43f43f3e4E.exit.thread4.i", %bb.ld
  %.pn3.i3.i = phi i8 [ %.sroa.411.0.extract.trunc.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf6e864e43f43f3e4E.exit.thread4.i" ], [ %i.axz, %bb.ld ]
  %i.bqn = sext i8 %.pn3.i3.i to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.re:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hd5fdf000696a4845E.exit.thread.i", %bb.lx
  %i.bqo = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !5914
  store i8 1, ptr %i.do, align 8, !noalias !5914
  store i8 87, ptr %.sroa.5.0..sroa_idx2.i132, align 1, !noalias !5915
  store i8 0, ptr %.sroa.61637.1..sroa.5.0..sroa_idx2.i132.sroa_idx, align 2, !noalias !5915
  %i.bqp = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.do, ptr noundef nonnull %i.bqo), !noalias !5914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !5914
  br label %.thread2479

bb.rf:                                            ; preds = %bb.mf, %bb.me, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !5757
  %i.bqq = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !5916
  store i8 1, ptr %i.dp, align 8, !noalias !5916
  store i8 119, ptr %.sroa.5.0..sroa_idx2.i120, align 1, !noalias !5917
  store i8 0, ptr %.sroa.61658.1..sroa.5.0..sroa_idx2.i120.sroa_idx, align 2, !noalias !5917
  %i.bqr = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dp, ptr noundef nonnull %i.bqq), !noalias !5916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !5916
  br label %.thread2479

bb.rg:                                            ; preds = %bb.mc, %bb.ma
  %.sroa.0.0.i.i = phi i8 [ %i.bay, %bb.ma ], [ %i.bby, %bb.mc ] ; 2 uses
  %cond.i = icmp eq i8 %.sroa.0.0.i.i, 7
  %narrow.i527 = select i1 %cond.i, i8 0, i8 %.sroa.0.0.i.i
  %spec.select.i = zext nneg i8 %narrow.i527 to i64
  br label %"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context17hbd4e58155498262eE.exit833.thread.thread2942.jt4"

bb.rh:                                            ; preds = %bb.mw, %bb.mv, %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !5789
  %i.bqs = call noundef ptr @"_ZN4jiff5error3fmt7strtime114_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..FormatError$GT$$u20$for$u20$jiff..error..Error$GT$4from17hab7ffdf295e4173fE"(i8 noundef 0), !noalias !5788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !5918
  store i8 1, ptr %i.dq, align 8, !noalias !5918
  store i8 89, ptr %.sroa.5.0..sroa_idx2.i108, align 1, !noalias !5919
  store i8 0, ptr %.sroa.61699.1..sroa.5.0..sroa_idx2.i108.sroa_idx, align 2, !noalias !5919
  %i.bqt = call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h5129590d88a967d8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dq, ptr noundef nonnull %i.bqs), !noalias !5918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !5918
  br label %.thread2479

bb.ri:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hd974f428aea504dfE.exit.i", %bb.ms
end_hunk_2
begin_hunk_3_@_ZN4jiff3fmt8friendly6parser10SpanParser5parse17hcd2ed01925437758E:bb.a
  %i.sg = icmp eq i8 %.pre62.i.pre.i, 101
  br i1 %i.sg, label %.thread12.thread29.i.thread.i, label %.thread16.i.i.thread

.thread12.thread30.i.i:                           ; preds = %.thread12.i..thread12..thread12.thread30_crit_edge.i_crit_edge.i, %.thread10.thread88.i.i
  %i.sh = phi i8 [ %.pre60.i.pre.i, %.thread12.i..thread12..thread12.thread30_crit_edge.i_crit_edge.i ], [ %i.qg, %.thread10.thread88.i.i ] ; 2 uses
  switch i8 %i.sh, label %.thread14.i.i.thread17 [
    i8 111, label %.thread12.thread30.i.i..thread12.thread30.i.thread668.i_crit_edge
    i8 105, label %.thread12.thread30.i.thread665.i
  ]

.thread12.thread30.i.i..thread12.thread30.i.thread668.i_crit_edge: ; preds = %.thread12.thread30.i.i
  %.phi.trans.insert308 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %.pre309 = load i8, ptr %.phi.trans.insert308, align 1, !alias.scope !6199, !noalias !6200
  br label %.thread12.thread30.i.thread668.i

.thread12.thread31.i.i:                           ; preds = %.thread12.i..thread12..thread12.thread31_crit_edge.i_crit_edge.i, %.thread10.thread103.i.i, %bb.dl
  %i.si = phi i8 [ %.pre58.i.pre.i, %.thread12.i..thread12..thread12.thread31_crit_edge.i_crit_edge.i ], [ %.pre536.i, %.thread10.thread103.i.i ], [ %i.mo, %bb.dl ]
  %i.sj = icmp eq i8 %i.si, 114
  br i1 %i.sj, label %bb.eq, label %.thread16.thread37.i.i

.thread12.thread32.i.i:                           ; preds = %.thread12.i.i
  %.phi.trans.insert55.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 1
  %.pre56.i.pre.i = load i8, ptr %.phi.trans.insert55.i.phi.trans.insert.i, align 1, !alias.scope !6199, !noalias !6200
  %i.sk = icmp eq i8 %.pre56.i.pre.i, 97
  br i1 %i.sk, label %.thread12.thread32.i.thread.i, label %.thread16.i.i.thread56

.thread12.thread123.i.thread.i.thread:            ; preds = %bb.dm, %.thread8.thread25.i.thread.i.thread
  br label %.thread16.thread34.i.i

.thread12.thread123.i.thread.i:                   ; preds = %.thread12.thread123.i.i
  %.phi.trans.insert288 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %.pre289 = load i8, ptr %.phi.trans.insert288, align 1, !alias.scope !6199, !noalias !6200
  %i.sl = icmp eq i8 %.pre289, 115
  br i1 %i.sl, label %.thread16.thread34.i.i, label %.thread299.i

bb.eo:                                            ; preds = %.thread12.thread28.i.i
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %i.sn = load i8, ptr %i.sm, align 1, !alias.scope !6199, !noalias !6200, !noundef !11
  %i.so = icmp eq i8 %i.sn, 115
  br i1 %i.so, label %.thread16.thread34.i.i, label %.thread14.i.i.thread21

bb.ep:                                            ; preds = %.thread12.thread116.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %i.sq = load i8, ptr %i.sp, align 1, !alias.scope !6199, !noalias !6200, !noundef !11
  %i.sr = icmp eq i8 %i.sq, 115
  %spec.select492 = select i1 %i.sr, i64 3, i64 2
  br label %.thread16.thread34.i.i

.thread12.thread29.i.thread.i:                    ; preds = %.thread12.thread29.i.i
  %.phi.trans.insert294 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %.pre295 = load i8, ptr %.phi.trans.insert294, align 1, !alias.scope !6199, !noalias !6200
  %i.ss = icmp eq i8 %.pre295, 99
  br i1 %i.ss, label %.thread16.thread34.i.i, label %.thread16.i.i.thread

.thread12.thread30.i.thread668.i:                 ; preds = %bb.cx, %.thread12.thread30.i.i..thread12.thread30.i.thread668.i_crit_edge, %.thread8.thread26.i.thread620.i
  %i.st = phi i8 [ %.pre309, %.thread12.thread30.i.i..thread12.thread30.i.thread668.i_crit_edge ], [ %.pre305, %.thread8.thread26.i.thread620.i ], [ %i.kk, %bb.cx ]
  %i.su = icmp eq i8 %i.st, 115
  br i1 %i.su, label %.thread16.thread34.i.i, label %.thread14.i.i.thread17.thread396

.thread12.thread30.i.thread665.i:                 ; preds = %.thread12.thread30.i.i
  %.phi.trans.insert320 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %.pre321 = load i8, ptr %.phi.trans.insert320, align 1, !alias.scope !6199, !noalias !6200
  %i.sv = icmp eq i8 %.pre321, 110
  br i1 %i.sv, label %.thread16.thread34.i.i, label %.thread16.thread36.i.i

bb.eq:                                            ; preds = %.thread12.thread31.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %i.sx = load i8, ptr %i.sw, align 1, !alias.scope !6199, !noalias !6200, !noundef !11
  %i.sy = icmp eq i8 %i.sx, 115
  %spec.select493 = select i1 %i.sy, i64 3, i64 2
  br label %.thread16.thread34.i.i

.thread12.thread32.i.thread.i:                    ; preds = %.thread12.thread32.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !alias.scope !6199, !noalias !6200
  %i.sz = icmp eq i8 %.pre, 121
  br i1 %i.sz, label %.thread16.thread34.i.i, label %.thread16.i.i.thread56

.thread14.i.i:                                    ; preds = %bb.en
  switch i8 %.val.i.i.i, label %.thread299.i [
    i8 121, label %.thread14.i.i..thread14.i.i.thread21_crit_edge
    i8 119, label %.thread14.i.i.thread33
    i8 117, label %.thread14.thread.i.i
    i8 110, label %.thread14..thread14.thread40_crit_edge.i.i
    i8 109, label %.thread14.i.i..thread14.i.i.thread17_crit_edge
    i8 104, label %.thread14.i.i.thread29
    i8 115, label %.thread16.i.i.thread
    i8 100, label %.thread16.i.i.thread56
  ]

.thread14.i.i..thread14.i.i.thread17_crit_edge:   ; preds = %.thread14.i.i
  %.phi.trans.insert322 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 1
  %.pre323 = load i8, ptr %.phi.trans.insert322, align 1, !alias.scope !6199, !noalias !6200
  br label %.thread14.i.i.thread17

.thread14.i.i..thread14.i.i.thread21_crit_edge:   ; preds = %.thread14.i.i
  %.phi.trans.insert284 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 1
  %.pre285 = load i8, ptr %.phi.trans.insert284, align 1, !alias.scope !6199, !noalias !6200
  %i.ta = icmp eq i8 %.pre285, 114
  %i.tb = select i1 %i.ta, i64 2, i64 1
  br label %.thread14.i.i.thread21

.thread14..thread14.thread40_crit_edge.i.i:       ; preds = %bb.ba, %.thread2.thread79.i.thread.i, %.thread8.thread87.i.thread.i, %bb.dv, %.thread12.i.i, %.thread14.i.i, %.thread10.thread91.i.thread.i, %.thread10.thread91.i.thread637.i, %.thread10.thread91.i.thread.i.thread, %.thread10.thread91.i.thread637.i.thread
  %.phi.trans.insert65.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 1
  %.pre66.i.i = load i8, ptr %.phi.trans.insert65.i.i, align 1, !alias.scope !6199, !noalias !6200
  br label %.thread14.thread40.i.i

.thread14.i.i.thread21:                           ; preds = %bb.dn, %.thread14.i.i..thread14.i.i.thread21_crit_edge, %.thread10.thread97.i.thread.i, %.thread10.thread97.i.thread.i.thread, %.thread12.thread28.i.i, %bb.eo
  %spec.select.i.i = phi i64 [ %i.tb, %.thread14.i.i..thread14.i.i.thread21_crit_edge ], [ 1, %.thread10.thread97.i.thread.i ], [ 1, %.thread10.thread97.i.thread.i.thread ], [ 1, %.thread12.thread28.i.i ], [ 2, %bb.eo ], [ 1, %bb.dn ]
  br label %.thread16.thread34.i.i

.thread14.i.i.thread33:                           ; preds = %.thread14.i.i
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 1
  %.pre281 = load i8, ptr %.phi.trans.insert280, align 1, !alias.scope !6199, !noalias !6200
  %i.tc = icmp eq i8 %.pre281, 107
  br i1 %i.tc, label %.thread16.thread34.i.i, label %.thread16.thread35.i.i

.thread14.thread.i.i:                             ; preds = %bb.ds, %.thread12.i.i, %.thread14.i.i, %.thread10.thread100.i.thread.i, %.thread10.thread100.i.thread.i.thread
  %.phi.trans.insert67.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 1
  %.pre68.i.i = load i8, ptr %.phi.trans.insert67.i.i, align 1, !alias.scope !6199, !noalias !6200
  %i.td = icmp eq i8 %.pre68.i.i, 115
  br i1 %i.td, label %.thread16.thread34.i.i, label %.thread299.i

.thread14.thread40.i.i:                           ; preds = %.thread14..thread14.thread40_crit_edge.i.i, %.thread10.thread91.i.i
  %i.te = phi i8 [ %.pre66.i.i, %.thread14..thread14.thread40_crit_edge.i.i ], [ %i.qf, %.thread10.thread91.i.i ]
  %i.tf = icmp eq i8 %i.te, 115
  br i1 %i.tf, label %.thread16.thread34.i.i, label %.thread299.i

.thread14.i.i.thread17.thread:                    ; preds = %.thread10.thread88.i.thread646.i, %.thread10.thread88.i.thread646.i.thread, %bb.dz
  br label %.thread16.thread34.i.i

.thread14.i.i.thread17:                           ; preds = %.thread14.i.i..thread14.i.i.thread17_crit_edge, %.thread12.thread30.i.i
  %i.tg = phi i8 [ %.pre323, %.thread14.i.i..thread14.i.i.thread17_crit_edge ], [ %i.sh, %.thread12.thread30.i.i ]
  switch i8 %i.tg, label %.thread16.thread36.i.i [
    i8 115, label %.thread16.thread34.i.i
    i8 111, label %.thread14.i.i.thread17.thread396
  ]

.thread14.i.i.thread29:                           ; preds = %.thread14.i.i
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 1
  %.pre277 = load i8, ptr %.phi.trans.insert276, align 1, !alias.scope !6199, !noalias !6200
  %i.th = icmp eq i8 %.pre277, 114
  br i1 %i.th, label %.thread16.thread34.i.i, label %.thread16.thread37.i.i

.thread14.i.i.thread17.thread396:                 ; preds = %.thread8.thread26.i.thread620.i.thread, %bb.ec, %.thread12.thread30.i.thread668.i, %.thread14.i.i.thread17
  br label %.thread16.thread34.i.i

.thread16.i.i.thread:                             ; preds = %.thread14.i.i, %bb.cg, %.thread6.thread.i.thread.i, %.thread10.thread.i.thread.i, %bb.cf, %.thread6.thread.i.i, %.thread10.thread.i.i, %.thread12.thread29.i.i, %.thread12.thread29.i.thread.i
  br label %.thread16.thread34.i.i

.thread16.i.i.thread56:                           ; preds = %.thread14.i.i, %bb.el, %bb.ej, %.thread12.thread32.i.i, %.thread12.thread32.i.thread.i
  br label %.thread16.thread34.i.i

.thread16.i.i:                                    ; preds = %bb.en
  %switch.tableidx = add i8 %.val.i.i.i, -100     ; 3 uses
  %i.ti = icmp ult i8 %switch.tableidx, 22
  br i1 %i.ti, label %switch.hole_check, label %.thread299.i

.thread16.thread35.i.i:                           ; preds = %.thread12.thread116.i.i, %bb.ek, %.thread14.i.i.thread33
  br label %.thread16.thread34.i.i

.thread16.thread36.i.i:                           ; preds = %.thread8.thread26.i.thread.i.thread373, %.thread8.thread26.i.thread.i.thread375, %bb.ed, %bb.ee, %.thread10.thread88.i.thread.i, %.thread12.thread30.i.thread665.i, %.thread14.i.i.thread17
  br label %.thread16.thread34.i.i

.thread16.thread37.i.i:                           ; preds = %bb.ef, %.thread12.thread31.i.i, %.thread10.thread103.i.thread.i.thread, %.thread10.thread103.i.thread.i, %.thread14.i.i.thread29
  br label %.thread16.thread34.i.i

switch.hole_check:                                ; preds = %.thread16.i.i
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 2654737, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.thread299.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.tj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4jiff3fmt8friendly6parser10SpanParser5parse17hcd2ed01925437758E, i64 %i.tj
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.thread16.thread34.i.i

.thread16.thread34.i.i:                           ; preds = %switch.lookup, %bb.eq, %bb.ep, %bb.em, %.thread10.thread88.i.thread.i.thread385, %.thread10.thread.i.thread.i.thread, %.thread14.i.i.thread17.thread, %.thread12.thread123.i.thread.i.thread, %.thread16.i.i.thread56, %.thread16.i.i.thread, %.thread16.thread37.i.i, %.thread16.thread36.i.i, %.thread16.thread35.i.i, %.thread14.i.i.thread17.thread396, %.thread14.i.i.thread29, %.thread14.i.i.thread17, %.thread14.thread40.i.i, %.thread14.thread.i.i, %.thread14.i.i.thread33, %.thread14.i.i.thread21, %.thread12.thread32.i.thread.i, %.thread12.thread30.i.thread665.i, %.thread12.thread30.i.thread668.i, %.thread12.thread29.i.thread.i, %bb.eo, %.thread12.thread123.i.thread.i, %.thread10.thread103.i.thread.i.thread, %.thread10.thread88.i.thread646.i.thread, %.thread10.thread91.i.thread637.i.thread, %.thread10.thread91.i.thread.i.thread, %.thread10.thread100.i.thread.i.thread, %bb.ek, %.thread10.thread97.i.thread.i.thread, %bb.eh, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.dy, %bb.dx, %bb.du, %bb.dr, %bb.dp, %bb.dm, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cw, %bb.co, %bb.bw, %bb.bp, %bb.ax, %bb.ap
  %.sroa.58.0.i.ph.i.i = phi i64 [ 12, %bb.ap ], [ 11, %bb.bp ], [ 1, %.thread16.thread35.i.i ], [ 12, %bb.ax ], [ 11, %bb.bw ], [ 2, %.thread14.i.i.thread29 ], [ 6, %bb.de ], [ 6, %bb.dc ], [ 6, %bb.da ], [ 6, %bb.cw ], [ 1, %switch.lookup ], [ 7, %bb.co ], [ 5, %bb.ee ], [ 5, %bb.ed ], [ 5, %bb.ec ], [ 5, %bb.eb ], [ 5, %bb.dy ], [ 5, %bb.dx ], [ 5, %bb.du ], [ 5, %bb.dr ], [ 5, %bb.dp ], [ 5, %bb.dm ], [ 6, %bb.dg ], [ 4, %.thread10.thread103.i.thread.i.thread ], [ 2, %.thread14.i.i.thread17.thread ], [ 4, %.thread10.thread88.i.thread646.i.thread ], [ 4, %.thread10.thread91.i.thread637.i.thread ], [ 4, %.thread10.thread91.i.thread.i.thread ], [ %spec.select, %.thread10.thread.i.thread.i.thread ], [ 4, %.thread10.thread100.i.thread.i.thread ], [ 4, %bb.ek ], [ 4, %.thread10.thread97.i.thread.i.thread ], [ 5, %bb.eh ], [ %spec.select493, %bb.eq ], [ 3, %.thread12.thread30.i.thread665.i ], [ 3, %.thread12.thread30.i.thread668.i ], [ 3, %.thread12.thread29.i.thread.i ], [ %spec.select490, %.thread10.thread88.i.thread.i.thread385 ], [ 3, %bb.eo ], [ 3, %.thread12.thread123.i.thread.i ], [ %spec.select491, %bb.em ], [ 2, %.thread14.i.i.thread17 ], [ 2, %.thread14.i.i.thread17.thread396 ], [ 2, %.thread14.thread40.i.i ], [ 2, %.thread14.thread.i.i ], [ 2, %.thread14.i.i.thread33 ], [ %spec.select.i.i, %.thread14.i.i.thread21 ], [ 3, %.thread12.thread32.i.thread.i ], [ %spec.select492, %bb.ep ], [ 1, %.thread16.thread37.i.i ], [ 1, %.thread16.thread36.i.i ], [ 1, %.thread16.i.i.thread ], [ 1, %.thread16.i.i.thread56 ], [ 3, %.thread12.thread123.i.thread.i.thread ] ; 3 uses
  %.sroa.0.0.i.ph.i.i = phi i8 [ 2, %bb.ap ], [ 2, %bb.bp ], [ 7, %.thread16.thread35.i.i ], [ 1, %bb.ax ], [ 1, %bb.bw ], [ 5, %.thread14.i.i.thread29 ], [ 2, %bb.de ], [ 4, %bb.dc ], [ 8, %bb.da ], [ 3, %bb.cw ], [ %switch.load, %switch.lookup ], [ 4, %bb.co ], [ 1, %bb.ee ], [ 2, %bb.ed ], [ 8, %bb.ec ], [ 2, %bb.eb ], [ 0, %bb.dy ], [ 0, %bb.dx ], [ 1, %bb.du ], [ 7, %bb.dr ], [ 9, %bb.dp ], [ 1, %bb.dm ], [ 1, %bb.dg ], [ 5, %.thread10.thread103.i.thread.i.thread ], [ 2, %.thread14.i.i.thread17.thread ], [ 2, %.thread10.thread88.i.thread646.i.thread ], [ 0, %.thread10.thread91.i.thread637.i.thread ], [ 0, %.thread10.thread91.i.thread.i.thread ], [ 3, %.thread10.thread.i.thread.i.thread ], [ 1, %.thread10.thread100.i.thread.i.thread ], [ 7, %bb.ek ], [ 9, %.thread10.thread97.i.thread.i.thread ], [ 5, %bb.eh ], [ 5, %bb.eq ], [ 4, %.thread12.thread30.i.thread665.i ], [ 8, %.thread12.thread30.i.thread668.i ], [ 3, %.thread12.thread29.i.thread.i ], [ 4, %.thread10.thread88.i.thread.i.thread385 ], [ 9, %bb.eo ], [ 1, %.thread12.thread123.i.thread.i ], [ 6, %bb.em ], [ 2, %.thread14.i.i.thread17 ], [ 8, %.thread14.i.i.thread17.thread396 ], [ 0, %.thread14.thread40.i.i ], [ 1, %.thread14.thread.i.i ], [ 7, %.thread14.i.i.thread33 ], [ 9, %.thread14.i.i.thread21 ], [ 6, %.thread12.thread32.i.thread.i ], [ 7, %bb.ep ], [ 5, %.thread16.thread37.i.i ], [ 4, %.thread16.thread36.i.i ], [ 3, %.thread16.i.i.thread ], [ 6, %.thread16.i.i.thread56 ], [ 1, %.thread12.thread123.i.thread.i.thread ]
  %i.tk = icmp ugt i64 %.sroa.58.0.i.ph.i.i, %.sroa.5.03.i.i
  br i1 %i.tk, label %bb.er, label %.thread16.thread34.i.thread.i, !prof !6201

bb.er:                                            ; preds = %.thread16.thread34.i.i
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.58.0.i.ph.i.i, i64 noundef %.sroa.5.03.i.i, i64 noundef %.sroa.5.03.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #45, !noalias !6200
  unreachable

bb.es:                                            ; preds = %_ZN4jiff3fmt4util23parse_temporal_fraction17hb827c766925c883aE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6194
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread

.thread299.i:                                     ; preds = %bb.cr, %.thread8.thread25.i.thread.i, %.thread2.i.i, %.thread.i.i, %bb.ad, %.thread4.i.i, %.thread6.i.i, %.thread8.i.i, %.thread10.i.i, %.thread12.i.i, %.thread14.i.i, %.thread12.thread123.i.thread.i, %.thread12.thread123.i.i, %.thread8.thread25.i.i, %bb.cq, %bb.fl, %.thread14.thread40.i.i, %.thread14.thread.i.i, %.thread10.thread100.i.i, %bb.dk, %bb.ab, %.thread16.i.i, %switch.hole_check, %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i.i", %bb.m
  %i.tl = tail call noundef ptr @"_ZN4jiff5error3fmt8friendly109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..friendly..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h9bc56149224c8055E"(i8 noundef 7, i8 undef), !noalias !6200
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread

.thread16.thread34.i.thread.i:                    ; preds = %.thread16.thread34.i.i, %bb.cu, %bb.ck, %bb.cd, %bb.bi
  %.sroa.0.0.i.ph.i315.i = phi i8 [ %.sroa.0.0.i.ph.i.i, %.thread16.thread34.i.i ], [ 1, %bb.cu ], [ 0, %bb.cd ], [ 3, %bb.ck ], [ 0, %bb.bi ] ; 5 uses
  %.sroa.58.0.i.ph.i314.i = phi i64 [ %.sroa.58.0.i.ph.i.i, %.thread16.thread34.i.i ], [ 6, %bb.cu ], [ 10, %bb.cd ], [ 7, %bb.ck ], [ 11, %bb.bi ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.04.i.i) ]
  %4 = sub nuw i64 %.sroa.5.03.i.i, %.sroa.58.0.i.ph.i314.i ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 %.sroa.58.0.i.ph.i314.i ; 4 uses
  %.not94.i = icmp eq i64 %4, 0
  br i1 %.not94.i, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.thread.i", label %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.i": ; preds = %.thread16.thread34.i.thread.i
  %.val.i102.i = load i8, ptr %5, align 1, !alias.scope !6202, !noalias !6197, !noundef !11
  %i.tm = icmp eq i8 %.val.i102.i, 44
  br i1 %i.tm, label %bb.et, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.thread.i"

bb.et:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6194
  call fastcc void @_ZN4jiff3fmt8friendly6parser10SpanParser20parse_optional_comma17h8c2b2587d495cc02E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %5, i64 noundef %4), !noalias !6197
  %i.tn = load ptr, ptr %i.b, align 8, !noalias !6194, !noundef !11 ; 2 uses
  %i.to = icmp eq ptr %i.tn, null
  %i.tp = load ptr, ptr %i.ae, align 8, !noalias !6194 ; 2 uses
  %.cast.i = ptrtoint ptr %i.tp to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6194
  br i1 %i.to, label %_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread, label %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.thread.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.thread.i": ; preds = %bb.et, %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.i", %.thread16.thread34.i.thread.i
  %.sroa.017.2.i = phi i1 [ true, %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.i" ], [ false, %bb.et ], [ true, %.thread16.thread34.i.thread.i ]
  %.sroa.16.3.i = phi i64 [ %4, %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.i" ], [ %.cast.i, %bb.et ], [ 0, %.thread16.thread34.i.thread.i ] ; 4 uses
  %.sroa.0.3.i = phi ptr [ %5, %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.i" ], [ %i.tn, %bb.et ], [ %5, %.thread16.thread34.i.thread.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6203)
  br i1 %.not.i104.i, label %bb.ev, label %bb.eu, !prof !16

bb.eu:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.thread.i"
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @102, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #45, !noalias !6204
  unreachable

bb.ev:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17he538597e9ebe5e65E.exit.thread.i"
  %i.tq = load i8, ptr %i.ag, align 2, !range !43, !alias.scope !6205, !noalias !6178, !noundef !11 ; 3 uses
  %.not5.i.i = icmp eq i8 %i.tq, 10
  %.not6.i.i = icmp samesign ugt i8 %i.tq, %.sroa.0.0.i.ph.i315.i
  %or.cond.i.i29 = select i1 %.not5.i.i, i1 true, i1 %.not6.i.i
  br i1 %or.cond.i.i29, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  store i8 %.sroa.0.0.i.ph.i315.i, ptr %i.ag, align 2, !alias.scope !6205, !noalias !6178
  %i.tr = load i8, ptr %i.ah, align 1, !range !43, !alias.scope !6205, !noalias !6178, !noundef !11
  %.not7.i.i = icmp eq i8 %i.tr, 10
  br i1 %.not7.i.i, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  store i8 %.sroa.0.0.i.ph.i315.i, ptr %i.ah, align 1, !alias.scope !6205, !noalias !6178
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ev
  %.sroa.44.0.insert.ext.i.i = zext nneg i8 %i.tq to i16
  %.sroa.44.0.insert.shift.i.i = shl nuw nsw i16 %.sroa.44.0.insert.ext.i.i, 8
  %.sroa.03.0.insert.ext.i.i = zext nneg i8 %.sroa.0.0.i.ph.i315.i to i16
  %.sroa.03.0.insert.insert.i.i = or disjoint i16 %.sroa.44.0.insert.shift.i.i, %.sroa.03.0.insert.ext.i.i
  %i.ts = tail call noundef ptr @"_ZN4jiff5error3fmt4util105_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..util..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h87106a6a7216d866E"(i16 %.sroa.03.0.insert.insert.i.i), !noalias !6204
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread

bb.ez:                                            ; preds = %bb.ex, %bb.ew
  %i.tt = zext nneg i8 %.sroa.0.0.i.ph.i315.i to i64
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.tt
  store i64 %.sroa.018.0443.i, ptr %i.tu, align 8, !alias.scope !6205, !noalias !6178
  %i.tv = load i8, ptr %i.aj, align 8, !range !21, !alias.scope !6205, !noalias !6178, !noundef !11
  %i.tw = icmp ne i64 %.sroa.018.0443.i, 0
  %i.tx = zext i1 %i.tw to i8
  %.sroa.02.0.i105.i = or i8 %i.tv, %i.tx
  store i8 %.sroa.02.0.i105.i, ptr %i.aj, align 8, !alias.scope !6205, !noalias !6178
  br i1 %.sroa.034.065.i, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6206)
  %i.ty = icmp ult i32 %.sroa.7.064.i, 1000000000
  br i1 %i.ty, label %bb.fc, label %bb.fb, !prof !16

bb.fb:                                            ; preds = %bb.fa
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @99, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #45, !noalias !6207
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.tz = load i8, ptr %i.ag, align 2, !range !43, !alias.scope !6208, !noalias !6178, !noundef !11 ; 2 uses
  switch i8 %i.tz, label %bb.fj [
    i8 10, label %_ZN4jiff3fmt4util13DurationUnits12set_fraction17h166089f580fb32d2E.exit.i
    i8 5, label %_ZN4jiff3fmt4util13DurationUnits12set_fraction17h166089f580fb32d2E.exit.i
    i8 4, label %_ZN4jiff3fmt4util13DurationUnits12set_fraction17h166089f580fb32d2E.exit.i
    i8 3, label %_ZN4jiff3fmt4util13DurationUnits12set_fraction17h166089f580fb32d2E.exit.i
    i8 2, label %_ZN4jiff3fmt4util13DurationUnits12set_fraction17h166089f580fb32d2E.exit.i
    i8 1, label %_ZN4jiff3fmt4util13DurationUnits12set_fraction17h166089f580fb32d2E.exit.i
  ]

_ZN4jiff3fmt4util13DurationUnits12set_fraction17h166089f580fb32d2E.exit.i: ; preds = %bb.fc, %bb.fc, %bb.fc, %bb.fc, %bb.fc, %bb.fc
  store i32 1, ptr %3, align 8, !alias.scope !6208, !noalias !6178
  %i.ua = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.7.064.i, ptr %i.ua, align 4, !alias.scope !6208, !noalias !6178
  br label %.thread354.i

bb.fd:                                            ; preds = %bb.ez
  %.not2.i108.i = icmp eq i64 %.sroa.16.3.i, 0
  br i1 %.not2.i108.i, label %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i, label %.lr.ph.preheader.i109.i

.lr.ph.preheader.i109.i:                          ; preds = %bb.fd
  %scevgep.i110.i = getelementptr i8, ptr %.sroa.0.3.i, i64 %.sroa.16.3.i
  br label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i", %.lr.ph.preheader.i109.i
  %.sroa.0.04.i112.i = phi ptr [ %i.uc, %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i" ], [ %.sroa.0.3.i, %.lr.ph.preheader.i109.i ] ; 3 uses
  %.sroa.5.03.i113.i = phi i64 [ %i.ub, %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i" ], [ %.sroa.16.3.i, %.lr.ph.preheader.i109.i ] ; 2 uses
  %.val.i.i114.i = load i8, ptr %.sroa.0.04.i112.i, align 1, !alias.scope !6209, !noalias !6197, !noundef !11
  switch i8 %.val.i.i114.i, label %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i [
    i8 32, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i"
    i8 9, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i"
    i8 10, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i"
    i8 13, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i"
    i8 12, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i"
  ]

"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i": ; preds = %.lr.ph.i111.i, %.lr.ph.i111.i, %.lr.ph.i111.i, %.lr.ph.i111.i, %.lr.ph.i111.i
  %i.ub = add i64 %.sroa.5.03.i113.i, -1          ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i112.i, i64 1
  %.not.i116.i = icmp eq i64 %i.ub, 0
  br i1 %.not.i116.i, label %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i, label %.lr.ph.i111.i

_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i: ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i", %.lr.ph.i111.i, %bb.fd
  %.sroa.5.0.lcssa.i117.i = phi i64 [ 0, %bb.fd ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i" ], [ %.sroa.5.03.i113.i, %.lr.ph.i111.i ] ; 6 uses
  %.sroa.0.0.lcssa.i118.i = phi ptr [ %.sroa.0.3.i, %bb.fd ], [ %scevgep.i110.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h991256f45da20bafE.exit.i115.i" ], [ %.sroa.0.04.i112.i, %.lr.ph.i111.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6211)
  %invariant.umin.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.5.0.lcssa.i117.i, i64 21) ; 3 uses
  %exitcond.not.i.i.i589 = icmp eq i64 %.sroa.5.0.lcssa.i117.i, 0
  br i1 %exitcond.not.i.i.i589, label %._crit_edge593, label %.lr.ph592

bb.fe:                                            ; preds = %bb.fi
  %i.ud = add nuw nsw i64 %.sroa.0.0.i.i120.i591, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ud, %invariant.umin.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge593, label %.lr.ph592

._crit_edge593:                                   ; preds = %bb.fe, %.lr.ph592, %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i
  %.sroa.05.0.i.i.i.lcssa = phi i64 [ 0, %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i ], [ %i.un, %bb.fe ], [ %.sroa.05.0.i.i.i590, %.lr.ph592 ]
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %invariant.umin.i.i.i, %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i ], [ %invariant.umin.i.i.i, %bb.fe ], [ %.sroa.0.0.i.i120.i591, %.lr.ph592 ] ; 5 uses
  %i.ue = icmp eq i64 %.sroa.0.0.lcssa.i.i.i, 0
  br i1 %i.ue, label %.thread354.i, label %bb.fg

.lr.ph592:                                        ; preds = %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i, %bb.fe
  %.sroa.0.0.i.i120.i591 = phi i64 [ %i.ud, %bb.fe ], [ 0, %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i ] ; 3 uses
  %.sroa.05.0.i.i.i590 = phi i64 [ %i.un, %bb.fe ], [ 0, %_ZN4jiff3fmt8friendly6parser10SpanParser25parse_optional_whitespace17h4fd777f0452cb99bE.exit119.i ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i118.i, i64 %.sroa.0.0.i.i120.i591
  %i.ug = load i8, ptr %i.uf, align 1, !alias.scope !6212, !noalias !6213, !noundef !11
  %i.uh = add i8 %i.ug, -48                       ; 2 uses
  %or.cond.i.i121.i = icmp ult i8 %i.uh, 10
  br i1 %or.cond.i.i121.i, label %bb.ff, label %._crit_edge593

bb.ff:                                            ; preds = %.lr.ph592
  %i.ui = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.05.0.i.i.i590, i64 10) ; 2 uses
  %i.uj = extractvalue { i64, i1 } %i.ui, 1
  br i1 %i.uj, label %bb.fk, label %bb.fi, !prof !23

bb.fg:                                            ; preds = %._crit_edge593
  %i.uk = icmp ugt i64 %.sroa.0.0.lcssa.i.i.i, %.sroa.5.0.lcssa.i117.i
  br i1 %i.uk, label %bb.fh, label %bb.fl, !prof !23

bb.fh:                                            ; preds = %bb.fg
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0.lcssa.i.i.i, i64 noundef %.sroa.5.0.lcssa.i117.i, i64 noundef %.sroa.5.0.lcssa.i117.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @330) #45, !noalias !6214
  unreachable

bb.fi:                                            ; preds = %bb.ff
  %i.ul = extractvalue { i64, i1 } %i.ui, 0       ; 2 uses
  %i.um = zext nneg i8 %i.uh to i64
  %i.un = add i64 %i.ul, %i.um                    ; 3 uses
  %i.uo = icmp ult i64 %i.un, %i.ul
  br i1 %i.uo, label %bb.fk, label %bb.fe, !prof !23

bb.fj:                                            ; preds = %bb.fc
  %.sroa.43.0.insert.ext.i.i = zext nneg i8 %i.tz to i16
  %.sroa.43.0.insert.shift.i.i = shl nuw nsw i16 %.sroa.43.0.insert.ext.i.i, 8
  %.sroa.02.0.insert.insert.i.i = or disjoint i16 %.sroa.43.0.insert.shift.i.i, 17
  %i.up = tail call noundef ptr @"_ZN4jiff5error3fmt4util105_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..util..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h87106a6a7216d866E"(i16 %.sroa.02.0.insert.insert.i.i), !noalias !6207
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread

bb.fk:                                            ; preds = %bb.fi, %bb.ff
  %i.uq = tail call noundef ptr @"_ZN4jiff5error4util108_$LT$impl$u20$core..convert..From$LT$jiff..error..util..ParseIntError$GT$$u20$for$u20$jiff..error..Error$GT$4from17h5532020adfe71edeE"(i8 noundef 2, i8 0), !noalias !6215
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread

bb.fl:                                            ; preds = %bb.fg
  %i.ur = sub nuw i64 %.sroa.5.0.lcssa.i117.i, %.sroa.0.0.lcssa.i.i.i ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i118.i, i64 %.sroa.0.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.ur, 0
  br i1 %.not.i.i, label %.thread299.i, label %bb.n

bb.fm:                                            ; preds = %.thread354.i
  %i.ut = tail call noundef ptr @"_ZN4jiff5error3fmt8friendly109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..friendly..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h9bc56149224c8055E"(i8 noundef 4, i8 undef), !noalias !6197
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread

bb.fn:                                            ; preds = %._crit_edge
  %i.uu = tail call noundef ptr @"_ZN4jiff5error3fmt8friendly109_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..friendly..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h9bc56149224c8055E"(i8 noundef 2, i8 undef)
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.uu, ptr %i.uv, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

_ZN4jiff3fmt8friendly6parser10SpanParser20parse_duration_units17hc9476960403f1048E.exit.thread: ; preds = %bb.et, %bb.es, %bb.ey, %bb.fk, %bb.fm, %bb.fj, %bb.z, %bb.p, %.thread299.i
  %.sroa.14.042 = phi ptr [ %i.tl, %.thread299.i ], [ %.sroa.576.0.copyload.pre.i, %bb.es ], [ %i.ts, %bb.ey ], [ %i.uq, %bb.fk ], [ %i.ut, %bb.fm ], [ %i.up, %bb.fj ], [ %i.ar, %bb.p ], [ %i.bh, %bb.z ], [ %i.tp, %bb.et ]
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.042, ptr %i.uw, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d
end_hunk_3
begin_hunk_4_@_ZN4jiff3fmt8temporal7printer15DateTimePrinter11print_zoned17h945f53315e19e41eE:bb.a
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i.i, label %bb.u

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread11.i.i: ; preds = %bb.u, %bb.s
  %.pre-phi.i.i.i = phi i64 [ %i.cr, %bb.u ], [ %i.cc, %bb.s ]
  %i.ci = phi i16 [ %i.cq, %bb.u ], [ %i.bs, %bb.s ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8493)
  %i.cj = load ptr, ptr %i.e, align 8, !alias.scope !8493, !noalias !8494, !nonnull !11, !align !13, !noundef !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.pre-phi.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %.sroa.0.0.i25.i.i, i64 %.sroa.9.0.i.i.i, i1 false), !alias.scope !8495, !noalias !8496
  %i.cl = trunc i64 %.sroa.9.0.i.i.i to i16
  %i.cm = add i16 %i.ci, %i.cl
  store i16 %i.cm, ptr %i.ae, align 8, !alias.scope !8493, !noalias !8494
  br label %bb.w

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i.i: ; preds = %bb.t
  %i.cn = extractvalue { i64, ptr } %i.cf, 1
  %i.co = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.cn, 1
  br label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cp = load i64, ptr %i.ad, align 8, !noalias !8491, !noundef !11
  %i.cq = load i16, ptr %i.ae, align 8, !noalias !8491, !noundef !11 ; 2 uses
  %i.cr = zext i16 %i.cq to i64                   ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = icmp ugt i64 %.sroa.9.0.i.i.i, %i.cs
  br i1 %i.ct, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i.i, label %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread11.i.i

_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i.i: ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !11, !noalias !8491, !nonnull !11
  %i.cw = call { i64, ptr } %i.cv(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i25.i.i, i64 noundef %.sroa.9.0.i.i.i), !noalias !8497, !inline_history !8447 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread, label %bb.w

bb.v:                                             ; preds = %bb.q, %bb.p, %.thread.i.i, %.thread.i.i, %.thread.i.i
  %i.cz = call fastcc { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter24print_offset_rounded_wtr17h4c6541f27b662145E(i32 %i.am, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.d), !noalias !8480 ; 2 uses
  %i.da = extractvalue { i64, ptr } %i.cz, 0
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i.i, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread11.i.i
  %i.dc = load i64, ptr %i.ad, align 8, !noalias !8498, !noundef !11
  %i.dd = load i16, ptr %i.ae, align 8, !noalias !8498, !noundef !11 ; 2 uses
  %i.de = zext i16 %i.dd to i64                   ; 2 uses
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.x, label %bb.aa, !prof !23

bb.x:                                             ; preds = %bb.w
  %i.dg = call { i64, ptr } @_ZN4jiff3fmt6buffer14BorrowedWriter5flush17hf57020ce8e680904E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.d), !noalias !8480 ; 2 uses
  %i.dh = extractvalue { i64, ptr } %i.dg, 0
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.pre16.i.i = load i64, ptr %i.ad, align 8, !alias.scope !8499, !noalias !8498
  %.pre17.i.i = load i16, ptr %i.ae, align 8, !alias.scope !8499, !noalias !8498 ; 2 uses
  %.pre19.i.i = zext i16 %.pre17.i.i to i64       ; 2 uses
  %i.dj = icmp eq i64 %.pre16.i.i, %.pre19.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8499)
  br i1 %i.dj, label %bb.z, label %bb.aa, !prof !67

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8500
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.w
  %i.dk = phi i16 [ %.pre17.i.i, %bb.y ], [ %i.dd, %bb.w ]
  %.pre-phi2031.i.i = phi i64 [ %.pre19.i.i, %bb.y ], [ %i.de, %bb.w ]
  %i.dl = load ptr, ptr %i.e, align 8, !alias.scope !8499, !noalias !8498, !nonnull !11, !align !13, !noundef !11
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.pre-phi2031.i.i
  store i8 93, ptr %i.dm, align 1, !noalias !8500
  %i.dn = add i16 %i.dk, 1                        ; 2 uses
  store i16 %i.dn, ptr %i.ae, align 8, !alias.scope !8499, !noalias !8498
  br label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25

_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread: ; preds = %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i.i, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i.i, %bb.v, %bb.x, %bb.l, %bb.g, %bb.i, %_ZN4jiff3fmt6buffer14BorrowedWriter3new17h6f3c89de00347d64E.exit
  %.pn = phi { i64, ptr } [ %i.ah, %_ZN4jiff3fmt6buffer14BorrowedWriter3new17h6f3c89de00347d64E.exit ], [ %i.dg, %bb.x ], [ %i.bl, %bb.l ], [ %i.av, %bb.i ], [ %i.an, %bb.g ], [ %i.cw, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.i.i ], [ %i.cz, %bb.v ], [ %i.co, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread.i.i ]
  %.sroa.6.0.i.ph = extractvalue { i64, ptr } %.pn, 1
  %i.do = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.6.0.i.ph, 1
  br label %bb.af

_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit: ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !11, !noalias !8481, !nonnull !11
  %i.dr = call { i64, ptr } %i.dq(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @285, i64 noundef 14), !noalias !8501, !inline_history !8452 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.af, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit._ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25_crit_edge

_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit._ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25_crit_edge: ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit
  %.pre = load i16, ptr %i.ae, align 8, !noalias !8502
  br label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25

bb.ab:                                            ; preds = %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val16 = load ptr, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val17 = load ptr, ptr %i.dv, align 8
  %i.dw = tail call noundef align 8 dereferenceable_or_null(24) ptr %.val17(ptr noundef nonnull align 1 %2), !noalias !8503, !inline_history !8458 ; 6 uses
  %.not.i19 = icmp eq ptr %i.dw, null
  br i1 %.not.i19, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !8504, !noalias !8503, !noundef !11 ; 3 uses
  %i.dz = load i64, ptr %i.dw, align 8, !range !50, !alias.scope !8504, !noalias !8503, !noundef !11
  %i.ea = sub i64 %i.dz, %i.dy                    ; 2 uses
  %i.eb = icmp ugt i64 %.sroa.01.1, %i.ea
  br i1 %i.eb, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i", !prof !23

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw, i64 noundef %i.dy, i64 noundef range(i64 0, 73) %.sroa.01.1)
  %.pre.i = load i64, ptr %i.dx, align 8, !alias.scope !8505, !noalias !8506 ; 2 uses
  %.pre1.i = load i64, ptr %i.dw, align 8, !range !50, !alias.scope !8505, !noalias !8506
  %.pre2.i = sub i64 %.pre1.i, %.pre.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i": ; preds = %bb.ad, %bb.ac
  %.pre-phi.i = phi i64 [ %i.ea, %bb.ac ], [ %.pre2.i, %bb.ad ]
  %i.ec = phi i64 [ %i.dy, %bb.ac ], [ %.pre.i, %bb.ad ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8507)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8510)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !8505, !noalias !8506, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi.i, i64 65535)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  store ptr %i.ef, ptr %i.a, align 8, !alias.scope !8511, !noalias !8512
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.eg, align 8, !alias.scope !8511, !noalias !8512
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.eh, align 8, !alias.scope !8511, !noalias !8512
  call fastcc void @"_ZN4jiff3fmt8temporal7printer15DateTimePrinter11print_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h708ec319fa2f8ab2E"(ptr nonnull readonly align 1 dereferenceable(4) %0, ptr nonnull readonly align 8 dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  %i.ei = load i16, ptr %i.eh, align 8, !noalias !8508, !noundef !11
  %i.ej = zext i16 %i.ei to i64
  store i64 %i.ej, ptr %i.dx, align 8, !alias.scope !8507, !noalias !8513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8508
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h40fa41edece70bc1E.exit

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8503
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !8514, !noalias !8515
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 72, ptr %i.ek, align 8, !alias.scope !8514, !noalias !8515
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.el, align 8, !alias.scope !8514, !noalias !8515
  call fastcc void @"_ZN4jiff3fmt8temporal7printer15DateTimePrinter11print_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h708ec319fa2f8ab2E"(ptr nonnull readonly align 1 dereferenceable(4) %0, ptr nonnull readonly align 8 dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(24) %i.b)
  %i.em = load ptr, ptr %i.b, align 8, !noalias !8503, !nonnull !11, !align !13, !noundef !11
  %i.en = load i16, ptr %i.el, align 8, !noalias !8503, !noundef !11
  %i.eo = zext i16 %i.en to i64
  %i.ep = call { i64, ptr } %.val16(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.em, i64 noundef %i.eo), !noalias !8503, !inline_history !8458 ; 2 uses
  %i.eq = extractvalue { i64, ptr } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { i64, ptr } %i.ep, 1
  %i.es = trunc nuw i64 %i.eq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8503
  %..i = select i1 %i.es, ptr %i.er, ptr undef
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h40fa41edece70bc1E.exit

bb.af:                                            ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit
  %i.et = phi { i64, ptr } [ %i.do, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread ], [ %i.dr, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.eu = extractvalue { i64, ptr } %i.et, 1
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h40fa41edece70bc1E.exit

_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25: ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit._ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25_crit_edge, %bb.aa, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread38.i
  %i.ev = phi i16 [ %.pre, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit._ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25_crit_edge ], [ %i.dn, %bb.aa ], [ %i.bb, %_ZN4jiff3fmt6buffer14BorrowedWriter9write_str17h98746c453060caa6E.exit.thread38.i ]
  %i.ew = load ptr, ptr %i.e, align 8, !noalias !8502, !nonnull !11, !align !13, !noundef !11
  %i.ex = zext i16 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !invariant.load !11, !noalias !8502, !nonnull !11
  %i.fa = call { i64, ptr } %i.ez(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ew, i64 noundef %i.ex), !noalias !8502, !inline_history !8516 ; 2 uses
  %i.fb = extractvalue { i64, ptr } %i.fa, 0      ; 2 uses
  %i.fc = trunc nuw i64 %i.fb to i1
  %i.fd = extractvalue { i64, ptr } %i.fa, 1
  %.sroa.3.0.i = select i1 %i.fc, ptr %i.fd, ptr undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h40fa41edece70bc1E.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h40fa41edece70bc1E.exit: ; preds = %bb.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i", %bb.af, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25
  %.pn.pn = phi ptr [ %.sroa.3.0.i, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25 ], [ %i.eu, %bb.af ], [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i" ], [ %..i, %bb.ae ]
  %.sroa.0.0 = phi i64 [ %i.fb, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_wtr17h466c30d8699116f8E.exit.thread25 ], [ 1, %bb.af ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i" ], [ %i.eq, %bb.ae ]
  %i.fe = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ff = insertvalue { i64, ptr } %i.fe, ptr %.pn.pn, 1
  ret { i64, ptr } %i.ff
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4jiff3fmt8temporal7printer15DateTimePrinter11print_zoned28_$u7b$$u7b$closure$u7d$$u7d$17h708ec319fa2f8ab2E"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8548)
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !8547, !noalias !8549
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8547, !noalias !8549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8552
  store i32 %.sroa.4.0.copyload.i, ptr %i.b, align 4, !noalias !8552
  call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_date_buf17hec63705f8879b2dcE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !8553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8552
  %i.d = load i8, ptr %.0.val, align 1, !range !21, !alias.scope !8554, !noalias !8555, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !8554, !noalias !8555, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8556)
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45, !noalias !8557
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !8558, !noalias !8553, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load i16, ptr %i.j, align 8, !alias.scope !8558, !noalias !8553, !noundef !11 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8557
  unreachable

_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i: ; preds = %bb.c
  %i.m = add nsw i8 %i.f, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = trunc nuw i8 %i.d to i1
  %i.p = and i1 %i.n, %i.o
  %.sroa.01.0.i.i = select i1 %i.p, i8 32, i8 0
  %.sroa.0.0.i.i = or i8 %.sroa.01.0.i.i, %i.f
  %i.q = load ptr, ptr %0, align 8, !alias.scope !8558, !noalias !8553, !nonnull !11, !align !13, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  store i8 %.sroa.0.0.i.i, ptr %i.r, align 1, !noalias !8557
  %i.s = add i16 %i.k, 1
  store i16 %i.s, ptr %i.j, align 8, !alias.scope !8558, !noalias !8553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8552
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !8552
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 1
  %.val.i.i = load i8, ptr %i.t, align 1, !alias.scope !8554, !noalias !8555
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %.val6.i.i = load i8, ptr %i.u, align 1, !alias.scope !8554, !noalias !8555
  call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_time_buf17h0df06d6d3c16aba9E(i8 %.val.i.i, i8 %.val6.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !8553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8552
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !8547, !noalias !8549, !noundef !11 ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 7                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !8547, !noalias !8549, !noundef !11 ; 2 uses
  tail call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter24print_offset_rounded_buf17h0528f68db09b4aa5E(i32 %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !8559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8561)
  %i.ac = load i64, ptr %i.h, align 8, !alias.scope !8562, !noalias !8559, !noundef !11 ; 3 uses
  %i.ad = load i16, ptr %i.j, align 8, !alias.scope !8562, !noalias !8559, !noundef !11 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  %.not.i.i5.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i.i5.i, label %bb.f, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8563
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i: ; preds = %bb.e
  %i.af = load ptr, ptr %0, align 8, !alias.scope !8562, !noalias !8559, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 91, ptr %i.ag, align 1, !noalias !8563
  %i.ah = add i16 %i.ad, 1                        ; 3 uses
  store i16 %i.ah, ptr %i.j, align 8, !alias.scope !8562, !noalias !8559
  switch i64 %i.y, label %bb.g [
    i64 1, label %bb.k
    i64 2, label %bb.m
    i64 3, label %bb.m
    i64 0, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.m
  ]

bb.g:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i
  unreachable

bb.h:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !8564, !align !13, !noundef !11 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not4.i.i.i, label %bb.m, label %.sink.split.i.i

bb.i:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i
  %i.ak = getelementptr i8, ptr %i.w, i64 20
  %i.al = load i64, ptr %i.ak, align 8, !range !15, !noalias !8564, !noundef !11
  %.not.i4.i.i = icmp eq i64 %i.al, -9223372036854775808
  br i1 %.not.i4.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.w, i64 28
  %i.an = load ptr, ptr %i.am, align 8, !noalias !8564, !nonnull !11, !noundef !11
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j, %bb.h
  %.sink10.i.i = phi i64 [ 36, %bb.j ], [ 88, %bb.h ]
  %.sroa.0.0.i.ph.i.i = phi ptr [ %i.an, %bb.j ], [ %i.aj, %bb.h ]
  %i.ao = getelementptr i8, ptr %i.w, i64 %.sink10.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !8564, !noundef !11
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i.i, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i
  %.sroa.9.0.i.i.i = phi i64 [ 3, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i ], [ %i.ap, %.sink.split.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ @89, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i ], [ %.sroa.0.0.i.ph.i.i, %.sink.split.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8565)
  %i.aq = zext i16 %i.ah to i64                   ; 2 uses
  %i.ar = sub nuw i64 %i.ac, %i.aq
  %.not.i5.i.i = icmp ugt i64 %.sroa.9.0.i.i.i, %i.ar
  br i1 %.not.i5.i.i, label %bb.l, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i.i, !prof !57

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #45, !noalias !8566
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i.i: ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i, i64 %.sroa.9.0.i.i.i, i1 false), !alias.scope !8567, !noalias !8568
  %i.at = trunc i64 %.sroa.9.0.i.i.i to i16
  %i.au = add i16 %i.ah, %i.at                    ; 2 uses
  store i16 %i.au, ptr %i.j, align 8, !alias.scope !8569, !noalias !8570
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %bb.h, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i.i
  tail call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter24print_offset_rounded_buf17h0528f68db09b4aa5E(i32 %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !8559
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !8571, !noalias !8559
  %.pre6.i.i = load i16, ptr %i.j, align 8, !alias.scope !8571, !noalias !8559
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i.i
  %i.av = phi i16 [ %.pre6.i.i, %bb.m ], [ %i.au, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i.i ] ; 2 uses
  %i.aw = phi i64 [ %.pre.i.i, %bb.m ], [ %i.ac, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8572)
  %i.ax = zext i16 %i.av to i64                   ; 2 uses
  %.not.i6.i.i = icmp eq i64 %i.aw, %i.ax
  br i1 %.not.i6.i.i, label %bb.o, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter30print_time_zone_annotation_buf17hcda29af6dcae364cE.exit.i, !prof !23

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8573
  unreachable

_ZN4jiff3fmt8temporal7printer15DateTimePrinter30print_time_zone_annotation_buf17hcda29af6dcae364cE.exit.i: ; preds = %bb.n
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !8571, !noalias !8559, !nonnull !11, !align !13, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 93, ptr %i.az, align 1, !noalias !8573
  %i.ba = add i16 %i.av, 1
  br label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_buf17h92a635a18cbd3bb6E.exit

bb.p:                                             ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8574)
  %i.bb = load i64, ptr %i.h, align 8, !alias.scope !8575, !noalias !8576, !noundef !11
  %i.bc = load i16, ptr %i.j, align 8, !alias.scope !8575, !noalias !8576, !noundef !11 ; 2 uses
  %i.bd = zext i16 %i.bc to i64                   ; 2 uses
  %i.be = sub nuw i64 %i.bb, %i.bd
  %.not.i.i = icmp ult i64 %i.be, 14
  br i1 %.not.i.i, label %bb.q, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i, !prof !57

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #45, !noalias !8577
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i: ; preds = %bb.p
  %i.bf = load ptr, ptr %0, align 8, !alias.scope !8575, !noalias !8576, !nonnull !11, !align !13, !noundef !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.bg, ptr noundef nonnull readonly align 1 dereferenceable(14) @285, i64 14, i1 false), !alias.scope !8578, !noalias !8579
  %i.bh = add i16 %i.bc, 14
  br label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_buf17h92a635a18cbd3bb6E.exit

_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_zoned_buf17h92a635a18cbd3bb6E.exit: ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter30print_time_zone_annotation_buf17hcda29af6dcae364cE.exit.i, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i
  %storemerge.i = phi i16 [ %i.ba, %_ZN4jiff3fmt8temporal7printer15DateTimePrinter30print_time_zone_annotation_buf17hcda29af6dcae364cE.exit.i ], [ %i.bh, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i ]
  store i16 %storemerge.i, ptr %i.j, align 8, !alias.scope !8548, !noalias !8559
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_date_buf17hec63705f8879b2dcE(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !11  ; 3 uses
  %i.b = icmp slt i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d
end_hunk_4
begin_hunk_5_@_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_time_buf17h0df06d6d3c16aba9E:bb.a

bb.f:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #45, !noalias !8755
  unreachable

bb.g:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  %i.aa = zext i16 %i.w to i64                    ; 2 uses
  %i.ab = sub nuw i64 %i.e, %i.aa
  %i.ac = icmp ugt i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit10, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45, !noalias !8755
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit10: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aa ; 2 uses
  %i.ae = shl nuw i8 %.sroa.01.0, 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @134, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !8755, !noundef !11
  store i8 %i.ah, ptr %i.ad, align 1, !noalias !8755
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !8755, !noundef !11
  store i8 %i.ak, ptr %i.ai, align 1, !noalias !8755
  %i.al = add i16 %i.g, 5                         ; 2 uses
  store i16 %i.al, ptr %i.f, align 8, !alias.scope !8755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8756)
  %i.am = zext i16 %i.al to i64                   ; 2 uses
  %.not.i11 = icmp eq i64 %i.e, %i.am
  br i1 %.not.i11, label %bb.i, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit12, !prof !23

bb.i:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit10
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8756
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit12: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit10
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  store i8 58, ptr %i.an, align 1, !noalias !8756
  %i.ao = add i16 %i.g, 6                         ; 2 uses
  store i16 %i.ao, ptr %i.f, align 8, !alias.scope !8756
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aq = load i8, ptr %i.ap, align 2, !noundef !11
  %.sroa.02.0 = tail call i8 @llvm.abs.i8(i8 %i.aq, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8757)
  %i.ar = icmp ult i8 %.sroa.02.0, 100
  br i1 %i.ar, label %bb.k, label %bb.j, !prof !16

bb.j:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit12
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #45, !noalias !8757
  unreachable

bb.k:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit12
  %i.as = zext i16 %i.ao to i64                   ; 2 uses
  %i.at = sub nuw i64 %i.e, %i.as
  %i.au = icmp ugt i64 %i.at, 1
  br i1 %i.au, label %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit13, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45, !noalias !8757
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit13: ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.as ; 2 uses
  %i.aw = shl nuw i8 %.sroa.02.0, 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @134, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !noalias !8757, !noundef !11
  store i8 %i.az, ptr %i.av, align 1, !noalias !8757
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !8757, !noundef !11
  store i8 %i.bc, ptr %i.ba, align 1, !noalias !8757
  %i.bd = add i16 %i.g, 8                         ; 2 uses
  store i16 %i.bd, ptr %i.f, align 8, !alias.scope !8757
  %i.be = load i32, ptr %0, align 4, !noundef !11 ; 2 uses
  %i.bf = trunc nuw i8 %.1.val to i1              ; 2 uses
  %i.bg = icmp ne i32 %i.be, 0
  %i.bh = icmp ne i8 %.2.val, 0
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8758)
  %i.bi = zext i16 %i.bd to i64                   ; 2 uses
  %.not.i14 = icmp eq i64 %i.e, %i.bi
  br i1 %.not.i14, label %bb.n, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15, !prof !23

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8758
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15: ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bi
  store i8 46, ptr %i.bj, align 1, !noalias !8758
  %i.bk = add i16 %i.g, 9
  store i16 %i.bk, ptr %i.f, align 8, !alias.scope !8758
  %.sroa.03.0 = tail call i32 @llvm.abs.i32(i32 %i.be, i1 false)
  tail call fastcc void @_ZN4jiff3fmt6buffer14BorrowedBuffer14write_fraction17ha7dd1ed5073b7660E(ptr noalias noundef align 8 dereferenceable(24) %1, i1 noundef zeroext %i.bf, i8 %.2.val, i32 noundef %.sroa.03.0)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad217hf3bd839b2bb46728E.exit13, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit15
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_timestamp17hfd286866a9d04c48E(ptr noalias noundef readonly align 1 captures(none) dereferenceable(4) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [33 x i8], align 1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !11
  %i.f = icmp ne i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !21
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  %.sroa.0.0 = select i1 %or.cond, i64 33, i64 23 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val4 = load ptr, ptr %i.k, align 8
  %i.l = tail call noundef align 8 dereferenceable_or_null(24) ptr %.val4(ptr noundef nonnull align 1 %2), !noalias !8778, !inline_history !8762 ; 6 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8779, !noalias !8778, !noundef !11 ; 3 uses
  %i.o = load i64, ptr %i.l, align 8, !range !50, !alias.scope !8779, !noalias !8778, !noundef !11
  %i.p = sub i64 %i.o, %i.n                       ; 2 uses
  %i.q = icmp ugt i64 %.sroa.0.0, %i.p
  br i1 %i.q, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i", !prof !23

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.n, i64 noundef range(i64 23, 34) %.sroa.0.0)
  %.pre.i = load i64, ptr %i.m, align 8, !alias.scope !8780, !noalias !8781 ; 2 uses
  %.pre1.i = load i64, ptr %i.l, align 8, !range !50, !alias.scope !8780, !noalias !8781
  %.pre2.i = sub i64 %.pre1.i, %.pre.i
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i": ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %i.p, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.r = phi i64 [ %i.n, %bb.b ], [ %.pre.i, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8783
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8785)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8780, !noalias !8781, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi.i, i64 65535)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store ptr %i.u, ptr %i.a, align 8, !alias.scope !8786, !noalias !8787
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.v, align 8, !alias.scope !8786, !noalias !8787
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.w, align 8, !alias.scope !8786, !noalias !8787
  call fastcc void @"_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_timestamp28_$u7b$$u7b$closure$u7d$$u7d$17h63d72121fc275c79E"(ptr nonnull readonly align 1 dereferenceable(4) %0, ptr nonnull readonly align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  %i.x = load i16, ptr %i.w, align 8, !noalias !8783, !noundef !11
  %i.y = zext i16 %i.x to i64
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !8782, !noalias !8788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8783
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h8bc435f6622fd590E.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8778
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !8789, !noalias !8790
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 33, ptr %i.z, align 8, !alias.scope !8789, !noalias !8790
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.aa, align 8, !alias.scope !8789, !noalias !8790
  call fastcc void @"_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_timestamp28_$u7b$$u7b$closure$u7d$$u7d$17h63d72121fc275c79E"(ptr nonnull readonly align 1 dereferenceable(4) %0, ptr nonnull readonly align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %i.b)
  %i.ab = load ptr, ptr %i.b, align 8, !noalias !8778, !nonnull !11, !align !13, !noundef !11
  %i.ac = load i16, ptr %i.aa, align 8, !noalias !8778, !noundef !11
  %i.ad = zext i16 %i.ac to i64
  %i.ae = call { i64, ptr } %.val(ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.ad), !noalias !8778, !inline_history !8762 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.ae, 1
  %i.ah = trunc nuw i64 %i.af to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8778
  %..i = select i1 %i.ah, ptr %i.ag, ptr undef
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h8bc435f6622fd590E.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer11with_writer17h8bc435f6622fd590E.exit: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i", %bb.d
  %.sroa.5.0.i = phi ptr [ undef, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i" ], [ %..i, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb54712438bd08b87E.exit.i" ], [ %i.af, %bb.d ]
  %i.ai = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.aj = insertvalue { i64, ptr } %i.ai, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.aj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4jiff3fmt8temporal7printer15DateTimePrinter15print_timestamp28_$u7b$$u7b$closure$u7d$$u7d$17h63d72121fc275c79E"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %.val = load i64, ptr %.8.val, align 8, !noundef !11
  %i.c = getelementptr i8, ptr %.8.val, i64 8
  %.val1 = load i32, ptr %i.c, align 8, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8806)
  %i.d = add i64 %.val, 378683424000              ; 2 uses
  %i.e = udiv i64 %i.d, 86400
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %i.g = urem i64 %i.d, 86400                     ; 3 uses
  %i.h = icmp slt i32 %.val1, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.g, 0
  %i.i = add nsw i32 %.val1, 1000000000           ; 2 uses
  br i1 %.not.i.i, label %.thread44.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.05.0.i.i = phi i32 [ %i.i, %bb.d ], [ %.val1, %bb.a ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.d ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.j, label %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit.i, label %bb.e

.thread44.i.i:                                    ; preds = %bb.b
  %i.k = add i32 %i.f, -1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = add nsw i64 %i.g, -1
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.m = trunc nuw nsw i64 %.sroa.0.0.i.i to i32  ; 2 uses
  %i.n = udiv i32 %i.m, 3600                      ; 2 uses
  %i.o = urem i32 %i.m, 3600                      ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread44.i.i
  %i.q = phi i32 [ 3599, %.thread44.i.i ], [ %i.o, %bb.e ]
  %i.r = phi i32 [ 23, %.thread44.i.i ], [ %i.n, %bb.e ]
  %.sroa.09.03949.i.i = phi i32 [ %i.k, %.thread44.i.i ], [ %i.f, %bb.e ]
  %.sroa.05.04148.i.i = phi i32 [ %i.i, %.thread44.i.i ], [ %.sroa.05.0.i.i, %bb.e ]
  %.lhs.trunc.i.i = trunc nuw nsw i32 %i.q to i16 ; 2 uses
  %i.s = udiv i16 %.lhs.trunc.i.i, 60
  %i.t = shl nuw nsw i16 %i.s, 8
  %.sroa.426.5.insert.shift.i.i = zext nneg i16 %i.t to i32
  %i.u = urem i16 %.lhs.trunc.i.i, 60
  %.zext33.i.i = zext nneg i16 %i.u to i32
  %.sroa.426.6.insert.shift.i.i = shl nuw nsw i32 %.zext33.i.i, 16
  %i.v = add nuw nsw i32 %i.r, %.sroa.426.5.insert.shift.i.i
  %.sroa.426.6.insert.insert.i.i = add nuw nsw i32 %i.v, %.sroa.426.6.insert.shift.i.i
  br label %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit.i

_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.05.042.i.i = phi i32 [ %.sroa.05.0.i.i, %bb.c ], [ %.sroa.05.0.i.i, %bb.e ], [ %.sroa.05.04148.i.i, %bb.f ]
  %.sroa.09.040.i.i = phi i32 [ %i.f, %bb.c ], [ %i.f, %bb.e ], [ %.sroa.09.03949.i.i, %bb.f ]
  %.sroa.426.0.i.i = phi i32 [ 0, %bb.c ], [ %i.n, %bb.e ], [ %.sroa.426.6.insert.insert.i.i, %bb.f ]
  %i.w = shl i32 %.sroa.09.040.i.i, 2
  %i.x = add i32 %i.w, 33266051                   ; 2 uses
  %i.y = urem i32 %i.x, 146097
  %i.z = or i32 %i.y, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.aa, 2939745          ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = udiv i32 %i.ac, 11758980
  %i.ae = mul nuw nsw i32 %i.ad, 2141
  %i.af = add nuw nsw i32 %i.ae, 197913           ; 3 uses
  %.lhs.trunc.i.i.i = trunc i32 %i.af to i16
  %i.ag = udiv i16 %.lhs.trunc.i.i.i, 2141
  %i.ah = icmp ugt i32 %i.ac, -696719417          ; 2 uses
  %i.ai = and i32 %i.af, 4128768
  %i.aj = add nuw nsw i32 %i.ai, 15990784
  %.sroa.2.0.insert.ext.i.i.i = select i1 %i.ah, i32 %i.aj, i32 %i.af
  %i.ak = udiv i32 %i.x, 146097
  %i.al = mul nuw nsw i32 %i.ak, 100
  %i.am = add nuw nsw i32 %i.al, 32736
  %i.an = lshr i64 %i.ab, 32
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = add nuw nsw i32 %i.am, %i.ao
  %i.aq = zext i1 %i.ah to i32
  %i.ar = add nuw nsw i32 %i.ap, %i.aq
  %narrow.i = add nuw nsw i16 %i.ag, 1
  %.sroa.8.11.extract.trunc.i = zext nneg i16 %narrow.i to i32
  %.sroa.7.8.insert.ext.i = and i32 %i.ar, 65535
  %.sroa.7.10.insert.ext.i = and i32 %.sroa.2.0.insert.ext.i.i.i, 16711680
  %.sroa.7.10.insert.insert.i = or disjoint i32 %.sroa.7.8.insert.ext.i, %.sroa.7.10.insert.ext.i
  %.sroa.7.11.insert.shift.i = shl nuw nsw i32 %.sroa.8.11.extract.trunc.i, 24
  %.sroa.7.11.insert.insert.i = or disjoint i32 %.sroa.7.10.insert.insert.i, %.sroa.7.11.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.05.042.i.i to i64
  %.sroa.426.0.i.zext5.i = zext nneg i32 %.sroa.426.0.i.i to i64
  %.sroa.0.4.insert.shift.i = shl nuw nsw i64 %.sroa.426.0.i.zext5.i, 32
  %.sroa.0.6.insert.insert.i = or disjoint i64 %.sroa.0.4.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8809
  store i32 %.sroa.7.11.insert.insert.i, ptr %i.b, align 4, !noalias !8809
  call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_date_buf17hec63705f8879b2dcE(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !8810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8809
  %i.as = load i8, ptr %.0.val, align 1, !range !21, !alias.scope !8810, !noalias !8811, !noundef !11
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 3
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !8810, !noalias !8811, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8812)
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.h, label %bb.g, !prof !16

bb.g:                                             ; preds = %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45, !noalias !8813
  unreachable

bb.h:                                             ; preds = %_ZN4jiff6shared4util5itime10ITimestamp11to_datetime17h89f9fee4c0d96b95E.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !8814, !noalias !8810, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.az = load i16, ptr %i.ay, align 8, !alias.scope !8814, !noalias !8810, !noundef !11 ; 2 uses
  %i.ba = zext i16 %i.az to i64                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ax, %i.ba
  br i1 %.not.i.i.i, label %bb.i, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i, !prof !23

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8813
  unreachable

_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i: ; preds = %bb.h
  %i.bb = add nsw i8 %i.au, -65
  %i.bc = icmp ult i8 %i.bb, 26
  %i.bd = trunc nuw i8 %i.as to i1                ; 2 uses
  %i.be = and i1 %i.bc, %i.bd
  %.sroa.01.0.i.i = select i1 %i.be, i8 32, i8 0
  %.sroa.0.0.i6.i = or i8 %.sroa.01.0.i.i, %i.au
  %i.bf = load ptr, ptr %0, align 8, !alias.scope !8814, !noalias !8810, !nonnull !11, !align !13, !noundef !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ba
  store i8 %.sroa.0.0.i6.i, ptr %i.bg, align 1, !noalias !8813
  %i.bh = add i16 %i.az, 1
  store i16 %i.bh, ptr %i.ay, align 8, !alias.scope !8814, !noalias !8810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8809
  store i64 %.sroa.0.6.insert.insert.i, ptr %i.a, align 8, !noalias !8809
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.val, i64 1
  %.val.i.i = load i8, ptr %i.bi, align 1, !alias.scope !8810, !noalias !8811
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %.val6.i.i = load i8, ptr %i.bj, align 1, !alias.scope !8810, !noalias !8811
  call fastcc void @_ZN4jiff3fmt8temporal7printer15DateTimePrinter14print_time_buf17h0df06d6d3c16aba9E(i8 %.val.i.i, i8 %.val6.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !8810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8815)
  br i1 %i.bd, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8816)
  %i.bk = load i64, ptr %i.aw, align 8, !alias.scope !8817, !noalias !8805, !noundef !11
  %i.bl = load i16, ptr %i.ay, align 8, !alias.scope !8817, !noalias !8805, !noundef !11 ; 2 uses
  %i.bm = zext i16 %i.bl to i64                   ; 2 uses
  %.not.i.i7.i = icmp eq i64 %i.bk, %i.bm
  br i1 %.not.i.i7.i, label %bb.j, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter19print_timestamp_buf17h1ed9ae29168657e6E.exit, !prof !23

bb.j:                                             ; preds = %.split2.i.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8818
  unreachable

.split.i.i:                                       ; preds = %_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_buf17hb072afb779da231aE.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8819)
  %i.bn = load i64, ptr %i.aw, align 8, !alias.scope !8820, !noalias !8805, !noundef !11
  %i.bo = load i16, ptr %i.ay, align 8, !alias.scope !8820, !noalias !8805, !noundef !11 ; 2 uses
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %.not.i3.i.i = icmp eq i64 %i.bn, %i.bp
  br i1 %.not.i3.i.i, label %bb.k, label %_ZN4jiff3fmt8temporal7printer15DateTimePrinter19print_timestamp_buf17h1ed9ae29168657e6E.exit, !prof !23

bb.k:                                             ; preds = %.split.i.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !8821
  unreachable

_ZN4jiff3fmt8temporal7printer15DateTimePrinter19print_timestamp_buf17h1ed9ae29168657e6E.exit: ; preds = %.split2.i.i, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.bm, %.split2.i.i ], [ %i.bp, %.split.i.i ]
  %.sink.i.i = phi i8 [ 90, %.split2.i.i ], [ 122, %.split.i.i ]
  %.sink2.i.i = phi i16 [ %i.bl, %.split2.i.i ], [ %i.bo, %.split.i.i ]
  %i.bq = load ptr, ptr %0, align 8, !alias.scope !8822, !noalias !8805, !nonnull !11, !align !13, !noundef !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink5.i.i
  store i8 %.sink.i.i, ptr %i.br, align 1, !noalias !8823
  %i.bs = add i16 %.sink2.i.i, 1
  store i16 %i.bs, ptr %i.ay, align 8, !alias.scope !8822, !noalias !8805
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter16print_pieces_wtr17h687c584dba2535bfE(ptr noalias noundef readonly align 1 captures(none) dereferenceable(4) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.01.0.copyload = load i32, ptr %i.b, align 8
  %i.c = trunc i32 %.sroa.01.0.copyload to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.03.0.copyload = load i32, ptr %i.d, align 4
  %i.e = tail call fastcc { i64, ptr } @_ZN4jiff3fmt8temporal7printer15DateTimePrinter18print_datetime_wtr17h653451ebaa21047fE(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(4) %0, i64 %.sroa.5.0.copyload, i32 %.sroa.03.0.copyload, ptr noalias noundef align 8 dereferenceable(24) %2) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e
end_hunk_5
begin_hunk_6_@"_ZN4jiff5error2tz9ambiguous109_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..ambiguous..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hbd870c9597abeec5E"
define noundef nonnull ptr @"_ZN4jiff5error2tz9ambiguous109_$LT$impl$u20$core..convert..From$LT$jiff..error..tz..ambiguous..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17hbd870c9597abeec5E"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10596
  store i64 1, ptr %i.a, align 8, !noalias !10596
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !10596
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !10596
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10597
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !10597 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !10596

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10596

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10596
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !10596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10596
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @"_ZN4jiff5error3fmt4util105_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..util..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h87106a6a7216d866E"(i16 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10602
  store i64 1, ptr %i.a, align 8, !noalias !10602
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !10602
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !10602
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 16, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i16 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10603
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !10603 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !10602

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10602

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10602
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !10602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10602
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff5error3fmt5Error15into_full_error17h2a98f581e22a649bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10614
  store i64 0, ptr %i.c, align 8, !noalias !10614
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10614
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !10614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10614
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.f, align 8, !noalias !10614
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !10614
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !10614
  store ptr %i.c, ptr %i.b, align 8, !noalias !10614
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @35, ptr %i.g, align 8, !noalias !10614
  %i.h = invoke noundef zeroext i1 %.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !10614

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10615)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !10615, !noalias !10614 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !10615, !noalias !10614, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !10616
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h08a98ca0f5fa4155E.exit", !prof !23

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @36, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #45
          to label %.noexc.i unwind label %bb.b, !noalias !10614

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.s, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i" ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h08a98ca0f5fa4155E.exit": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10614
  %i.k = call { ptr, i64 } @"_ZN5alloc6string107_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$str$GT$$GT$4from17hb136f3cbea972320E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 4 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = icmp slt i64 %4, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h08a98ca0f5fa4155E.exit"
  %i.o = icmp eq i64 %4, 0
  br i1 %i.o, label %bb.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10617
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !10617 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.r = ptrtoint ptr %i.p to i64
  br label %bb.i

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h08a98ca0f5fa4155E.exit"
  %.sroa.4.0.ph.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h08a98ca0f5fa4155E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %i.m, 0
  br i1 %i.t, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef 1) #44, !noalias !10618
  br label %common.resume

bb.i:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi i64 [ %i.r, %bb.f ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %5 = inttoptr i64 %.sroa.10.0.i to ptr          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %4, ptr %i.x, align 8
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @"_ZN4jiff5error3fmt6offset107_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..offset..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h187c6a80edac9b5aE"(i8 noundef range(i8 0, 24) %0, i8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10623
  store i64 1, ptr %i.a, align 8, !noalias !10623
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !10623
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !10623
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 12, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10624
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !10624 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !10623

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10623

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10623
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !10623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10623
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @"_ZN4jiff5error3fmt7rfc2822108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..rfc2822..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h01c43893d75df668E"(i24 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10629
  store i64 1, ptr %i.a, align 8, !noalias !10629
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !10629
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !10629
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 13, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i24 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10630
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !10630 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !10629

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10629

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10629
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !10629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10629
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @"_ZN4jiff5error3fmt7rfc9557108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..rfc9557..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17ha1190611e1774d24E"(i8 noundef range(i8 0, 14) %0, i8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10635
  store i64 1, ptr %i.a, align 8, !noalias !10635
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !10635
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !10635
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 14, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10636
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !10636 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !10635

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10635

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10635
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !10635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10635
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @"_ZN4jiff5error3fmt7strtime108_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..strtime..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h57bc27f59ec061bdE"(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10641
  store i64 1, ptr %i.a, align 8, !noalias !10641
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !10641
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !10641
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 17, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10642
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !10642 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN88_$LT$jiff..error..Error$u20$as$u20$core..convert..From$LT$jiff..error..ErrorKind$GT$$GT$4from17hb192aacf65c20ebeE.exit", !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #45
          to label %.noexc.i unwind label %bb.c, !noalias !10641

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..sync..ArcInner$LT$jiff..error..ErrorInner$GT$$GT$17h9dafbd88b5e2ef27E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #47
          to label %bb.e unwind label %bb.d, !noalias !10641

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #46, !noalias !10641
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_6
