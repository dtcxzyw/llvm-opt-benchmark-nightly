Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.09?download=true
inline.NumInlined: 13234
inline.NumDeleted: 6507
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a

bb.z:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsfcROwRM8ZtH_11polars_plan.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !145324

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.k, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !145325, !noalias !145257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !145326, !noalias !145257
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !145327
  %i.q = load i64, ptr %i.p, align 8, !dbg !145327, !noundef !2617
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !145328
  store ptr %i.k, ptr %i.r, align 16, !dbg !145328
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145328
  store i64 %i.q, ptr %i.s, align 8, !dbg !145328
  store i8 22, ptr %0, align 16, !dbg !145328
  br label %bb.am, !dbg !145308

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145265), !dbg !145329
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !145330, !noalias !145265
  %i.t = tail call noalias noundef align 16 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 48, i64 noundef range(i64 1, 17) 16) #31, !dbg !145331, !noalias !145265 ; 4 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !145332
  br i1 %i.u, label %bb.ab, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsfcROwRM8ZtH_11polars_plan.exit23, !dbg !145333, !prof !2700

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 48) #30, !dbg !145334, !noalias !145265
  unreachable, !dbg !145334

_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsfcROwRM8ZtH_11polars_plan.exit23: ; preds = %bb.aa
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !145335
  %i.w = load ptr, ptr %i.v, align 8, !dbg !145336, !alias.scope !145265, !nonnull !2617, !noundef !2617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !145337, !noalias !145266
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.w) #33
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan.exit17 unwind label %bb.ac, !dbg !145338, !inline_history !145188

bb.ac:                                            ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsfcROwRM8ZtH_11polars_plan.exit23
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !145339

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan.exit17: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsfcROwRM8ZtH_11polars_plan.exit23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !145340, !noalias !145266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !145341, !noalias !145266
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145342
  store ptr %i.t, ptr %i.y, align 8, !dbg !145342
  store i8 23, ptr %0, align 16, !dbg !145342
  br label %bb.am, !dbg !145308

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !145343
  br label %bb.am, !dbg !145308

bb.ae:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 16, !dbg !145306
  br label %bb.am, !dbg !145306

bb.af:                                            ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !145344
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !145344, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !dbg !145345
  %i.ac = icmp slt i64 %i.ab, 0, !dbg !145346
  br i1 %i.ac, label %bb.as, label %bb.ar, !dbg !145346

bb.ag:                                            ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !145347
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !145347, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !dbg !145348
  %i.ag = icmp slt i64 %i.af, 0, !dbg !145349
  br i1 %i.ag, label %bb.aw, label %bb.av, !dbg !145349

bb.ah:                                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !145350
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145351
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah), !dbg !145352
  store i8 28, ptr %0, align 16, !dbg !145351
  br label %bb.am, !dbg !145308

bb.ai:                                            ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !145353
  %i.ak = tail call { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj), !dbg !145354 ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0, !dbg !145354 ; 3 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1, !dbg !145354 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145280), !dbg !145355
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !145356
  %i.an = tail call noalias noundef align 16 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 2, 641) 48, i64 noundef range(i64 1, 17) 16) #31, !dbg !145357 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !145358
  br i1 %i.ao, label %bb.aj, label %.noexc, !dbg !145359, !prof !2700

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 48) #30
          to label %.noexc26 unwind label %bb.az, !dbg !145360

.noexc26:                                         ; preds = %bb.aj
  unreachable, !dbg !145360

.noexc:                                           ; preds = %bb.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !145361
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !145362, !alias.scope !145280, !nonnull !2617, !noundef !2617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !145363, !noalias !145281
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.aq) #33
          to label %bb.ba unwind label %bb.ak, !dbg !145364, !inline_history !145188

bb.ak:                                            ; preds = %.noexc
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 48, i64 noundef 16) #31, !dbg !145365, !noalias !145280
  br label %.body, !dbg !145366

bb.al:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !145367
  br label %bb.am, !dbg !145308

bb.am:                                            ; preds = %bb.ba, %bb.ax, %bb.at, %bb.an, %bb.al, %bb.ah, %bb.ae, %bb.ad, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan.exit17, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !145368

bb.an:                                            ; preds = %bb.u, %bb.aq
  %.sroa.4.0 = phi i8 [ %.sroa.48.0.copyload, %bb.aq ], [ %i.j, %bb.u ], !dbg !145369
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !145370
  store i8 %i.g, ptr %i.as, align 1, !dbg !145370
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.at, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !145370
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !145370
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !145370
  store i8 19, ptr %0, align 16, !dbg !145370
  br label %bb.am, !dbg !145308

bb.ao:                                            ; preds = %bb.u
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #32, !dbg !145371
  br label %bb.aq, !dbg !145371

bb.ap:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !145372
  br label %bb.aq, !dbg !145373

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !145374
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1, !dbg !145374
  br label %bb.an, !dbg !145375

bb.ar:                                            ; preds = %bb.af
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !145376
  %i.av = load ptr, ptr %i.au, align 16, !dbg !145376, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !dbg !145377
  %i.ax = icmp slt i64 %i.aw, 0, !dbg !145378
  br i1 %i.ax, label %bb.au, label %bb.at, !dbg !145378

bb.as:                                            ; preds = %bb.af
  tail call void @llvm.trap(), !dbg !145379
  unreachable, !dbg !145379

bb.at:                                            ; preds = %bb.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145380
  store ptr %i.aa, ptr %i.ay, align 8, !dbg !145380
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !145380
  store ptr %i.av, ptr %i.az, align 16, !dbg !145380
  store i8 26, ptr %0, align 16, !dbg !145380
  br label %bb.am, !dbg !145308

bb.au:                                            ; preds = %bb.ar
  tail call void @llvm.trap(), !dbg !145381
  unreachable, !dbg !145381

bb.av:                                            ; preds = %bb.ag
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !145382
  %i.bb = load ptr, ptr %i.ba, align 16, !dbg !145382, !nonnull !2617, !noundef !2617 ; 2 uses
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !dbg !145383
  %i.bd = icmp slt i64 %i.bc, 0, !dbg !145384
  br i1 %i.bd, label %bb.ay, label %bb.ax, !dbg !145384

bb.aw:                                            ; preds = %bb.ag
  tail call void @llvm.trap(), !dbg !145385
  unreachable, !dbg !145385

bb.ax:                                            ; preds = %bb.av
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145386
  store ptr %i.ae, ptr %i.be, align 8, !dbg !145386
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !145386
  store ptr %i.bb, ptr %i.bf, align 16, !dbg !145386
  store i8 27, ptr %0, align 16, !dbg !145386
  br label %bb.am, !dbg !145308

bb.ay:                                            ; preds = %bb.av
  tail call void @llvm.trap(), !dbg !145387
  unreachable, !dbg !145387

bb.az:                                            ; preds = %bb.aj
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !145388

.body:                                            ; preds = %bb.ak, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.az ], [ %i.ar, %bb.ak ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsfcROwRM8ZtH_11polars_plan(ptr %i.al, ptr nonnull %i.am) #29
          to label %common.resume unwind label %bb.bb, !dbg !145388

bb.ba:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.an, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !145389, !noalias !145281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !145390, !noalias !145281
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al), "nonnull"(ptr %i.am) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145391
  store ptr %i.al, ptr %i.bh, align 8, !dbg !145391
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !145391
  store ptr %i.am, ptr %i.bi, align 16, !dbg !145391
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !145391
  store ptr %i.an, ptr %i.bj, align 8, !dbg !145391
  store i8 29, ptr %0, align 16, !dbg !145391
  br label %bb.am, !dbg !145308

bb.bb:                                            ; preds = %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #28, !dbg !145306
  unreachable, !dbg !145306
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtCscgRAwXFJnXP_4core3any3AnyEL_ENtNtBM_3fmt5Debug3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !145392 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !145393, !nonnull !2617, !noundef !2617
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145393
  %i.c = load ptr, ptr %i.b, align 8, !dbg !145393, !nonnull !2617, !align !2752, !noundef !2617
  %i.d = tail call noundef zeroext i1 @_RNvXs_NtCscgRAwXFJnXP_4core3anyDNtB4_3AnyEL_NtNtB6_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !145394
  ret i1 %i.d, !dbg !145395
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !145396 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !145397, !nonnull !2617, !noundef !2617
  %i.b = tail call noundef zeroext i1 @_RNvXsg_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #33, !dbg !145398
  ret i1 %i.b, !dbg !145399
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !145400 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !145401, !nonnull !2617, !noundef !2617
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #33, !dbg !145402
  ret i1 %i.b, !dbg !145403
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !2576 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !145409, !nonnull !2617, !noundef !2617 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !145410
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !145411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !145412, !noalias !145408
  store ptr %i.b, ptr %i.a, align 8, !dbg !145412, !noalias !145408
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @452, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @341, ptr noalias noundef nonnull readonly captures(address, read_provenance) @453, i64 noundef 11, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @450, ptr noalias noundef nonnull readonly captures(address, read_provenance) @454, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @451), !dbg !145413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !145414, !noalias !145408
  ret i1 %i.e, !dbg !145415
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !2578 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !145422, !nonnull !2617, !noundef !2617 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !145423
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !145424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !145425, !noalias !145421
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !145425
  store ptr %i.e, ptr %i.a, align 8, !dbg !145425, !noalias !145421
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @341, ptr noalias noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @353, ptr noalias noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 11, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @354, ptr noalias noundef nonnull readonly captures(address, read_provenance) @359, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @355), !dbg !145426, !inline_history !145420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !145427, !noalias !145421
  ret i1 %i.f, !dbg !145428
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scanNtB5_20MissingColumnsPolicyNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !145429 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !dbg !145431, !range !2635, !noundef !2617
  %i.b = trunc nuw i8 %i.a to i1, !dbg !145431    ; 2 uses
  %. = select i1 %i.b, i64 6, i64 5, !dbg !145432
  %.1 = select i1 %i.b, ptr @555, ptr @455, !dbg !145432
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.), !dbg !145431
  ret i1 %i.c, !dbg !145433
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !145434 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !145450
  %i.b = load i8, ptr %i.a, align 1, !dbg !145450, !range !2790, !alias.scope !145449, !noundef !2617 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !145451
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !145451

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !145452
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !145453
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !145453
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !145454

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !145455, !alias.scope !145449, !noundef !2617
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !145456
  %i.h = load i64, ptr %i.g, align 8, !dbg !145456, !alias.scope !145449, !noundef !2617
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !145457

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !145458
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !145459
  %i.i = tail call noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !145460
  ret i1 %i.i, !dbg !145461
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsq_NtNtCse4dvU5uQ85g_8indexmap3set5sliceINtB5_5SliceNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexINtNtB1N_5range7RangeTojEE5indexCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 !dbg !145462 {
bb.a:
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.c, label %bb.b, !dbg !145476, !prof !145471

bb.b:                                             ; preds = %bb.a
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0, !dbg !145477
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %2, 1, !dbg !145477
  ret { ptr, i64 } %i.b, !dbg !145477

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #27, !dbg !145478
  unreachable, !dbg !145478
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !145479 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !dbg !145481, !range !2810, !noundef !2617 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64, !dbg !145481
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXst_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, i64 %i.b, !dbg !145481
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !145481
  %switch.ext = zext i8 %switch.load to i64, !dbg !145481
  %i.c = zext nneg i8 %i.a to i64, !dbg !145481
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXst_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_8TimeUnitNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt.1548, i64 %i.c, !dbg !145481
  %switch.load3 = load ptr, ptr %switch.gep2, align 8, !dbg !145481
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext), !dbg !145481
  ret i1 %i.d, !dbg !145482
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNCNCINvMNtNtCskmDBXs7hs3c_5tokio2fs12open_optionsNtBP_11OpenOptions8std_openRNtNtCsh8eZTKRCwoO_3std4path4PathE00EINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !145483 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !145509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !145510, !noalias !145507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 24, i1 false), !dbg !145510, !noalias !145508
  invoke void @_RINvMsl_NtCsh8eZTKRCwoO_3std2fsNtB6_11OpenOptions4openNtNtB8_4path7PathBufECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c, !dbg !145511

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !145512, !noalias !145507
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #31, !dbg !145513
  ret void, !dbg !145514

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 40, i64 noundef 8) #31, !dbg !145515
  resume { ptr, i32 } %i.c, !dbg !145516
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNCNCINvNtNtCskmDBXs7hs3c_5tokio2fs12canonicalize12canonicalizeReE00EINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !145517 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !145542, !noalias !145536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !145542, !noalias !145541
  invoke void @_RINvNtCsh8eZTKRCwoO_3std2fs12canonicalizeNtNtB4_4path7PathBufECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c, !dbg !145543

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !145544, !noalias !145536
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 8) #31, !dbg !145545
  ret void, !dbg !145546

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 8) #31, !dbg !145547
  resume { ptr, i32 } %i.b, !dbg !145548
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNCNCINvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB2f_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB4M_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB4M_6result6ResultINtNtB7_3vec3VecINtNtB7_4sync3ArcNtNtB3t_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00EINtNtB5w_8function6FnOnceuE9call_onceB64_(ptr noalias noundef nonnull align 8 captures(address) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !145549 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !145565, !nonnull !2617, !noundef !2617
  invoke void @_RNvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker3run(ptr noundef nonnull %i.a)
          to label %_RNCNCINvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB1x_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB44_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB44_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB75_4sync3ArcNtNtB2L_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00B5m_.exit unwind label %bb.b, !dbg !145566

_RNCNCINvNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvMCsidoPH4Qgqxm_12polars_asyncNtB1x_14RuntimeManager17block_in_place_onNCINvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils26init_entries_from_uri_listINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB44_3ops5range5RangejENCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csvs_0EE0Es_0INtNtB44_6result6ResultINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB75_4sync3ArcNtNtB2L_5entry14FileCacheEntryEENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE00B5m_.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 8, i64 noundef 8) #31, !dbg !145567
  ret void, !dbg !145568

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 8, i64 noundef 8) #31, !dbg !145569
  resume { ptr, i32 } %i.b, !dbg !145570
}
end_hunk_0
