Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_json-fc69d5d7cdc49911.polars_json.19914fa0e8963027-cgu.03?download=true
inline.NumInlined: 769
inline.NumDeleted: 370
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteraENtNtB26_8iterator10BitmapIterENCINvB2_20primitive_serializeraE0INtNtB31_6option6OptionB2S_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_:bb.a
select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge: ; preds = %select.unfold
  %.pre = load i64, ptr %i.e, align 8, !dbg !2285, !alias.scope !2241
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit, !dbg !2284

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2240), !dbg !2286
  call void @llvm.experimental.noalias.scope.decl(metadata !2243), !dbg !2286
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2287

.noexc8:                                          ; preds = %bb.j
  %i.z = load i64, ptr %i.e, align 8, !dbg !2288, !alias.scope !2244, !noundef !635 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1, !dbg !2289
  call void @llvm.assume(i1 %i.aa), !dbg !2290
  %i.ab = load ptr, ptr %i.f, align 8, !dbg !2291, !alias.scope !2244, !nonnull !635, !noundef !635
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z, !dbg !2292
  store i32 1819047278, ptr %i.ac, align 1, !dbg !2293, !noalias !2240
  %.pre.i.i = load i64, ptr %i.e, align 8, !dbg !2294, !alias.scope !2244
  %i.ad = add i64 %.pre.i.i, 4, !dbg !2294        ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !dbg !2294, !alias.scope !2244
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit, !dbg !2295

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit: ; preds = %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge, %.noexc8
  %i.ae = phi i64 [ %i.ad, %.noexc8 ], [ %.pre, %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge ], !dbg !2285 ; 3 uses
  %.sroa.17.3.ph64 = phi i64 [ %.sroa.17.2, %.noexc8 ], [ %.sroa.17.3.ph.ph, %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge ]
  %.sroa.010.2.ph62 = phi ptr [ %spec.select, %.noexc8 ], [ %.sroa.010.2.ph.ph, %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge ]
  %.sroa.5.1.ph60 = phi ptr [ %.sroa.5.072, %.noexc8 ], [ %.sroa.5.1.ph.ph, %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge ]
  %.sroa.8.3.ph58 = phi ptr [ %.sroa.8.2, %.noexc8 ], [ %.sroa.8.3.ph.ph, %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge ]
  %.sroa.13.2.ph54 = phi i64 [ %.sroa.13.1, %.noexc8 ], [ %.sroa.13.2.ph.ph, %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge ]
  %.sroa.15.2.ph52 = phi i64 [ %.sroa.15.1, %.noexc8 ], [ %.sroa.15.2.ph.ph, %select.unfold._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit_crit_edge ]
  %i.af = load i64, ptr %1, align 8, !dbg !2296, !range !648, !alias.scope !2241, !noundef !635
  %i.ag = icmp eq i64 %i.ae, %i.af, !dbg !2297
  br i1 %i.ag, label %bb.k, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit, !dbg !2297

bb.k:                                             ; preds = %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2298

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.k, %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize20primitive_serializeraE0Ba_.exit
  %i.ah = load ptr, ptr %i.f, align 8, !dbg !2299, !alias.scope !2241, !nonnull !635, !noundef !635
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae, !dbg !2300
  store i8 10, ptr %i.ai, align 1, !dbg !2301
  %i.aj = add i64 %i.ae, 1, !dbg !2302
  store i64 %i.aj, ptr %i.e, align 8, !dbg !2302, !alias.scope !2241
  br label %bb.l, !dbg !2303

bb.l:                                             ; preds = %.noexc, %bb.h, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit
  %.sroa.17.338 = phi i64 [ %.sroa.17.3.ph64, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.17.074, %bb.h ], [ %.sroa.17.2, %.noexc ]
  %.sroa.010.236 = phi ptr [ %.sroa.010.2.ph62, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ null, %bb.h ], [ %spec.select, %.noexc ]
  %.sroa.5.134 = phi ptr [ %.sroa.5.1.ph60, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.5.072, %bb.h ], [ %.sroa.5.072, %.noexc ]
  %.sroa.8.332 = phi ptr [ %.sroa.8.3.ph58, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.8.071, %bb.h ], [ %.sroa.8.2, %.noexc ]
  %.sroa.13.228 = phi i64 [ %.sroa.13.2.ph54, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.13.069, %bb.h ], [ %.sroa.13.1, %.noexc ]
  %.sroa.15.226 = phi i64 [ %.sroa.15.2.ph52, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.15.068, %bb.h ], [ %.sroa.15.1, %.noexc ]
  %exitcond.not = icmp eq i64 %i.g, %2, !dbg !2251
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !dbg !2231

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.b ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #17, !dbg !2304
  resume { ptr, i32 } %eh.lpad-body, !dbg !2305
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB26_8iterator10BitmapIterENCINvB2_16float_serializerdE0INtNtB31_6option6OptionB2S_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2306 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !dbg !2418
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !2419
  %.sroa.014.0.copyload = load ptr, ptr %i.b, align 8, !dbg !2419
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !2419
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !2419
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !2419
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !2419
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !2419
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !2419
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !2419
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !2419
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !2419
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2419
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !2420

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.loopexit.split-lp unwind label %bb.d, !dbg !2421

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2422

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2420
  unreachable, !dbg !2420

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2423
  %.not = icmp eq i64 %2, 0, !dbg !2424
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2403

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.e, !dbg !2403

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.02.076 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.n ]
  %.sroa.17.075 = phi i64 [ %.sroa.7.0.copyload, %.lr.ph ], [ %.sroa.17.339, %bb.n ] ; 6 uses
  %.sroa.011.074 = phi ptr [ %.sroa.014.0.copyload, %.lr.ph ], [ %.sroa.011.237, %bb.n ] ; 4 uses
  %.sroa.5.073 = phi ptr [ %.sroa.2.0.copyload, %.lr.ph ], [ %.sroa.5.135, %bb.n ] ; 10 uses
  %.sroa.8.072 = phi ptr [ %.sroa.3.0.copyload, %.lr.ph ], [ %.sroa.8.333, %bb.n ] ; 9 uses
  %.sroa.13.070 = phi i64 [ %.sroa.515.0.copyload, %.lr.ph ], [ %.sroa.13.229, %bb.n ] ; 4 uses
  %.sroa.15.069 = phi i64 [ %.sroa.6.0.copyload, %.lr.ph ], [ %.sroa.15.227, %bb.n ] ; 4 uses
  %i.g = add nuw i64 %.sroa.02.076, 1, !dbg !2425 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.074, null, !dbg !2426
  br i1 %.not.i, label %bb.h, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !2427

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.073) ]
  %i.h = icmp eq ptr %.sroa.011.074, %.sroa.5.073, !dbg !2428 ; 2 uses
  %spec.select.idx = select i1 %i.h, i64 0, i64 8, !dbg !2429
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.011.074, i64 %spec.select.idx, !dbg !2429 ; 3 uses
  %spec.select68 = select i1 %i.h, ptr null, ptr %.sroa.011.074, !dbg !2429
  %i.i = icmp eq i64 %.sroa.15.069, 0, !dbg !2430
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i.i, !dbg !2430

bb.f:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %i.j = icmp eq i64 %.sroa.17.075, 0, !dbg !2431
  br i1 %i.j, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !2431

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i = call noundef range(i64 0, 65) i64 @llvm.umin.i64(i64 %.sroa.17.075, i64 64), !dbg !2432 ; 2 uses
  %i.k = sub nuw i64 %.sroa.17.075, %.sroa.0.0.i.i.i.i, !dbg !2433
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.072) ]
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %.sroa.8.072, align 1, !dbg !2434, !noalias !2406
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.8.072, i64 8, !dbg !2435
  br label %._crit_edge.i.i.i, !dbg !2436

._crit_edge.i.i.i:                                ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i
  %.sroa.8.1 = phi ptr [ %i.l, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.8.072, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !2437
  %.sroa.17.1 = phi i64 [ %i.k, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.17.075, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !2437
  %i.m = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.15.069, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !2438
  %i.n = phi i64 [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.13.070, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !2439 ; 2 uses
  %i.o = trunc i64 %i.n to i8, !dbg !2439
  %i.p = lshr i64 %i.n, 1, !dbg !2440
  %i.q = add i64 %i.m, -1, !dbg !2438
  %i.r = and i8 %i.o, 1, !dbg !2441
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !2442

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.f
  %.sroa.15.1 = phi i64 [ 0, %bb.f ], [ %i.q, %._crit_edge.i.i.i ], !dbg !2437 ; 3 uses
  %.sroa.13.1 = phi i64 [ %.sroa.13.070, %bb.f ], [ %i.p, %._crit_edge.i.i.i ], !dbg !2437 ; 3 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.072, %bb.f ], [ %.sroa.8.1, %._crit_edge.i.i.i ], !dbg !2437 ; 3 uses
  %.sroa.17.2 = phi i64 [ 0, %bb.f ], [ %.sroa.17.1, %._crit_edge.i.i.i ], !dbg !2437 ; 3 uses
  %.sroa.0.0.i8.i.i = phi i8 [ 2, %bb.f ], [ %i.r, %._crit_edge.i.i.i ], !dbg !2443
  %i.s = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select68)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2444 ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.t = extractvalue { i8, ptr } %i.s, 0, !dbg !2445 ; 2 uses
  %.not.i.i = icmp eq i8 %i.t, 2, !dbg !2446
  br i1 %.not.i.i, label %bb.n, label %bb.g, !dbg !2447

bb.g:                                             ; preds = %.noexc
  %i.u = extractvalue { i8, ptr } %i.s, 1, !dbg !2445 ; 2 uses
  %i.v = trunc nuw i8 %i.t to i1, !dbg !2448
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br i1 %i.v, label %select.unfold, label %bb.j, !dbg !2449

bb.h:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.073), "nonnull"(ptr %.sroa.8.072) ]
  %i.w = icmp eq ptr %.sroa.5.073, %.sroa.8.072, !dbg !2450
  br i1 %i.w, label %bb.n, label %bb.i, !dbg !2451

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.073, i64 8, !dbg !2452
  br label %select.unfold, !dbg !2453

._crit_edge:                                      ; preds = %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #17, !dbg !2454
  ret void, !dbg !2455

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, %bb.c
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

select.unfold:                                    ; preds = %bb.g, %bb.i
  %.sroa.15.2.ph.ph = phi i64 [ %.sroa.15.069, %bb.i ], [ %.sroa.15.1, %bb.g ] ; 2 uses
  %.sroa.13.2.ph.ph = phi i64 [ %.sroa.13.070, %bb.i ], [ %.sroa.13.1, %bb.g ] ; 2 uses
  %.sroa.8.3.ph.ph = phi ptr [ %.sroa.8.072, %bb.i ], [ %.sroa.8.2, %bb.g ] ; 2 uses
  %.sroa.5.1.ph.ph = phi ptr [ %i.x, %bb.i ], [ %.sroa.5.073, %bb.g ] ; 2 uses
  %.sroa.011.2.ph.ph = phi ptr [ null, %bb.i ], [ %spec.select, %bb.g ] ; 2 uses
  %.sroa.17.3.ph.ph = phi i64 [ %.sroa.17.075, %bb.i ], [ %.sroa.17.2, %bb.g ] ; 2 uses
  %.sroa.3.0.i.pn.i.ph.ph = phi ptr [ %.sroa.5.073, %bb.i ], [ %i.u, %bb.g ]
  %i.y = load double, ptr %.sroa.3.0.i.pn.i.ph.ph, align 8, !dbg !2456, !alias.scope !2412, !noundef !635 ; 2 uses
  %i.z = call double @llvm.fabs.f64(double %i.y), !dbg !2457
  %or.cond.i = fcmp ueq double %i.z, +inf, !dbg !2457
  br i1 %or.cond.i, label %bb.l, label %bb.k, !dbg !2457

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !2412), !dbg !2458
  call void @llvm.experimental.noalias.scope.decl(metadata !2413), !dbg !2458
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2459

.noexc7:                                          ; preds = %bb.j
  %i.aa = load i64, ptr %i.e, align 8, !dbg !2460, !alias.scope !2414, !noundef !635 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1, !dbg !2461
  call void @llvm.assume(i1 %i.ab), !dbg !2462
  %i.ac = load ptr, ptr %i.f, align 8, !dbg !2463, !alias.scope !2414, !nonnull !635, !noundef !635
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa, !dbg !2464
  store i32 1819047278, ptr %i.ad, align 1, !dbg !2465, !noalias !2412
  %.pre.i.i = load i64, ptr %i.e, align 8, !dbg !2466, !alias.scope !2414
  %i.ae = add i64 %.pre.i.i, 4, !dbg !2466        ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8, !dbg !2466, !alias.scope !2414
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !2467

bb.k:                                             ; preds = %select.unfold
  invoke void @_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, double noundef %i.y)
          to label %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2468

._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge: ; preds = %bb.k
  %.pre = load i64, ptr %i.e, align 8, !dbg !2469, !alias.scope !2415
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !2468

bb.l:                                             ; preds = %select.unfold
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2470

.noexc9:                                          ; preds = %bb.l
  %i.af = load i64, ptr %i.e, align 8, !dbg !2471, !alias.scope !2417, !noundef !635 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !2472
  call void @llvm.assume(i1 %i.ag), !dbg !2473
  %i.ah = load ptr, ptr %i.f, align 8, !dbg !2474, !alias.scope !2417, !nonnull !635, !noundef !635
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af, !dbg !2475
  store i32 1819047278, ptr %i.ai, align 1, !dbg !2476, !noalias !2412
  %.pre.i4.i = load i64, ptr %i.e, align 8, !dbg !2477, !alias.scope !2417
  %i.aj = add i64 %.pre.i4.i, 4, !dbg !2477       ; 2 uses
  store i64 %i.aj, ptr %i.e, align 8, !dbg !2477, !alias.scope !2417
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !2478

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit: ; preds = %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge, %.noexc9, %.noexc7
  %i.ak = phi i64 [ %i.ae, %.noexc7 ], [ %i.aj, %.noexc9 ], [ %.pre, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ], !dbg !2469 ; 3 uses
  %.sroa.17.3.ph65 = phi i64 [ %.sroa.17.2, %.noexc7 ], [ %.sroa.17.3.ph.ph, %.noexc9 ], [ %.sroa.17.3.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ]
  %.sroa.011.2.ph63 = phi ptr [ %spec.select, %.noexc7 ], [ %.sroa.011.2.ph.ph, %.noexc9 ], [ %.sroa.011.2.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ]
  %.sroa.5.1.ph61 = phi ptr [ %.sroa.5.073, %.noexc7 ], [ %.sroa.5.1.ph.ph, %.noexc9 ], [ %.sroa.5.1.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ]
  %.sroa.8.3.ph59 = phi ptr [ %.sroa.8.2, %.noexc7 ], [ %.sroa.8.3.ph.ph, %.noexc9 ], [ %.sroa.8.3.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ]
  %.sroa.13.2.ph55 = phi i64 [ %.sroa.13.1, %.noexc7 ], [ %.sroa.13.2.ph.ph, %.noexc9 ], [ %.sroa.13.2.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ]
  %.sroa.15.2.ph53 = phi i64 [ %.sroa.15.1, %.noexc7 ], [ %.sroa.15.2.ph.ph, %.noexc9 ], [ %.sroa.15.2.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ]
  %i.al = load i64, ptr %1, align 8, !dbg !2479, !range !648, !alias.scope !2415, !noundef !635
  %i.am = icmp eq i64 %i.ak, %i.al, !dbg !2480
  br i1 %i.am, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit, !dbg !2480

bb.m:                                             ; preds = %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2481

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.m, %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit
  %i.an = load ptr, ptr %i.f, align 8, !dbg !2482, !alias.scope !2415, !nonnull !635, !noundef !635
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak, !dbg !2483
  store i8 10, ptr %i.ao, align 1, !dbg !2484
  %i.ap = add i64 %i.ak, 1, !dbg !2485
  store i64 %i.ap, ptr %i.e, align 8, !dbg !2485, !alias.scope !2415
  br label %bb.n, !dbg !2486

bb.n:                                             ; preds = %.noexc, %bb.h, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit
  %.sroa.17.339 = phi i64 [ %.sroa.17.3.ph65, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.17.075, %bb.h ], [ %.sroa.17.2, %.noexc ]
  %.sroa.011.237 = phi ptr [ %.sroa.011.2.ph63, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ null, %bb.h ], [ %spec.select, %.noexc ]
  %.sroa.5.135 = phi ptr [ %.sroa.5.1.ph61, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.5.073, %bb.h ], [ %.sroa.5.073, %.noexc ]
  %.sroa.8.333 = phi ptr [ %.sroa.8.3.ph59, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.8.072, %bb.h ], [ %.sroa.8.2, %.noexc ]
  %.sroa.13.229 = phi i64 [ %.sroa.13.2.ph55, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.13.070, %bb.h ], [ %.sroa.13.1, %.noexc ]
  %.sroa.15.227 = phi i64 [ %.sroa.15.2.ph53, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.15.069, %bb.h ], [ %.sroa.15.1, %.noexc ]
  %exitcond.not = icmp eq i64 %i.g, %2, !dbg !2424
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !dbg !2403

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.b ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #17, !dbg !2487
  resume { ptr, i32 } %eh.lpad-body, !dbg !2488
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB11_5array8iterator15ArrayValuesIterINtNtB2Z_4utf89Utf8ArrayxEENtNtB26_8iterator10BitmapIterENCINvB2_15utf8_serializerxE0INtNtCscgRAwXFJnXP_4core6option6OptionB2S_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2489 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false), !dbg !2628
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2629
  %.sroa.018.0.copyload = load ptr, ptr %i.d, align 8, !dbg !2629 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2629
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !2629 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2629
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !2629 ; 3 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2629
  %.sroa.419.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !dbg !2629 ; 3 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !2629
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8, !dbg !2629
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !2629
  %.sroa.721.0.copyload = load i64, ptr %.sroa.721.0..sroa_idx, align 8, !dbg !2629
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !2629
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !2629
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b, !dbg !2630

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split unwind label %bb.d, !dbg !2631

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2632

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2630
  unreachable, !dbg !2630

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2633
  %.not = icmp eq i64 %2, 0, !dbg !2634
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2610

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %.not.i = icmp eq ptr %.sroa.018.0.copyload, null
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = inttoptr i64 %.sroa.2.0.copyload to ptr  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %bb.e, !dbg !2610

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_4utf89Utf8ArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread.us, %.lr.ph.split.us
  %.sroa.01.0121.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.r, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_4utf89Utf8ArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread.us ]
  %.sroa.7.0119.us = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.split.us ], [ %.sroa.7.242.us, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_4utf89Utf8ArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread.us ] ; 3 uses
  %i.r = add nuw i64 %.sroa.01.0121.us, 1, !dbg !2635 ; 2 uses
  %i.s = icmp eq i64 %.sroa.7.0119.us, %.sroa.419.0.copyload, !dbg !2636
  br i1 %i.s, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_4utf89Utf8ArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread.us, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.us, !dbg !2636

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.us: ; preds = %bb.e
  %i.t = add i64 %.sroa.7.0119.us, 1, !dbg !2637  ; 4 uses
  %i.u = load i64, ptr %i.o, align 8, !dbg !2638, !noalias !2613, !noundef !635
  %i.v = icmp ult i64 %i.t, %i.u, !dbg !2639
  call void @llvm.assume(i1 %i.v), !dbg !2640
  %i.w = load ptr, ptr %i.p, align 8, !dbg !2641, !noalias !2613, !noundef !635 ; 2 uses
  %.not3.i.us = icmp eq ptr %i.w, null, !dbg !2642
  br i1 %.not3.i.us, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_4utf89Utf8ArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread.us, label %.thread94.us, !dbg !2643

.thread94.us:                                     ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.us
  %i.x = load ptr, ptr %i.q, align 8, !dbg !2644, !noalias !2613, !noundef !635 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.7.0119.us, !dbg !2645
  %.val1.i.i.i.i.us = load i64, ptr %i.y, align 8, !dbg !2646, !noalias !2613, !noundef !635 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.val1.i.i.i.i.us, !dbg !2647
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.t, !dbg !2648
  %.val.i.i.i.i.us = load i64, ptr %i.aa, align 8, !dbg !2649, !noalias !2613, !noundef !635
  %i.ab = sub nuw i64 %.val.i.i.i.i.us, %.val1.i.i.i.i.us, !dbg !2650
  call void @llvm.experimental.noalias.scope.decl(metadata !2614), !dbg !2651
  %i.ac = invoke noundef ptr @_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write4utf89write_strINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEB8_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %.noexc8.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2652 ; 2 uses

.noexc8.us:                                       ; preds = %.thread94.us
  %.not.i.i7.us = icmp eq ptr %i.ac, null, !dbg !2653
  br i1 %.not.i.i7.us, label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0Ba_.exit.us, label %.split.us, !dbg !2654, !prof !681

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0Ba_.exit.us: ; preds = %.noexc8.us
  %i.ad = load i64, ptr %i.l, align 8, !dbg !2655, !alias.scope !2615, !noundef !635 ; 3 uses
  %i.ae = load i64, ptr %1, align 8, !dbg !2656, !range !648, !alias.scope !2615, !noundef !635
  %i.af = icmp eq i64 %i.ad, %i.ae, !dbg !2657
  br i1 %i.af, label %bb.f, label %bb.g, !dbg !2657

bb.f:                                             ; preds = %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0Ba_.exit.us
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.g unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2658

bb.g:                                             ; preds = %bb.f, %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize15utf8_serializerxE0Ba_.exit.us
  %i.ag = load ptr, ptr %i.m, align 8, !dbg !2659, !alias.scope !2615, !nonnull !635, !noundef !635
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad, !dbg !2660
  store i8 10, ptr %i.ah, align 1, !dbg !2661
  %i.ai = add i64 %i.ad, 1, !dbg !2662
  store i64 %i.ai, ptr %i.l, align 8, !dbg !2662, !alias.scope !2615
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_4utf89Utf8ArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread.us, !dbg !2663

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_4utf89Utf8ArrayxEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread.us: ; preds = %bb.g, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.us, %bb.e
end_hunk_0
begin_hunk_1_@_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB11_5array8iterator15ArrayValuesIterINtNtB2Z_7binview22BinaryViewArrayGenericeEENtNtB26_8iterator10BitmapIterENCNvB2_19utf8view_serializer0INtNtCscgRAwXFJnXP_4core6option6OptionB2S_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_:bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
          to label %bb.o unwind label %bb.n, !dbg !2981

bb.n:                                             ; preds = %.split.us
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %.loopexit.split unwind label %bb.p, !dbg !2982

bb.o:                                             ; preds = %.split.us
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !2983
  unreachable, !dbg !2983

.thread:                                          ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread66
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc11 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2984

.noexc11:                                         ; preds = %.thread
  %i.cn = load i64, ptr %i.m, align 8, !dbg !2985, !alias.scope !2884, !noundef !635 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1, !dbg !2986
  call void @llvm.assume(i1 %i.co), !dbg !2987
  %i.cp = load ptr, ptr %i.n, align 8, !dbg !2988, !alias.scope !2884, !nonnull !635, !noundef !635
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn, !dbg !2989
  store i32 1819047278, ptr %i.cq, align 1, !dbg !2990, !noalias !2885
  %.pre.i.i = load i64, ptr %i.m, align 8, !dbg !2991, !alias.scope !2884
  %i.cr = add i64 %.pre.i.i, 4, !dbg !2991        ; 2 uses
  store i64 %i.cr, ptr %i.m, align 8, !dbg !2991, !alias.scope !2884
  br label %_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit, !dbg !2992

_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit: ; preds = %.noexc8._RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit_crit_edge, %.noexc11
  %i.cs = phi i64 [ %.pre, %.noexc8._RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit_crit_edge ], [ %i.cr, %.noexc11 ], !dbg !2921 ; 3 uses
  %i.ct = load i64, ptr %1, align 8, !dbg !2922, !range !648, !alias.scope !2870, !noundef !635
  %i.cu = icmp eq i64 %i.cs, %i.ct, !dbg !2923
  br i1 %i.cu, label %bb.q, label %bb.r, !dbg !2923

bb.q:                                             ; preds = %_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.r unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2924

bb.r:                                             ; preds = %_RNCNvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize19utf8view_serializer0B9_.exit, %bb.q
  %i.cv = load ptr, ptr %i.n, align 8, !dbg !2925, !alias.scope !2870, !nonnull !635, !noundef !635
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs, !dbg !2926
  store i8 10, ptr %i.cw, align 1, !dbg !2927
  %i.cx = add i64 %i.cs, 1, !dbg !2928
  store i64 %i.cx, ptr %i.m, align 8, !dbg !2928, !alias.scope !2870
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, !dbg !2929

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread: ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit, %bb.r
  %exitcond.not = icmp eq i64 %i.ax, %2, !dbg !2892
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !dbg !2862

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.cl, %bb.n ], [ %lpad.loopexit.split-lp150, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 96, i64 noundef 8) #17, !dbg !2993
  resume { ptr, i32 } %eh.lpad-body, !dbg !2994
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB26_8iterator10BitmapIterENCINvB2_16float_serializerfE0INtNtB31_6option6OptionB2S_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2995 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !dbg !3107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3108
  %.sroa.014.0.copyload = load ptr, ptr %i.b, align 8, !dbg !3108
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3108
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !3108
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !3108
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !3108
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !3108
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !3108
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !3108
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !3108
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !3108
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !3108
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !3109

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.loopexit.split-lp unwind label %bb.d, !dbg !3110

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3111

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !3109
  unreachable, !dbg !3109

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3112
  %.not = icmp eq i64 %2, 0, !dbg !3113
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !3092

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.e, !dbg !3092

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.02.076 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.n ]
  %.sroa.17.075 = phi i64 [ %.sroa.7.0.copyload, %.lr.ph ], [ %.sroa.17.339, %bb.n ] ; 6 uses
  %.sroa.011.074 = phi ptr [ %.sroa.014.0.copyload, %.lr.ph ], [ %.sroa.011.237, %bb.n ] ; 4 uses
  %.sroa.5.073 = phi ptr [ %.sroa.2.0.copyload, %.lr.ph ], [ %.sroa.5.135, %bb.n ] ; 10 uses
  %.sroa.8.072 = phi ptr [ %.sroa.3.0.copyload, %.lr.ph ], [ %.sroa.8.333, %bb.n ] ; 9 uses
  %.sroa.13.070 = phi i64 [ %.sroa.515.0.copyload, %.lr.ph ], [ %.sroa.13.229, %bb.n ] ; 4 uses
  %.sroa.15.069 = phi i64 [ %.sroa.6.0.copyload, %.lr.ph ], [ %.sroa.15.227, %bb.n ] ; 4 uses
  %i.g = add nuw i64 %.sroa.02.076, 1, !dbg !3114 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.074, null, !dbg !3115
  br i1 %.not.i, label %bb.h, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !3116

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.073) ]
  %i.h = icmp eq ptr %.sroa.011.074, %.sroa.5.073, !dbg !3117 ; 2 uses
  %spec.select.idx = select i1 %i.h, i64 0, i64 4, !dbg !3118
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.011.074, i64 %spec.select.idx, !dbg !3118 ; 3 uses
  %spec.select68 = select i1 %i.h, ptr null, ptr %.sroa.011.074, !dbg !3118
  %i.i = icmp eq i64 %.sroa.15.069, 0, !dbg !3119
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i.i, !dbg !3119

bb.f:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %i.j = icmp eq i64 %.sroa.17.075, 0, !dbg !3120
  br i1 %i.j, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !3120

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i = call noundef range(i64 0, 65) i64 @llvm.umin.i64(i64 %.sroa.17.075, i64 64), !dbg !3121 ; 2 uses
  %i.k = sub nuw i64 %.sroa.17.075, %.sroa.0.0.i.i.i.i, !dbg !3122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.072) ]
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %.sroa.8.072, align 1, !dbg !3123, !noalias !3095
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.8.072, i64 8, !dbg !3124
  br label %._crit_edge.i.i.i, !dbg !3125

._crit_edge.i.i.i:                                ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i
  %.sroa.8.1 = phi ptr [ %i.l, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.8.072, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3126
  %.sroa.17.1 = phi i64 [ %i.k, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.17.075, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3126
  %i.m = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.15.069, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3127
  %i.n = phi i64 [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.13.070, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3128 ; 2 uses
  %i.o = trunc i64 %i.n to i8, !dbg !3128
  %i.p = lshr i64 %i.n, 1, !dbg !3129
  %i.q = add i64 %i.m, -1, !dbg !3127
  %i.r = and i8 %i.o, 1, !dbg !3130
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !3131

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.f
  %.sroa.15.1 = phi i64 [ 0, %bb.f ], [ %i.q, %._crit_edge.i.i.i ], !dbg !3126 ; 3 uses
  %.sroa.13.1 = phi i64 [ %.sroa.13.070, %bb.f ], [ %i.p, %._crit_edge.i.i.i ], !dbg !3126 ; 3 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.072, %bb.f ], [ %.sroa.8.1, %._crit_edge.i.i.i ], !dbg !3126 ; 3 uses
  %.sroa.17.2 = phi i64 [ 0, %bb.f ], [ %.sroa.17.1, %._crit_edge.i.i.i ], !dbg !3126 ; 3 uses
  %.sroa.0.0.i8.i.i = phi i8 [ 2, %bb.f ], [ %i.r, %._crit_edge.i.i.i ], !dbg !3132
  %i.s = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select68)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3133 ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.t = extractvalue { i8, ptr } %i.s, 0, !dbg !3134 ; 2 uses
  %.not.i.i = icmp eq i8 %i.t, 2, !dbg !3135
  br i1 %.not.i.i, label %bb.n, label %bb.g, !dbg !3136

bb.g:                                             ; preds = %.noexc
  %i.u = extractvalue { i8, ptr } %i.s, 1, !dbg !3134 ; 2 uses
  %i.v = trunc nuw i8 %i.t to i1, !dbg !3137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br i1 %i.v, label %select.unfold, label %bb.j, !dbg !3138

bb.h:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.073), "nonnull"(ptr %.sroa.8.072) ]
  %i.w = icmp eq ptr %.sroa.5.073, %.sroa.8.072, !dbg !3139
  br i1 %i.w, label %bb.n, label %bb.i, !dbg !3140

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.073, i64 4, !dbg !3141
  br label %select.unfold, !dbg !3142

._crit_edge:                                      ; preds = %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #17, !dbg !3143
  ret void, !dbg !3144

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, %bb.c
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

select.unfold:                                    ; preds = %bb.g, %bb.i
  %.sroa.15.2.ph.ph = phi i64 [ %.sroa.15.069, %bb.i ], [ %.sroa.15.1, %bb.g ] ; 2 uses
  %.sroa.13.2.ph.ph = phi i64 [ %.sroa.13.070, %bb.i ], [ %.sroa.13.1, %bb.g ] ; 2 uses
  %.sroa.8.3.ph.ph = phi ptr [ %.sroa.8.072, %bb.i ], [ %.sroa.8.2, %bb.g ] ; 2 uses
  %.sroa.5.1.ph.ph = phi ptr [ %i.x, %bb.i ], [ %.sroa.5.073, %bb.g ] ; 2 uses
  %.sroa.011.2.ph.ph = phi ptr [ null, %bb.i ], [ %spec.select, %bb.g ] ; 2 uses
  %.sroa.17.3.ph.ph = phi i64 [ %.sroa.17.075, %bb.i ], [ %.sroa.17.2, %bb.g ] ; 2 uses
  %.sroa.3.0.i.pn.i.ph.ph = phi ptr [ %.sroa.5.073, %bb.i ], [ %i.u, %bb.g ]
  %i.y = load float, ptr %.sroa.3.0.i.pn.i.ph.ph, align 4, !dbg !3145, !alias.scope !3101, !noundef !635 ; 2 uses
  %i.z = call float @llvm.fabs.f32(float %i.y), !dbg !3146
  %or.cond.i = fcmp ueq float %i.z, +inf, !dbg !3146
  br i1 %or.cond.i, label %bb.l, label %bb.k, !dbg !3146

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !3101), !dbg !3147
  call void @llvm.experimental.noalias.scope.decl(metadata !3102), !dbg !3147
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3148

.noexc7:                                          ; preds = %bb.j
  %i.aa = load i64, ptr %i.e, align 8, !dbg !3149, !alias.scope !3103, !noundef !635 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1, !dbg !3150
  call void @llvm.assume(i1 %i.ab), !dbg !3151
  %i.ac = load ptr, ptr %i.f, align 8, !dbg !3152, !alias.scope !3103, !nonnull !635, !noundef !635
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa, !dbg !3153
  store i32 1819047278, ptr %i.ad, align 1, !dbg !3154, !noalias !3101
  %.pre.i.i = load i64, ptr %i.e, align 8, !dbg !3155, !alias.scope !3103
  %i.ae = add i64 %.pre.i.i, 4, !dbg !3155        ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8, !dbg !3155, !alias.scope !3103
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !3156

bb.k:                                             ; preds = %select.unfold
  invoke void @_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, float noundef %i.y)
          to label %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3157

._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge: ; preds = %bb.k
  %.pre = load i64, ptr %i.e, align 8, !dbg !3158, !alias.scope !3104
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !3157

bb.l:                                             ; preds = %select.unfold
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3159

.noexc9:                                          ; preds = %bb.l
  %i.af = load i64, ptr %i.e, align 8, !dbg !3160, !alias.scope !3106, !noundef !635 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !3161
  call void @llvm.assume(i1 %i.ag), !dbg !3162
  %i.ah = load ptr, ptr %i.f, align 8, !dbg !3163, !alias.scope !3106, !nonnull !635, !noundef !635
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af, !dbg !3164
  store i32 1819047278, ptr %i.ai, align 1, !dbg !3165, !noalias !3101
  %.pre.i4.i = load i64, ptr %i.e, align 8, !dbg !3166, !alias.scope !3106
  %i.aj = add i64 %.pre.i4.i, 4, !dbg !3166       ; 2 uses
  store i64 %i.aj, ptr %i.e, align 8, !dbg !3166, !alias.scope !3106
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !3167

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit: ; preds = %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge, %.noexc9, %.noexc7
  %i.ak = phi i64 [ %i.ae, %.noexc7 ], [ %i.aj, %.noexc9 ], [ %.pre, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ], !dbg !3158 ; 3 uses
  %.sroa.17.3.ph65 = phi i64 [ %.sroa.17.2, %.noexc7 ], [ %.sroa.17.3.ph.ph, %.noexc9 ], [ %.sroa.17.3.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ]
  %.sroa.011.2.ph63 = phi ptr [ %spec.select, %.noexc7 ], [ %.sroa.011.2.ph.ph, %.noexc9 ], [ %.sroa.011.2.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ]
  %.sroa.5.1.ph61 = phi ptr [ %.sroa.5.073, %.noexc7 ], [ %.sroa.5.1.ph.ph, %.noexc9 ], [ %.sroa.5.1.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ]
  %.sroa.8.3.ph59 = phi ptr [ %.sroa.8.2, %.noexc7 ], [ %.sroa.8.3.ph.ph, %.noexc9 ], [ %.sroa.8.3.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ]
  %.sroa.13.2.ph55 = phi i64 [ %.sroa.13.1, %.noexc7 ], [ %.sroa.13.2.ph.ph, %.noexc9 ], [ %.sroa.13.2.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ]
  %.sroa.15.2.ph53 = phi i64 [ %.sroa.15.1, %.noexc7 ], [ %.sroa.15.2.ph.ph, %.noexc9 ], [ %.sroa.15.2.ph.ph, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ]
  %i.al = load i64, ptr %1, align 8, !dbg !3168, !range !648, !alias.scope !3104, !noundef !635
  %i.am = icmp eq i64 %i.ak, %i.al, !dbg !3169
  br i1 %i.am, label %bb.m, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit, !dbg !3169

bb.m:                                             ; preds = %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3170

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.m, %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit
  %i.an = load ptr, ptr %i.f, align 8, !dbg !3171, !alias.scope !3104, !nonnull !635, !noundef !635
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak, !dbg !3172
  store i8 10, ptr %i.ao, align 1, !dbg !3173
  %i.ap = add i64 %i.ak, 1, !dbg !3174
  store i64 %i.ap, ptr %i.e, align 8, !dbg !3174, !alias.scope !3104
  br label %bb.n, !dbg !3175

bb.n:                                             ; preds = %.noexc, %bb.h, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit
  %.sroa.17.339 = phi i64 [ %.sroa.17.3.ph65, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.17.075, %bb.h ], [ %.sroa.17.2, %.noexc ]
  %.sroa.011.237 = phi ptr [ %.sroa.011.2.ph63, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ null, %bb.h ], [ %spec.select, %.noexc ]
  %.sroa.5.135 = phi ptr [ %.sroa.5.1.ph61, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.5.073, %bb.h ], [ %.sroa.5.073, %.noexc ]
  %.sroa.8.333 = phi ptr [ %.sroa.8.3.ph59, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.8.072, %bb.h ], [ %.sroa.8.2, %.noexc ]
  %.sroa.13.229 = phi i64 [ %.sroa.13.2.ph55, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.13.070, %bb.h ], [ %.sroa.13.1, %.noexc ]
  %.sroa.15.227 = phi i64 [ %.sroa.15.2.ph53, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit ], [ %.sroa.15.069, %bb.h ], [ %.sroa.15.1, %.noexc ]
  %exitcond.not = icmp eq i64 %i.g, %2, !dbg !3113
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !dbg !3092

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.b ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 88, i64 noundef 8) #17, !dbg !3176
  resume { ptr, i32 } %eh.lpad-body, !dbg !3177
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtB26_8iterator10BitmapIterENCINvB2_20primitive_serializerhE0INtNtB31_6option6OptionB2S_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3178 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !dbg !3277
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !3278
  %.sroa.013.0.copyload = load ptr, ptr %i.b, align 8, !dbg !3278
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !3278
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !3278
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !3278
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !3278
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !3278
  %.sroa.514.0.copyload = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !3278
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !3278
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !3278
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !3278
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !3278
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !3279

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.loopexit.split-lp unwind label %bb.d, !dbg !3280

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3281

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !3279
  unreachable, !dbg !3279

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3282
  %.not = icmp eq i64 %2, 0, !dbg !3283
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !3263

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.e, !dbg !3263

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.02.075 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.l ]
  %.sroa.17.074 = phi i64 [ %.sroa.7.0.copyload, %.lr.ph ], [ %.sroa.17.338, %bb.l ] ; 6 uses
  %.sroa.010.073 = phi ptr [ %.sroa.013.0.copyload, %.lr.ph ], [ %.sroa.010.236, %bb.l ] ; 4 uses
  %.sroa.5.072 = phi ptr [ %.sroa.2.0.copyload, %.lr.ph ], [ %.sroa.5.134, %bb.l ] ; 10 uses
  %.sroa.8.071 = phi ptr [ %.sroa.3.0.copyload, %.lr.ph ], [ %.sroa.8.332, %bb.l ] ; 9 uses
  %.sroa.13.069 = phi i64 [ %.sroa.514.0.copyload, %.lr.ph ], [ %.sroa.13.228, %bb.l ] ; 4 uses
  %.sroa.15.068 = phi i64 [ %.sroa.6.0.copyload, %.lr.ph ], [ %.sroa.15.226, %bb.l ] ; 4 uses
  %i.g = add nuw i64 %.sroa.02.075, 1, !dbg !3284 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.010.073, null, !dbg !3285
  br i1 %.not.i, label %bb.h, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !3286

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.072) ]
  %i.h = icmp ne ptr %.sroa.010.073, %.sroa.5.072, !dbg !3287 ; 2 uses
  %spec.select.idx = zext i1 %i.h to i64, !dbg !3288
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.010.073, i64 %spec.select.idx, !dbg !3288 ; 3 uses
  %spec.select67 = select i1 %i.h, ptr %.sroa.010.073, ptr null, !dbg !3288
  %i.i = icmp eq i64 %.sroa.15.068, 0, !dbg !3289
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i.i, !dbg !3289

bb.f:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i
  %i.j = icmp eq i64 %.sroa.17.074, 0, !dbg !3290
  br i1 %i.j, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i, !dbg !3290

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i = call noundef range(i64 0, 65) i64 @llvm.umin.i64(i64 %.sroa.17.074, i64 64), !dbg !3291 ; 2 uses
  %i.k = sub nuw i64 %.sroa.17.074, %.sroa.0.0.i.i.i.i, !dbg !3292
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.071) ]
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %.sroa.8.071, align 1, !dbg !3293, !noalias !3266
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.8.071, i64 8, !dbg !3294
  br label %._crit_edge.i.i.i, !dbg !3295

._crit_edge.i.i.i:                                ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i
  %.sroa.8.1 = phi ptr [ %i.l, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.8.071, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3296
  %.sroa.17.1 = phi i64 [ %i.k, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.17.074, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3296
  %i.m = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.15.068, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3297
  %i.n = phi i64 [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i ], [ %.sroa.13.069, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], !dbg !3298 ; 2 uses
  %i.o = trunc i64 %i.n to i8, !dbg !3298
  %i.p = lshr i64 %i.n, 1, !dbg !3299
  %i.q = add i64 %i.m, -1, !dbg !3297
  %i.r = and i8 %i.o, 1, !dbg !3300
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !3301

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.f
  %.sroa.15.1 = phi i64 [ 0, %bb.f ], [ %i.q, %._crit_edge.i.i.i ], !dbg !3296 ; 3 uses
  %.sroa.13.1 = phi i64 [ %.sroa.13.069, %bb.f ], [ %i.p, %._crit_edge.i.i.i ], !dbg !3296 ; 3 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.071, %bb.f ], [ %.sroa.8.1, %._crit_edge.i.i.i ], !dbg !3296 ; 3 uses
  %.sroa.17.2 = phi i64 [ 0, %bb.f ], [ %.sroa.17.1, %._crit_edge.i.i.i ], !dbg !3296 ; 3 uses
  %.sroa.0.0.i8.i.i = phi i8 [ 2, %bb.f ], [ %i.r, %._crit_edge.i.i.i ], !dbg !3302
  %i.s = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRhECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) %spec.select67)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3303 ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.t = extractvalue { i8, ptr } %i.s, 0, !dbg !3304 ; 2 uses
  %.not.i.i = icmp eq i8 %i.t, 2, !dbg !3305
  br i1 %.not.i.i, label %bb.l, label %bb.g, !dbg !3306

bb.g:                                             ; preds = %.noexc
  %i.u = extractvalue { i8, ptr } %i.s, 1, !dbg !3304 ; 2 uses
  %i.v = trunc nuw i8 %i.t to i1, !dbg !3307
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br i1 %i.v, label %select.unfold, label %bb.j, !dbg !3308

bb.h:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.072), "nonnull"(ptr %.sroa.8.071) ]
  %i.w = icmp eq ptr %.sroa.5.072, %.sroa.8.071, !dbg !3309
  br i1 %i.w, label %bb.l, label %bb.i, !dbg !3310
end_hunk_1
begin_hunk_2_@_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB26_4skip4SkipINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRaINtNtNtB2a_5slice4iter4IteraENtNtB3f_8iterator10BitmapIterEEENCINvB2_20primitive_serializeraE0INtNtB2a_6option6OptionB41_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_:bb.a
  %exitcond.not = icmp eq i64 %i.r, %2, !dbg !8647
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !dbg !8617, !llvm.loop !8604

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.loopexit.split-lp25, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 104, i64 noundef 8) #17, !dbg !8728
  resume { ptr, i32 } %eh.lpad-body, !dbg !8729
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB26_4skip4SkipINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRdINtNtNtB2a_5slice4iter4IterdENtNtB3f_8iterator10BitmapIterEEENCINvB2_16float_serializerdE0INtNtB2a_6option6OptionB41_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8730 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !dbg !8878
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8879
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !8880

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.loopexit.split-lp unwind label %bb.d, !dbg !8881

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8882

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !8880
  unreachable, !dbg !8880

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !8884
  %.not = icmp eq i64 %2, 0, !dbg !8885
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !8854

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.f, align 8, !dbg !8886, !alias.scope !8855, !noundef !635 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !8886
  br i1 %i.p, label %._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %.thread
  %.pr = load i64, ptr %i.f, align 8, !dbg !8886, !alias.scope !8855
  br label %.lr.ph.split, !dbg !8887

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.q = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.o, %.lr.ph ], !dbg !8886 ; 2 uses
  %.sroa.02.013 = phi i64 [ %i.r, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.r = add nuw i64 %.sroa.02.013, 1, !dbg !8887 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8855), !dbg !8888
  %i.s = icmp eq i64 %i.q, 0, !dbg !8886
  br i1 %i.s, label %.thread, label %bb.e, !dbg !8886

bb.e:                                             ; preds = %.lr.ph.split
  %i.t = add i64 %i.q, -1, !dbg !8889
  store i64 %i.t, ptr %i.f, align 8, !dbg !8889, !alias.scope !8855
  call void @llvm.experimental.noalias.scope.decl(metadata !8858), !dbg !8890
  %i.u = load i64, ptr %i.g, align 8, !dbg !8891, !alias.scope !8859, !noundef !635 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0, !dbg !8891
  br i1 %.not.i.i, label %bb.f, label %bb.n, !dbg !8892, !prof !681

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !8860), !dbg !8893
  %i.v = load ptr, ptr %i.b, align 8, !dbg !8894, !alias.scope !8861, !noundef !635 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.v, null, !dbg !8894
  br i1 %.not.i.i.i, label %bb.l, label %bb.g, !dbg !8895

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !8862), !dbg !8896
  %i.w = load ptr, ptr %i.h, align 8, !dbg !8897, !alias.scope !8863, !nonnull !635, !noundef !635
  %i.x = icmp eq ptr %i.v, %i.w, !dbg !8898
  br i1 %i.x, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.h, !dbg !8899

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !8900
  store ptr %i.y, ptr %i.b, align 8, !dbg !8901, !alias.scope !8863
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !8902

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ null, %bb.g ], !dbg !8903
  call void @llvm.experimental.noalias.scope.decl(metadata !8864), !dbg !8904
  %i.z = load i64, ptr %i.j, align 8, !dbg !8905, !alias.scope !8865, !noundef !635 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0, !dbg !8905
  br i1 %i.aa, label %bb.i, label %._crit_edge.i.i.i.i.i, !dbg !8905

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !8906, !alias.scope !8865
  br label %bb.j, !dbg !8905

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %i.ab = load i64, ptr %i.k, align 8, !dbg !8907, !alias.scope !8865, !noundef !635 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !8907
  br i1 %i.ac, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !8907

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i.i = call noundef range(i64 0, 65) i64 @llvm.umin.i64(i64 %i.ab, i64 64), !dbg !8908 ; 2 uses
  %i.ad = sub nuw i64 %i.ab, %.sroa.0.0.i.i.i.i.i.i, !dbg !8909
  store i64 %i.ad, ptr %i.k, align 8, !dbg !8909, !alias.scope !8865
  %i.ae = load ptr, ptr %i.i, align 8, !dbg !8910, !alias.scope !8865, !nonnull !635, !noundef !635 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.ae, align 1, !dbg !8911, !noalias !8865
  %i.af = load i64, ptr %i.l, align 8, !dbg !8912, !alias.scope !8865, !noundef !635
  %i.ag = add i64 %i.af, -8, !dbg !8913
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !8914
  store ptr %i.ah, ptr %i.i, align 8, !dbg !8915, !alias.scope !8865
  store i64 %i.ag, ptr %i.l, align 8, !dbg !8915, !alias.scope !8865
  br label %bb.j, !dbg !8916

bb.j:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.ai = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !8917
  %i.aj = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !8906 ; 2 uses
  %i.ak = trunc i64 %i.aj to i8, !dbg !8906
  %i.al = lshr i64 %i.aj, 1, !dbg !8918
  store i64 %i.al, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !8918, !alias.scope !8865
  %i.am = add i64 %i.ai, -1, !dbg !8917
  store i64 %i.am, ptr %i.j, align 8, !dbg !8917, !alias.scope !8865
  %i.an = and i8 %i.ak, 1, !dbg !8919
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !8920

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ %i.an, %bb.j ], [ 2, %bb.i ], !dbg !8921
  %i.ao = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.0.0.i.i.i.i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8922 ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %i.ap = extractvalue { i8, ptr } %i.ao, 0, !dbg !8923 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.ap, 2, !dbg !8924
  br i1 %.not.i.i.i.i, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.k, !dbg !8925

bb.k:                                             ; preds = %.noexc
  %i.aq = extractvalue { i8, ptr } %i.ao, 1, !dbg !8923 ; 2 uses
  %i.ar = trunc nuw i8 %i.ap to i1, !dbg !8926
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %..i.i.i.i = select i1 %i.ar, ptr %i.aq, ptr null, !dbg !8927
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !8928

bb.l:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.h, align 8, !dbg !8929, !alias.scope !8866, !nonnull !635, !noundef !635 ; 3 uses
  %i.at = load ptr, ptr %i.i, align 8, !dbg !8930, !alias.scope !8866, !nonnull !635, !noundef !635
  %i.au = icmp eq ptr %i.as, %i.at, !dbg !8931
  br i1 %i.au, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.m, !dbg !8932

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !8933
  store ptr %i.av, ptr %i.h, align 8, !dbg !8934, !alias.scope !8866
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !8935

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %.noexc
  %.sroa.0.0.i.pn.i.i.i = phi i64 [ 0, %.noexc ], [ 1, %bb.k ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.sroa.3.0.i.pn.i.i.i = phi ptr [ undef, %.noexc ], [ %..i.i.i.i, %bb.k ], [ %i.as, %bb.m ], [ null, %bb.l ]
  %.pn.i.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.pn.i.i.i, 0, !dbg !8936
  %.merged.i.i.i = insertvalue { i64, ptr } %.pn.i.i.i, ptr %.sroa.3.0.i.pn.i.i.i, 1, !dbg !8936
  br label %bb.o, !dbg !8937

bb.n:                                             ; preds = %bb.e
  store i64 0, ptr %i.g, align 8, !dbg !8938, !alias.scope !8859
  %i.aw = invoke fastcc { i64, ptr } @_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator3nthCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef %i.u) #22
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8939

._crit_edge:                                      ; preds = %.thread, %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8867
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 104, i64 noundef 8) #17, !dbg !8940
  ret void, !dbg !8941

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.c
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, %bb.n
  %.pn.i.i = phi { i64, ptr } [ %.merged.i.i.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRdINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterdENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], [ %i.aw, %bb.n ] ; 2 uses
  %i.ax = extractvalue { i64, ptr } %.pn.i.i, 0, !dbg !8890
  %i.ay = extractvalue { i64, ptr } %.pn.i.i, 1, !dbg !8890 ; 2 uses
  %i.az = trunc nuw i64 %i.ax to i1, !dbg !8942
  br i1 %i.az, label %bb.p, label %.thread, !dbg !8942

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !8872), !dbg !8943
  call void @llvm.experimental.noalias.scope.decl(metadata !8873), !dbg !8943
  %.not.i = icmp eq ptr %i.ay, null, !dbg !8944
  br i1 %.not.i, label %bb.r, label %bb.q, !dbg !8945

bb.q:                                             ; preds = %bb.p
  %i.ba = load double, ptr %i.ay, align 8, !dbg !8946, !alias.scope !8872, !noundef !635 ; 2 uses
  %i.bb = call double @llvm.fabs.f64(double %i.ba), !dbg !8947
  %or.cond.i = fcmp ueq double %i.bb, +inf, !dbg !8947
  br i1 %or.cond.i, label %bb.t, label %bb.s, !dbg !8947

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8948

.noexc7:                                          ; preds = %bb.r
  %i.bc = load i64, ptr %i.m, align 8, !dbg !8949, !alias.scope !8874, !noundef !635 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1, !dbg !8950
  call void @llvm.assume(i1 %i.bd), !dbg !8951
  %i.be = load ptr, ptr %i.n, align 8, !dbg !8952, !alias.scope !8874, !nonnull !635, !noundef !635
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc, !dbg !8953
  store i32 1819047278, ptr %i.bf, align 1, !dbg !8954, !noalias !8872
  %.pre.i.i = load i64, ptr %i.m, align 8, !dbg !8955, !alias.scope !8874
  %i.bg = add i64 %.pre.i.i, 4, !dbg !8955        ; 2 uses
  store i64 %i.bg, ptr %i.m, align 8, !dbg !8955, !alias.scope !8874
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !8956

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatdEB8_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, double noundef %i.ba)
          to label %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8957

._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge: ; preds = %bb.s
  %.pre = load i64, ptr %i.m, align 8, !dbg !8958, !alias.scope !8875
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !8957

bb.t:                                             ; preds = %bb.q
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8959

.noexc9:                                          ; preds = %bb.t
  %i.bh = load i64, ptr %i.m, align 8, !dbg !8960, !alias.scope !8877, !noundef !635 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !8961
  call void @llvm.assume(i1 %i.bi), !dbg !8962
  %i.bj = load ptr, ptr %i.n, align 8, !dbg !8963, !alias.scope !8877, !nonnull !635, !noundef !635
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh, !dbg !8964
  store i32 1819047278, ptr %i.bk, align 1, !dbg !8965, !noalias !8872
  %.pre.i4.i = load i64, ptr %i.m, align 8, !dbg !8966, !alias.scope !8877
  %i.bl = add i64 %.pre.i4.i, 4, !dbg !8966       ; 2 uses
  store i64 %i.bl, ptr %i.m, align 8, !dbg !8966, !alias.scope !8877
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit, !dbg !8967

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit: ; preds = %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge, %.noexc9, %.noexc7
  %i.bm = phi i64 [ %.pre, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit_crit_edge ], [ %i.bl, %.noexc9 ], [ %i.bg, %.noexc7 ], !dbg !8958 ; 3 uses
  %i.bn = load i64, ptr %1, align 8, !dbg !8968, !range !648, !alias.scope !8875, !noundef !635
  %i.bo = icmp eq i64 %i.bm, %i.bn, !dbg !8969
  br i1 %i.bo, label %bb.u, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit, !dbg !8969

bb.u:                                             ; preds = %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8970

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.u, %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerdE0Ba_.exit
  %i.bp = load ptr, ptr %i.n, align 8, !dbg !8971, !alias.scope !8875, !nonnull !635, !noundef !635
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bm, !dbg !8972
  store i8 10, ptr %i.bq, align 1, !dbg !8973
  %i.br = add i64 %i.bm, 1, !dbg !8974
  store i64 %i.br, ptr %i.m, align 8, !dbg !8974, !alias.scope !8875
  br label %.thread, !dbg !8975

.thread:                                          ; preds = %.lr.ph.split, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit, %bb.o
  %exitcond.not = icmp eq i64 %i.r, %2, !dbg !8885
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !dbg !8854, !llvm.loop !8841

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 104, i64 noundef 8) #17, !dbg !8976
  resume { ptr, i32 } %eh.lpad-body, !dbg !8977
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB26_4skip4SkipINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB11_5array8iterator15ArrayValuesIterINtNtB48_4utf89Utf8ArrayxEENtNtB3f_8iterator10BitmapIterEEENCINvB2_15utf8_serializerxE0INtNtB2a_6option6OptionB41_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8978 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false), !dbg !9155
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9156
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b, !dbg !9157

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.loopexit.split unwind label %bb.d, !dbg !9158

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9159

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !9157
  unreachable, !dbg !9157

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !dbg !9161
  %.not = icmp eq i64 %2, 0, !dbg !9162
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !9119

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.i, align 8, !dbg !9163, !alias.scope !9120, !noundef !635 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0, !dbg !9163
  br i1 %i.x, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.preheader, label %.lr.ph.split

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %2, 7, !dbg !9119           ; 3 uses
  %i.y = icmp ult i64 %2, 8, !dbg !9119
  br i1 %i.y, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.epil.preheader, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.preheader.new, !dbg !9119

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.preheader.new: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.preheader
  %unroll_iter = and i64 %2, -8, !dbg !9119
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader, !dbg !9119

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.preheader.new
  %niter = phi i64 [ 0, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader.preheader.new ], [ %niter.next.7, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9164
  call void @llvm.experimental.noalias.scope.decl(metadata !9121), !dbg !9165
  call void @llvm.experimental.noalias.scope.decl(metadata !9120), !dbg !9165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9166
  %niter.next.7 = add nuw i64 %niter, 8, !dbg !9119 ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter, !dbg !9119
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.us.preheader, !dbg !9119

.lr.ph.splitthread-pre-split:                     ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread
  %.pr = load i64, ptr %i.i, align 8, !dbg !9163, !alias.scope !9120
  br label %.lr.ph.split, !dbg !9167

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.z = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.w, %.lr.ph ], !dbg !9163 ; 2 uses
  %.sroa.01.013 = phi i64 [ %i.aa, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.aa = add nuw i64 %.sroa.01.013, 1, !dbg !9167 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9164
  call void @llvm.experimental.noalias.scope.decl(metadata !9121), !dbg !9165
  call void @llvm.experimental.noalias.scope.decl(metadata !9120), !dbg !9165
  %i.ab = icmp eq i64 %i.z, 0, !dbg !9163
  br i1 %i.ab, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB1o_5array8iterator15ArrayValuesIterINtNtB2B_4utf89Utf8ArrayxEENtNtB1k_8iterator10BitmapIterEEENtNtNtB8_6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.thread, label %bb.e, !dbg !9163

bb.e:                                             ; preds = %.lr.ph.split
  %i.ac = add i64 %i.z, -1, !dbg !9168
  store i64 %i.ac, ptr %i.i, align 8, !dbg !9168, !alias.scope !9120
  call void @llvm.experimental.noalias.scope.decl(metadata !9124), !dbg !9169
  call void @llvm.experimental.noalias.scope.decl(metadata !9125), !dbg !9169
  %i.ad = load i64, ptr %i.j, align 8, !dbg !9170, !alias.scope !9126, !noundef !635 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0, !dbg !9170
  br i1 %.not.i.i, label %bb.f, label %bb.n, !dbg !9171, !prof !681

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !9127), !dbg !9172
  call void @llvm.experimental.noalias.scope.decl(metadata !9128), !dbg !9172
  %i.ae = load ptr, ptr %i.e, align 8, !dbg !9173, !alias.scope !9129, !noundef !635 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null, !dbg !9173
  br i1 %.not.i.i.i, label %bb.l, label %bb.g, !dbg !9174

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !9130), !dbg !9175
  call void @llvm.experimental.noalias.scope.decl(metadata !9131), !dbg !9175
  call void @llvm.experimental.noalias.scope.decl(metadata !9132), !dbg !9176
  %i.af = load i64, ptr %i.k, align 8, !dbg !9177, !alias.scope !9133, !noundef !635 ; 3 uses
  %i.ag = load i64, ptr %i.l, align 8, !dbg !9178, !alias.scope !9133, !noundef !635
  %i.ah = icmp eq i64 %i.af, %i.ag, !dbg !9177
  br i1 %i.ah, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_4utf89Utf8ArrayxEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.h, !dbg !9177

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.af, 1, !dbg !9179            ; 3 uses
  store i64 %i.ai, ptr %i.k, align 8, !dbg !9179, !alias.scope !9133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40, !dbg !9180
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !9180, !noalias !9134, !noundef !635 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 48, !dbg !9181
  %i.am = load i64, ptr %i.al, align 8, !dbg !9181, !noalias !9134, !noundef !635
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.af, !dbg !9182
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !dbg !9183, !noalias !9134, !noundef !635 ; 2 uses
  %i.ao = icmp ult i64 %i.ai, %i.am, !dbg !9184
  call void @llvm.assume(i1 %i.ao), !dbg !9185
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai, !dbg !9186
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !dbg !9187, !noalias !9134, !noundef !635
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 64, !dbg !9188
end_hunk_2
begin_hunk_3_@_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB26_4skip4SkipINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityReINtNtNtB11_5array8iterator15ArrayValuesIterINtNtB48_7binview22BinaryViewArrayGenericeEENtNtB3f_8iterator10BitmapIterEEENCNvB2_19utf8view_serializer0INtNtB2a_6option6OptionB41_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_:bb.a
  %exitcond.not = icmp eq i64 %i.aa, %2, !dbg !9487
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !dbg !9438, !llvm.loop !9425

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.di, %bb.t ], [ %lpad.loopexit.split-lp36, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #17, !dbg !9615
  resume { ptr, i32 } %eh.lpad-body, !dbg !9616
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB26_4skip4SkipINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRfINtNtNtB2a_5slice4iter4IterfENtNtB3f_8iterator10BitmapIterEEENCINvB2_16float_serializerfE0INtNtB2a_6option6OptionB41_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9617 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !dbg !9765
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9766
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !9767

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.loopexit.split-lp unwind label %bb.d, !dbg !9768

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9769

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !9767
  unreachable, !dbg !9767

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !9771
  %.not = icmp eq i64 %2, 0, !dbg !9772
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !9741

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.f, align 8, !dbg !9773, !alias.scope !9742, !noundef !635 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !9773
  br i1 %i.p, label %._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %.thread
  %.pr = load i64, ptr %i.f, align 8, !dbg !9773, !alias.scope !9742
  br label %.lr.ph.split, !dbg !9774

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.q = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.o, %.lr.ph ], !dbg !9773 ; 2 uses
  %.sroa.02.013 = phi i64 [ %i.r, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.r = add nuw i64 %.sroa.02.013, 1, !dbg !9774 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9742), !dbg !9775
  %i.s = icmp eq i64 %i.q, 0, !dbg !9773
  br i1 %i.s, label %.thread, label %bb.e, !dbg !9773

bb.e:                                             ; preds = %.lr.ph.split
  %i.t = add i64 %i.q, -1, !dbg !9776
  store i64 %i.t, ptr %i.f, align 8, !dbg !9776, !alias.scope !9742
  call void @llvm.experimental.noalias.scope.decl(metadata !9745), !dbg !9777
  %i.u = load i64, ptr %i.g, align 8, !dbg !9778, !alias.scope !9746, !noundef !635 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0, !dbg !9778
  br i1 %.not.i.i, label %bb.f, label %bb.n, !dbg !9779, !prof !681

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !9747), !dbg !9780
  %i.v = load ptr, ptr %i.b, align 8, !dbg !9781, !alias.scope !9748, !noundef !635 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.v, null, !dbg !9781
  br i1 %.not.i.i.i, label %bb.l, label %bb.g, !dbg !9782

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !9749), !dbg !9783
  %i.w = load ptr, ptr %i.h, align 8, !dbg !9784, !alias.scope !9750, !nonnull !635, !noundef !635
  %i.x = icmp eq ptr %i.v, %i.w, !dbg !9785
  br i1 %i.x, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.h, !dbg !9786

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !9787
  store ptr %i.y, ptr %i.b, align 8, !dbg !9788, !alias.scope !9750
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !9789

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ null, %bb.g ], !dbg !9790
  call void @llvm.experimental.noalias.scope.decl(metadata !9751), !dbg !9791
  %i.z = load i64, ptr %i.j, align 8, !dbg !9792, !alias.scope !9752, !noundef !635 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0, !dbg !9792
  br i1 %i.aa, label %bb.i, label %._crit_edge.i.i.i.i.i, !dbg !9792

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !9793, !alias.scope !9752
  br label %bb.j, !dbg !9792

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %i.ab = load i64, ptr %i.k, align 8, !dbg !9794, !alias.scope !9752, !noundef !635 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !9794
  br i1 %i.ac, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !9794

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i.i = call noundef range(i64 0, 65) i64 @llvm.umin.i64(i64 %i.ab, i64 64), !dbg !9795 ; 2 uses
  %i.ad = sub nuw i64 %i.ab, %.sroa.0.0.i.i.i.i.i.i, !dbg !9796
  store i64 %i.ad, ptr %i.k, align 8, !dbg !9796, !alias.scope !9752
  %i.ae = load ptr, ptr %i.i, align 8, !dbg !9797, !alias.scope !9752, !nonnull !635, !noundef !635 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.ae, align 1, !dbg !9798, !noalias !9752
  %i.af = load i64, ptr %i.l, align 8, !dbg !9799, !alias.scope !9752, !noundef !635
  %i.ag = add i64 %i.af, -8, !dbg !9800
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !9801
  store ptr %i.ah, ptr %i.i, align 8, !dbg !9802, !alias.scope !9752
  store i64 %i.ag, ptr %i.l, align 8, !dbg !9802, !alias.scope !9752
  br label %bb.j, !dbg !9803

bb.j:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.ai = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !9804
  %i.aj = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !9793 ; 2 uses
  %i.ak = trunc i64 %i.aj to i8, !dbg !9793
  %i.al = lshr i64 %i.aj, 1, !dbg !9805
  store i64 %i.al, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !9805, !alias.scope !9752
  %i.am = add i64 %i.ai, -1, !dbg !9804
  store i64 %i.am, ptr %i.j, align 8, !dbg !9804, !alias.scope !9752
  %i.an = and i8 %i.ak, 1, !dbg !9806
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !9807

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ %i.an, %bb.j ], [ 2, %bb.i ], !dbg !9808
  %i.ao = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.0.0.i.i.i.i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9809 ; 2 uses

.noexc:                                           ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %i.ap = extractvalue { i8, ptr } %i.ao, 0, !dbg !9810 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.ap, 2, !dbg !9811
  br i1 %.not.i.i.i.i, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.k, !dbg !9812

bb.k:                                             ; preds = %.noexc
  %i.aq = extractvalue { i8, ptr } %i.ao, 1, !dbg !9810 ; 2 uses
  %i.ar = trunc nuw i8 %i.ap to i1, !dbg !9813
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %..i.i.i.i = select i1 %i.ar, ptr %i.aq, ptr null, !dbg !9814
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !9815

bb.l:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.h, align 8, !dbg !9816, !alias.scope !9753, !nonnull !635, !noundef !635 ; 3 uses
  %i.at = load ptr, ptr %i.i, align 8, !dbg !9817, !alias.scope !9753, !nonnull !635, !noundef !635
  %i.au = icmp eq ptr %i.as, %i.at, !dbg !9818
  br i1 %i.au, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, label %bb.m, !dbg !9819

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4, !dbg !9820
  store ptr %i.av, ptr %i.h, align 8, !dbg !9821, !alias.scope !9753
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, !dbg !9822

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %.noexc
  %.sroa.0.0.i.pn.i.i.i = phi i64 [ 0, %.noexc ], [ 1, %bb.k ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.sroa.3.0.i.pn.i.i.i = phi ptr [ undef, %.noexc ], [ %..i.i.i.i, %bb.k ], [ %i.as, %bb.m ], [ null, %bb.l ]
  %.pn.i.i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.pn.i.i.i, 0, !dbg !9823
  %.merged.i.i.i = insertvalue { i64, ptr } %.pn.i.i.i, ptr %.sroa.3.0.i.pn.i.i.i, 1, !dbg !9823
  br label %bb.o, !dbg !9824

bb.n:                                             ; preds = %bb.e
  store i64 0, ptr %i.g, align 8, !dbg !9825, !alias.scope !9746
  %i.aw = invoke fastcc { i64, ptr } @_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator3nthCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, i64 noundef %i.u) #22
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9826

._crit_edge:                                      ; preds = %.thread, %.lr.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9754
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 104, i64 noundef 8) #17, !dbg !9827
  ret void, !dbg !9828

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, %bb.c
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i, %bb.n
  %.pn.i.i = phi { i64, ptr } [ %.merged.i.i.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRfINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterfENtNtB7_8iterator10BitmapIterENtNtNtNtB1w_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i ], [ %i.aw, %bb.n ] ; 2 uses
  %i.ax = extractvalue { i64, ptr } %.pn.i.i, 0, !dbg !9777
  %i.ay = extractvalue { i64, ptr } %.pn.i.i, 1, !dbg !9777 ; 2 uses
  %i.az = trunc nuw i64 %i.ax to i1, !dbg !9829
  br i1 %i.az, label %bb.p, label %.thread, !dbg !9829

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !9759), !dbg !9830
  call void @llvm.experimental.noalias.scope.decl(metadata !9760), !dbg !9830
  %.not.i = icmp eq ptr %i.ay, null, !dbg !9831
  br i1 %.not.i, label %bb.r, label %bb.q, !dbg !9832

bb.q:                                             ; preds = %bb.p
  %i.ba = load float, ptr %i.ay, align 4, !dbg !9833, !alias.scope !9759, !noundef !635 ; 2 uses
  %i.bb = call float @llvm.fabs.f32(float %i.ba), !dbg !9834
  %or.cond.i = fcmp ueq float %i.bb, +inf, !dbg !9834
  br i1 %or.cond.i, label %bb.t, label %bb.s, !dbg !9834

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9835

.noexc7:                                          ; preds = %bb.r
  %i.bc = load i64, ptr %i.m, align 8, !dbg !9836, !alias.scope !9761, !noundef !635 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1, !dbg !9837
  call void @llvm.assume(i1 %i.bd), !dbg !9838
  %i.be = load ptr, ptr %i.n, align 8, !dbg !9839, !alias.scope !9761, !nonnull !635, !noundef !635
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc, !dbg !9840
  store i32 1819047278, ptr %i.bf, align 1, !dbg !9841, !noalias !9759
  %.pre.i.i = load i64, ptr %i.m, align 8, !dbg !9842, !alias.scope !9761
  %i.bg = add i64 %.pre.i.i, 4, !dbg !9842        ; 2 uses
  store i64 %i.bg, ptr %i.m, align 8, !dbg !9842, !alias.scope !9761
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !9843

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize11write_floatfEB8_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, float noundef %i.ba)
          to label %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9844

._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge: ; preds = %bb.s
  %.pre = load i64, ptr %i.m, align 8, !dbg !9845, !alias.scope !9762
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !9844

bb.t:                                             ; preds = %bb.q
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9846

.noexc9:                                          ; preds = %bb.t
  %i.bh = load i64, ptr %i.m, align 8, !dbg !9847, !alias.scope !9764, !noundef !635 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !9848
  call void @llvm.assume(i1 %i.bi), !dbg !9849
  %i.bj = load ptr, ptr %i.n, align 8, !dbg !9850, !alias.scope !9764, !nonnull !635, !noundef !635
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh, !dbg !9851
  store i32 1819047278, ptr %i.bk, align 1, !dbg !9852, !noalias !9759
  %.pre.i4.i = load i64, ptr %i.m, align 8, !dbg !9853, !alias.scope !9764
  %i.bl = add i64 %.pre.i4.i, 4, !dbg !9853       ; 2 uses
  store i64 %i.bl, ptr %i.m, align 8, !dbg !9853, !alias.scope !9764
  br label %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit, !dbg !9854

_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit: ; preds = %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge, %.noexc9, %.noexc7
  %i.bm = phi i64 [ %.pre, %._RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit_crit_edge ], [ %i.bl, %.noexc9 ], [ %i.bg, %.noexc7 ], !dbg !9845 ; 3 uses
  %i.bn = load i64, ptr %1, align 8, !dbg !9855, !range !648, !alias.scope !9762, !noundef !635
  %i.bo = icmp eq i64 %i.bm, %i.bn, !dbg !9856
  br i1 %i.bo, label %bb.u, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit, !dbg !9856

bb.u:                                             ; preds = %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9857

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.u, %_RNCINvNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serialize16float_serializerfE0Ba_.exit
  %i.bp = load ptr, ptr %i.n, align 8, !dbg !9858, !alias.scope !9762, !nonnull !635, !noundef !635
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bm, !dbg !9859
  store i8 10, ptr %i.bq, align 1, !dbg !9860
  %i.br = add i64 %i.bm, 1, !dbg !9861
  store i64 %i.br, ptr %i.m, align 8, !dbg !9861, !alias.scope !9762
  br label %.thread, !dbg !9862

.thread:                                          ; preds = %.lr.ph.split, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCs2c5WrizoNH7_11polars_json.exit, %bb.o
  %exitcond.not = icmp eq i64 %i.r, %2, !dbg !9772
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !dbg !9741, !llvm.loop !9728

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.b ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 104, i64 noundef 8) #17, !dbg !9863
  resume { ptr, i32 } %eh.lpad-body, !dbg !9864
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs2c5WrizoNH7_11polars_json4json5write9serializeINtNtNtCs8774dFTUdNv_12polars_arrow2io8iterator20BufStreamingIteratorINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters4take4TakeINtNtB26_4skip4SkipINtNtNtNtB11_6bitmap5utils12zip_validity11ZipValidityRhINtNtNtB2a_5slice4iter4IterhENtNtB3f_8iterator10BitmapIterEEENCINvB2_20primitive_serializerhE0INtNtB2a_6option6OptionB41_EENtB2_14JsonSerializer27serialize_json_lines_to_vecB8_(ptr noalias noundef nonnull align 8 captures(address) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9865 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !dbg !10000
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10001
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !10002

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.loopexit.split-lp unwind label %bb.d, !dbg !10003

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2c5WrizoNH7_11polars_json(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !10004

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #18, !dbg !10002
  unreachable, !dbg !10002

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !10006
  %.not = icmp eq i64 %2, 0, !dbg !10007
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !9977

.lr.ph:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2c5WrizoNH7_11polars_json.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.f, align 8, !dbg !10008, !alias.scope !9978, !noundef !635 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !10008
  br i1 %i.p, label %._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %.thread
  %.pr = load i64, ptr %i.f, align 8, !dbg !10008, !alias.scope !9978
  br label %.lr.ph.split, !dbg !10009

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.q = phi i64 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.o, %.lr.ph ], !dbg !10008 ; 2 uses
  %.sroa.02.012 = phi i64 [ %i.r, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %i.r = add nuw i64 %.sroa.02.012, 1, !dbg !10009 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9978), !dbg !10010
  %i.s = icmp eq i64 %i.q, 0, !dbg !10008
  br i1 %i.s, label %.thread, label %bb.e, !dbg !10008

bb.e:                                             ; preds = %.lr.ph.split
  %i.t = add i64 %i.q, -1, !dbg !10011
  store i64 %i.t, ptr %i.f, align 8, !dbg !10011, !alias.scope !9978
  call void @llvm.experimental.noalias.scope.decl(metadata !9981), !dbg !10012
  %i.u = load i64, ptr %i.g, align 8, !dbg !10013, !alias.scope !9982, !noundef !635 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0, !dbg !10013
  br i1 %.not.i.i, label %bb.f, label %bb.n, !dbg !10014, !prof !681

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !9983), !dbg !10015
  %i.v = load ptr, ptr %i.b, align 8, !dbg !10016, !alias.scope !9984, !noundef !635 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.v, null, !dbg !10016
  br i1 %.not.i.i.i, label %bb.l, label %bb.g, !dbg !10017

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !9985), !dbg !10018
  %i.w = load ptr, ptr %i.h, align 8, !dbg !10019, !alias.scope !9986, !nonnull !635, !noundef !635
  %i.x = icmp eq ptr %i.v, %i.w, !dbg !10020
  br i1 %i.x, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, label %bb.h, !dbg !10021

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !10022
  store ptr %i.y, ptr %i.b, align 8, !dbg !10023, !alias.scope !9986
  br label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i, !dbg !10024

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ null, %bb.g ], !dbg !10025
  call void @llvm.experimental.noalias.scope.decl(metadata !9987), !dbg !10026
  %i.z = load i64, ptr %i.j, align 8, !dbg !10027, !alias.scope !9988, !noundef !635 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0, !dbg !10027
  br i1 %i.aa, label %bb.i, label %._crit_edge.i.i.i.i.i, !dbg !10027

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !10028, !alias.scope !9988
  br label %bb.j, !dbg !10027

bb.i:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2c5WrizoNH7_11polars_json.exit.i.i.i.i
  %i.ab = load i64, ptr %i.k, align 8, !dbg !10029, !alias.scope !9988, !noundef !635 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !10029
  br i1 %i.ac, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, !dbg !10029

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i.i = call noundef range(i64 0, 65) i64 @llvm.umin.i64(i64 %i.ab, i64 64), !dbg !10030 ; 2 uses
  %i.ad = sub nuw i64 %i.ab, %.sroa.0.0.i.i.i.i.i.i, !dbg !10031
  store i64 %i.ad, ptr %i.k, align 8, !dbg !10031, !alias.scope !9988
  %i.ae = load ptr, ptr %i.i, align 8, !dbg !10032, !alias.scope !9988, !nonnull !635, !noundef !635 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.ae, align 1, !dbg !10033, !noalias !9988
  %i.af = load i64, ptr %i.l, align 8, !dbg !10034, !alias.scope !9988, !noundef !635
  %i.ag = add i64 %i.af, -8, !dbg !10035
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !10036
  store ptr %i.ah, ptr %i.i, align 8, !dbg !10037, !alias.scope !9988
  store i64 %i.ag, ptr %i.l, align 8, !dbg !10037, !alias.scope !9988
  br label %bb.j, !dbg !10038

bb.j:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.ai = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !10039
  %i.aj = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2c5WrizoNH7_11polars_json.exit.i.i.i.i.i ], !dbg !10028 ; 2 uses
  %i.ak = trunc i64 %i.aj to i8, !dbg !10028
  %i.al = lshr i64 %i.aj, 1, !dbg !10040
  store i64 %i.al, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !10040, !alias.scope !9988
  %i.am = add i64 %i.ai, -1, !dbg !10039
  store i64 %i.am, ptr %i.j, align 8, !dbg !10039, !alias.scope !9988
  %i.an = and i8 %i.ak, 1, !dbg !10041
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i, !dbg !10042

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i8.i.i.i.i = phi i8 [ %i.an, %bb.j ], [ 2, %bb.i ], !dbg !10043
  %i.ao = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRhECs2c5WrizoNH7_11polars_json(i8 noundef %.sroa.0.0.i8.i.i.i.i, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable_or_null(1) %.sroa.0.0.i.i.i.i.i)
end_hunk_3
