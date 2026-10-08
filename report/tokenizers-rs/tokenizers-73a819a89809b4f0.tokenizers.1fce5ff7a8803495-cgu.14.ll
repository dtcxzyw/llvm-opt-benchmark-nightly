Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.14?download=true
inline.NumInlined: 1470
inline.NumDeleted: 851
begin_hunk_0_@_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtB2S_18UnicodeScriptsTypeNtB18_11Deserialize11deserialize7___FieldEEB2Y_:bb.a
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !2183
  unreachable

_RINvXs_NvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtBa_18UnicodeScriptsTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1W_11deserializeINtNtB1Y_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBg_.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %.body.thread9

.body.thread9:                                    ; preds = %_RINvXs_NvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtBa_18UnicodeScriptsTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1W_11deserializeINtNtB1Y_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBg_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.g:                                             ; preds = %_RINvXs_NvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtBa_18UnicodeScriptsTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB5_7___FieldB1W_11deserializeINtNtB1Y_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBg_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.o, align 8
  store i8 -2, ptr %0, align 8
  %i.p = load i8, ptr %i.b, align 8, !range !24, !alias.scope !2186, !noundef !6
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtB3g_18UnicodeScriptsTypeNtB1M_11Deserialize11deserialize7___FieldEE0EB3m_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtB3g_18UnicodeScriptsTypeNtB1M_11Deserialize11deserialize7___FieldEE0EB3m_.exit

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtB3g_18UnicodeScriptsTypeNtB1M_11Deserialize11deserialize7___FieldEE0EB3m_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers_1__NtB3g_18UnicodeScriptsTypeNtB1M_11Deserialize11deserialize7___FieldEE0EB3m_.exit: ; preds = %bb.i, %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body.thread, %bb.k
  resume { ptr, i32 } %eh.lpad-body8

.body.thread:                                     ; preds = %bb.b, %bb.d, %.body.thread9
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.n, %.body.thread9 ], [ %i.j, %bb.b ], [ %i.k, %bb.d ]
  %i.r = load i8, ptr %i.c, align 8, !range !24, !alias.scope !2187, !noundef !6
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB2X_9MetaspaceNtB18_11Deserialize11deserialize1__NtB2S_4TypeB47_11deserialize7___FieldEEB31_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2207, !noalias !2206, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2207, !noalias !2206, !noundef !6
  %i.i = invoke noundef align 8 ptr @_RINvXNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBd_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtB8_4TypeB1m_11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBh_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
          to label %bb.c unwind label %bb.b, !noalias !2208 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #22
          to label %.body.thread unwind label %bb.f, !noalias !2206

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvXs_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBf_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1o_11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBj_.exit.i unwind label %bb.d, !noalias !2206

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.thread unwind label %bb.e, !noalias !2206

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !2206
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !2206
  unreachable

_RINvXs_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBf_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1o_11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBj_.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %.body.thread9

.body.thread9:                                    ; preds = %_RINvXs_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBf_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1o_11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBj_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.g:                                             ; preds = %_RINvXs_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBf_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBa_4TypeB1o_11deserializeNtB5_7___FieldB1o_11deserializeINtNtB1q_5value18StringDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBj_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.o, align 8
  store i8 -2, ptr %0, align 8
  %i.p = load i8, ptr %i.b, align 8, !range !24, !alias.scope !2209, !noundef !6
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB3l_9MetaspaceNtB1M_11Deserialize11deserialize1__NtB3g_4TypeB4v_11deserialize7___FieldEE0EB3p_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB3l_9MetaspaceNtB1M_11Deserialize11deserialize1__NtB3g_4TypeB4v_11deserialize7___FieldEE0EB3p_.exit

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB3l_9MetaspaceNtB1M_11Deserialize11deserialize1__NtB3g_4TypeB4v_11deserialize7___FieldEE0EB3p_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtBK_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtB4_6marker11PhantomDataNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB3l_9MetaspaceNtB1M_11Deserialize11deserialize1__NtB3g_4TypeB4v_11deserialize7___FieldEE0EB3p_.exit: ; preds = %bb.i, %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body.thread, %bb.k
  resume { ptr, i32 } %eh.lpad-body8

.body.thread:                                     ; preds = %bb.b, %bb.d, %.body.thread9
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.n, %.body.thread9 ], [ %i.j, %bb.b ], [ %i.k, %bb.d ]
  %i.r = load i8, ptr %i.c, align 8, !range !24, !alias.scope !2210, !noundef !6
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de19VariantDeserializerECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXs4_NtCs5PtHgSLqj5O_10serde_json6numberNtB6_6NumberNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !16, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 8 uses
  switch i64 %i.d, label %default.unreachable3 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.g
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = call noundef i64 @_RNvXsu_CscOYT7KBnvIh_4itoayNtB5_8Unsigned3fmt(i64 noundef %i.f, ptr noalias noundef nonnull dereferenceable(20) %i.c) ; 2 uses
  %i.h = sub nuw i64 20, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_f64Cs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp slt i64 %i.j, 0
  %.sroa.07.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.j, i1 false)
  %i.l = call noundef i64 @_RNvXsu_CscOYT7KBnvIh_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i, ptr noalias noundef nonnull dereferenceable(20) %i.b) ; 2 uses
  br i1 %i.k, label %bb.d, label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_i64Cs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.l, -1                         ; 4 uses
  %i.n = icmp ult i64 %i.m, 20
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store i8 45, ptr %i.o, align 1, !alias.scope !2213
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_i64Cs2JiOgHzbbc7_10tokenizers.exit

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #25
  unreachable

_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_i64Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0.i.i.i = phi i64 [ %i.m, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = sub nuw i64 20, %.sroa.0.0.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef range(i64 0, -9223372036854775808) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_f64Cs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.a
  %i.r = load double, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %cond.i = fcmp ueq double %i.s, +inf
  br i1 %cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_f64Cs2JiOgHzbbc7_10tokenizers.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = call { ptr, i64 } @_RINvMs6_Cs4esjXB1jo8e_4zmijNtB6_6Buffer13format_finitedECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull dereferenceable(24) %i.a, double noundef %i.r) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_f64Cs2JiOgHzbbc7_10tokenizers.exit

_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_f64Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.i, %bb.h, %_RNvXs1_NtCs5PtHgSLqj5O_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer13serialize_i64Cs2JiOgHzbbc7_10tokenizers.exit, %bb.b
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json6numberNtB6_6NumberNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !16, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable3 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  store i8 4, ptr %0, align 8, !alias.scope !2220
  store i64 %i.c, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !2220
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !noundef !6
  store i8 8, ptr %0, align 8, !alias.scope !2221
  store i64 %i.d, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !2221
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = load double, ptr %i.b, align 8, !noundef !6
  store i8 10, ptr %0, align 8, !alias.scope !2222
  store double %i.e, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !2222
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json6numberNtB6_6NumberNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXs14_NtBT_5implsmNtBT_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = load i64, ptr %1, align 8, !range !16, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i64 %i.d, label %default.unreachable4 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %bb.d, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw i64 %i.f to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !alias.scope !2227
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2227
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.f, ptr %i.j, align 8, !noalias !2227
  store i8 1, ptr %i.c, align 8, !noalias !2227
  %i.k = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !noalias !2227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2227
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !2227
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !2227
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  %i.n = icmp ugt i64 %i.m, 4294967295
  br i1 %i.n, label %bb.f, label %bb.g, !prof !2229

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2228
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.m, ptr %i.o, align 8, !noalias !2228
  store i8 2, ptr %i.b, align 8, !noalias !2228
  %i.p = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !noalias !2228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2228
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !2228
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.e
  %i.r = trunc nuw i64 %i.m to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.r, ptr %i.s, align 4, !alias.scope !2228
  br label %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.f, %bb.g
  %storemerge.i1 = phi i32 [ 0, %bb.g ], [ 1, %bb.f ]
  store i32 %storemerge.i1, ptr %0, align 8, !alias.scope !2228
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.t = load double, ptr %i.e, align 8, !noundef !6
  tail call void @_RINvYNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, double noundef %i.t)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %_RINvXNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json6numberNtB6_6NumberNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXs1a_NtBT_5implsjNtBT_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !16, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.f, 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.j, align 8
  store i8 2, ptr %i.b, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.h to ptr
  br label %_RINvXNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

end_hunk_0
