Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hd9e3ef971292efadE":bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.048.0150, i64 24
  %i.hb = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7a6dca5452b34f59E(ptr noalias noundef align 8 dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.048.0150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ha) ; 2 uses
  %.not8 = icmp eq ptr %i.hb, null
  br i1 %.not8, label %bb.ak, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6a029761c84b1ce1E.exit"

._crit_edge:                                      ; preds = %bb.ak, %bb.aj
  %.sroa.050.0.copyload = load i8, ptr %i.d, align 8
  %.sroa.553.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.hc = trunc nuw i8 %.sroa.050.0.copyload to i1
  br i1 %i.hc, label %bb.al, label %bb.am, !prof !61

bb.al:                                            ; preds = %._crit_edge
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @198, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1775) #41, !noalias !26940
  unreachable

bb.am:                                            ; preds = %._crit_edge
  %.sroa.451.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.hd = icmp eq i8 %.sroa.451.0.copyload, 0
  br i1 %i.hd, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h82925fa0744a64f0E.exit", label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.553.0.copyload) ]
  %.val.i21 = load ptr, ptr %.sroa.553.0.copyload, align 8, !noalias !26940, !nonnull !63, !align !64, !noundef !63
  %.val.i.i.i22 = load ptr, ptr %.val.i21, align 8, !noalias !26941, !nonnull !63, !align !64, !noundef !63 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26942)
  %i.he = load i64, ptr %.val.i.i.i22, align 8, !range !65, !alias.scope !26942, !noalias !26943, !noundef !63
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i.i.i22, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !26942, !noalias !26943, !noundef !63 ; 4 uses
  %i.hh = icmp sgt i64 %i.hg, -1
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = sub nsw i64 %i.he, %i.hg
  %i.hj = icmp ugt i64 %i.hi, 1
  br i1 %i.hj, label %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.thread.i26, label %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.i23, !prof !68

_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.thread.i26: ; preds = %bb.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26944)
  %i.hk = getelementptr inbounds nuw i8, ptr %.val.i.i.i22, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !26945, !noalias !26943, !nonnull !63, !noundef !63
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hg
  store i8 125, ptr %i.hm, align 1, !noalias !26946
  %i.hn = add nuw i64 %i.hg, 1
  store i64 %i.hn, ptr %i.hf, align 8, !alias.scope !26945, !noalias !26943
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h82925fa0744a64f0E.exit"

_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.i23: ; preds = %bb.an
  %i.ho = tail call noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h7539e82cf791d7a0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i.i22, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 1), !noalias !26940 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ho, null
  br i1 %.not.i24, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h82925fa0744a64f0E.exit", label %bb.ao, !prof !70

bb.ao:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.i23
  %i.hp = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ho), !noalias !26940
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h82925fa0744a64f0E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h82925fa0744a64f0E.exit": ; preds = %bb.am, %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.thread.i26, %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.i23, %bb.ao
  %.sroa.0.0.i25 = phi ptr [ null, %bb.am ], [ %i.hp, %bb.ao ], [ null, %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.i23 ], [ null, %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.thread.i26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17he8d81fa9ccf6be87E.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6a029761c84b1ce1E.exit.sink.split": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.i, %_ZN10serde_json3ser9Formatter12begin_object17hb8ae1996a4749d75E.exit.i
  %.sink = phi ptr [ %i.gf, %_ZN10serde_json3ser9Formatter12begin_object17hb8ae1996a4749d75E.exit.i ], [ %i.gr, %_ZN10serde_json3ser9Formatter10end_object17h1f6e0e5f714f4795E.exit.i ]
  %i.hq = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sink), !noalias !26933
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6a029761c84b1ce1E.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6a029761c84b1ce1E.exit": ; preds = %.lr.ph, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6a029761c84b1ce1E.exit.sink.split"
  %.sroa.0.1 = phi ptr [ %i.hq, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_map17h6a029761c84b1ce1E.exit.sink.split" ], [ %i.hb, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17he8d81fa9ccf6be87E.exit"
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN110_$LT$dump..reader..v5..tasks..TaskView$u20$as$u20$core..convert..From$LT$dump..reader..v5..tasks..Task$GT$$GT$4from17h5c002435ab485444E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([528 x i8]) align 8 captures(none) dereferenceable(528) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(392) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !26990 {
bb.a:
  %.sroa.8 = alloca [96 x i8], align 8            ; 4 uses
  %.sroa.26 = alloca [296 x i8], align 8          ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 6 uses
  %i.d = alloca [328 x i8], align 8               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = load i64, ptr %1, align 8, !range !129, !noundef !63 ; 4 uses
  %i.g = icmp ne i64 %i.f, 5
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 2          ; 4 uses
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.d
    i64 5, label %bb.d
    i64 6, label %.thread
  ]

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.l = load i32, ptr %i.k, align 8, !noundef !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load <2 x i64>, ptr %i.n, align 8
  %.sroa.3103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3103.0.copyload = load i64, ptr %.sroa.3103.0..sroa_idx, align 8
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"

bb.b:                                             ; preds = %bb.q, %bb.g, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c
  %.sink = phi i64 [ 8, %bb.a ], [ 8, %bb.a ], [ 8, %bb.a ], [ 328, %bb.c ], [ 8, %bb.a ], [ 8, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !63, !noundef !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !63 ; 21 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !79

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.d
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !26991
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, 9) 1) #42, !noalias !26991 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #41
          to label %.noexc unwind label %bb.bi

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.e
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.w, %bb.e ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.r, i64 %i.t, i1 false), !noalias !26992
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.z = load i32, ptr %i.y, align 8, !noundef !63 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"
    i64 4, label %bb.k
    i64 5, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !63
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !range !76, !noundef !63 ; 3 uses
  %.not162 = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not162, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit", label %bb.m

bb.j:                                             ; preds = %bb.g
  %.sroa.2121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load <2 x i64>, ptr %.sroa.2121.0..sroa_idx, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4123.0.copyload = load i64, ptr %.sroa.4123.0..sroa_idx, align 8
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.5124.0..sroa_idx, i64 296, i1 false)
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load <2 x i64>, ptr %i.ag, align 8
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.3109.0.copyload = load i64, ptr %.sroa.3109.0..sroa_idx, align 8
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"

bb.l:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load <2 x i64>, ptr %i.ai, align 8
  %.sroa.3106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.3106.0.copyload = load i64, ptr %.sroa.3106.0..sroa_idx, align 8
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i", %bb.o, %bb.i, %bb.g, %.thread, %bb.l, %bb.k, %bb.j, %bb.h
  %i.ak = phi i32 [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %i.z, %bb.g ], [ %i.z, %bb.j ], [ %i.l, %.thread ], [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.z, %bb.o ], [ %i.z, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ]
  %.sroa.0.0258330 = phi i64 [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.g ], [ %i.t, %bb.j ], [ -9223372036854775808, %.thread ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %bb.o ], [ %i.t, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ] ; 3 uses
  %.sroa.6.0259328 = phi ptr [ %.sroa.10.0.i.i, %bb.h ], [ %.sroa.10.0.i.i, %bb.i ], [ %.sroa.10.0.i.i, %bb.g ], [ %.sroa.10.0.i.i, %bb.j ], [ undef, %.thread ], [ %.sroa.10.0.i.i, %bb.k ], [ %.sroa.10.0.i.i, %bb.l ], [ %.sroa.10.0.i.i, %bb.o ], [ %.sroa.10.0.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ] ; 3 uses
  %.sroa.6.0263326 = phi i64 [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.g ], [ %i.t, %bb.j ], [ undef, %.thread ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %bb.o ], [ %i.t, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ]
  %.sroa.084.0 = phi i8 [ 3, %bb.h ], [ 4, %bb.i ], [ 2, %bb.g ], [ 5, %bb.j ], [ 6, %.thread ], [ 0, %bb.k ], [ 1, %bb.l ], [ 4, %bb.o ], [ 4, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ]
  %.sroa.085.0 = phi i64 [ 3, %bb.h ], [ 7, %bb.i ], [ 7, %bb.g ], [ %i.f, %bb.j ], [ 8, %.thread ], [ 5, %bb.k ], [ 5, %bb.l ], [ 6, %bb.o ], [ 6, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ] ; 8 uses
  %.sroa.22.0 = phi i64 [ %i.ac, %bb.h ], [ undef, %bb.i ], [ undef, %bb.g ], [ %.sroa.4123.0.copyload, %bb.j ], [ %.sroa.3103.0.copyload, %.thread ], [ %.sroa.3109.0.copyload, %bb.k ], [ %.sroa.3106.0.copyload, %bb.l ], [ %.sroa.5.0.copyload, %bb.o ], [ %.sroa.5.0.copyload, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ]
  %i.al = phi <2 x i64> [ <i64 0, i64 undef>, %bb.h ], [ <i64 0, i64 undef>, %bb.i ], [ <i64 0, i64 undef>, %bb.g ], [ %i.af, %bb.j ], [ %i.o, %.thread ], [ %i.ah, %bb.k ], [ %i.aj, %bb.l ], [ <i64 0, i64 undef>, %bb.o ], [ <i64 0, i64 undef>, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.085.0, ptr %i.d, align 8
  %.sroa.11.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.18.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store <2 x i64> %i.al, ptr %.sroa.11.0..sroa_idx87, align 8
  %.sroa.22.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx95, align 8
  %.sroa.26.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.sroa.26.0..sroa_idx100, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.26, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !63 ; 3 uses
  %.not163 = icmp eq i64 %i.ao, 0
  %i.ap = load ptr, ptr %i.am, align 8, !nonnull !63 ; 6 uses
  %.idx = mul i64 %i.ao, 120                      ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx  ; 10 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -120   ; 3 uses
  %.not164292 = icmp eq ptr %i.ar, null
  %.not164 = select i1 %.not163, i1 true, i1 %.not164292
  br i1 %.not164, label %bb.r, label %bb.q, !prof !61

bb.m:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !63, !noundef !63 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %i.as = icmp ult i64 %.sroa.5.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26993)
  %i.at = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.at, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.av, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.av = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26995)
  %.val.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !65, !alias.scope !26996, !noalias !26997, !noundef !63 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !26996, !noalias !26997, !nonnull !63, !noundef !63
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !26998
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i": ; preds = %bb.n, %.lr.ph.i.i.i
  %i.ay = icmp eq i64 %i.av, %.sroa.5.0.copyload
  br i1 %i.ay, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i", %bb.m
  %i.az = icmp eq i64 %i.ae, 0
  br i1 %i.az, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit", label %bb.o

bb.o:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i"
  %i.ba = mul nuw i64 %i.ae, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !26997
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"

bb.p:                                             ; preds = %bb.s
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$dump..reader..v5..tasks..TaskEvent$GT$$GT$17hbe70395dd0274c3eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
  switch i64 %i.j, label %bb.bc [
    i64 1, label %bb.bd
    i64 2, label %bb.be
    i64 4, label %bb.bf
    i64 5, label %bb.bg
    i64 6, label %"_ZN4core3ptr53drop_in_place$LT$dump..reader..v5..meta..IndexUid$GT$17hd33591ed9790003bE.exit205"
  ]

bb.q:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"
  %i.bb = load i64, ptr %i.ar, align 8, !range !125, !noundef !63 ; 2 uses
  %i.bc = xor i64 %i.bb, -9223372036854775808
  %i.bd = icmp slt i64 %i.bb, 0
  %i.be = select i1 %i.bd, i64 %i.bc, i64 4
  switch i64 %i.be, label %bb.b [
    i64 0, label %bb.y
    i64 1, label %bb.y
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 4, label %bb.x
  ]

bb.r:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE.exit"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #41
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.ai, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.ai ], [ %i.bf, %bb.t ] ; 3 uses
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$core..option..Option$LT$dump..reader..v5..tasks..TaskDetails$GT$$GT$17hf2ec0d62f447a733E"(ptr noalias noundef align 8 dereferenceable(328) %i.d) #43
          to label %bb.p unwind label %bb.bb

bb.t:                                             ; preds = %bb.ae, %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.ag, %bb.r
  unreachable

bb.v:                                             ; preds = %bb.q
  br label %bb.y

bb.w:                                             ; preds = %bb.q
  %i.bg = getelementptr i8, ptr %i.aq, i64 -112
  %i.bh = load i64, ptr %i.bg, align 8, !range !71, !noundef !63
  %i.bi = getelementptr i8, ptr %i.aq, i64 -104
  switch i64 %i.bh, label %default.unreachable321 [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.z
  ]

bb.x:                                             ; preds = %bb.q
  %.not165 = icmp eq i64 %.sroa.085.0, 9
  br i1 %.not165, label %bb.ae, label %bb.ad

bb.y:                                             ; preds = %bb.q, %bb.q, %bb.af, %bb.z, %bb.v
  %.sroa.0131.sroa.0.0 = phi i56 [ undef, %bb.q ], [ undef, %bb.q ], [ undef, %bb.v ], [ %.sroa.0151.sroa.0.0.copyload, %bb.z ], [ %.sroa.0145.sroa.0.0.copyload, %bb.af ] ; 4 uses
  %.sroa.0125.0 = phi i8 [ 0, %bb.q ], [ 0, %bb.q ], [ 1, %bb.v ], [ 2, %bb.z ], [ 3, %bb.af ]
  %.sroa.0126.0 = phi i64 [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.q ], [ -9223372036854775808, %bb.v ], [ -9223372036854775808, %bb.z ], [ %.sroa.0129.0.copyload, %bb.af ]
  %.sroa.8132.0 = phi i8 [ 1, %bb.q ], [ 1, %bb.q ], [ 1, %bb.v ], [ %.sroa.4152.0.copyload, %bb.z ], [ %.sroa.4146.0.copyload, %bb.af ] ; 2 uses
  %.sroa.11137.0 = phi i64 [ undef, %bb.q ], [ undef, %bb.q ], [ undef, %bb.v ], [ %.sroa.5153.0.copyload, %bb.z ], [ %.sroa.5147.0.copyload, %bb.af ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0126.0, ptr %i.c, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.bj = load i64, ptr %i.ap, align 8, !range !125, !noundef !63
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %i.bk, label %bb.ah, label %bb.ag, !prof !68

default.unreachable321:                           ; preds = %bb.w
  unreachable

.sink.split:                                      ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bl = load i64, ptr %i.bi, align 8, !noundef !63
  store i64 1, ptr %.sroa.11.0..sroa_idx87, align 8
  store i64 %i.bl, ptr %.sroa.18.0..sroa_idx91, align 8
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.ac, %bb.ab, %bb.aa, %bb.w
  %i.bm = getelementptr i8, ptr %i.aq, i64 -96
  %.sroa.0151.sroa.0.0.copyload = load i56, ptr %i.bm, align 8
  %.sroa.4152.0..sroa_idx = getelementptr i8, ptr %i.aq, i64 -89
  %.sroa.4152.0.copyload = load i8, ptr %.sroa.4152.0..sroa_idx, align 1
  %.sroa.5153.0..sroa_idx = getelementptr i8, ptr %i.aq, i64 -88
  %.sroa.5153.0.copyload = load i64, ptr %.sroa.5153.0..sroa_idx, align 8
  br label %bb.y

bb.aa:                                            ; preds = %bb.w
  %i.bn = icmp eq i64 %.sroa.085.0, 3
  br i1 %i.bn, label %.sink.split, label %bb.z

bb.ab:                                            ; preds = %bb.w
  %i.bo = icmp eq i64 %.sroa.085.0, 6
  br i1 %i.bo, label %.sink.split, label %bb.z

bb.ac:                                            ; preds = %bb.w
  %i.bp = icmp eq i64 %.sroa.085.0, 7
  br i1 %i.bp, label %.sink.split, label %bb.z

bb.ad:                                            ; preds = %bb.x
  %i.bq = icmp ne i64 %.sroa.085.0, 4
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nsw i64 %.sroa.085.0, -3
  %i.bs = icmp samesign ugt i64 %.sroa.085.0, 2
  %i.bt = select i1 %i.bs, i64 %i.br, i64 1
  switch i64 %i.bt, label %bb.ae [
    i64 0, label %.sink.split333
    i64 3, label %.sink.split333
    i64 4, label %.sink.split333
  ]

.sink.split333:                                   ; preds = %bb.ad, %bb.ad, %bb.ad
  store i64 1, ptr %.sroa.11.0..sroa_idx87, align 8
  store i64 0, ptr %.sroa.18.0..sroa_idx91, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split333, %bb.ad, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN78_$LT$dump..reader..v5..errors..ResponseError$u20$as$u20$core..clone..Clone$GT$5clone17h545fdf8c86429fb0E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ar)
          to label %bb.af unwind label %bb.t

bb.af:                                            ; preds = %bb.ae
  %.sroa.0129.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4130.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bu = getelementptr i8, ptr %i.aq, i64 -16
  %.sroa.0145.sroa.0.0.copyload = load i56, ptr %i.bu, align 8
  %.sroa.4146.0..sroa_idx = getelementptr i8, ptr %i.aq, i64 -9
  %.sroa.4146.0.copyload = load i8, ptr %.sroa.4146.0..sroa_idx, align 1
  %.sroa.5147.0..sroa_idx = getelementptr i8, ptr %i.aq, i64 -8
  %.sroa.5147.0.copyload = load i64, ptr %.sroa.5147.0..sroa_idx, align 8
  br label %bb.y

bb.ag:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @231, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.by, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #41
          to label %bb.u unwind label %bb.ai

bb.ah:                                            ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ca = icmp eq i64 %.idx, 0
  br i1 %i.ca, label %"_ZN80_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$GT$3sub17h0cd3c07bd3104137E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %.backedge.i
  %i.cb = phi ptr [ %i.cc, %.backedge.i ], [ %i.ap, %bb.ah ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26999)
  %i.cd = load i64, ptr %i.cb, align 8, !range !125, !alias.scope !27000, !noalias !27001, !noundef !63
  %i.ce = icmp eq i64 %i.cd, -9223372036854775806
  br i1 %i.ce, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %.lr.ph
  %.sroa.2.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 15
  %.sroa.2.0.copyload4.i = load i8, ptr %.sroa.2.0..sroa_idx3.i, align 1, !alias.scope !27002, !noalias !27001
  %i.cf = trunc nuw i8 %.sroa.2.0.copyload4.i to i1
  br i1 %i.cf, label %.backedge.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h66b360b8997624c6E.exit"

.backedge.i:                                      ; preds = %.split.i, %.lr.ph
  %i.cg = icmp eq ptr %i.cc, %i.aq
  br i1 %i.cg, label %"_ZN80_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$GT$3sub17h0cd3c07bd3104137E.exit", label %.lr.ph

bb.ai:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$core..option..Option$LT$dump..reader..v5..errors..ResponseError$GT$$GT$17hc2e8c8d2a915fb89E"(ptr noalias noundef align 8 dereferenceable(104) %i.c) #43
  br label %bb.s

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h66b360b8997624c6E.exit": ; preds = %.split.i
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.4.0.copyload6.i = load i64, ptr %.sroa.4.0..sroa_idx5.i, align 8, !alias.scope !27002, !noalias !27001 ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.0216.sroa.0.0.copyload257 = load i56, ptr %i.ci, align 8, !noalias !27003 ; 7 uses
  %i.cj = trunc nuw i8 %.sroa.8132.0 to i1
  br i1 %i.cj, label %"_ZN80_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..ops..arith..Sub$GT$3sub17h0cd3c07bd3104137E.exit", label %"_ZN4core6option15Option$LT$T$GT$3zip17hcab3545465470e9aE.exit"

"_ZN4core6option15Option$LT$T$GT$3zip17hcab3545465470e9aE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h66b360b8997624c6E.exit"
  %.sroa.3241.8.extract.trunc = trunc i64 %.sroa.11137.0 to i32 ; 2 uses
  %.sroa.5242.8.extract.shift = lshr i64 %.sroa.11137.0, 32 ; 2 uses
  %.sroa.3246.8.extract.trunc = trunc i64 %.sroa.4.0.copyload6.i to i32 ; 2 uses
  %.sroa.5247.8.extract.shift = lshr i64 %.sroa.4.0.copyload6.i, 32 ; 2 uses
  %.sroa.0240.0.insert.ext = zext i56 %.sroa.0131.sroa.0.0 to i64 ; 3 uses
  %.sroa.0244.0.insert.ext = zext i56 %.sroa.0216.sroa.0.0.copyload257 to i64 ; 3 uses
  %i.ck = ashr i32 %.sroa.3241.8.extract.trunc, 10
  %i.cl = add nsw i32 %i.ck, 999999               ; 3 uses
  %.neg.i.i.i = sdiv i32 %i.cl, -100
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.cm, 1461
  %i.co = sdiv i64 %i.cn, 4
  %i.cp = trunc nsw i64 %i.co to i32
  %i.cq = sdiv i32 %i.cl, 400
  %i.cr = and i32 %.sroa.3241.8.extract.trunc, 511
  %i.cs = ashr i32 %.sroa.3246.8.extract.trunc, 10
  %i.ct = add nsw i32 %i.cs, 999999               ; 3 uses
  %.neg1.neg34.i.i.i = sdiv i32 %i.ct, 100
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, 1461
  %.neg35.i.i.i = sdiv i64 %i.cv, -4
  %.neg36.i.i.i = trunc nsw i64 %.neg35.i.i.i to i32
  %.neg33.i.i.i = sdiv i32 %i.ct, -400
  %i.cw = and i32 %.sroa.3246.8.extract.trunc, 511
  %.neg30.i.i.i = add nsw i32 %.neg.i.i.i, %i.cr
  %.neg31.i.i.i = add nsw i32 %.neg30.i.i.i, %i.cq
  %.neg32.i.i.i = add nsw i32 %.neg31.i.i.i, %i.cp
  %i.cx = sub nsw i32 %.neg32.i.i.i, %i.cw
  %i.cy = add nsw i32 %i.cx, %.neg1.neg34.i.i.i
  %i.cz = add nsw i32 %i.cy, %.neg33.i.i.i
  %i.da = add nsw i32 %i.cz, %.neg36.i.i.i
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %i.db, 86400                ; 2 uses
  %.sroa.02.0.extract.trunc.i.i.i = trunc i56 %.sroa.0131.sroa.0.0 to i32 ; 2 uses
  %.sroa.43.0.extract.shift.i.i.i = lshr i64 %.sroa.0240.0.insert.ext, 32
  %.sroa.43.0.extract.trunc.i.i.i = trunc i64 %.sroa.43.0.extract.shift.i.i.i to i8 ; 2 uses
  %.sroa.54.0.extract.shift.i.i.i = lshr i64 %.sroa.0240.0.insert.ext, 40
  %.sroa.54.0.extract.trunc.i.i.i = trunc i64 %.sroa.54.0.extract.shift.i.i.i to i8 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.0240.0.insert.ext, 48
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  %.sroa.010.0.extract.trunc.i.i.i = trunc i56 %.sroa.0216.sroa.0.0.copyload257 to i32 ; 2 uses
  %.sroa.411.0.extract.shift.i.i.i = lshr i64 %.sroa.0244.0.insert.ext, 32
  %.sroa.411.0.extract.trunc.i.i.i = trunc i64 %.sroa.411.0.extract.shift.i.i.i to i8 ; 2 uses
  %.sroa.512.0.extract.shift.i.i.i = lshr i64 %.sroa.0244.0.insert.ext, 40
  %.sroa.512.0.extract.trunc.i.i.i = trunc i64 %.sroa.512.0.extract.shift.i.i.i to i8 ; 2 uses
  %.sroa.613.0.extract.shift.i.i.i = lshr i64 %.sroa.0244.0.insert.ext, 48
  %.sroa.613.0.extract.trunc.i.i.i = trunc nuw nsw i64 %.sroa.613.0.extract.shift.i.i.i to i32
  %i.dd = icmp ult i56 %.sroa.0131.sroa.0.0, 6755399441055744
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = icmp ult i56 %.sroa.0216.sroa.0.0.copyload257, 6755399441055744
  tail call void @llvm.assume(i1 %i.de)
  %i.df = sub nsw i32 %.sroa.6.0.extract.trunc.i.i.i, %.sroa.613.0.extract.trunc.i.i.i
  %i.dg = icmp ult i8 %.sroa.54.0.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp ult i8 %.sroa.512.0.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = sub nsw i8 %.sroa.54.0.extract.trunc.i.i.i, %.sroa.512.0.extract.trunc.i.i.i
  %i.dj = icmp ult i8 %.sroa.43.0.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp ult i8 %.sroa.411.0.extract.trunc.i.i.i, 60
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = sub nsw i8 %.sroa.43.0.extract.trunc.i.i.i, %.sroa.411.0.extract.trunc.i.i.i
  %i.dm = icmp ult i32 %.sroa.02.0.extract.trunc.i.i.i, 1000000000
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp ult i32 %.sroa.010.0.extract.trunc.i.i.i, 1000000000
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = sub nsw i32 %.sroa.02.0.extract.trunc.i.i.i, %.sroa.010.0.extract.trunc.i.i.i ; 5 uses
  %i.dp = mul nsw i32 %i.df, 3600
  %i.dq = sext i8 %i.di to i32
  %i.dr = mul nsw i32 %i.dq, 60
  %i.ds = sext i8 %i.dl to i32
  %i.dt = add nsw i32 %i.dp, %i.ds
  %i.du = add nsw i32 %i.dt, %i.dr                ; 5 uses
  %i.dv = icmp sgt i32 %i.du, 0
  %i.dw = icmp slt i32 %i.do, 0
  %or.cond.i.i.i = and i1 %i.dw, %i.dv
  br i1 %or.cond.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$3zip17hcab3545465470e9aE.exit"
  %i.dx = icmp slt i32 %i.du, 0
  %i.dy = icmp sgt i32 %i.do, 0
  %or.cond1.i.i.i = and i1 %i.dy, %i.dx
  br i1 %or.cond1.i.i.i, label %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.thread.i.i", label %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.i.i"

bb.ak:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$3zip17hcab3545465470e9aE.exit"
  %i.dz = add nsw i32 %i.du, -1
  %i.ea = add nsw i32 %i.do, 1000000000
  br label %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.i.i"

"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.thread.i.i": ; preds = %bb.aj
  %i.eb = add nsw i32 %i.du, 1
  %i.ec = add nuw nsw i32 %i.do, -1000000000
  %i.ed = sext i32 %i.eb to i64
  %i.ee = add nsw i64 %i.dc, %i.ed
  br label %bb.al

"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.i.i": ; preds = %bb.ak, %bb.aj
  %.sroa.024.0.i.i.i = phi i32 [ %i.dz, %bb.ak ], [ %i.du, %bb.aj ]
  %.sroa.025.0.i.i.i = phi i32 [ %i.ea, %bb.ak ], [ %i.do, %bb.aj ] ; 3 uses
  %i.ef = sext i32 %.sroa.024.0.i.i.i to i64
  %i.eg = add nsw i64 %i.dc, %i.ef                ; 3 uses
  %i.eh = icmp slt i64 %i.eg, 0
  %i.ei = icmp sgt i32 %.sroa.025.0.i.i.i, 0
  %or.cond.i9.i.i = and i1 %i.ei, %i.eh
  br i1 %or.cond.i9.i.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.i.i", %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.thread.i.i"
  %i.ej = phi i64 [ %i.ee, %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.thread.i.i" ], [ %i.eg, %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.i.i" ] ; 3 uses
  %.sroa.025.0.i23.i.i = phi i32 [ %i.ec, %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.thread.i.i" ], [ %.sroa.025.0.i.i.i, %"_ZN58_$LT$time..time..Time$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5f8423befaf33bf4E.exit.i.i" ] ; 3 uses
  %i.ek = icmp sgt i64 %i.ej, 0
end_hunk_0
