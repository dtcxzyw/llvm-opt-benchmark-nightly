Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.12?download=true
inline.NumInlined: 1265
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtB2V_23FixedLengthDeserializerNtB1O_11Deserialize11deserialize9___VisitorEB2Z_:.outer
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !742
  store i8 %i.o, ptr %i.b, align 8, !noalias !742
  store ptr %.sroa.548.0.copyload.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !742
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.r = invoke noundef align 8 ptr @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_length15FixedLengthTypeEEB2R_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_length15FixedLengthTypeEB25_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ; 2 uses

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_length15FixedLengthTypeEB25_.exit.i: ; preds = %bb.d
  %.not57.i = icmp eq ptr %i.r, null
  br i1 %.not57.i, label %.outer.1, label %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i

.outer.1:                                         ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_length15FixedLengthTypeEB25_.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !742
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtB2Q_23FixedLengthDeserializerNtB17_11Deserialize11deserialize7___FieldEEB2U_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtB23_23FixedLengthDeserializerNtB6_11Deserialize11deserialize7___FieldEB27_.exit.i.1 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtB23_23FixedLengthDeserializerNtB6_11Deserialize11deserialize7___FieldEB27_.exit.i.1: ; preds = %.outer.1
  %i.s = load i8, ptr %i.d, align 8, !range !33, !noalias !742, !noundef !3 ; 3 uses
  %i.t = icmp eq i8 %i.s, -3
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths2_1__NtB23_23FixedLengthDeserializerNtB6_11Deserialize11deserialize7___FieldEB27_.exit.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.447.0..sroa_idx.i, i64 7, i1 false), !noalias !742
  %.sroa.548.0.copyload.i.1 = load ptr, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.649.0..sroa_idx.i, i64 16, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !742
  switch i8 %i.s, label %bb.g [
    i8 -2, label %.loopexit92
    i8 -1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.518.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, i64 7, i1 false), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.720.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !742
  store i8 %i.s, ptr %i.b, align 8, !noalias !742
  store ptr %.sroa.548.0.copyload.i.1, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !742
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.1 unwind label %.loopexit.split-lp

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.1: ; preds = %bb.g
  %i.v = load i8, ptr %i.a, align 8, !range !6, !noalias !742, !noundef !3 ; 2 uses
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %.loopexit97, label %bb.h

bb.h:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.635.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.451.0..sroa_idx.i, i64 7, i1 false), !noalias !742
  %.sroa.552.0.copyload.i.1 = load ptr, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.837.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.653.0..sroa_idx.i, i64 16, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !742
  store i8 %i.v, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !742
  store ptr %.sroa.552.0.copyload.i.1, ptr %.sroa.736.0..sroa_idx.i, align 8, !noalias !742
  %i.x = load i64, ptr %i.n, align 8, !alias.scope !743, !noalias !742, !noundef !3 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !range !13, !alias.scope !743, !noalias !742, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1o_EEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.j unwind label %.loopexit.split-lp99, !noalias !744

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = load ptr, ptr %i.m, align 8, !alias.scope !743, !noalias !742, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.ac = add i64 %i.x, 1
  store i64 %i.ac, ptr %i.n, align 8, !alias.scope !743, !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !742
  br label %.outer.1

.loopexit.split-lp:                               ; preds = %bb.c, %bb.g
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b) #22
          to label %.body.i unwind label %bb.p

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.c
  %i.ad = load i8, ptr %i.a, align 8, !range !6, !noalias !742, !noundef !3 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %.loopexit97, label %bb.k

.loopexit97:                                      ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i.1, %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.af = load ptr, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !742, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !742
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

bb.k:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess15next_value_seedNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.635.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.451.0..sroa_idx.i, i64 7, i1 false), !noalias !742
  %.sroa.552.0.copyload.i = load ptr, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.837.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.653.0..sroa_idx.i, i64 16, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !742
  store i8 %i.ad, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !742
  store ptr %.sroa.552.0.copyload.i, ptr %.sroa.736.0..sroa_idx.i, align 8, !noalias !742
  %i.ag = load i64, ptr %i.n, align 8, !alias.scope !743, !noalias !742, !noundef !3 ; 3 uses
  %i.ah = load i64, ptr %i.e, align 8, !range !13, !alias.scope !743, !noalias !742, !noundef !3
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1o_EEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %.loopexit.split-lp99, !noalias !744

.loopexit.split-lp99:                             ; preds = %bb.l, %bb.i
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBY_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c) #22
          to label %.body.i unwind label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp99
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ak = load ptr, ptr %i.m, align 8, !alias.scope !743, !noalias !742, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.am = add i64 %i.ag, 1
  store i64 %i.am, ptr %i.n, align 8, !alias.scope !743, !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !742
  br label %bb.a

bb.o:                                             ; preds = %.loopexit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !742
  br label %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i

bb.p:                                             ; preds = %.loopexit.split-lp, %.body.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.loopexit92:                                      ; preds = %bb.e
  %i.ao = invoke { i64, ptr } @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtB2Z_14FixedLengthDef11deserialize9___VisitorEB33_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nonnull readonly captures(address, read_provenance) poison, i64 poison, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @38, i64 noundef 1)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ; 2 uses

.critedge:                                        ; preds = %bb.b
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i: ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_length15FixedLengthTypeEB25_.exit.i, %.loopexit, %bb.f, %bb.o, %bb.s, %.critedge
  %.sroa.8.2.i = phi ptr [ %i.ap, %.critedge ], [ %i.at, %bb.s ], [ %i.q, %.loopexit ], [ %i.af, %bb.o ], [ %i.u, %bb.f ], [ %i.r, %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_length15FixedLengthTypeEB25_.exit.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1h_EEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1u_EEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.q

bb.q:                                             ; preds = %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.s:                                             ; preds = %.loopexit92
  %i.as = extractvalue { i64, ptr } %i.ao, 0
  %i.at = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  %i.au = trunc nuw i64 %i.as to i1
  br i1 %i.au, label %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1h_EEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1u_EEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1u_EEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.t, %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i
  %.sroa.8.3.i = phi ptr [ %.sroa.8.2.i, %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i ], [ %i.at, %bb.t ] ; 3 uses
  %.sroa.0.3.i.a = phi i1 [ true, %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i ], [ false, %bb.t ]
  %.sroa.0.3.i = phi i64 [ 1, %_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB3f_15FixedLengthTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_.exit.i ], [ 0, %bb.t ] ; 2 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1u_EEEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br i1 %.sroa.0.3.i.a, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load i8, ptr %i.l, align 8, !range !17, !alias.scope !745, !noundef !3
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.aa

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.x
  %i.ba = load i8, ptr %i.l, align 8, !range !17, !alias.scope !746, !noundef !3
  %i.bb = icmp eq i8 %i.ba, -1
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.ae, %bb.af, %bb.y, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.ae ], [ %i.ax, %bb.y ], [ %i.ax, %bb.z ], [ %i.bg, %bb.af ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.w
  %i.bd = load i64, ptr %.sroa.48.0..sroa_idx, align 8, !noundef !3
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.ad, label %bb.ac, !prof !22

bb.ac:                                            ; preds = %bb.ab
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.h, ptr noundef nonnull @59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.5.0 = phi ptr [ %.sroa.8.3.i, %bb.ab ], [ %i.bf, %bb.ac ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.ab ], [ 1, %bb.ac ] ; 2 uses
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load i8, ptr %i.l, align 8, !range !17, !alias.scope !747, !noundef !3
  %i.bi = icmp eq i8 %i.bh, -1
  br i1 %i.bi, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.ag

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45: ; preds = %bb.ad
  %i.bj = load i8, ptr %i.l, align 8, !range !17, !alias.scope !748, !noundef !3
  %i.bk = icmp eq i8 %i.bj, -1
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1u_EEEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ac
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.q, %bb.u, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.ah ], [ %i.av, %bb.u ], [ %i.aq, %bb.q ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(104) %i.f) #22
          to label %common.resume unwind label %bb.ai

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.0.3.i.pn.ph = phi i64 [ %.sroa.0.3.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45 ]
  %.sroa.8.3.i.pn.ph = phi ptr [ %.sroa.8.3.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.5.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45 ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.0.3.i.pn = phi i64 [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45 ], [ %.sroa.0.3.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.0.3.i.pn.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split ]
  %.sroa.8.3.i.pn = phi ptr [ %.sroa.5.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i45 ], [ %.sroa.8.3.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.8.3.i.pn.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pn = insertvalue { i64, ptr } poison, i64 %.sroa.0.3.i.pn, 0
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.sroa.8.3.i.pn, 1
  ret { i64, ptr } %.merged

bb.ai:                                            ; preds = %.body
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtB2V_22BertPreTokenizerHelperNtB1O_11Deserialize11deserialize9___VisitorEB2Z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load ptr, ptr %0, align 8, !noundef !3   ; 3 uses
  %.not = icmp ne ptr %i.e, null                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.04.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.g, i64 undef ; 2 uses
  %.sroa.04.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.d, i64 0
  store i64 %.sroa.04.sroa.0.0, ptr %i.b, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.05.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.4.sroa.4.0..sroa.05.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.05.sroa.4.sroa.4.0..sroa.05.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.4.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.04.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.4.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.04.sroa.0.0, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.6.sroa.4.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %.sroa.05.sroa.6.sroa.4.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.sroa.5.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.04.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.6.sroa.5.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 %.sroa.5.0, ptr %.sroa.46.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 8 uses
  store i8 -1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !763
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtB2Q_22BertPreTokenizerHelperNtB17_11Deserialize11deserialize7___FieldEEB2U_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.i = load i8, ptr %i.a, align 8, !range !30, !noalias !763, !noundef !3
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.b

._crit_edge.i:                                    ; preds = %.noexc46, %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !763, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !763
  br label %.loopexit54

bb.b:                                             ; preds = %.noexc46, %.lr.ph.i
  %.sroa.01.025.i = phi i8 [ 0, %.lr.ph.i ], [ %.sroa.01.1.i, %.noexc46 ] ; 3 uses
  %i.n = load i8, ptr %i.k, align 1, !range !31, !noalias !763, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !763
  switch i8 %i.n, label %bb.d [
    i8 2, label %bb.c
    i8 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nuw i8 %.sroa.01.025.i to i1
  br i1 %i.o, label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtBb_22BertPreTokenizerHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1B_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_.exit, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = invoke noundef align 8 ptr @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB17_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc43:                                         ; preds = %bb.d
  %.not19.i = icmp eq ptr %i.p, null
  br i1 %.not19.i, label %bb.h, label %.loopexit54

bb.e:                                             ; preds = %bb.b
  %i.q = trunc nuw i8 %.sroa.01.025.i to i1
  br i1 %i.q, label %bb.f, label %bb.g, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %.loopexit54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  %i.s = invoke noundef align 8 ptr @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4bert20BertPreTokenizerTypeEEB2R_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc45:                                         ; preds = %bb.g
  %.not18.i = icmp eq ptr %i.s, null
  br i1 %.not18.i, label %bb.h, label %.loopexit54

bb.h:                                             ; preds = %.noexc45, %.noexc43
  %.sroa.01.1.i = phi i8 [ 1, %.noexc45 ], [ %.sroa.01.025.i, %.noexc43 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !763
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtB2Q_22BertPreTokenizerHelperNtB17_11Deserialize11deserialize7___FieldEEB2U_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.h
  %i.t = load i8, ptr %i.a, align 8, !range !30, !noalias !763, !noundef !3
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %._crit_edge.i, label %bb.b

bb.i:                                             ; preds = %bb.c
  %i.v = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %.loopexit54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit54:                                      ; preds = %.noexc45, %.noexc43, %bb.f, %._crit_edge.i, %bb.i
  %.sroa.0.2.i.ph = phi ptr [ %i.v, %bb.i ], [ %i.m, %._crit_edge.i ], [ %i.r, %bb.f ], [ %i.s, %.noexc45 ], [ %i.p, %.noexc43 ] ; 2 uses
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.loopexit54
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load i8, ptr %i.h, align 8, !range !17, !alias.scope !764, !noundef !3
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.loopexit54
  %i.z = load i8, ptr %i.h, align 8, !range !17, !alias.scope !765, !noundef !3
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.p, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.af, %bb.p ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtBb_22BertPreTokenizerHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1B_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_.exit: ; preds = %bb.c
  %i.ac = load i64, ptr %.sroa.46.0..sroa_idx, align 8, !noundef !3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.m, !prof !22

bb.m:                                             ; preds = %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtBb_22BertPreTokenizerHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1B_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_.exit
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.d, ptr noundef nonnull @59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m, %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtBb_22BertPreTokenizerHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1B_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4berts1_1__NtBb_22BertPreTokenizerHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1B_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_.exit ], [ %i.ae, %bb.m ] ; 2 uses
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i49 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load i8, ptr %i.h, align 8, !range !17, !alias.scope !766, !noundef !3
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i49: ; preds = %bb.n
  %i.ai = load i8, ptr %i.h, align 8, !range !17, !alias.scope !767, !noundef !3
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %bb.d, %bb.i, %bb.f, %bb.a, %bb.m
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(104) %i.b) #22
          to label %common.resume unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i49, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.2.i.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i49 ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i49, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i49 ], [ %.sroa.0.2.i.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.0.1.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.1
end_hunk_0
