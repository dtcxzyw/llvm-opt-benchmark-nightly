Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.14?download=true
inline.NumInlined: 1470
inline.NumDeleted: 851
begin_hunk_0_@_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB6_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_:bb.a
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB2c_5SplitNtBW_11Deserialize11deserializes_1__NtB26_11SplitHelperB3e_11deserialize9___VisitorEB2g_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @62, i64 noundef 4)
  %i.d = load i64, ptr %i.c, align 8, !range !191, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 2, ptr %0, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i64 16, i1 false)
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.610.0.copyload = load i8, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %i.i = trunc nuw i8 %.sroa.610.0.copyload to i1
  call fastcc void @_RINvMs3_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB6_5Split3newNtB6_12SplitPatternEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, i8 noundef %.sroa.7.0.copyload, i1 noundef zeroext %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = load i64, ptr %i.b, align 8, !range !191, !noundef !11
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !align !22, !noundef !11
  %i.p = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB2c_6marker4SendNtB2J_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtBb_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB3J_14ReplacePatternNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2)
  %i.d = load i8, ptr %i.c, align 8, !range !273, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !align !22, !noundef !11 ; 3 uses
  switch i8 %i.d, label %bb.c [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 2, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.f)
  %i.h = load i64, ptr %i.a, align 8, !range !15, !noundef !11
  %i.i = icmp eq i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.f)
  %i.k = load i64, ptr %i.b, align 8, !range !15, !noundef !11
  %i.l = icmp eq i64 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !align !22, !noundef !11
  store ptr %i.o, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink3 = phi i64 [ 2, %bb.e ], [ 0, %bb.f ]
  store i64 %.sink3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !11, !align !22, !noundef !11
  store ptr %i.q, ptr %i.j, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i64 [ 2, %bb.i ], [ 1, %bb.j ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtBb_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1376
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 24, i1 false), !noalias !1394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1395, !noalias !1398, !nonnull !11, !noundef !11 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1395, !noalias !1398, !noundef !11 ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 6, label %bb.b
    i64 5, label %bb.c
  ], !prof !1371

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.l, align 1
  %i.p = xor i32 %i.o, 1769108563
  %i.q = getelementptr i8, ptr %i.l, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 %i.s, 26478
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.noexc.i.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.l, align 1
  %i.z = xor i32 %i.y, 1701274962
  %i.aa = getelementptr i8, ptr %i.l, i64 4
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = xor i32 %i.ac, 120
  %i.ae = or i32 %i.z, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.noexc.i.i.i.i.i.i, label %bb.d, !prof !190

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ai = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15unknown_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @16, i64 noundef 2)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e, !noalias !1400

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.body.thread.i.i unwind label %bb.h, !noalias !1398

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.76.0.i.i = phi ptr [ undef, %bb.b ], [ %i.ai, %bb.d ], [ undef, %bb.c ] ; 2 uses
  %cond = phi i1 [ true, %bb.b ], [ undef, %bb.d ], [ false, %bb.c ]
  %.sink.i.i.i.i.i.i.i = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtBa_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1p_11deserializeINtNtB1r_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i unwind label %bb.f, !noalias !1398

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.thread.i.i unwind label %bb.g, !noalias !1398

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1398
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1398
  unreachable

_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtBa_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1p_11deserializeINtNtB1r_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.i unwind label %.body.thread11.i.i, !noalias !1376

.body.thread11.i.i:                               ; preds = %_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtBa_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1p_11deserializeINtNtB1r_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.i:                                             ; preds = %_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtBa_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1p_11deserializeINtNtB1r_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1383
  br i1 %.sink.i.i.i.i.i.i.i, label %bb.j, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %i.f, align 8, !range !1144, !alias.scope !1401, !noalias !1376, !noundef !11
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f), !noalias !1376
  br label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.l, %.body.thread.i.i
  resume { ptr, i32 } %eh.lpad-body10.i.i

.body.thread.i.i:                                 ; preds = %.body.thread11.i.i, %bb.f, %bb.e
  %eh.lpad-body10.i.i = phi { ptr, i32 } [ %i.an, %.body.thread11.i.i ], [ %i.aj, %bb.e ], [ %i.ak, %bb.f ]
  %i.aq = load i8, ptr %i.g, align 8, !range !1144, !alias.scope !1408, !noalias !1376, !noundef !11
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.thread.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.m, !noalias !1376

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1376
  unreachable

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1376
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.0.i.i) ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.76.0.i.i, ptr %i.at, align 8
  store i64 2, ptr %0, align 8
  br label %bb.s

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit: ; preds = %bb.i
  %.sroa.4.i.i.sroa.3.7.copyload = load ptr, ptr %i.j, align 8, !noalias !1383 ; 3 uses
  %.sroa.4.i.i.sroa.5.7..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1376
  %i.au = ptrtoint ptr %.sroa.4.i.i.sroa.3.7.copyload to i64
  %i.av = and i64 %i.au, 255
  %.not.i.i3 = icmp eq i64 %i.av, 255             ; 2 uses
  br i1 %cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %.not.i.i3, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, !prof !1153

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1413
  store i8 13, ptr %i.c, align 8, !noalias !1413
  %i.aw = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1413
  br label %bb.t

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1413
  store ptr %.sroa.4.i.i.sroa.3.7.copyload, ptr %i.d, align 8, !noalias !1420
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.sroa.5.7..sroa_idx, i64 24, i1 false)
  call void @_RINvXs6_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1413
  %.pr = load i64, ptr %i.h, align 8
  %i.ax = icmp eq i64 %.pr, -1
  br i1 %i.ax, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge, label %bb.u

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge: ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.t

bb.o:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %.not.i.i3, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4, !prof !1153

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1422
  store i8 13, ptr %i.a, align 8, !noalias !1422
  %i.ay = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !1422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1422
  br label %bb.p

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1422
  store ptr %.sroa.4.i.i.sroa.3.7.copyload, ptr %i.b, align 8, !noalias !1429
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.sroa.5.7..sroa_idx, i64 24, i1 false)
  call void @_RINvXs6_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !1430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1422
  %.pr14 = load i64, ptr %i.i, align 8
  %i.az = icmp eq i64 %.pr14, -1
  br i1 %i.az, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge, label %bb.q

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge: ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread
  %i.ba = phi ptr [ %.pre16, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge ], [ %i.ay, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  br label %bb.r

bb.q:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge17 = phi i64 [ 0, %bb.q ], [ 2, %bb.p ]
  store i64 %storemerge17, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB1Y_14ReplacePatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread
  ret void

bb.t:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread
  %i.bc = phi ptr [ %.pre, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge ], [ %i.aw, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %storemerge = phi i64 [ 1, %bb.u ], [ 2, %bb.t ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes3_1__NtBb_8NFKDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes3_1__NtB3J_8NFKDTypeNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes3_1__NtBb_8NFKDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtBb_7NmtTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1l_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_:bb.a
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !1581
  br label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.k, %.body.thread.i.i
  resume { ptr, i32 } %eh.lpad-body8.i.i

.body.thread.i.i:                                 ; preds = %.body.thread9.i.i, %bb.e, %bb.d
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.z, %.body.thread9.i.i ], [ %i.v, %bb.d ], [ %i.w, %bb.e ]
  %i.ac = load i8, ptr %i.c, align 8, !range !1144, !alias.scope !1601, !noalias !1581, !noundef !11
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.body.thread.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.l, !noalias !1581

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1581
  unreachable

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1581
  br label %bb.m

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload4 = load i8, ptr %i.e, align 8, !alias.scope !1581 ; 2 uses
  %.sroa.76.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.76.0.copyload8 = load ptr, ptr %.sroa.76.0..sroa_idx7, align 8, !alias.scope !1581 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1581
  %i.af = icmp eq i8 %.sroa.0.0.copyload4, -2
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit
  %.sroa.76.013 = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread ], [ %.sroa.76.0.copyload8, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.013) ]
  br label %bb.o

bb.n:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesf_1__NtB1Y_7NmtTypeNtB12_11Deserialize11deserialize7___FieldEB22_.exit
  %.sroa.9.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.0.0.copyload4, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx5, i64 7, i1 false)
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.76.0.copyload8, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx9, i64 16, i1 false)
  %i.ag = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.1 = phi ptr [ %i.ag, %bb.n ], [ %.sroa.76.013, %bb.m ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtBb_12SplitPatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB3J_12SplitPatternNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2)
  %i.d = load i8, ptr %i.c, align 8, !range !273, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !align !22, !noundef !11 ; 3 uses
  switch i8 %i.d, label %bb.c [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 2, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.f)
  %i.h = load i64, ptr %i.a, align 8, !range !15, !noundef !11
  %i.i = icmp eq i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.f)
  %i.k = load i64, ptr %i.b, align 8, !range !15, !noundef !11
  %i.l = icmp eq i64 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !align !22, !noundef !11
  store ptr %i.o, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink3 = phi i64 [ 2, %bb.e ], [ 0, %bb.f ]
  store i64 %.sink3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !11, !align !22, !noundef !11
  store ptr %i.q, ptr %i.j, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i64 [ 2, %bb.i ], [ 1, %bb.j ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtBb_12SplitPatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1606
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 24, i1 false), !noalias !1624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1625, !noalias !1628, !nonnull !11, !noundef !11 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1625, !noalias !1628, !noundef !11 ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 6, label %bb.b
    i64 5, label %bb.c
  ], !prof !1371

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.l, align 1
  %i.p = xor i32 %i.o, 1769108563
  %i.q = getelementptr i8, ptr %i.l, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 %i.s, 26478
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.noexc.i.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.l, align 1
  %i.z = xor i32 %i.y, 1701274962
  %i.aa = getelementptr i8, ptr %i.l, i64 4
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = xor i32 %i.ac, 120
  %i.ae = or i32 %i.z, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.noexc.i.i.i.i.i.i, label %bb.d, !prof !190

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ai = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15unknown_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @16, i64 noundef 2)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e, !noalias !1630

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %.body.thread.i.i unwind label %bb.h, !noalias !1628

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.76.0.i.i = phi ptr [ undef, %bb.b ], [ %i.ai, %bb.d ], [ undef, %bb.c ] ; 2 uses
  %cond = phi i1 [ true, %bb.b ], [ undef, %bb.d ], [ false, %bb.c ]
  %.sink.i.i.i.i.i.i.i = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtBa_12SplitPatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i unwind label %bb.f, !noalias !1628

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.thread.i.i unwind label %bb.g, !noalias !1628

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1628
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1628
  unreachable

_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtBa_12SplitPatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.i unwind label %.body.thread11.i.i, !noalias !1606

.body.thread11.i.i:                               ; preds = %_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtBa_12SplitPatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.i:                                             ; preds = %_RINvXs_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtBa_12SplitPatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBe_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1613
  br i1 %.sink.i.i.i.i.i.i.i, label %bb.j, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %i.f, align 8, !range !1144, !alias.scope !1631, !noalias !1606, !noundef !11
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f), !noalias !1606
  br label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.l, %.body.thread.i.i
  resume { ptr, i32 } %eh.lpad-body10.i.i

.body.thread.i.i:                                 ; preds = %.body.thread11.i.i, %bb.f, %bb.e
  %eh.lpad-body10.i.i = phi { ptr, i32 } [ %i.an, %.body.thread11.i.i ], [ %i.aj, %bb.e ], [ %i.ak, %bb.f ]
  %i.aq = load i8, ptr %i.g, align 8, !range !1144, !alias.scope !1638, !noalias !1606, !noundef !11
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.body.thread.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.m, !noalias !1606

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1606
  unreachable

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1606
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.0.i.i) ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.76.0.i.i, ptr %i.at, align 8
  store i64 2, ptr %0, align 8
  br label %bb.s

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit: ; preds = %bb.i
  %.sroa.4.i.i.sroa.3.7.copyload = load ptr, ptr %i.j, align 8, !noalias !1613 ; 3 uses
  %.sroa.4.i.i.sroa.5.7..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1606
  %i.au = ptrtoint ptr %.sroa.4.i.i.sroa.3.7.copyload to i64
  %i.av = and i64 %i.au, 255
  %.not.i.i3 = icmp eq i64 %i.av, 255             ; 2 uses
  br i1 %cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %.not.i.i3, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, !prof !1153

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1643
  store i8 13, ptr %i.c, align 8, !noalias !1643
  %i.aw = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !1643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1643
  br label %bb.t

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1643
  store ptr %.sroa.4.i.i.sroa.3.7.copyload, ptr %i.d, align 8, !noalias !1650
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.sroa.5.7..sroa_idx, i64 24, i1 false)
  call void @_RINvXs6_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !1651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1643
  %.pr = load i64, ptr %i.h, align 8
  %i.ax = icmp eq i64 %.pr, -1
  br i1 %i.ax, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge, label %bb.u

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge: ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.t

bb.o:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %.not.i.i3, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4, !prof !1153

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1652
  store i8 13, ptr %i.a, align 8, !noalias !1652
  %i.ay = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !1652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1652
  br label %bb.p

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1652
  store ptr %.sroa.4.i.i.sroa.3.7.copyload, ptr %i.b, align 8, !noalias !1659
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.sroa.5.7..sroa_idx, i64 24, i1 false)
  call void @_RINvXs6_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !1660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1652
  %.pr14 = load i64, ptr %i.i, align 8
  %i.az = icmp eq i64 %.pr14, -1
  br i1 %i.az, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge, label %bb.q

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge: ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread
  %i.ba = phi ptr [ %.pre16, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4._crit_edge ], [ %i.ay, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  br label %bb.r

bb.q:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge17 = phi i64 [ 0, %bb.q ], [ 2, %bb.p ]
  store i64 %storemerge17, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splits_1__NtB1Y_12SplitPatternNtB12_11Deserialize11deserialize7___FieldEB22_.exit.thread
  ret void

bb.t:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread
  %i.bc = phi ptr [ %.pre, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit._crit_edge ], [ %i.aw, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.thread ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess15newtype_variantNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %storemerge = phi i64 [ 1, %bb.u ], [ 2, %bb.t ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNvXNtCs2JiOgHzbbc7_10tokenizers8decodersNtBe_14DecoderWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtBb_8EnumTypeB1a_11deserializeNtB6_9___VisitorNtB1c_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBg_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers8decodersNtB3M_14DecoderWrapperNtB1Z_11Deserialize11deserializes0_1__NtB3J_8EnumTypeB4J_11deserialize7___FieldEEB3O_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2)
  %i.b = load i8, ptr %i.a, align 8, !range !1661, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !align !22, !noundef !11 ; 11 uses
  switch i8 %i.b, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RINvXs0_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBh_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBb_4TypeB1i_11deserializeNtB6_9___VisitorNtB1k_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBl_:bb.a
          to label %_RINvXs_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBg_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1h_11deserializeNtB5_7___FieldB1h_11deserializeINtNtB1j_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBk_.exit.i.i.i unwind label %bb.e, !noalias !1674

bb.e:                                             ; preds = %_RINvXNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBe_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtB8_4TypeB1f_11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBi_.exit.i.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.thread.i.i unwind label %bb.f, !noalias !1674

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1674
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1674
  unreachable

_RINvXs_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBg_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1h_11deserializeNtB5_7___FieldB1h_11deserializeINtNtB1j_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBk_.exit.i.i.i: ; preds = %_RINvXNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBe_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtB8_4TypeB1f_11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBi_.exit.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.h unwind label %.body.thread9.i.i, !noalias !1672

.body.thread9.i.i:                                ; preds = %_RINvXs_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBg_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1h_11deserializeNtB5_7___FieldB1h_11deserializeINtNtB1j_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBk_.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.h:                                             ; preds = %_RINvXs_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBg_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1h_11deserializeNtB5_7___FieldB1h_11deserializeINtNtB1j_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBk_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1673
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i, null
  br i1 %.not.i.i, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %i.b, align 8, !range !1144, !alias.scope !1685, !noalias !1672, !noundef !11
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !1672
  br label %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.k, %.body.thread.i.i
  resume { ptr, i32 } %eh.lpad-body8.i.i

.body.thread.i.i:                                 ; preds = %.body.thread9.i.i, %bb.e, %bb.d
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.z, %.body.thread9.i.i ], [ %i.v, %bb.d ], [ %i.w, %bb.e ]
  %i.ac = load i8, ptr %i.c, align 8, !range !1144, !alias.scope !1692, !noalias !1672, !noundef !11
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.body.thread.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.l, !noalias !1672

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1672
  unreachable

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit.thread: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1672
  br label %bb.m

_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit: ; preds = %bb.h
  %.sroa.0.0.copyload4 = load i8, ptr %i.e, align 8, !alias.scope !1672 ; 2 uses
  %.sroa.76.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.76.0.copyload8 = load ptr, ptr %.sroa.76.0..sroa_idx7, align 8, !alias.scope !1672 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1672
  %i.af = icmp eq i8 %.sroa.0.0.copyload4, -2
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit.thread, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit
  %.sroa.76.013 = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit.thread ], [ %.sroa.76.0.copyload8, %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.013) ]
  br label %bb.o

bb.n:                                             ; preds = %_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess7variantNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB24_5SplitNtB12_11Deserialize11deserialize1__NtB1Y_4TypeB36_11deserialize7___FieldEB28_.exit
  %.sroa.9.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.0.0.copyload4, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx5, i64 7, i1 false)
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.76.0.copyload8, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx9, i64 16, i1 false)
  %i.ag = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.1 = phi ptr [ %i.ag, %bb.n ], [ %.sroa.76.013, %bb.m ]
  ret ptr %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtB6_15DeserializeSeed11deserializeB1j_ECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4.i = alloca [31 x i8], align 1          ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.8 = alloca [7 x i8], align 1             ; 7 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.4.i.i = alloca [31 x i8], align 1        ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.h = load i8, ptr %1, align 8, !range !38, !alias.scope !1700, !noalias !1697, !noundef !11
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.ab
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !alias.scope !1702, !noalias !1700
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXB6_BJ_NtBW_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !127, !alias.scope !1700, !noalias !1697, !noundef !11
  store i8 1, ptr %0, align 8, !alias.scope !1705, !noalias !1700
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !1705, !noalias !1700
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXB6_BJ_NtBW_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 8, !noalias !1697
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1697 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  switch i64 %.sroa.0.0.copyload, label %default.unreachable3.i.i [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable3.i.i:                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  store i8 2, ptr %0, align 8, !alias.scope !1711, !noalias !1714
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1711, !noalias !1714
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1711, !noalias !1714
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXB6_BJ_NtBW_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.f:                                             ; preds = %bb.d
  %.lobit.i.i.i = lshr i64 %.sroa.4.0.copyload, 63
  store i8 2, ptr %0, align 8, !alias.scope !1716, !noalias !1714
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i1.i.i, align 8, !alias.scope !1716, !noalias !1714
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i2.i.i, align 8, !alias.scope !1716, !noalias !1714
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXB6_BJ_NtBW_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.d
  %i.l = bitcast i64 %.sroa.4.0.copyload to double ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ueq double %i.m, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1722
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.sroa.4.0.copyload10.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i, align 8, !alias.scope !1723, !noalias !1727
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.sroa.5.0.copyload11.i.i.i = load double, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i, align 8, !alias.scope !1723, !noalias !1727
  %.sroa.6.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.0.copyload7.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx6.i.i.i, align 8, !alias.scope !1723, !noalias !1727
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.g, align 8, !noalias !1722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g), !noalias !1730, !inline_history !1731
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i

_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.5.sroa.5.0.i.i.i = phi double [ %.sroa.5.sroa.5.0.copyload11.i.i.i, %bb.h ], [ %i.l, %bb.i ]
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload10.i.i.i, %bb.h ], [ 2, %bb.i ]
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.6.0.copyload7.i.i.i, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.0.i.i.i = phi i8 [ 0, %bb.h ], [ 2, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1722
  store i8 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !1732, !noalias !1714
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1732, !noalias !1714
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.5.sroa.5.0.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1732, !noalias !1714
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1732, !noalias !1714
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXB6_BJ_NtBW_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i8 3, ptr %0, align 8, !alias.scope !1733, !noalias !1736
  %.sroa.4.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i1.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i.i, i64 31, i1 false), !noalias !1736
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXB6_BJ_NtBW_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.copyload = load i64, ptr %i.p, align 8, !noalias !1697
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !noalias !1697, !nonnull !11, !noundef !11 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1697 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1741
  %i.q = icmp ult i64 %.sroa.5.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.q)
  %.idx = shl nuw nsw i64 %.sroa.5.0.copyload, 5
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload, i64 %.idx ; 2 uses
  store ptr %.sroa.43.0.copyload, ptr %i.f, align 8, !noalias !1741
  %.sroa.4.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %.sroa.43.0.copyload, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !noalias !1741
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.02.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1741
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.r, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1746
  store i64 0, ptr %i.d, align 8, !noalias !1746
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !1746
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8, !noalias !1746
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.u = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.u, label %.thread33.loopexit, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph: ; preds = %bb.k
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload, i64 32
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !alias.scope !1748, !noalias !1751
  %.sroa.09.0.copyload1055 = load i8, ptr %.sroa.43.0.copyload, align 8, !noalias !1757 ; 2 uses
  %.not.i.i.i56 = icmp eq i8 %.sroa.09.0.copyload1055, -1
  br i1 %.not.i.i.i56, label %.thread33.loopexit.split.loop.exit, label %.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.w = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !alias.scope !1758, !noalias !1751
  %.sroa.09.0.copyload10 = load i8, ptr %i.ao, align 8, !noalias !1760 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.sroa.09.0.copyload10, -1
  br i1 %.not.i.i.i, label %.thread33.loopexit.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.09.0.copyload1057 = phi i8 [ %.sroa.09.0.copyload10, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.09.0.copyload1055, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph ]
  %i.x = phi ptr [ %i.ao, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.43.0.copyload, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph ]
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1761
  store i8 %.sroa.09.0.copyload1057, ptr %i.b, align 8, !noalias !1761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx11, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1761
  invoke fastcc void @_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtB6_15DeserializeSeed11deserializeB1j_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc.i unwind label %bb.l, !noalias !1764, !inline_history !1765

.noexc.i:                                         ; preds = %.lr.ph
  %i.y = load i8, ptr %i.a, align 8, !range !1144, !noalias !1761, !noundef !11 ; 2 uses
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %bb.m, label %bb.p

bb.l:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.ai, %bb.r ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #22
          to label %.body unwind label %bb.t, !noalias !1764, !inline_history !1766

bb.m:                                             ; preds = %.noexc.i
  %i.ab = load ptr, ptr %.sroa.518.0..sroa_idx, align 8, !noalias !1761, !nonnull !11, !align !22, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1761
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !1743, !noalias !1767
  store i8 -1, ptr %0, align 8, !alias.scope !1743, !noalias !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.n, !noalias !1764, !inline_history !1766

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.o, !noalias !1764, !inline_history !1766

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1764, !inline_history !1766
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.v unwind label %bb.u, !inline_history !1766

bb.p:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.417.0..sroa_idx, i64 7, i1 false), !noalias !1768
  %.sroa.518.0.copyload = load ptr, ptr %.sroa.518.0..sroa_idx, align 8, !noalias !1761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.0..sroa_idx, i64 16, i1 false), !noalias !1768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1746
  store i8 %i.y, ptr %i.c, align 8, !noalias !1746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  store ptr %.sroa.518.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !1746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %i.af = load i64, ptr %i.t, align 8, !alias.scope !1769, !noalias !1772, !noundef !11 ; 3 uses
  %i.ag = load i64, ptr %i.d, align 8, !range !19, !alias.scope !1769, !noalias !1772, !noundef !11
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.q, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.r, !noalias !1774, !inline_history !1766

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #22
          to label %.body.i unwind label %bb.s, !noalias !1764, !inline_history !1766

bb.s:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1764, !inline_history !1766
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE8push_mutCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.q, %bb.p
  %i.ak = load ptr, ptr %i.s, align 8, !alias.scope !1769, !noalias !1772, !nonnull !11, !noundef !11
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1764
  %i.am = add i64 %i.af, 1
  store i64 %i.am, ptr %i.t, align 8, !alias.scope !1769, !noalias !1772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.an = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1775, !noalias !1751, !nonnull !11, !noundef !11 ; 2 uses
  %i.ao = load ptr, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !alias.scope !1775, !noalias !1751, !nonnull !11, !noundef !11 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %.thread33.loopexit, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit

.thread33.loopexit.split.loop.exit:               ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph
  %.val6.i.i39.lcssa = phi ptr [ %i.r, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph ], [ %i.an, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit ]
  %.lcssa = phi ptr [ %.sroa.43.0.copyload, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph ], [ %i.ao, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %i.ar = icmp eq ptr %.val6.i.i39.lcssa, %i.aq
  br label %.thread33.loopexit

bb.t:                                             ; preds = %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1764, !inline_history !1766
  unreachable

.body:                                            ; preds = %bb.u, %bb.n, %.body.i, %bb.w
  %.pn.i.i = phi { ptr, i32 } [ %i.au, %bb.w ], [ %i.at, %bb.u ], [ %i.ad, %bb.n ], [ %eh.lpad-body.i, %.body.i ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aa

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.z
end_hunk_2
begin_hunk_3_@_RINvXsl_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_13KeyClassifierNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers:bb.a

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsn_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodeNtB6_3NFCNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes9_1__NtB3c_9NFCHelperNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @118, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsn_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodeNtB6_3NFCNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes9_1__NtB26_9NFCHelperNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @118, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXso_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_26BorrowedCowStrDeserializerNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtB1i_5impls13StringVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !15, !noundef !11
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !3068
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !11
  tail call void @_RINvXs4_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsu_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodeNtB6_4NFKCNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesd_1__NtB3c_10NFKCHelperNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @118, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsu_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodeNtB6_4NFKCNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodesd_1__NtB26_10NFKCHelperNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @118, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de13KeyClassifierNtNtCsboAIIHEtPkY_10serde_core2de7Visitor11visit_bytesNtNtB9_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store i8 6, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @125)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de18MapKeyDeserializerNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %.sroa.4.i.i.i = alloca [31 x i8], align 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  %i.a = load i64, ptr %1, align 8, !range !15, !alias.scope !3082, !noalias !3083, !noundef !11
  %.not.i.i = icmp eq i64 %i.a, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %.sroa.4.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !3084
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.i.i.i, i64 31, i1 false), !noalias !3087
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  br label %_RINvXsj_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_18MapKeyDeserializerNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3082, !noalias !3083, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3082, !noalias !3083, !noundef !11
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !3089, !noalias !3092
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3089, !noalias !3092
  br label %_RINvXsj_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_18MapKeyDeserializerNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXsj_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_18MapKeyDeserializerNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi i8 [ 13, %bb.c ], [ 12, %bb.b ]
  store i8 %.sink.i.i, ptr %0, align 8, !alias.scope !3083, !noalias !3082
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor11visit_bytesNtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store i8 6, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor20visit_newtype_structINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtBc_5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 9, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @126)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_i8NtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = sext i8 %1 to i64                        ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i8 2, ptr %0, align 8, !alias.scope !3094
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3094
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3094
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor8visit_u8NtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = zext i8 %1 to i64
  store i8 2, ptr %0, align 8, !alias.scope !3097
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3097
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3097
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_f32NtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, float noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = fpext float %1 to double                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ueq double %i.c, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3100
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.4.0.copyload10.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i, align 8, !alias.scope !3103, !noalias !3107
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.5.0.copyload11.i = load double, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i, align 8, !alias.scope !3103, !noalias !3107
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0.copyload7.i = load i64, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !3103, !noalias !3107
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !noalias !3100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !3110
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.c
  %.sroa.5.sroa.5.0.i = phi double [ %.sroa.5.sroa.5.0.copyload11.i, %bb.b ], [ %i.b, %bb.c ]
  %.sroa.5.sroa.4.0.i = phi i64 [ %.sroa.5.sroa.4.0.copyload10.i, %bb.b ], [ 2, %bb.c ]
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload7.i, %bb.b ], [ undef, %bb.c ]
  %.sroa.0.0.i = phi i8 [ 0, %bb.b ], [ 2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3100
  store i8 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !3100
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3100
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3100
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i16NtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, i16 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = sext i16 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i8 2, ptr %0, align 8, !alias.scope !3111
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3111
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_i32NtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.lobit.i = lshr i64 %i.a, 63
  store i8 2, ptr %0, align 8, !alias.scope !3114
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3114
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3114
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u16NtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, i16 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = zext i16 %1 to i64
  store i8 2, ptr %0, align 8, !alias.scope !3117
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3117
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtBa_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorNtBY_7Visitor9visit_u32NtNtBc_5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %1 to i64
  store i8 2, ptr %0, align 8, !alias.scope !3120
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3120
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3120
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces0_1__NtBa_19ReplaceDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1x_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %switch.selectcmp.i = icmp eq i8 %1, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 1, i8 2
  %switch.selectcmp1.i = icmp eq i8 %1, 0
  %switch.select2.i = select i1 %switch.selectcmp1.i, i8 0, i8 %switch.select.i
  store i8 %switch.select2.i, ptr %i.a, align 1, !alias.scope !3123
  store i8 0, ptr %0, align 8, !alias.scope !3123
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtBa_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1r_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ], !prof !491

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3126
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !3126
  store i8 1, ptr %i.a, align 8, !noalias !3126
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !noalias !3126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !alias.scope !3126
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB8_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.f, align 1, !alias.scope !3126
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB8_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !3126
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB8_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaces_1__NtB8_14ReplacePatternNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1p_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink.i = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !3126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes1_1__NtBa_9NFDHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %spec.select.i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.b, align 1, !alias.scope !3129
  store i8 0, ptr %0, align 8, !alias.scope !3129
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes3_1__NtBa_8NFKDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1l_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes3_1__NtB8_8NFKDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1j_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !190

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes3_1__NtB8_8NFKDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1j_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes3_1__NtB8_8NFKDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1j_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes5_1__NtBa_10NFKDHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1o_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %spec.select.i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.b, align 1, !alias.scope !3132
  store i8 0, ptr %0, align 8, !alias.scope !3132
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes7_1__NtBa_7NFCTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1k_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes7_1__NtB8_7NFCTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1i_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !190

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes7_1__NtB8_7NFCTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1i_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes7_1__NtB8_7NFCTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1i_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes9_1__NtBa_9NFCHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %spec.select.i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.b, align 1, !alias.scope !3135
  store i8 0, ptr %0, align 8, !alias.scope !3135
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes_1__NtBa_7NFDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1j_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers7unicodes_1__NtB8_7NFDTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !190

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
end_hunk_3
