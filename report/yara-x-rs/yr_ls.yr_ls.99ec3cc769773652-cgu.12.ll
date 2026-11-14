Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.12?download=true
inline.NumInlined: 190
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXNvCs2w2nn1AeeqK_9lsp_types1__NtB5_14NumberOrStringNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNvNtNtCsbgTeJz5vL0a_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls:bb.a
  %i.o = inttoptr i64 %.sroa.645.0.insert.ext to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.448.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls(ptr nonnull %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit27 unwind label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit27: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvXsD_NtNtNtCsbgTeJz5vL0a_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_strNtNtB22_5impls13StringVisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.h unwind label %.body

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit27
  %i.r = load i64, ptr %i.a, align 8, !range !10, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %0, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.564.0.copyload, ptr %.sroa.558.0..sroa_idx, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls(ptr nonnull %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit43 unwind label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit43: ; preds = %bb.j
  %i.v = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsbbTh99npV2h_10serde_json5errorNtB6_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customReECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 62)
          to label %bb.k unwind label %.body

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 -2, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.f, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCs2w2nn1AeeqK_9lsp_types1__NtB5_14NumberOrStringNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueECsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvYNtNtCsbbTh99npV2h_10serde_json5value5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content14ContentVisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1)
  %i.e = load i8, ptr %i.c, align 8, !range !12, !noundef !5 ; 2 uses
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx, i64 7, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.511.0.copyload = load ptr, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.511.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs9_NtNtNtCsbgTeJz5vL0a_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorE19deserialize_integerNtNvXsR_NtNtCsaeRQ2XwCvzm_10serde_core2de5implslNtB2v_11Deserialize11deserialize16PrimitiveVisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit27, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit43, %bb.g, %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #18
          to label %bb.n unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.b, align 8, !range !13, !noundef !5
  %i.l = trunc nuw i32 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noundef !5
  %.sroa.645.0.insert.ext = zext i32 %i.n to i64
  %i.o = inttoptr i64 %.sroa.645.0.insert.ext to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.448.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls(ptr nonnull %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit27 unwind label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit27: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvXsD_NtNtNtCsbgTeJz5vL0a_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_strNtNtB22_5impls13StringVisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.h unwind label %.body

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit27
  %i.r = load i64, ptr %i.a, align 8, !range !10, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.r, ptr %0, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.564.0.copyload, ptr %.sroa.558.0..sroa_idx, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls(ptr nonnull %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit43 unwind label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit43: ; preds = %bb.j
  %i.v = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsbbTh99npV2h_10serde_json5errorNtB6_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customReECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 62)
          to label %bb.k unwind label %.body

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 -2, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.f, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCs2w2nn1AeeqK_9lsp_typess_1__NtB5_14NumberOrStringNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtCsbbTh99npV2h_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 11 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call noundef ptr @_RINvNtCsbbTh99npV2h_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCsddkiMbsmfqo_5yr_ls.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.h)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCsddkiMbsmfqo_5yr_ls.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.k = icmp sgt i32 %i.j, -1
  %.sroa.0.0.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.j, i1 false) ; 6 uses
  %i.l = icmp ugt i32 %.sroa.0.0.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %bb.d
  %.sroa.09.0.lcssa.i.i.i = phi i64 [ 11, %bb.d ], [ 7, %.lr.ph.i.i.i ], [ 3, %.lr.ph.i.i.i.1 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ], [ %3, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.m = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i, 99
  br i1 %i.m, label %bb.e, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.n = urem i32 %.sroa.0.0.i.i.i, 10000
  %i.o = udiv i32 %.sroa.0.0.i.i.i, 10000         ; 2 uses
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %i.n to i16 ; 2 uses
  %i.p = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.q = shl nuw nsw i16 %i.p, 1
  %i.r = zext nneg i16 %i.q to i64
  %i.s = urem i16 %.lhs.trunc.i.i.i, 100
  %i.t = shl nuw nsw i16 %i.s, 1
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @22, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.x = load i16, ptr %i.v, align 1, !noalias !68
  store i16 %i.x, ptr %i.w, align 1, !alias.scope !68
  %i.y = getelementptr inbounds nuw i8, ptr @22, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.aa = load i16, ptr %i.y, align 1, !noalias !68
  store i16 %i.aa, ptr %i.z, align 1, !alias.scope !68
  %i.ab = icmp ugt i32 %.sroa.0.0.i.i.i, 99999999
  br i1 %i.ab, label %.lr.ph.i.i.i.1, label %._crit_edge.i.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %2 = urem i32 %i.o, 10000
  %3 = udiv i32 %.sroa.0.0.i.i.i, 100000000
  %.lhs.trunc.i.i.i.1 = trunc nuw nsw i32 %2 to i16 ; 2 uses
  %4 = udiv i16 %.lhs.trunc.i.i.i.1, 100
  %5 = shl nuw nsw i16 %4, 1
  %6 = zext nneg i16 %5 to i64
  %7 = urem i16 %.lhs.trunc.i.i.i.1, 100
  %8 = shl nuw nsw i16 %7, 1
  %9 = zext nneg i16 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr @22, i64 %6
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %12 = load i16, ptr %10, align 1, !noalias !68
  store i16 %12, ptr %11, align 1, !alias.scope !68
  %13 = getelementptr inbounds nuw i8, ptr @22, i64 %9
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %15 = load i16, ptr %13, align 1, !noalias !68
  store i16 %15, ptr %14, align 1, !alias.scope !68
  br label %._crit_edge.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %.lhs.trunc24.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i to i16 ; 2 uses
  %i.ac = urem i16 %.lhs.trunc24.i.i.i, 100
  %i.ad = shl nuw nsw i16 %i.ac, 1
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = udiv i16 %.lhs.trunc24.i.i.i, 100
  %.zext27.i.i.i = zext nneg i16 %i.af to i32
  %i.ag = add i64 %.sroa.09.0.lcssa.i.i.i, -2     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr @22, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.aj = load i16, ptr %i.ah, align 1, !noalias !68
  store i16 %i.aj, ptr %i.ai, align 1, !alias.scope !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.sroa.09.1.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %.sroa.09.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i = phi i32 [ %.zext27.i.i.i, %bb.e ], [ %.sroa.0.1.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ak = icmp samesign ult i32 %.sroa.0.2.i.i.i, 10
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = shl nuw nsw i32 %.sroa.0.2.i.i.i, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.09.1.i.i.i, -2           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @22, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.aq = load i16, ptr %i.ao, align 1, !noalias !68
  store i16 %i.aq, ptr %i.ap, align 1, !alias.scope !68
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = add i64 %.sroa.09.1.i.i.i, -1           ; 2 uses
  %i.as = trunc nuw nsw i32 %.sroa.0.2.i.i.i to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.au = or disjoint i8 %i.as, 48
  store i8 %i.au, ptr %i.at, align 1, !alias.scope !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.09.2.i.i.i = phi i64 [ %i.ar, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  br i1 %i.k, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i32CsddkiMbsmfqo_5yr_ls.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = add i64 %.sroa.09.2.i.i.i, -1           ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  store i8 45, ptr %i.aw, align 1, !alias.scope !68
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i32CsddkiMbsmfqo_5yr_ls.exit

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i32CsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.i, %bb.j
  %.sroa.09.3.i.i.i = phi i64 [ %.sroa.09.2.i.i.i, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.ax = sub i64 11, %.sroa.09.3.i.i.i           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i
  %i.az = icmp ult i64 %i.ax, 12
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCsddkiMbsmfqo_5yr_ls.exit

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.c, %bb.b, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i32CsddkiMbsmfqo_5yr_ls.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i32CsddkiMbsmfqo_5yr_ls.exit ], [ %i.i, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCsbbTh99npV2h_10serde_json5errorNtB6_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customNtNtCskKLDkoKarTP_4core3fmt9ArgumentsECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !93
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !93, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noalias !93, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !93
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19, !noalias !93
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !93, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !94
  br label %_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i

_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !95
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !95
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !95
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsddkiMbsmfqo_5yr_ls.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !96
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsddkiMbsmfqo_5yr_ls.exit

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RNvYNvYeNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTReEE9call_onceCsddkiMbsmfqo_5yr_ls.exit.i.i.i.i, %bb.e
  %i.n = call noundef nonnull align 8 ptr @_RNvNtCsbbTh99npV2h_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.n
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCsbbTh99npV2h_10serde_json5errorNtB6_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error6customReECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !106
  %i.c = load i64, ptr %i.a, align 8, !range !14, !noalias !106, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !15, !noalias !106, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !106
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #19, !noalias !106
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !106, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsddkiMbsmfqo_5yr_ls.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !107
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsddkiMbsmfqo_5yr_ls.exit

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsddkiMbsmfqo_5yr_ls.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !108
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !108
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !108
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCsbbTh99npV2h_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringINtB2_10EquivalentBq_E10equivalentCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !112, !noundef !5
  %i.b = icmp ne i64 %i.a, -1                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !10, !alias.scope !113, !noundef !5
  %i.d = icmp eq i64 %i.c, -1                     ; 3 uses
  %not..i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsA_Cs2w2nn1AeeqK_9lsp_typesNtB5_14NumberOrStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !112, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !113, !noundef !5
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %_RNvXsA_Cs2w2nn1AeeqK_9lsp_typesNtB5_14NumberOrStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
end_hunk_0
