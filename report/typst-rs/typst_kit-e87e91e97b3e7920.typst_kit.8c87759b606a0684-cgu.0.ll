Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3957
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs261H7cERR92_10serde_json5value5ValueEECsc4241EHy6Do_9typst_kit:bb.a
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs261H7cERR92_10serde_json5value5ValueECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsc4241EHy6Do_9typst_kit5fonts8FontPathNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4info8FontInfoEEBG_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !21, !alias.scope !50, !noundef !17 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5fonts8FontPathEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !17, !noundef !17
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !2682
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5fonts8FontPathEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5fonts8FontPathEBF_.exit: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !21, !alias.scope !2686, !noundef !17 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5fonts8FontPathEBF_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2686, !nonnull !17, !noundef !17
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !2686
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5fonts8FontPathEBF_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !2683 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisEECsc4241EHy6Do_9typst_kit.exit9.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !2683, !nonnull !17, !noundef !17
  %i.i = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !2683
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisEECsc4241EHy6Do_9typst_kit.exit9.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisEECsc4241EHy6Do_9typst_kit.exit9.i: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val5.i = load i64, ptr %i.j, align 8, !alias.scope !2683 ; 2 uses
  %i.k = icmp eq i64 %.val5.i, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4info8FontInfoECsc4241EHy6Do_9typst_kit.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisEECsc4241EHy6Do_9typst_kit.exit9.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val6.i = load ptr, ptr %i.l, align 8, !alias.scope !2683, !nonnull !17, !noundef !17
  %i.m = shl nuw i64 %.val5.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !2683
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4info8FontInfoECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4info8FontInfoECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font10variations8FontAxisEECsc4241EHy6Do_9typst_kit.exit9.i, %bb.e
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %0) unnamed_addr #8 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsc4241EHy6Do_9typst_kit(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @69, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCsbGiR87yI9G2_9tiny_http8response20write_message_headerQQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1F_6marker4SendEL_EECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 192153584101141163) %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call { ptr, i64 } @_RNvMNtCsbGiR87yI9G2_9tiny_http6commonNtB2_10StatusCode21default_reason_phrase(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %2) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  store ptr %i.e, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.i, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.j, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsc4241EHy6Do_9typst_kit, ptr %.sroa.435.0..sroa_idx, align 8
  %.val.i = load ptr, ptr %0, align 8, !nonnull !17, !align !25, !noundef !17 ; 7 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !17, !noundef !17
  %i.k = getelementptr i8, ptr %.val.i, i64 8     ; 6 uses
  %.val1.i.i = load ptr, ptr %i.k, align 8, !nonnull !17, !align !25, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !17, !nonnull !17
  %i.n = call noundef ptr %i.m(ptr noundef nonnull %.val.i.i, ptr noundef nonnull @72, ptr noundef nonnull %i.a) #48, !inline_history !2687 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %4, 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.p = icmp eq i64 %4, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.f
  %i.q = icmp eq ptr %i.r, %i.o
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.04.065 = phi ptr [ %i.r, %bb.c ], [ %3, %bb.b ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.065, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.065, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !17, !noundef !17
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.065, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !17
  %.val.i.i47 = load ptr, ptr %.val.i, align 8, !noalias !2701, !nonnull !17, !noundef !17
  %.val1.i.i48 = load ptr, ptr %i.k, align 8, !noalias !2701, !nonnull !17, !align !25, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i48, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !17, !noalias !2702, !nonnull !17
  %i.y = call noundef ptr %i.x(ptr noundef nonnull %.val.i.i47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.v) #48, !inline_history !2694 ; 2 uses
  %.not36 = icmp eq ptr %i.y, null
  br i1 %.not36, label %bb.d, label %.loopexit

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.val.i.i50 = load ptr, ptr %.val.i, align 8, !nonnull !17, !noundef !17
  %.val1.i.i51 = load ptr, ptr %i.k, align 8, !nonnull !17, !align !25, !noundef !17
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i51, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !17, !nonnull !17
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull %.val.i.i50, ptr noundef nonnull @74, ptr noundef nonnull inttoptr (i64 5 to ptr)) #48, !inline_history !2687
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %.val.i.i53 = load ptr, ptr %.val.i, align 8, !nonnull !17, !noundef !17
  %.val1.i.i54 = load ptr, ptr %i.k, align 8, !nonnull !17, !align !25, !noundef !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i54, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !17, !nonnull !17
  %i.ae = call noundef ptr %i.ad(ptr noundef nonnull %.val.i.i53, ptr noundef nonnull @73, ptr noundef nonnull inttoptr (i64 5 to ptr)) #48, !inline_history !2687 ; 2 uses
  %.not37 = icmp eq ptr %i.ae, null
  br i1 %.not37, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.065, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.065, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !17
  %.val.i.i56 = load ptr, ptr %.val.i, align 8, !noalias !2703, !nonnull !17, !noundef !17
  %.val1.i.i57 = load ptr, ptr %i.k, align 8, !noalias !2703, !nonnull !17, !align !25, !noundef !17
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i57, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !17, !noalias !2704, !nonnull !17
  %i.al = call noundef ptr %i.ak(ptr noundef nonnull %.val.i.i56, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.ai) #48, !inline_history !2694 ; 2 uses
  %.not38 = icmp eq ptr %i.al, null
  br i1 %.not38, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.val.i.i59 = load ptr, ptr %.val.i, align 8, !nonnull !17, !noundef !17
  %.val1.i.i60 = load ptr, ptr %i.k, align 8, !nonnull !17, !align !25, !noundef !17
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i.i60, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !17, !nonnull !17
  %i.ao = call noundef ptr %i.an(ptr noundef nonnull %.val.i.i59, ptr noundef nonnull @74, ptr noundef nonnull inttoptr (i64 5 to ptr)) #48, !inline_history !2687 ; 2 uses
  %.not39 = icmp eq ptr %i.ao, null
  br i1 %.not39, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.e, %bb.f, %bb.a, %._crit_edge
  %.sroa.0.1 = phi ptr [ %i.n, %bb.a ], [ %i.ab, %._crit_edge ], [ %i.y, %.lr.ph ], [ %i.al, %bb.e ], [ %i.ae, %bb.d ], [ %i.ao, %bb.f ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4copy4copyINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EINtNtCs5349LTBI5LY_16chunked_transfer7encoder7EncoderQIBE_DNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB2k_6marker4SendEL_EEECsc4241EHy6Do_9typst_kit(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %i.d = alloca [8192 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2720
  store ptr %i.d, ptr %i.c, align 8, !noalias !2720
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 8192, ptr %i.e, align 8, !noalias !2720
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8, !noalias !2720
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.g, align 8, !noalias !2720
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !17, !noalias !2720, !nonnull !17 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %bb.e, %bb.a
  %i.k = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.d, %bb.a ]
  %.sroa.02.0.ph.i.i.i = phi i64 [ %i.ak, %bb.e ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2720
  %i.l = call noundef ptr %i.i(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.k, ptr noundef nonnull %i.c) #48, !noalias !2720, !inline_history !2711 ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !noalias !2720
  %.not17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not17.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.outer.i.i.i, %bb.i
  %i.m = phi ptr [ %i.ap, %bb.i ], [ %i.l, %.outer.i.i.i ] ; 6 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 4 uses
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split5.i.i.i
    i64 0, label %.split6.i.i.i
    i64 1, label %.split.i.i.i
  ], !prof !30

default.unreachable:                              ; preds = %.lr.ph.i.i.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.k, !noalias !2720

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.q = lshr i64 %i.n, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2720, !nonnull !17, !noundef !17
  %i.u = invoke noundef zeroext i1 %i.t(i32 noundef %i.r)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i unwind label %bb.k, !noalias !2720, !inline_history !0

.split5.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.v = lshr i64 %i.n, 32
  %i.w = icmp ult ptr %i.m, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.v to i8
  %spec.select.i.i.i.i.i.i = select i1 %i.w, i8 %switch.idx.cast.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.x = icmp ne i8 %spec.select.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i8 %spec.select.i.i.i.i.i.i, 35
  br i1 %i.y, label %bb.g, label %bb.f

.split6.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !36, !noalias !2720, !noundef !17
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %.thread8.i.i.i, label %bb.f

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr i8, ptr %i.m, i64 31
  %i.ad = load i8, ptr %i.ac, align 8, !range !36, !noalias !2720, !noundef !17
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %bb.h, label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.i, %.outer.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2720
  %i.af = load i64, ptr %i.f, align 8, !noalias !2720, !noundef !17 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2720
  %i.ah = inttoptr i64 %.sroa.02.0.ph.i.i.i to ptr
  br label %bb.m

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load ptr, ptr %i.c, align 8, !noalias !2720, !nonnull !17, !noundef !17
  %i.aj = call fastcc noundef ptr @_RNvYINtNtCs5349LTBI5LY_16chunked_transfer7encoder7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1A_6marker4SendEL_EEB1u_9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.af) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not10.i.i.i, label %bb.e, label %.loopexit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ak = add i64 %i.af, %.sroa.02.0.ph.i.i.i
  store i64 0, ptr %i.f, align 8, !noalias !2720
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !noalias !2720
  br label %.outer.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.f
  %.sroa.4.1.in.i.i.i = phi ptr [ %i.m, %bb.f ], [ %i.aj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2720
  br label %bb.m

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i: ; preds = %.noexc.i.i.i
  br i1 %i.u, label %.thread8.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split.i.i.i, %.split6.i.i.i, %.split5.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2720
  br label %.loopexit.i.i.i

.thread8.i.i.i:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split6.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2721
  br label %bb.i

bb.g:                                             ; preds = %.split5.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2722
  %i.al = and i64 %i.n, 1095216660480
  %i.am = icmp ne i64 %i.al, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.am)
  br label %bb.i

bb.h:                                             ; preds = %.split.i.i.i
  %i.an = getelementptr i8, ptr %i.m, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2723
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.j, align 8, !alias.scope !2724, !noalias !2723
  store i8 3, ptr %i.a, align 8, !alias.scope !2724, !noalias !2723
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !2720
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2720
  %i.ao = load ptr, ptr %i.c, align 8, !noalias !2720, !nonnull !17, !noundef !17
  %i.ap = call noundef ptr %i.i(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.c) #48, !noalias !2720, !inline_history !2711 ; 3 uses
  store ptr %i.ap, ptr %i.b, align 8, !noalias !2720
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i, %bb.b
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #44
          to label %bb.j unwind label %bb.l, !noalias !2720

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !2720
  unreachable

bb.m:                                             ; preds = %bb.c, %.loopexit.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.4.1.in.i.i.i, %.loopexit.i.i.i ], [ %i.ah, %bb.c ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %.loopexit.i.i.i ], [ 0, %bb.c ]
  %i.ar = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.as = insertvalue { i64, ptr } %i.ar, ptr %.sroa.4.0.i.i.i, 1
  ret { i64, ptr } %i.as
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4copy4copyINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EQIBE_DNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1t_6marker4SendEL_EECsc4241EHy6Do_9typst_kit(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  %i.d = alloca [8192 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 8192, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.g, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !17, !nonnull !17 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = getelementptr i8, ptr %.0.val1, i64 8
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %bb.e, %bb.a
  %i.l = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.d, %bb.a ]
  %.sroa.02.0.ph.i.i.i = phi i64 [ %i.an, %bb.e ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = call noundef ptr %i.i(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.l, ptr noundef nonnull %i.c) #48, !inline_history !2725 ; 3 uses
  store ptr %i.m, ptr %i.b, align 8
  %.not19.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not19.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.outer.i.i.i, %bb.i
  %i.n = phi ptr [ %i.as, %bb.i ], [ %i.m, %.outer.i.i.i ] ; 6 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split7.i.i.i
    i64 0, label %.split8.i.i.i
    i64 1, label %.split.i.i.i
  ], !prof !30

default.unreachable:                              ; preds = %.lr.ph.i.i.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.q = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.r = lshr i64 %i.o, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !17, !noundef !17
  %i.v = invoke noundef zeroext i1 %i.u(i32 noundef %i.s)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i unwind label %bb.k, !inline_history !0

.split7.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.w = lshr i64 %i.o, 32
  %i.x = icmp ult ptr %i.n, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i.i.i, 35
  br i1 %i.z, label %bb.g, label %bb.f

.split8.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !36, !noundef !17
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %.thread10.i.i.i, label %bb.f

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr i8, ptr %i.n, i64 31
  %i.ae = load i8, ptr %i.ad, align 8, !range !36, !noundef !17
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.h, label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.i, %.outer.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = load i64, ptr %i.f, align 8, !noundef !17 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ai = inttoptr i64 %.sroa.02.0.ph.i.i.i to ptr
  br label %bb.m

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %.val.i.i.i.i = load ptr, ptr %.0.val1, align 8, !noalias !2739, !nonnull !17, !noundef !17
  %.val1.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !2739, !nonnull !17, !align !25, !noundef !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !17, !noalias !2740, !nonnull !17
  %i.am = call noundef ptr %i.al(ptr noundef nonnull %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef range(i64 0, -9223372036854775808) %i.ag) #48, !inline_history !2730 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i, label %bb.e, label %.loopexit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.an = add i64 %i.ag, %.sroa.02.0.ph.i.i.i
  store i64 0, ptr %i.f, align 8
  %.pre.i.i.i = load ptr, ptr %i.c, align 8
  br label %.outer.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.f
  %.sroa.4.1.in.i.i.i = phi ptr [ %i.n, %bb.f ], [ %i.am, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i: ; preds = %.noexc.i.i.i
  br i1 %i.v, label %.thread10.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split.i.i.i, %.split8.i.i.i, %.split7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit.i.i.i

.thread10.i.i.i:                                  ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split8.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2741
  br label %bb.i

bb.g:                                             ; preds = %.split7.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2742
  %i.ao = and i64 %i.o, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ap)
  br label %bb.i

bb.h:                                             ; preds = %.split.i.i.i
  %i.aq = getelementptr i8, ptr %i.n, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2743
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  store ptr %i.aq, ptr %i.j, align 8, !alias.scope !2744, !noalias !2743
  store i8 3, ptr %i.a, align 8, !alias.scope !2744, !noalias !2743
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ar = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.as = call noundef ptr %i.i(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.c) #48, !inline_history !2725 ; 3 uses
  store ptr %i.as, ptr %i.b, align 8
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i, %bb.b
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #44
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.m:                                             ; preds = %bb.c, %.loopexit.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.4.1.in.i.i.i, %.loopexit.i.i.i ], [ %i.ai, %bb.c ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %.loopexit.i.i.i ], [ 0, %bb.c ]
  %i.au = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.av = insertvalue { i64, ptr } %i.au, ptr %.sroa.4.0.i.i.i, 1
  ret { i64, ptr } %i.av
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !17 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %1, align 8, !range !21, !noundef !17 ; 6 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit, !prof !23

_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.053.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread

_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread: ; preds = %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit
  %.pre190 = phi i64 [ %.pre190.pre, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ %i.g, %bb.b ]
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ %i.e, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs2N41nl8cATr_6flate22gz4read9GzDecoderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB8_3vec3VechEEEE0Csc4241EHy6Do_9typst_kit.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB20_10HttpServer3new0uEs_000uEB22_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2835
  call void asm sideeffect "", "~{memory}"() #40, !srcloc !58
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uEs_000uEB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2838
  call void asm sideeffect "", "~{memory}"() #40, !srcloc !58
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB1c_10HttpServer3new0uEB1e_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [176 x i8], align 8               ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2855
  store ptr %0, ptr %i.d, align 8, !noalias !2855
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2855
  invoke void @_RNvXs2_CsbGiR87yI9G2_9tiny_httpNtB5_16IncomingRequestsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.o, %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtBG_10HttpServer3new0EBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) #44
          to label %common.resume.i unwind label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !range !44, !noalias !2855, !noundef !17
  %.not.i = icmp eq i64 %i.i, 2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %i.c, i64 176, i1 false), !noalias !2855
  %i.j = load i8, ptr %i.e, align 8, !range !41, !alias.scope !2855, !noundef !17
  %i.k = trunc nuw i8 %i.j to i1
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !2855
  %i.l = invoke fastcc noundef ptr @_RNvNtCsc4241EHy6Do_9typst_kit6server6handle(ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.b, i1 noundef zeroext %i.k, ptr %.val1.i)
          to label %bb.l unwind label %bb.c       ; 4 uses

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2855
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsbGiR87yI9G2_9tiny_http6ServerECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %i.n = load ptr, ptr %i.f, align 8, !alias.scope !2858, !nonnull !17, !noundef !17
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !2859
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %common.resume.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsc4241EHy6Do_9typst_kit6server6BucketINtNtB7_5boxed3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputINtNtB1P_6option6OptionNtBJ_8HttpBodyENtNtB1P_6marker4SendNtB3i_4SyncEL_EEE9drop_slowBL_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #46
          to label %common.resume.i unwind label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !2862, !nonnull !17, !noundef !17
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !2863
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB4_10HttpServer3new0B6_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsc4241EHy6Do_9typst_kit6server6BucketINtNtB7_5boxed3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputINtNtB1P_6option6OptionNtBJ_8HttpBodyENtNtB1P_6marker4SendNtB3i_4SyncEL_EEE9drop_slowBL_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #46
  br label %_RNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB4_10HttpServer3new0B6_.exit

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.g, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.h, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.l, null
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2864
  %i.v = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.w = and i64 %i.v, 3
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i
    i64 1, label %bb.o
  ], !prof !30

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.x = icmp ult ptr %i.l, inttoptr (i64 188978561024 to ptr)
  %i.y = and i64 %i.v, 1095216660480
  %i.z = icmp ne i64 %i.y, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.z)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %i.l, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.g, align 8, !alias.scope !2865, !noalias !2864
  store i8 3, ptr %i.a, align 8, !alias.scope !2865, !noalias !2864
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2864
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2855
  br label %bb.b

bb.p:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

_RNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB4_10HttpServer3new0B6_.exit: ; preds = %bb.i, %bb.j
  call void asm sideeffect "", "~{memory}"() #40, !srcloc !58
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsc4241EHy6Do_9typst_kit6server13handle_events0uEB1d_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [176 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(184) %0, i64 176, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2886, !nonnull !17, !noundef !17 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  %i.g = invoke { ptr, ptr } @_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request19extract_writer_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.c)
          to label %bb.c unwind label %bb.b, !noalias !2886 ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.t, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.c) #44
          to label %.body.i unwind label %bb.i, !noalias !2886

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !26, !alias.scope !2889, !noalias !2886, !noundef !17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2889, !noalias !2886
  store i64 -1, ptr %i.i, align 8, !alias.scope !2889, !noalias !2886
  %.not.i.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.i, label %_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request11into_writer.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2890
  store i64 %i.j, ptr %i.b, align 8, !noalias !2890
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8, !noalias !2890
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %i.p, align 8, !noalias !2890
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.m, ptr %i.q, align 8, !noalias !2890
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !2891
  %i.r = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !2891 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.h, !prof !15

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #43
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !2886

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_2io5write5WriteNtNtB4_6marker4SendEL_EEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #44
          to label %.body.i.i.i unwind label %bb.g, !noalias !2886

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !2886
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2890
  %i.v = insertvalue { ptr, ptr } poison, ptr %i.r, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr @230, 1
  br label %_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request11into_writer.exit.i.i

bb.i:                                             ; preds = %.body.i.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !2886
  unreachable

_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request11into_writer.exit.i.i: ; preds = %bb.h, %bb.c
  %.merged.i.i.i = phi { ptr, ptr } [ %i.w, %bb.h ], [ %i.g, %bb.c ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.c)
          to label %.noexc.i unwind label %bb.ag, !noalias !2886

.noexc.i:                                         ; preds = %_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request11into_writer.exit.i.i
  %i.y = extractvalue { ptr, ptr } %.merged.i.i.i, 0 ; 13 uses
  %i.z = extractvalue { ptr, ptr } %.merged.i.i.i, 1 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !17, !noalias !2886, !nonnull !17 ; 5 uses
  %i.ac = invoke noundef ptr %i.ab(ptr noundef %i.y, ptr noundef nonnull @273, ptr noundef nonnull inttoptr (i64 35 to ptr))
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_RNvMs_NtCsc4241EHy6Do_9typst_kit6serverINtB4_6BucketINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputINtNtB1x_6option6OptionNtB4_8HttpBodyENtNtB1x_6marker4SendNtB30_4SyncEL_EE4waitB6_.exit.i.i, %bb.x, %bb.t, %bb.q, %bb.o, %bb.m, %bb.k, %.noexc.i
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.u
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ao, %bb.u ], [ %i.ao, %bb.v ], [ %lpad.loopexit.split-lp13, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_2io5write5WriteNtNtB4_6marker4SendEL_EECsc4241EHy6Do_9typst_kit(ptr %i.y, ptr nonnull %i.z) #44
          to label %.body.i unwind label %bb.af, !noalias !2886

bb.j:                                             ; preds = %.noexc.i
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.k, label %.loopexit34.i.i

bb.k:                                             ; preds = %bb.j
  %i.ad = invoke noundef ptr %i.ab(ptr noundef %i.y, ptr noundef nonnull @274, ptr noundef nonnull inttoptr (i64 67 to ptr))
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i.i, label %bb.m, label %.loopexit34.i.i

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef ptr %i.ab(ptr noundef %i.y, ptr noundef nonnull @275, ptr noundef nonnull inttoptr (i64 51 to ptr))
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not24.i.i = icmp eq ptr %i.ae, null
  br i1 %.not24.i.i, label %bb.o, label %.loopexit34.i.i

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef ptr %i.ab(ptr noundef %i.y, ptr noundef nonnull @74, ptr noundef nonnull inttoptr (i64 5 to ptr))
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not25.i.i = icmp eq ptr %i.af, null
  br i1 %.not25.i.i, label %bb.q, label %.loopexit34.i.i

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !17, !noalias !2886, !nonnull !17 ; 2 uses
  %i.ai = invoke noundef ptr %i.ah(ptr noundef %i.y)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not26.i.i = icmp eq ptr %i.ai, null
  br i1 %.not26.i.i, label %.preheader.i.i, label %.loopexit34.i.i

.preheader.i.i:                                   ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.s

bb.s:                                             ; preds = %bb.ab, %.preheader.i.i
  %i.ak = cmpxchg weak ptr %i.f, i8 0, i8 1 acquire monotonic, align 1, !noalias !2892
  %i.al = extractvalue { i8, i1 } %i.ak, 1
  br i1 %i.al, label %.noexc.i.i, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.am = invoke noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.f, i64 undef, i32 noundef -1)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 0 uses

.noexc.i.i:                                       ; preds = %bb.t, %bb.s
  %i.an = invoke noundef zeroext i1 @_RNvMs_NtCsg5ZWEykmiUC_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8 %i.aj, ptr noundef nonnull align 8 %i.f, i64 undef, i32 noundef -1)
          to label %bb.w unwind label %bb.u, !noalias !2886 ; 0 uses

bb.u:                                             ; preds = %.noexc.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1, !noalias !2892
  %i.aq = extractvalue { i8, i1 } %i.ap, 1
  br i1 %i.aq, label %.body.i.i, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext false)
          to label %.body.i.i unwind label %bb.y, !noalias !2886

bb.w:                                             ; preds = %.noexc.i.i
  %i.ar = cmpxchg ptr %i.f, i8 1, i8 0 release monotonic, align 1, !noalias !2892
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_RNvMs_NtCsc4241EHy6Do_9typst_kit6serverINtB4_6BucketINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputINtNtB1x_6option6OptionNtB4_8HttpBodyENtNtB1x_6marker4SendNtB30_4SyncEL_EE4waitB6_.exit.i.i, label %bb.x, !prof !16

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext false)
          to label %_RNvMs_NtCsc4241EHy6Do_9typst_kit6serverINtB4_6BucketINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputINtNtB1x_6option6OptionNtB4_8HttpBodyENtNtB1x_6marker4SendNtB30_4SyncEL_EE4waitB6_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886

bb.y:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !2886
  unreachable

_RNvMs_NtCsc4241EHy6Do_9typst_kit6serverINtB4_6BucketINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputINtNtB1x_6option6OptionNtB4_8HttpBodyENtNtB1x_6marker4SendNtB30_4SyncEL_EE4waitB6_.exit.i.i: ; preds = %bb.x, %bb.w
  %i.au = invoke noundef ptr %i.ab(ptr noundef %i.y, ptr noundef nonnull @276, ptr noundef nonnull inttoptr (i64 43 to ptr))
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 2 uses

bb.z:                                             ; preds = %_RNvMs_NtCsc4241EHy6Do_9typst_kit6serverINtB4_6BucketINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputINtNtB1x_6option6OptionNtB4_8HttpBodyENtNtB1x_6marker4SendNtB30_4SyncEL_EE4waitB6_.exit.i.i
  %.not27.i.i = icmp eq ptr %i.au, null
  br i1 %.not27.i.i, label %bb.aa, label %.loopexit34.i.i

bb.aa:                                            ; preds = %bb.z
  %i.av = invoke noundef ptr %i.ah(ptr noundef %i.y)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2886 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.not28.i.i = icmp eq ptr %i.av, null
  br i1 %.not28.i.i, label %bb.s, label %.loopexit34.i.i

.loopexit34.i.i:                                  ; preds = %bb.ab, %bb.z, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j
  %.sroa.0.0.i.i = phi ptr [ %i.ai, %bb.r ], [ %i.ac, %bb.j ], [ %i.ad, %bb.l ], [ %i.ae, %bb.n ], [ %i.af, %bb.p ], [ %i.av, %bb.ab ], [ %i.au, %bb.z ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aw = load ptr, ptr %i.z, align 8, !invariant.load !17, !noalias !2886 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i33.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit34.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void %i.aw(ptr noundef nonnull %i.y)
          to label %bb.ad unwind label %bb.ae, !noalias !2886

bb.ad:                                            ; preds = %bb.ac, %.loopexit34.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !21, !invariant.load !17, !noalias !2886 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.ai, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !17, !noalias !2886
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #40, !noalias !2886
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !21, !invariant.load !17, !noalias !2886 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.body.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.ae
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !24, !invariant.load !17, !noalias !2886
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) %i.bh) #40, !noalias !2886
  br label %.body.i
end_hunk_1
begin_hunk_2_@_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtCsaL1QbXo9JQH_3std4path7PathBufbEE4findNCINvNtBa_3map14equivalent_keyBS_BS_bE0E0Csc4241EHy6Do_9typst_kit:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !17, !noundef !17
  %i.l = sub nsw i64 0, %1
  %i.m = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %.val = load ptr, ptr %i.h, align 8, !nonnull !17, !align !25, !noundef !17 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %.val2 = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -16
  %.val3 = load i64, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.q, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3884)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i.i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3883, !noundef !17 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3884, !noundef !17 ; 2 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !3883
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.x = load i8, ptr %i.w, align 8, !range !66, !alias.scope !3883, !noundef !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.z = load i8, ptr %i.y, align 8, !range !66, !alias.scope !3884, !noundef !17
  %i.aa = icmp eq i8 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.ac = load i8, ptr %i.ab, align 1, !range !66, !alias.scope !3883
  %i.ad = icmp eq i8 %i.ac, 2
  %or.cond.i.i.i.i = select i1 %i.aa, i1 %i.ad, i1 false
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.af = load i8, ptr %i.ae, align 1, !range !66, !alias.scope !3884
  %i.ag = icmp eq i8 %i.af, 2
  %or.cond7.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.ag, i1 false
  %.pre40.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !3883 ; 3 uses
  br i1 %or.cond7.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %._crit_edge.i.i.i.i
  %i.ah = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pre40.i.i.i.i, %bb.d ], [ %.pre40.i.i.i.i, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !range !42, !alias.scope !3883, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.aj, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.f, align 8, !alias.scope !3884, !nonnull !17, !noundef !17
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %.pre40.i.i.i.i, ptr nonnull %i.ak, i64 %i.s), !noalias !3885
  %i.al = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.al, label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map14equivalent_keyNtNtCsaL1QbXo9JQH_3std4path7PathBufBO_bE0Csc4241EHy6Do_9typst_kit.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i.i.i, i64 39, i1 false), !noalias !3884
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %i.an = load i8, ptr %i.am, align 2, !range !41, !alias.scope !3883, !noundef !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !range !66, !alias.scope !3883, !noundef !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.ar = load i8, ptr %i.aq, align 1, !range !66, !alias.scope !3883, !noundef !17
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !3884, !nonnull !17, !noundef !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.au = load i8, ptr %i.at, align 8, !range !42, !alias.scope !3884, !noundef !17 ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.au, -1
  br i1 %.not26.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.425.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i.i.i, i64 39, i1 false), !noalias !3883
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  %i.aw = load i8, ptr %i.av, align 2, !range !41, !alias.scope !3884, !noundef !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !range !66, !alias.scope !3884, !noundef !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.ba = load i8, ptr %i.az, align 1, !range !66, !alias.scope !3884, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3886
  store ptr %i.ah, ptr %i.e, align 8, !noalias !3887
  %.sroa.4.0..sroa_idx27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx27.i.i.i.i, align 8, !noalias !3887
  %.sroa.528.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.aj, ptr %.sroa.528.0..sroa_idx.i.i.i.i, align 8, !noalias !3887
  %.sroa.6.0..sroa_idx29.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx29.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i, i64 39, i1 false), !noalias !3885
  %.sroa.7.0..sroa_idx30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.ap, ptr %.sroa.7.0..sroa_idx30.i.i.i.i, align 8, !noalias !3887
  %.sroa.8.0..sroa_idx31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i8 %i.ar, ptr %.sroa.8.0..sroa_idx31.i.i.i.i, align 1, !noalias !3887
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i8 %i.an, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 2, !noalias !3887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3886
  store ptr %i.as, ptr %i.d, align 8, !alias.scope !3888, !noalias !3889
  %.sroa.433.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.u, ptr %.sroa.433.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3888, !noalias !3889
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.au, ptr %.sroa.534.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3888, !noalias !3889
  %.sroa.635.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.635.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i, i64 39, i1 false), !noalias !3885
  %.sroa.736.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 %i.ay, ptr %.sroa.736.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3888, !noalias !3889
  %.sroa.837.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  store i8 %i.ba, ptr %.sroa.837.0..sroa_idx.i.i.i.i, align 1, !alias.scope !3888, !noalias !3889
  %.sroa.938.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  store i8 %i.aw, ptr %.sroa.938.0..sroa_idx.i.i.i.i, align 2, !alias.scope !3888, !noalias !3889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3890
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !3891
  %i.bb = load i8, ptr %i.b, align 8, !range !67, !noalias !3890, !noundef !17 ; 2 uses
  %.not16.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bb, -1
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h
  %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.811.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.912.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = phi i8 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ce, %bb.t ] ; 4 uses
  %.sroa.58.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.58.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3890 ; 2 uses
  %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.710.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3890 ; 10 uses
  %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.811.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3890 ; 10 uses
  %.sroa.912.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.912.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3890 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3890 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3892
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !3893
  %i.bd = load i8, ptr %i.a, align 8, !range !67, !noalias !3892, !noundef !17 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bd, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3892 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3892 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3892 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3892 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3892 ; 2 uses
  %i.be = icmp samesign ugt i8 %i.bc, 5
  %i.bf = zext nneg i8 %i.bc to i64
  %i.bg = add nsw i64 %i.bf, -5
  %i.bh = select i1 %i.be, i64 %i.bg, i64 0       ; 2 uses
  %i.bi = icmp samesign ult i8 %i.bd, 6           ; 2 uses
  %i.bj = zext nneg i8 %i.bd to i64
  %i.bk = add nsw i64 %i.bj, -5
  %i.bl = select i1 %i.bi, i64 0, i64 %i.bk
  %i.bm = icmp eq i64 %i.bh, %i.bl
  br i1 %i.bm, label %bb.k, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bh, label %bb.t [
    i64 0, label %bb.l
    i64 4, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp eq i8 %i.bc, %i.bd
  br i1 %i.bn, label %bb.n, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bc, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %.split31.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %.split29.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bo = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bo, label %.split27.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

.split27.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !3894, !noalias !3895
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bp, label %bb.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bq = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bq, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !3896, !noalias !3895
  %i.br = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.bs = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaL1QbXo9JQH_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

.split31.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.n
  %i.bt = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %cond.fr32.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i1 %i.bt
  br i1 %cond.fr32.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.bu = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bu, label %.split33.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

.split33.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !3897, !noalias !3895
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %bb.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.n
  %i.bw = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bw, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !3898, !noalias !3895
  %i.bx = icmp eq i32 %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.by = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

.split29.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.n
  %i.bz = icmp eq i8 %.sroa.58.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %cond.fr30.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i1 %i.bz
  br i1 %cond.fr30.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !3899, !noalias !3895
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %bb.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.k
  %i.cb = icmp eq i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %.split35.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

.split35.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.710.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.811.0.copyload.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !3900, !noalias !3901
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %bb.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaL1QbXo9JQH_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.912.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.912.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !3902, !noalias !3895
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cd = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cd, label %bb.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaL1QbXo9JQH_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split33.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split31.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3890
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !3886
  %i.ce = load i8, ptr %i.b, align 8, !range !67, !noalias !3890, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ce, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCsaL1QbXo9JQH_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0Csc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %.split33.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q, %.split31.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsc4241EHy6Do_9typst_kit.exit27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %.split27.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o, %bb.m, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3890
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.t, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3903
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !3886
  %i.cf = load i8, ptr %i.c, align 8, !range !67, !noalias !3903, !noundef !17
  %.not4.i.not.i.i.i.i.i.i.i = icmp eq i8 %i.cf, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3903
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i1 [ %.not4.i.not.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ false, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3886
  br label %_RNCINvNtCskt5MLIAl8nl_9hashbrown3map14equivalent_keyNtNtCsaL1QbXo9JQH_3std4path7PathBufBO_bE0Csc4241EHy6Do_9typst_kit.exit

_RNCINvNtCskt5MLIAl8nl_9hashbrown3map14equivalent_keyNtNtCsaL1QbXo9JQH_3std4path7PathBufBO_bE0Csc4241EHy6Do_9typst_kit.exit: ; preds = %bb.d, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.0.0.i.i.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_10FsPackages5storeNCNvMB7_NtB7_14SystemPackages6obtain0E0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 43, 45) %2, ptr noundef nonnull %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %i.g, align 8
  store ptr %3, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.47.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsc4241EHy6Do_9typst_kit, ptr %.sroa.411.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.i = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull @114, ptr noundef nonnull %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #44
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #47
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.k, align 8
  store i32 4, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3908)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !3908, !nonnull !17, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3908
  %i.l = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit
    i64 1, label %bb.f
  ], !prof !30

default.unreachable:                              ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit
  unreachable

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.n = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.o = and i64 %i.l, 1095216660480
  %i.p = icmp ne i64 %i.o, 1095216660480
  call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 %i.p)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.q = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !3909, !noalias !3908
  store i8 3, ptr %i.b, align 8, !alias.scope !3909, !noalias !3908
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r), !noalias !3908
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3908
  ret void

bb.g:                                             ; preds = %bb.h, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.h:                                             ; preds = %bb.b
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #44
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenNtNtCsaL1QbXo9JQH_3std2fs7ReadDirNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCINvNtBc_10filter_map15filter_map_foldINtNtBg_6result6ResultNtB26_8DirEntryNtNtNtBg_2io5error5ErrorEB4u_B2B_NCNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB5n_10FsPackages14latest_version0NCINvNtBc_3map8map_foldB4u_NtNtB28_4path7PathBufB2B_NCB5i_s_0NCIB3y_B6W_B2B_B2B_NCB5i_s0_0NvYB2B_NtNtBg_3cmp3Ord3maxE0E0E0E0B5p_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 4                ; 10 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %2, ptr %i.j, align 8, !noalias !3982
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = zext i1 %3 to i8
  store i8 %i.l, ptr %i.k, align 8, !noalias !3982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false), !noalias !3983
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.9.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.8.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map15filter_map_foldINtNtBb_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8DirEntryNtNtNtBb_2io5error5ErrorEB25_NtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB47_10FsPackages14latest_version0NCINvNtBV_3map8map_foldB25_NtNtB29_4path7PathBufB36_NCB42_s_0NCIBR_B5G_B36_B36_NCB42_s0_0NvYB36_NtNtBb_3cmp3Ord3maxE0E0E0INtB7_5FnMutTB36_B1J_EE8call_mutB49_.exit.i, %bb.a
  invoke void @_RNvXsz_NtCsaL1QbXo9JQH_3std2fsNtB5_7ReadDirNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.e unwind label %bb.c, !noalias !3982

bb.c:                                             ; preds = %_RNCNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB6_10FsPackages14latest_versions_0B8_.exit.i.i.i.i, %bb.i, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i.i.i.i.i.i, %bb.n, %bb.k, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.al, %bb.n ], [ %i.al, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3984)
  call void @llvm.experimental.noalias.scope.decl(metadata !3985)
  call void @llvm.experimental.noalias.scope.decl(metadata !3986)
  call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !3988, !noalias !3982, !nonnull !17, !noundef !17
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !3989
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs7ReadDirECsc4241EHy6Do_9typst_kit.exit.i
end_hunk_2
begin_hunk_3_@_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read14read_to_stringCsc4241EHy6Do_9typst_kit
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read14read_to_stringCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !8898, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !8898, !noundef !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8898, !noundef !17 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.e) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 %..i.i
  %i.g = sub nuw nsw i64 %.val1.i, %..i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g)
  %i.h = load i64, ptr %i.a, align 8, !range !19, !noundef !17
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !17, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !17 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = tail call { i64, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String11try_reserve(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.m)
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8899)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !8900, !noundef !17 ; 5 uses
  %i.r = load i64, ptr %1, align 8, !range !21, !alias.scope !8900, !noundef !17
  %i.s = sub i64 %i.r, %i.q
  %i.t = icmp ugt i64 %i.m, %i.s
  br i1 %i.t, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.q, i64 noundef %i.m, i64 noundef 1, i64 noundef 1)
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !8899, !noundef !17 ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  br label %bb.e

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.d
  %i.w = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.w)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i
  %i.x = phi i64 [ %i.u, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i ], [ %i.q, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !8899, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.k, i64 %i.m, i1 false), !noalias !8899
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, %bb.e
  %i.ab = phi i64 [ %i.x, %bb.e ], [ %i.q, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i ]
  %i.ac = add i64 %i.ab, %i.m
  store i64 %i.ac, ptr %i.p, align 8, !alias.scope !8899
  %i.ad = add i64 %i.m, %i.e
  store i64 %i.ad, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit, %bb.b
  %.sroa.4.0 = phi i64 [ ptrtoint (ptr @76 to i64), %bb.b ], [ %i.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit ], [ 163208757251, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit ], [ 1, %bb.c ]
  %i.ae = inttoptr i64 %.sroa.4.0 to ptr
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %i.ae, 1
  ret { i64, ptr } %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read16is_read_vectoredCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #20 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal { i64, ptr } @_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read4readCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !8909, !nonnull !17, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !8909, !noundef !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !8909, !noundef !17 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.d) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 %..i.i ; 2 uses
  %i.f = sub nuw nsw i64 %.val1.i, %..i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8910)
  %..i.i5 = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 range(i64 0, -9223372036854775808) %2) ; 4 uses
  %i.g = icmp eq i64 %..i.i5, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.e, align 1, !noalias !8911, !noundef !17
  store i8 %i.h, ptr %1, align 1, !alias.scope !8910
  br label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read.exit

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.e, i64 range(i64 0, -9223372036854775808) %..i.i5, i1 false), !alias.scope !8912, !noalias !8913
  br label %_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read.exit

_RNvXs5_NtNtCs1xwejQucwHj_5alloc2io5implsRShNtNtB7_4read4Read4read.exit: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECsc4241EHy6Do_9typst_kit.exit.i
  %i.i = inttoptr i64 %..i.i5 to ptr
  %i.j = add i64 %..i.i5, %i.d
  store i64 %i.j, ptr %i.c, align 8
  %i.k = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.i, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noalias noundef ptr @_RNvXNtNtCs1xwejQucwHj_5alloc2io6cursorINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read8read_bufCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !17 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !8923, !nonnull !17, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !8923, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !8923, !noundef !17 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.f) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 %..i.i
  %i.h = sub nuw nsw i64 %.val1.i, %..i.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !8924, !noundef !17
  %i.k = sub i64 %i.j, %i.b
  %..i.i4 = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.g, i64 range(i64 0, -9223372036854775808) %..i.i4, i1 false), !alias.scope !8925, !noalias !8924
  %i.m = load i64, ptr %i.a, align 8, !noalias !8926, !noundef !17
  %i.n = add i64 %i.m, %..i.i4                    ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !noalias !8926
  %i.o = sub i64 %i.f, %i.b
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr %i.e, align 8
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader14format_seconds0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.val = load i64, ptr %0, align 8, !noundef !17
  %.val1 = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !17, !align !25, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.val, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.d = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @179, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvCs6xpQEr8gLsQ_11typst_utils7displayINtB2_7WrapperNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtBX_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.h, align 8            ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8929)
  %i.i = load double, ptr %0, align 8, !alias.scope !8929, !noundef !17 ; 6 uses
  %i.j = fcmp ult double %i.i, f0x41D0000000000000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp ult double %i.i, f0x4130000000000000
  br i1 %i.k, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8929
  %i.l = fmul nnan double %i.i, f0x3E10000000000000
  store double %i.l, ptr %i.g, align 8, !noalias !8929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8929
  store ptr %i.g, ptr %i.f, align 8, !noalias !8929
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !8929
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.m = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @183, ptr noundef nonnull %i.f), !noalias !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8929
  br label %_RNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0B5_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = fcmp ult double %i.i, 1.024000e+03
  br i1 %i.n, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8929
  %i.o = fmul nnan double %i.i, f0x3EB0000000000000
  store double %i.o, ptr %i.e, align 8, !noalias !8929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8929
  store ptr %i.e, ptr %i.d, align 8, !noalias !8929
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !8929
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.p = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @182, ptr noundef nonnull %i.d), !noalias !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8929
  br label %_RNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0B5_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8929
  store ptr %0, ptr %i.a, align 8, !noalias !8929
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !8929
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.q = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @180, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8929
  br label %_RNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0B5_.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8929
  %i.r = fmul nnan double %i.i, f0x3F50000000000000
  store double %i.r, ptr %i.c, align 8, !noalias !8929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8929
  store ptr %i.c, ptr %i.b, align 8, !noalias !8929
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs3oUPovFnLWP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !8929
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.s = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @181, ptr noundef nonnull %i.b), !noalias !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8929
  br label %_RNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0B5_.exit

_RNCNvNtCsc4241EHy6Do_9typst_kit10downloader16format_byte_unit0B5_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.sroa.0.3.in.i = phi i1 [ %i.m, %bb.c ], [ %i.p, %bb.e ], [ %i.s, %bb.g ], [ %i.q, %bb.f ]
  ret i1 %.sroa.0.3.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB4_5WriteNtNtB8_6marker4SendEL_EEENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !align !25, !noundef !17
  %i.c = tail call noundef ptr @_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !17 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8934
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i
    i64 1, label %bb.e
  ], !prof !30

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !8935, !noalias !8934
  store i8 3, ptr %i.a, align 8, !alias.scope !8935, !noalias !8934
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8934
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !17 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8940
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i
    i64 1, label %bb.e
  ], !prof !30

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !8941, !noalias !8940
  store i8 3, ptr %i.a, align 8, !alias.scope !8941, !noalias !8940
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8940
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() unnamed_addr #21 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @324, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsc4241EHy6Do_9typst_kit(ptr %i.b)
  call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtBd_16UniversePackages14latest_version1__NtB7_18MinimalPackageInfoNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1T_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @325, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3map3MapINtNtCs8DqvS4Kle1o_7slotmap5basic4IterNtCskXGPWmRzvaD_6fontdb7InnerIdNtB24_8FaceInfoENCNvMs3_B24_NtB24_8Database5faces0ENCINvNtCsc4241EHy6Do_9typst_kit5fonts7with_dbNCNvB3r_4scan0E0ENtNtNtB9_6traits8iterator8Iterator4nextB3t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.6.i.i.i.i.i.i.i = alloca [80 x i8], align 8 ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 12 uses
  %.sroa.10.i.i.i.i.sroa.14.i = alloca [24 x i8], align 4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.c, align 8, !alias.scope !8980 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8984)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8985, !nonnull !17, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !8985
  %.promoted46.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !8986
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.promoted48.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !8987
  %.sroa.10.i.i.i.i.sroa.8.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.10.i.i.i.i.sroa.10.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.10.i.i.i.i.sroa.11.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.sroa.10.i.i.i.i.sroa.13.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.10.i.i.i.i.sroa.14.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.h = phi i64 [ %i.s, %bb.p ], [ %.promoted48.i.i.i, %bb.a ]
  %i.i = phi i64 [ %i.o, %bb.p ], [ %.promoted46.i.i.i, %bb.a ]
  %i.j = phi ptr [ %i.n, %bb.p ], [ %.promoted.i.i.i, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8988)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.k = phi i64 [ %i.o, %bb.d ], [ %i.i, %bb.b ]
  %i.l = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.b ] ; 10 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowTNtNtCsc4241EHy6Do_9typst_kit5fonts8FontPathNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font4info8FontInfoEEEB1l_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 3 uses
  store ptr %i.n, ptr %1, align 8, !alias.scope !8985
end_hunk_3
begin_hunk_4_@_RNvYINtNtCs5349LTBI5LY_16chunked_transfer7encoder7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1A_6marker4SendEL_EEB1u_9write_allCsc4241EHy6Do_9typst_kit:bb.a
  %i.j = load i64, ptr %i.d, align 8, !alias.scope !9889, !noundef !17 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !9889, !noundef !17 ; 6 uses
  %i.l = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.k, -6                     ; 2 uses
  %i.n = sub i64 %i.j, %i.m                       ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 range(i64 1, -9223372036854775808) %2, i64 %i.n) ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  call void @llvm.experimental.noalias.scope.decl(metadata !9890)
  %i.p = load i64, ptr %0, align 8, !range !21, !alias.scope !9891, !noundef !17
  %i.q = sub nsw i64 %i.p, %i.k
  %i.r = icmp ugt i64 %..i, %i.q
  br i1 %i.r, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i: ; preds = %bb.b
  call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.k, i64 noundef %..i, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !9890, !noundef !17 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  br label %bb.c

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.b
  %.not.i12 = icmp eq i64 %i.j, %i.m
  br i1 %.not.i12, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i
  %i.u = phi i64 [ %i.s, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.thread.i ], [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i ] ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !9890, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %..i, i1 false), !noalias !9890
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i, %bb.c
  %i.x = phi i64 [ %i.u, %bb.c ], [ %i.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsc4241EHy6Do_9typst_kit.exit.i ]
  %i.y = add nuw i64 %i.x, %..i
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !9890
  %i.z = icmp ult i64 %i.n, %2                    ; 2 uses
  %i.aa = load i8, ptr %i.g, align 8, !range !41, !alias.scope !9889, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit
  br i1 %i.z, label %bb.f, label %.loopexit.sink.split

bb.e:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCsc4241EHy6Do_9typst_kit.exit
  %i.ac = call fastcc noundef ptr @_RNvMNtCs5349LTBI5LY_16chunked_transfer7encoderINtB2_7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1D_6marker4SendEL_EE4sendCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !noalias !9892, !inline_history !9884 ; 2 uses
  %.not18.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ad = call fastcc noundef ptr @_RNvMNtCs5349LTBI5LY_16chunked_transfer7encoderINtB2_7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1D_6marker4SendEL_EE4sendCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0), !noalias !9892, !inline_history !9884 ; 2 uses
  %.not17.i = icmp eq ptr %i.ad, null
  br i1 %.not17.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.z, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ae = sub nuw nsw i64 %2, %..i
  %i.af = call fastcc noundef ptr @_RNvYINtNtCs5349LTBI5LY_16chunked_transfer7encoder7EncoderQINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1A_6marker4SendEL_EEB1u_9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.ae), !inline_history !9884 ; 2 uses
  %.not19.i = icmp eq ptr %i.af, null
  br i1 %.not19.i, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.h
  %.sroa.4.0.i.ph = phi ptr [ %i.af, %bb.h ], [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 11 uses
  store i64 1, ptr %i.b, align 8
  store ptr %.sroa.4.0.i.ph, ptr %i.h, align 8
  %i.ag = ptrtoint ptr %.sroa.4.0.i.ph to i64     ; 4 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %bb.j
    i64 3, label %.split33
    i64 0, label %.split34
    i64 1, label %.split
  ], !prof !30

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.j
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !17, !noundef !17
  %i.an = invoke noundef zeroext i1 %i.am(i32 noundef %i.ak)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.n, !inline_history !0

.split33:                                         ; preds = %bb.i
  %i.ao = lshr i64 %i.ag, 32
  %i.ap = icmp ult ptr %.sroa.4.0.i.ph, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ao to i8
  %spec.select.i.i.i = select i1 %i.ap, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.aq = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ar, label %bb.k, label %.loopexit.sink.split

.split34:                                         ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 16
  %i.at = load i8, ptr %i.as, align 8, !range !36, !noundef !17
  %i.au = icmp eq i8 %i.at, 35
  br i1 %i.au, label %.thread.thread, label %.loopexit.sink.split

.split:                                           ; preds = %bb.i
  %i.av = getelementptr i8, ptr %.sroa.4.0.i.ph, i64 31
  %i.aw = load i8, ptr %i.av, align 8, !range !36, !noundef !17
  %i.ax = icmp eq i8 %i.aw, 35
  br i1 %i.ax, label %bb.l, label %.loopexit.sink.split

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.an, label %.thread.thread, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.split34, %.split33, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.h, %bb.g, %bb.d
  %.sroa.07.1.ph = phi ptr [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.g ], [ %.sroa.4.0.i.ph, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %.sroa.4.0.i.ph, %.split ], [ %.sroa.4.0.i.ph, %.split33 ], [ %.sroa.4.0.i.ph, %.split34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ %.sroa.07.1.ph, %.loopexit.sink.split ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9893
  br label %bb.m

bb.k:                                             ; preds = %.split33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9893
  %i.ay = icmp ult ptr %.sroa.4.0.i.ph, inttoptr (i64 188978561024 to ptr)
  %i.az = and i64 %i.ag, 1095216660480
  %i.ba = icmp ne i64 %i.az, 1095216660480
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 %i.ba)
  br label %bb.m

bb.l:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9893
  %i.bb = getelementptr i8, ptr %.sroa.4.0.i.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %i.i, align 8, !alias.scope !9894, !noalias !9893
  store i8 3, ptr %i.a, align 8, !alias.scope !9894, !noalias !9893
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !9893
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.n:                                             ; preds = %.noexc, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #44
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.thr_comm

bb.p:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9909)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !9909, !noalias !9910, !noundef !17 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9911, !noundef !17
  br label %_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit.exit

_RINvNtNtCs3oUPovFnLWP_4core2io5write22default_write_vectoredNCNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtB2_5WriteNtNtB6_6marker4SendEL_EEB2q_14write_vectored0ECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !17, !noalias !9912, !nonnull !17
  %i.l = tail call { i64, ptr } %i.k(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i) #48, !noalias !9913, !inline_history !9908
  ret { i64, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_17is_write_vectoredCsc4241EHy6Do_9typst_kit(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #20 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_18write_all_vectoredCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.idx.i = shl nuw nsw i64 %2, 4                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = add nsw i64 %.idx.i, -16
  %i.f = lshr exact i64 %i.e, 4
  %i.g = add nuw nsw i64 %i.f, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.05.017.i = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.016.i = phi ptr [ %i.j, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !9939, !noundef !17
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 16 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.05.017.i, 1
  %i.l = icmp eq ptr %i.j, %i.c
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.0.lcssa.i = phi i64 [ %.sroa.05.017.i, %.lr.ph.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.m = icmp ugt i64 %.sroa.05.0.lcssa.i, %2
  br i1 %i.m, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %._crit_edge.i
  %i.n = icmp eq i64 %2, %.sroa.05.0.lcssa.i
  br i1 %i.n, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #47, !noalias !9939
  unreachable

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.05.0.lcssa.i
  %i.p = sub nuw nsw i64 %2, %.sroa.05.0.lcssa.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !9940, !nonnull !17, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !9940, !nonnull !17, !noundef !17
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !17, !noalias !9941, !nonnull !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17
  %.sroa.0.02560 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0.12638, %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17 ] ; 6 uses
  %.sroa.8.059 = phi i64 [ %i.p, %.lr.ph ], [ %.sroa.8.136, %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !9940)
  call void @llvm.experimental.noalias.scope.decl(metadata !9942)
  call void @llvm.experimental.noalias.scope.decl(metadata !9943)
  %.idx = shl nuw nsw i64 %.sroa.8.059, 4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.02560, i64 %.idx
  %i.x = icmp eq i64 %.sroa.8.059, 0
  br i1 %i.x, label %_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit.exit, label %.lr.ph111

bb.f:                                             ; preds = %.lr.ph111
  %i.y = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.w
  br i1 %i.z, label %_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit.exit, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.e, %bb.f
  %i.aa = phi ptr [ %i.y, %bb.f ], [ %.sroa.0.02560, %bb.e ] ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !9944, !noalias !9945, !noundef !17 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.lr.ph111
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !9946, !noundef !17
  br label %_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit.exit

_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.f, %bb.e, %bb.g
  %.sroa.3.0.i.i.i = phi i64 [ %i.ac, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ]
  %.sroa.02.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.e ], [ inttoptr (i64 1 to ptr), %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i) ]
  %i.ad = call { i64, ptr } %i.t(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i) #48, !noalias !9947, !inline_history !9932 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 13 uses
  store i64 %i.ae, ptr %i.b, align 8
  store ptr %i.af, ptr %i.u, align 8
  %i.ag = trunc nuw i64 %i.ae to i1
  %i.ah = ptrtoint ptr %i.af to i64               ; 5 uses
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %.split40
    i64 0, label %.split41
    i64 1, label %.split
  ], !prof !30

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aj = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.i
  %i.ak = lshr i64 %i.ah, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !17, !noundef !17
  %i.ao = invoke noundef zeroext i1 %i.an(i32 noundef %i.al)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %.thread, !inline_history !0

.split40:                                         ; preds = %bb.h
  %i.ap = lshr i64 %i.ah, 32
  %i.aq = icmp ult ptr %i.af, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ap to i8
  %spec.select.i.i.i = select i1 %i.aq, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ar = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.as, label %bb.o, label %.loopexit.sink.split

.split41:                                         ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.au = load i8, ptr %i.at, align 8, !range !36, !noundef !17
  %i.av = icmp eq i8 %i.au, 35
  br i1 %i.av, label %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17.thread.thread, label %.loopexit.sink.split

.split:                                           ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.af, i64 31
  %i.ax = load i8, ptr %i.aw, align 8, !range !36, !noundef !17
  %i.ay = icmp eq i8 %i.ax, 35
  br i1 %i.ay, label %bb.p, label %.loopexit.sink.split

bb.j:                                             ; preds = %_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_14write_vectoredCsc4241EHy6Do_9typst_kit.exit
  %i.az = icmp eq ptr %i.af, null
  br i1 %i.az, label %.loopexit.sink.split, label %.lr.ph.preheader.i4

.lr.ph.preheader.i4:                              ; preds = %bb.j
  %.idx.i3 = shl nuw nsw i64 %.sroa.8.059, 4      ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.02560, i64 %.idx.i3
  %i.bb = add nsw i64 %.idx.i3, -16
  %i.bc = lshr exact i64 %i.bb, 4
  %i.bd = add nuw nsw i64 %i.bc, 1
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.k, %.lr.ph.preheader.i4
  %.sroa.0.018.i6 = phi i64 [ %i.bi, %bb.k ], [ %i.ah, %.lr.ph.preheader.i4 ] ; 3 uses
  %.sroa.05.017.i7 = phi i64 [ %i.bj, %bb.k ], [ 0, %.lr.ph.preheader.i4 ] ; 2 uses
  %.sroa.010.016.i8 = phi ptr [ %i.bh, %bb.k ], [ %.sroa.0.02560, %.lr.ph.preheader.i4 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i8, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !noalias !9948, !noundef !17 ; 2 uses
  %i.bg = icmp ult i64 %.sroa.0.018.i6, %i.bf
  br i1 %i.bg, label %._crit_edge.i9, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i5
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i8, i64 16 ; 2 uses
  %i.bi = sub nuw i64 %.sroa.0.018.i6, %i.bf      ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.05.017.i7, 1
  %i.bk = icmp eq ptr %i.bh, %i.ba
  br i1 %i.bk, label %._crit_edge.i9, label %.lr.ph.i5

._crit_edge.i9:                                   ; preds = %bb.k, %.lr.ph.i5
  %.sroa.05.0.lcssa.i10 = phi i64 [ %.sroa.05.017.i7, %.lr.ph.i5 ], [ %i.bd, %bb.k ] ; 5 uses
  %.sroa.0.0.lcssa.i11 = phi i64 [ %.sroa.0.018.i6, %.lr.ph.i5 ], [ %i.bi, %bb.k ] ; 4 uses
  %i.bl = icmp ugt i64 %.sroa.05.0.lcssa.i10, %.sroa.8.059
  br i1 %i.bl, label %.noexc14, label %bb.l, !prof !15

bb.l:                                             ; preds = %._crit_edge.i9
  %i.bm = sub nuw nsw i64 %.sroa.8.059, %.sroa.05.0.lcssa.i10
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02560, i64 %.sroa.05.0.lcssa.i10 ; 4 uses
  %i.bo = icmp eq i64 %.sroa.8.059, %.sroa.05.0.lcssa.i10
  br i1 %i.bo, label %.thread.i12, label %bb.m

.noexc14:                                         ; preds = %._crit_edge.i9
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i10, i64 noundef %.sroa.8.059, i64 noundef %.sroa.8.059, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #47
  unreachable

.thread.i12:                                      ; preds = %bb.l
  %i.bp = icmp eq i64 %.sroa.0.0.lcssa.i11, 0
  br i1 %i.bp, label %.loopexit.sink.split, label %.noexc16, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !noalias !9948, !noundef !17 ; 2 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.0.0.lcssa.i11
  br i1 %i.bs, label %.noexc15, label %bb.n, !prof !23

bb.n:                                             ; preds = %bb.m
  %i.bt = sub nuw i64 %i.br, %.sroa.0.0.lcssa.i11
  store i64 %i.bt, ptr %i.bq, align 8, !noalias !9948
  %i.bu = load ptr, ptr %i.bn, align 8, !noalias !9948, !noundef !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.0.0.lcssa.i11
  store ptr %i.bv, ptr %i.bn, align 8, !noalias !9948
  br label %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17

.noexc15:                                         ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @247, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #47
  unreachable

.noexc16:                                         ; preds = %.thread.i12
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @250, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #47
  unreachable

.thread:                                          ; preds = %.noexc, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #44
          to label %bb.q unwind label %bb.r

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.ao, label %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17.thread.thread, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.j, %.split41, %.split40, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.thread.i12
  %.sroa.0.1.ph = phi ptr [ null, %.thread.i12 ], [ @394, %bb.j ], [ %i.af, %.split41 ], [ %i.af, %.split40 ], [ %i.af, %.split ], [ %i.af, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17, %.loopexit.sink.split, %bb.c, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %.sroa.0.1.ph, %.loopexit.sink.split ], [ null, %bb.c ], [ null, %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17 ]
  ret ptr %.sroa.0.1

_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17.thread.thread: ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9949
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

bb.o:                                             ; preds = %.split40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9949
  %i.bw = icmp ult ptr %i.af, inttoptr (i64 188978561024 to ptr)
  %i.bx = and i64 %i.ah, 1095216660480
  %i.by = icmp ne i64 %i.bx, 1095216660480
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.assume(i1 %i.by)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

bb.p:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9949
  %i.bz = getelementptr i8, ptr %i.af, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  store ptr %i.bz, ptr %i.v, align 8, !alias.scope !9950, !noalias !9949
  store i8 3, ptr %i.a, align 8, !alias.scope !9950, !noalias !9949
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v), !noalias !9949
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17.thread.thread, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9949
  br label %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17

_RNvMs7_NtNtCs3oUPovFnLWP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit17: ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit
  %.sroa.0.12638 = phi ptr [ %.sroa.0.02560, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit ], [ %i.bn, %bb.n ]
  %.sroa.8.136 = phi i64 [ %.sroa.8.059, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit.exit ], [ %i.bm, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ca = icmp eq i64 %.sroa.8.136, 0
  br i1 %i.ca, label %.loopexit, label %bb.e

bb.q:                                             ; preds = %.thread
  resume { ptr, i32 } %lpad.thr_comm

bb.r:                                             ; preds = %.thread
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCsbGiR87yI9G2_9tiny_http7request12NotifyOnDropINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtCs3oUPovFnLWP_4core2io5write5WriteNtNtB1x_6marker4SendEL_EEB1r_9write_allCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !9961, !nonnull !17, !noundef !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !9961, !nonnull !17, !align !25, !noundef !17
end_hunk_4
