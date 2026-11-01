Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webtransport_websys-93525f0e39e80be2.libp2p_webtransport_websys.a8393e380837655-cgu.0?download=true
inline.NumInlined: 310
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdnM8jOGFORn_4snow6params8patterns15HandshakeChoiceECsTXRW1w2lWz_26libp2p_webtransport_websys:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdnM8jOGFORn_4snow6params8patterns21HandshakeModifierListECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdnM8jOGFORn_4snow6params8patterns17HandshakeModifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @7, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noundef !7 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit, !prof !15

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i
    i64 1, label %bb.h
  ], !prof !13

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !151
  store i8 3, ptr %i.a, align 8, !alias.scope !151
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !160
  store i64 %i.d, ptr %i.b, align 8, !noalias !160
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !alias.scope !161, !noundef !7 ; 2 uses
  %i.g = zext i8 %i.f to i64                      ; 3 uses
  %i.h = icmp ult i8 %i.f, 65
  br i1 %i.h, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsTXRW1w2lWz_26libp2p_webtransport_websys.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28, !noalias !161
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !162
  store i64 %i.g, ptr %i.a, align 8, !noalias !162
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !162
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.g) #27
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNCNCNvNtCsTXRW1w2lWz_26libp2p_webtransport_websys5utils10DO_NOTHING00B7_(ptr noalias nofree nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i32 %1, 131
  br i1 %i.a, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs5g5izYWz4RS_12wasm_bindgen7JsValueECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs5g5izYWz4RS_12wasm_bindgen7JsValueECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs5g5izYWz4RS_12wasm_bindgen7JsValueECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCshuexzQAPOo_12libp2p_noise2io9handshakeINtB6_5StateNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys6stream6StreamE6finishs0_0B14_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.b = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @12)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 0
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @14, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.d, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.e, ptr %.sroa.56.0..sroa_idx, align 8
  store i8 9, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNSNvYNCNCNvNtCsTXRW1w2lWz_26libp2p_webtransport_websys5utils10DO_NOTHING00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtCs5g5izYWz4RS_12wasm_bindgen7JsValueEE9call_once6vtableBc_(ptr nofree readnone captures(none) %0, i32 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i32 %1, 131
  br i1 %i.a, label %bb.b, label %_RNvYNCNCNvNtCsTXRW1w2lWz_26libp2p_webtransport_websys5utils10DO_NOTHING00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtCs5g5izYWz4RS_12wasm_bindgen7JsValueEE9call_onceBa_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %1) #24
  br label %_RNvYNCNCNvNtCsTXRW1w2lWz_26libp2p_webtransport_websys5utils10DO_NOTHING00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtCs5g5izYWz4RS_12wasm_bindgen7JsValueEE9call_onceBa_.exit

_RNvYNCNCNvNtCsTXRW1w2lWz_26libp2p_webtransport_websys5utils10DO_NOTHING00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtCs5g5izYWz4RS_12wasm_bindgen7JsValueEE9call_onceBa_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsTXRW1w2lWz_26libp2p_webtransport_websys8endpointNtB2_8Endpoint14from_multiaddr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 16               ; 9 uses
  %.sroa.458 = alloca [80 x i8], align 8          ; 2 uses
  %i.h = alloca [88 x i8], align 8                ; 9 uses
  %i.i = alloca [80 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 15 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 1                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [4 x i8], align 4                 ; 5 uses
  %i.o = alloca [88 x i8], align 8                ; 13 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 16               ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 -1, ptr %i.r, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @12)
          to label %bb.b unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %bb.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.b:                                             ; preds = %bb.a
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = extractvalue { i64, i64 } %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) @14, i64 32, i1 false)
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.t, ptr %.sroa.4119.0..sroa_idx, align 8
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.u, ptr %.sroa.5120.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.w, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.4.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.5131.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.6134.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.ce, %bb.b
  %.sroa.057.0 = phi i64 [ 0, %bb.b ], [ %.sroa.057.1, %bb.ce ] ; 10 uses
  %.sroa.632.0 = phi i16 [ undef, %bb.b ], [ %.sroa.632.1, %bb.ce ] ; 9 uses
  %.sroa.028.0 = phi i16 [ 0, %bb.b ], [ %.sroa.028.1, %bb.ce ] ; 10 uses
  %.sroa.05.0 = phi i8 [ 0, %bb.b ], [ %.sroa.05.1, %bb.ce ] ; 9 uses
  %.sroa.03.0 = phi i8 [ 0, %bb.b ], [ %.sroa.03.1, %bb.ce ] ; 9 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0.1, %bb.ce ] ; 9 uses
  invoke void @_RNvXs5_Csbli3iz7XG76_9multiaddrNtB5_4IterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.d unwind label %.loopexit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %.body222, %bb.bs
  %.sroa.0113.3 = phi i1 [ true, %.body222 ], [ true, %bb.bs ], [ false, %bb.n ], [ true, %.loopexit ], [ %.not.not.not.not.not, %.loopexit.split-lp ]
  %.pn212 = phi { ptr, i32 } [ %.pn210, %.body222 ], [ %.pn210, %bb.bs ], [ %i.ay, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit unwind label %bb.at

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %.body
  br i1 %.sroa.0113.3, label %bb.cf, label %common.resume

.loopexit:                                        ; preds = %bb.c, %bb.cd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.thread626, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.c
  %i.aq = load i8, ptr %i.h, align 8, !range !181, !noundef !7
  %.not.not.not.not.not = icmp ne i8 %i.aq, -1    ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  %i.ar = load i8, ptr %i.o, align 8, !range !14, !noundef !7 ; 3 uses
  switch i8 %i.ar, label %bb.p [
    i8 1, label %bb.aa
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 7, label %bb.t
    i8 8, label %bb.u
    i8 12, label %bb.v
    i8 17, label %bb.w
    i8 19, label %bb.x
    i8 20, label %bb.x
    i8 25, label %bb.y
    i8 29, label %bb.z
  ]

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.as = trunc nuw i8 %.sroa.0.0 to i1
  %i.at = trunc nuw i8 %.sroa.03.0 to i1
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.au, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 34, ptr %.sroa.562.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.077.0.copyload = load i64, ptr %i.r, align 16
  %.not202 = icmp eq i64 %.sroa.077.0.copyload, -1
  br i1 %.not202, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.bz, %bb.g
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit220 unwind label %.thread

bb.j:                                             ; preds = %bb.h
  %.sroa.679.sroa.5.0.copyload = load i64, ptr %.sroa.6134.0..sroa_idx135, align 16
  %2 = load <2 x i64>, ptr %i.r, align 16
  store <2 x i64> %2, ptr %i.g, align 16
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.679.sroa.5.0.copyload, ptr %.sroa.5157.0..sroa_idx, align 16
  %i.av = trunc nuw i16 %.sroa.028.0 to i1
  br i1 %i.av, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.aw, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @17 to i64), ptr %.sroa.5177.0..sroa_idx, align 8
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 19, ptr %.sroa.6178.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit256

bb.l:                                             ; preds = %bb.j
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5110.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6111.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.458, i64 80, i1 false)
  store i64 %.sroa.057.0, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 %.sroa.632.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 %.sroa.05.0, ptr %.sroa.8112.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit256

bb.m:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.ax, align 8
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @18, ptr %.sroa.7198.0..sroa_idx, align 8
  %.sroa.8199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 19, ptr %.sroa.8199.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit256: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit220, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i255, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.p:                                             ; preds = %bb.z, %bb.x, %bb.bw, %bb.bt, %bb.br, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234, %bb.e
  %.sroa.057.1 = phi i64 [ %.sroa.057.0, %bb.e ], [ %.sroa.057.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234 ], [ %.sroa.057.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242 ], [ %.sroa.057.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253 ], [ %.sroa.057.0, %bb.br ], [ 1, %bb.bt ], [ %.sroa.057.0, %bb.x ], [ %.sroa.057.0, %bb.bw ], [ %.sroa.057.0, %bb.z ]
  %.sroa.632.1 = phi i16 [ %.sroa.632.0, %bb.e ], [ %.sroa.632.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234 ], [ %.sroa.632.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242 ], [ %.sroa.632.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253 ], [ %.sroa.632.0, %bb.br ], [ %.sroa.632.0, %bb.bt ], [ %.sroa.632.0, %bb.x ], [ %i.de, %bb.bw ], [ %.sroa.632.0, %bb.z ]
  %.sroa.028.1 = phi i16 [ %.sroa.028.0, %bb.e ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234 ], [ %.sroa.028.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242 ], [ %.sroa.028.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253 ], [ %.sroa.028.0, %bb.br ], [ %.sroa.028.0, %bb.bt ], [ 1, %bb.x ], [ 1, %bb.bw ], [ %.sroa.028.0, %bb.z ]
  %.sroa.05.1 = phi i8 [ %.sroa.05.0, %bb.e ], [ %.sroa.05.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234 ], [ %.sroa.05.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253 ], [ %.sroa.05.0, %bb.br ], [ %.sroa.05.0, %bb.bt ], [ %.sroa.05.0, %bb.x ], [ %.sroa.05.0, %bb.bw ], [ %.sroa.05.0, %bb.z ]
  %.sroa.03.1 = phi i8 [ %.sroa.03.0, %bb.e ], [ %.sroa.03.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234 ], [ %.sroa.03.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242 ], [ %.sroa.03.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253 ], [ 1, %bb.br ], [ %.sroa.03.0, %bb.bt ], [ %.sroa.03.0, %bb.x ], [ %.sroa.03.0, %bb.bw ], [ 1, %bb.z ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234 ], [ %.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242 ], [ %.sroa.0.0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253 ], [ %.sroa.0.0, %bb.br ], [ %.sroa.0.0, %bb.bt ], [ 1, %bb.x ], [ %.sroa.0.0, %bb.bw ], [ 1, %bb.z ]
  %i.ba = load i8, ptr %i.o, align 8, !range !14, !noundef !7
  %.off = add nsw i8 %i.ba, -1
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.ce, label %bb.cd

bb.q:                                             ; preds = %bb.e
  br label %bb.aa

bb.r:                                             ; preds = %bb.e
  br label %bb.aa

bb.s:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.bb, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @20, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 44, ptr %.sroa.521.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %.thread626

bb.t:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bc = load i32, ptr %i.ab, align 1
  store i32 %i.bc, ptr %i.n, align 4
  %i.bd = load i64, ptr %i.r, align 16, !range !6, !noundef !7
  %.not206 = icmp eq i64 %i.bd, -1
  br i1 %.not206, label %bb.av, label %bb.az

bb.u:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.be = load i64, ptr %i.r, align 16, !range !6, !noundef !7
  %.not205 = icmp eq i64 %i.be, -1
  br i1 %.not205, label %bb.bf, label %bb.bj

bb.v:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.al, i64 80, i1 false)
  %i.bf = trunc nuw i8 %.sroa.03.0 to i1
  br i1 %i.bf, label %bb.bq, label %bb.bp

bb.w:                                             ; preds = %bb.e
  %i.bg = icmp eq i64 %.sroa.057.0, 1
  br i1 %i.bg, label %bb.bu, label %bb.bt

bb.x:                                             ; preds = %bb.e, %bb.e
  %i.bh = load i64, ptr %i.r, align 16, !range !6, !noundef !7
  %.not203 = icmp ne i64 %i.bh, -1
  %.not204 = icmp eq i16 %.sroa.028.0, 1
  %or.cond219 = select i1 %.not203, i1 %.not204, i1 false
  br i1 %or.cond219, label %bb.p, label %bb.bv

bb.y:                                             ; preds = %bb.e
  %i.bi = icmp eq i16 %.sroa.028.0, 1
  br i1 %i.bi, label %bb.bx, label %bb.bw

bb.z:                                             ; preds = %bb.e
  %i.bj = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.bj, label %bb.p, label %bb.by

bb.aa:                                            ; preds = %bb.e, %bb.r, %bb.q
  %.sink = phi ptr [ %i.an, %bb.r ], [ %i.ao, %bb.q ], [ %i.ap, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  %i.bk = icmp eq i16 %.sroa.028.0, 1
  br i1 %i.bk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.ag, align 8, !nonnull !7
  %i.bm = load i64, ptr %i.ah, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ag unwind label %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.bn, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 30, ptr %.sroa.516.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.bo = load i64, ptr %i.j, align 8, !range !6, !alias.scope !182, !noundef !7
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body222 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit_crit_edge unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit_crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i
  %.pre.pre = load i8, ptr %i.o, align 8, !range !14
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

.loopexit.split-lp277:                            ; preds = %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body226
  %.pn = phi { ptr, i32 } [ %eh.lpad-body227, %.body226 ], [ %lpad.loopexit.split-lp1056, %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #25
          to label %.body222 unwind label %bb.at

.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.ah
  %lpad.loopexit.split-lp1056 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp277

bb.ag:                                            ; preds = %bb.ab
  %i.bs = load i64, ptr %i.f, align 8, !range !12, !noundef !7
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = load i64, ptr %i.ai, align 8, !range !17, !noundef !7 ; 4 uses
  br i1 %i.bt, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.bv = load i64, ptr %i.aj, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bv) #26
          to label %bb.as unwind label %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ag
  %i.bw = load ptr, ptr %i.aj, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.bx = icmp ule i64 %i.bm, %i.bu
  call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not208 = icmp eq i64 %i.bm, 0
  br i1 %.not208, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.an, %bb.ai
  %i.by = load i64, ptr %i.r, align 16, !range !6, !alias.scope !183, !noundef !7
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i225 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body226 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i225: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit unwind label %bb.ao

bb.an:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %i.bl, i64 %i.bm, i1 false)
  br label %bb.aj

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i225
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body226

.body226:                                         ; preds = %bb.al, %bb.ao
  %eh.lpad-body227 = phi { ptr, i32 } [ %i.cc, %bb.ao ], [ %i.ca, %bb.al ]
  store i64 %i.bu, ptr %i.r, align 16
  store ptr %i.bw, ptr %.sroa.5131.0..sroa_idx132, align 8
  store i64 %i.bm, ptr %.sroa.6134.0..sroa_idx135, align 16
  br label %.loopexit.split-lp277

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i225
  store i64 %i.bu, ptr %i.r, align 16
  store ptr %i.bw, ptr %.sroa.5131.0..sroa_idx132, align 8
  store i64 %i.bm, ptr %.sroa.6134.0..sroa_idx135, align 16
  %i.cd = load i64, ptr %i.j, align 8, !range !6, !alias.scope !184, !noundef !7
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i230 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body222 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i230: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body222:                                         ; preds = %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae, %bb.aq, %.body250, %.body239, %.loopexit.split-lp277
  %.pn210 = phi { ptr, i32 } [ %eh.lpad-body251, %.body250 ], [ %.pn, %.loopexit.split-lp277 ], [ %eh.lpad-body240, %.body239 ], [ %i.bq, %bb.ae ], [ %i.cf, %bb.aq ], [ %lpad.loopexit.split-lp1053, %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1050, %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1048, %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ch = load i8, ptr %i.o, align 8, !range !14, !noundef !7
  %.off215 = add nsw i8 %i.ch, -1
  %switch216 = icmp ult i8 %.off215, 3
  br i1 %switch216, label %.body, label %bb.bs

.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i230, %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i
  %lpad.loopexit.split-lp1048 = landingpad { ptr, i32 }
          cleanup
  br label %.body222

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit234: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.p

bb.as:                                            ; preds = %bb.ah
  unreachable

bb.at:                                            ; preds = %.body, %bb.cf, %bb.bs, %.loopexit.split-lp277
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit_crit_edge, %bb.ac
  %.pre = phi i8 [ %.pre.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i._RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit_crit_edge ], [ %i.ar, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.au

bb.au:                                            ; preds = %bb.bv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit
  %i.cj = phi i8 [ %i.ar, %bb.bv ], [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit ]
  %.off217 = add nsw i8 %i.cj, -1
  %switch218 = icmp ult i8 %.off217, 3
  br i1 %switch218, label %bb.bz, label %.thread626

bb.av:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !185
  store i64 0, ptr %i.e, align 8, !noalias !185
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !185
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !185
  store i64 1610612768, ptr %i.ae, align 8, !noalias !185
  store ptr %i.e, ptr %i.d, align 8, !noalias !185
  store ptr @56, ptr %i.af, align 8, !noalias !185
  %i.ck = invoke noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_8Ipv4AddrNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.aw unwind label %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !186

.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.ax
  %lpad.loopexit.split-lp1053 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #25
          to label %.body222 unwind label %bb.ay, !noalias !186

bb.aw:                                            ; preds = %bb.av
  br i1 %i.ck, label %bb.ax, label %bb.ba, !prof !15

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28
          to label %.noexc.i unwind label %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !186

.noexc.i:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %.loopexit.split-lp272.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !186
  unreachable

bb.az:                                            ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.cm, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 30, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.thread626

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !185
  %i.cn = load i64, ptr %i.r, align 16, !range !6, !alias.scope !187, !noundef !7
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i238 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body239 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i238: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242 unwind label %bb.be

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i238
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body239

.body239:                                         ; preds = %bb.bc, %bb.be
  %eh.lpad-body240 = phi { ptr, i32 } [ %i.cr, %bb.be ], [ %i.cp, %bb.bc ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %.body222

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit242: ; preds = %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.p

bb.bf:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !188
  store i64 0, ptr %i.c, align 8, !noalias !188
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i243, align 8, !noalias !188
  store i64 0, ptr %.sroa.5.0..sroa_idx.i244, align 8, !noalias !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !188
  store i64 1610612768, ptr %i.ac, align 8, !noalias !188
  store ptr %i.c, ptr %i.b, align 8, !noalias !188
  store ptr @56, ptr %i.ad, align 8, !noalias !188
  %i.cs = invoke noundef zeroext i1 @_RNvXsj_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_8Ipv6AddrNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bg unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !189

.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.bh
  %lpad.loopexit.split-lp1050 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.body222 unwind label %bb.bi, !noalias !189

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.cs, label %bb.bh, label %bb.bk, !prof !15

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28
          to label %.noexc.i245 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !189

.noexc.i245:                                      ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !189
  unreachable

bb.bj:                                            ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.cu, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 30, ptr %.sroa.511.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread626

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !188
  %i.cv = load i64, ptr %i.r, align 16, !range !6, !alias.scope !190, !noundef !7
  %i.cw = icmp eq i64 %i.cv, -1
  br i1 %i.cw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i249 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body250 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i249: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253 unwind label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i249
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body250

.body250:                                         ; preds = %bb.bm, %bb.bo
  %eh.lpad-body251 = phi { ptr, i32 } [ %i.cz, %bb.bo ], [ %i.cx, %bb.bm ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %.body222

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit253: ; preds = %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.p

bb.bp:                                            ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.da, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @21, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 50, ptr %.sroa.550.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.thread626

bb.bq:                                            ; preds = %bb.v
  %i.db = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.i)
          to label %bb.br unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.p

bb.bs:                                            ; preds = %.body222
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o) #25
          to label %.body unwind label %bb.at

bb.bt:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(80) %i.ak, i64 80, i1 false)
  br label %bb.p

bb.bu:                                            ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.dc, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @22, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 30, ptr %.sroa.555.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %.thread626

bb.bv:                                            ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.dd, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @23, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 53, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.au

bb.bw:                                            ; preds = %bb.y
  %i.de = load i16, ptr %i.aa, align 2, !noundef !7
  br label %bb.p

bb.bx:                                            ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.df, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 30, ptr %.sroa.526.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %.thread626

bb.by:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.dg, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @25, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 39, ptr %.sroa.545.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %.thread626

.thread626:                                       ; preds = %bb.s, %bb.az, %bb.bj, %bb.bp, %bb.bu, %bb.bx, %bb.by, %bb.au
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o)
          to label %bb.bz unwind label %.loopexit.split-lp

bb.bz:                                            ; preds = %bb.au, %.thread626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit220: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dh = load i64, ptr %i.r, align 16, !range !6, !alias.scope !191, !noundef !7
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit256, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit220
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i255 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.cf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit, %bb.cb
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.cb ], [ %.pn212, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit ], [ %.pn212.pn258, %bb.cf ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsTXRW1w2lWz_26libp2p_webtransport_websys.exit.i255: ; preds = %bb.ca
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit256

bb.cd:                                            ; preds = %bb.p
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbli3iz7XG76_9multiaddr8protocol8ProtocolECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o)
          to label %bb.ce unwind label %.loopexit

bb.ce:                                            ; preds = %bb.p, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.c

bb.cf:                                            ; preds = %.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit
  %.pn212.pn258 = phi { ptr, i32 } [ %.pn212, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EEECsTXRW1w2lWz_26libp2p_webtransport_websys.exit ], [ %lpad.thr_comm, %.thread ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #25
          to label %common.resume unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMNtCsTXRW1w2lWz_26libp2p_webtransport_websys8endpointNtB2_8Endpoint17webtransport_opts(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call noundef i32 @_RNvMNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindingsNtB2_19WebTransportOptions3new()
  store i32 %i.g, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = invoke noundef i32 @_RNvMs1b_Cs6Rx5s9cT8Ho_6js_sysNtB6_5Array3new()
          to label %bb.c unwind label %bb.b       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys5ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

bb.c:                                             ; preds = %bb.a
  store i32 %i.h, ptr %i.e, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit
  %.pn6 = phi { ptr, i32 } [ %.pn, %bb.o ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.k = icmp ugt i32 %i.h, 131
  br i1 %i.k, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys5ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit
  call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.h) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys5ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.f, %bb.i, %bb.j, %bb.c
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit17, %bb.e
  %i.l = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsTXRW1w2lWz_26libp2p_webtransport_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !194, !noundef !7 ; 2 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = icmp ult i8 %i.o, 65
  br i1 %i.q, label %bb.m, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.p, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = invoke noundef nonnull align 4 ptr @_RNvMNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindingsNtB2_19WebTransportOptions25server_certificate_hashes(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %i.f, align 4, !noundef !7
  %i.t = icmp ugt i32 %i.h, 131
  br i1 %i.t, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys5ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit15

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.h) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys5ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit15

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys5ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit15: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i32 %i.s

bb.m:                                             ; preds = %bb.h
  %i.u = invoke noundef i32 @_RNvMsfI_Cs6Rx5s9cT8Ho_6js_sysNtB6_10Uint8Array14new_from_slice(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.p)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.n:                                             ; preds = %bb.m
  store i32 %i.u, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = invoke noundef i32 @_RNvMs_NtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindingsNtB4_16WebTransportHash3new()
          to label %bb.q unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit: ; preds = %bb.s, %bb.r, %bb.p
  %.pn = phi { ptr, i32 } [ %i.x, %bb.p ], [ %i.z, %bb.r ], [ %i.z, %bb.s ] ; 2 uses
  %i.w = icmp ugt i32 %i.u, 131
  br i1 %i.w, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit
  call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.u) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit

bb.p:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit

bb.q:                                             ; preds = %bb.n
  store i32 %i.v, ptr %i.b, align 4
  %i.y = invoke noundef nonnull align 4 ptr @_RNvMs_NtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindingsNtB4_16WebTransportHash9algorithm(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 7)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.t, %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val13 = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  %i.aa = icmp ugt i32 %.val13, 131
  br i1 %i.aa, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit

bb.s:                                             ; preds = %bb.r
  call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val13) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit

bb.t:                                             ; preds = %bb.q
  %i.ab = invoke noundef nonnull align 4 ptr @_RNvMs_NtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindingsNtB4_16WebTransportHash5value(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.u unwind label %bb.r       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ac = invoke noundef i32 @_RNvMs1I_Cs6Rx5s9cT8Ho_6js_sysNtB6_5Array4push(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %bb.v unwind label %bb.r       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %.val12 = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  %i.ad = icmp ugt i32 %.val12, 131
  br i1 %i.ad, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit16

bb.w:                                             ; preds = %bb.v
  call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val12) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit16: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = icmp ugt i32 %i.u, 131
  br i1 %i.ae, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit17

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit16
  call void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.u) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit17

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6Rx5s9cT8Ho_6js_sys10Uint8ArrayECsTXRW1w2lWz_26libp2p_webtransport_websys.exit17: ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsTXRW1w2lWz_26libp2p_webtransport_websys8bindings16WebTransportHashEBF_.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_0
