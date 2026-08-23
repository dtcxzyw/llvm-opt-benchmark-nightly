Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.12?download=true
inline.NumInlined: 1265
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %common.resume unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB5_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB3a_22CharDelimiterSplitTypeNtB22_11Deserialize11deserialize9___VisitorEB3e_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @2, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB5_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 15 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.n = load i8, ptr %0, align 8, !range !76, !alias.scope !114, !noundef !3
  switch i8 %i.n, label %bb.b [
    i8 3, label %.noexc.i
    i8 5, label %bb.e
  ], !prof !117

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !114
  invoke void @_RNvMsm_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB7_5Value10unexpected(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.af unwind label %bb.ae, !noalias !114

.noexc.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 -1, ptr %i.p, align 8, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !114
  call void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB2S_22CharDelimiterSplitTypeNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.m), !noalias !114
  %i.q = load i8, ptr %i.j, align 8, !range !118, !noalias !119, !noundef !3
  %i.r = icmp eq i8 %i.q, -2
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !119, !nonnull !3, !align !122, !noundef !3
  br label %bb.ad

bb.d:                                             ; preds = %.noexc.i
  %i.u = call noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j), !noalias !114
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8, !alias.scope !114 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !114
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !123
  %.not.i.i.a = icmp ne ptr %.sroa.0.0.copyload.i, null ; 3 uses
  %.sroa.04.sroa.5.sroa.6.0.i.i = select i1 %.not.i.i.a, i64 %.sroa.4.0.copyload.i, i64 undef ; 2 uses
  %.sroa.04.sroa.0.0.i.i = zext i1 %.not.i.i.a to i64 ; 2 uses
  %.sroa.5.0.i.i = select i1 %.not.i.i.a, i64 %.sroa.5.0.copyload.i, i64 0
  store i64 %.sroa.04.sroa.0.0.i.i, ptr %i.i, align 8, !noalias !123
  %.sroa.04.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %.sroa.04.sroa.5.0..sroa_idx.i.i, align 8, !noalias !123
  %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !123
  %.sroa.04.sroa.5.sroa.6.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.04.sroa.5.sroa.6.0.i.i, ptr %.sroa.04.sroa.5.sroa.6.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !123
  %.sroa.04.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sroa.04.sroa.0.0.i.i, ptr %.sroa.04.sroa.6.0..sroa_idx.i.i, align 8, !noalias !123
  %.sroa.04.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.04.sroa.7.0..sroa_idx.i.i, align 8, !noalias !123
  %.sroa.04.sroa.7.sroa.5.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.04.sroa.7.sroa.5.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !123
  %.sroa.04.sroa.7.sroa.6.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.04.sroa.5.sroa.6.0.i.i, ptr %.sroa.04.sroa.7.sroa.6.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !123
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !123
  invoke void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %bb.g unwind label %bb.f, !noalias !123

.body56.i.i:                                      ; preds = %bb.ac, %bb.u, %bb.r, %bb.f
  %.pn43.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.r ], [ %.pn.ph.i.i, %bb.ac ], [ %i.w, %bb.f ], [ %i.aj, %bb.u ]
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.body.thread5.i unwind label %bb.ab, !noalias !123

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %bb.i, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.f, align 8, !range !4, !noalias !123, !noundef !3
  %.not40.i.i = icmp eq i64 %i.x, -1
  br i1 %.not40.i.i, label %bb.i, label %bb.h, !prof !126

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !123
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !123
  invoke void @_RNvXsA_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %bb.k unwind label %.body.thread6.i.i, !noalias !123

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !123
  store i8 11, ptr %i.e, align 8, !noalias !123
  %i.z = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.j unwind label %bb.f, !noalias !123

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !123
  br label %bb.w

.body.thread6.i.i:                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %bb.h
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.k:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.d, align 8, !range !4, !noalias !123, !noundef !3
  %.not41.i.i = icmp eq i64 %i.aa, -1
  br i1 %.not41.i.i, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i unwind label %bb.m, !noalias !123

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %.body.i.i.i.i unwind label %bb.n, !noalias !123

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !123
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.o, !noalias !123

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.ab, %bb.m ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #22
          to label %.body.thread.i.i unwind label %bb.p, !noalias !123

bb.p:                                             ; preds = %.body.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !123
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %.body.thread6.i.i, !noalias !123

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !123
  store i8 11, ptr %i.c, align 8, !noalias !123
  %i.ah = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.q unwind label %.body.thread6.i.i, !noalias !123

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !123
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.t unwind label %bb.s, !noalias !123

bb.r:                                             ; preds = %bb.z, %bb.x
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i

bb.s:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !123
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.u, !noalias !123

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body56.i.i unwind label %bb.v, !noalias !123

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !123
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.f, !noalias !123

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !123
  br label %bb.w

bb.w:                                             ; preds = %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.j
  %.sroa.0.1.i7.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.aa ], [ %i.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ %i.z, %bb.j ]
  call void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !123
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB24_22CharDelimiterSplitTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.x:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !123
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  invoke void @_RINvXs3_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_16EnumDeserializerNtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB2S_22CharDelimiterSplitTypeNtB18_11Deserialize11deserialize7___FieldEEB2W_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b)
          to label %.noexc59.i.i unwind label %bb.r, !noalias !123

.noexc59.i.i:                                     ; preds = %bb.x
  %i.am = load i8, ptr %i.a, align 8, !range !118, !noalias !127, !noundef !3
  %i.an = icmp eq i8 %i.am, -2
  br i1 %i.an, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc59.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !127, !nonnull !3, !align !122, !noundef !3
  br label %bb.aa

bb.z:                                             ; preds = %.noexc59.i.i
  %i.aq = invoke noundef align 8 ptr @_RNvXs6_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_19VariantDeserializerNtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variant(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.aa unwind label %bb.r, !noalias !123

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.0.1.i.i.i = phi ptr [ %i.ap, %bb.y ], [ %i.aq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !123
  br label %bb.w

.body.thread.i.i:                                 ; preds = %.body.i.i.i.i, %.body.thread6.i.i
  %eh.lpad-body4.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread6.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g) #22
          to label %bb.ac unwind label %bb.ab, !noalias !123

bb.ab:                                            ; preds = %bb.ac, %.body.thread.i.i, %.body56.i.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !123
  unreachable

bb.ac:                                            ; preds = %.body.thread.i.i, %bb.s
  %.pn.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body4.i.i, %.body.thread.i.i ], [ %i.ai, %bb.s ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %.body56.i.i unwind label %bb.ab, !noalias !123

bb.ad:                                            ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi ptr [ %i.t, %bb.c ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !114
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB24_22CharDelimiterSplitTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.ae:                                            ; preds = %bb.af, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.l) #22
          to label %.body.thread5.i unwind label %bb.ah, !noalias !114

bb.af:                                            ; preds = %bb.b
  %i.at = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.ag unwind label %bb.ae, !noalias !114

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !114
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.l), !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !114
  br label %_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB24_22CharDelimiterSplitTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit

bb.ah:                                            ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.body.thread5.i:                                  ; preds = %.body56.i.i, %bb.ae
  %.pn3.i = phi { ptr, i32 } [ %i.as, %bb.ae ], [ %.pn43.i.i, %.body56.i.i ]
  resume { ptr, i32 } %.pn3.i

_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB24_22CharDelimiterSplitTypeNtBW_11Deserialize11deserialize9___VisitorEB28_.exit: ; preds = %bb.ad, %bb.w, %bb.ag
  %.sroa.0.1.i = phi ptr [ %i.at, %bb.ag ], [ %.sroa.0.1.i.i, %bb.ad ], [ %.sroa.0.1.i7.i, %bb.w ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters_1__NtB5_18CharDelimiterSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters2_1__NtB39_30CharDelimiterSplitDeserializerNtB22_11Deserialize11deserialize9___VisitorEB3d_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !130, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !122, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !131, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters_1__NtB5_18CharDelimiterSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters2_1__NtB23_30CharDelimiterSplitDeserializerNtBW_11Deserialize11deserialize9___VisitorEB27_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !130, !noundef !3
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !122, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !131, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXs2Y_NtB28_5implsTppENtB28_11Deserialize11deserialize12TupleVisitorNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXs3e_NtB28_5implsINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMappppENtB28_11Deserialize11deserialize10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEEB5S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB3y_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEEB4N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEEB4P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitormEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls11BoolVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls11CharVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i32 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences1_1__NtB3f_12SequenceTypeNtB28_11Deserialize11deserialize9___VisitorEB3j_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates_1__NtB3f_8SequenceNtB28_11Deserialize11deserialize9___VisitorEB3j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13missing_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB6_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBc_:bb.a
bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87: ; preds = %bb.x
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90 unwind label %.loopexit.split-lp

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.l
  %i.bu = load i64, ptr %i.e, align 8, !range !4, !noundef !3 ; 3 uses
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = load ptr, ptr %.sroa.458.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.ab:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.559.0.copyload = load i64, ptr %.sroa.559.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bx = load i64, ptr %i.j, align 8, !range !4, !alias.scope !200, !noundef !3
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body91 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.body91:                                          ; preds = %bb.ad, %bb.af
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.bz, %bb.ad ]
  store i64 %i.bu, ptr %i.j, align 8
  store ptr %i.bw, ptr %.sroa.625.0..sroa_idx26, align 8
  store i64 %.sroa.559.0.copyload, ptr %.sroa.728.0..sroa_idx29, align 8
  br label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.bu, ptr %i.j, align 8
  store ptr %i.bw, ptr %.sroa.625.0..sroa_idx26, align 8
  store i64 %.sroa.559.0.copyload, ptr %.sroa.728.0..sroa_idx29, align 8
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  %i.cc = load i8, ptr %i.f, align 8, !range !203, !noundef !3
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !3, !align !122, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.ah:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit
  %i.cg = load i8, ptr %i.l, align 1, !range !203, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h
  %i.ch = load i64, ptr %i.g, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  br i1 %i.ci, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cj = load ptr, ptr %i.m, align 8, !nonnull !3, !align !122, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.aj:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ck = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90, %bb.c
  %i.cl = load i64, ptr %i.j, align 8, !range !4, !alias.scope !204, !noundef !3
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.am ], [ %.pn78, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94: ; preds = %bb.al
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.ao:                                            ; preds = %bb.r, %.body
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ap:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.033.0.copyload, ptr %i.b, align 8
  %.sroa.335.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.335.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cq = trunc nuw i8 %.sroa.013.0 to i1
  call void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.08.0, i64 %.sroa.39.0, i1 noundef zeroext %i.cq)
  %i.cr = load i64, ptr %i.a, align 8, !range !5, !noundef !3 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cs, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.f
  %i.cw = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.ar:                                            ; preds = %bb.ap
  %i.cy = load ptr, ptr %i.cv, align 8, !nonnull !3, !align !122, !noundef !3
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB8_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEE0Be_(ptr noundef nonnull %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.as:                                            ; preds = %bb.ap
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.353.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %i.cv, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.cr, ptr %0, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.252.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95: ; preds = %bb.aq, %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94, %bb.ak, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtBb_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1G_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB3J_22CharDelimiterSplitTypeNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
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
define hidden void @_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXs3e_NtB1O_5implsINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMappppENtB1O_11Deserialize11deserialize10MapVisitorBZ_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [104 x i8], align 8               ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = load ptr, ptr %1, align 8, !noundef !3   ; 3 uses
  %.not = icmp ne ptr %i.k, null                  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %.sroa.01.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.m, i64 undef ; 2 uses
  %.sroa.01.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.j, i64 0   ; 2 uses
  store i64 %.sroa.01.sroa.0.0, ptr %i.h, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr null, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.k, ptr %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 %.sroa.5.0, ptr %.sroa.43.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 8 uses
  store i8 -1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !210
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0, i64 32768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !210
  %i.o = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !noalias !212, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !212, !nonnull !3, !align !122, !noundef !3
  %i.s = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc39 unwind label %bb.o   ; 2 uses

.noexc39:                                         ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !3, !noalias !212, !nonnull !3
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %i.p)
          to label %.noexc40 unwind label %bb.o, !inline_history !217

.noexc40:                                         ; preds = %.noexc39
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, i64 noundef %i.v)
          to label %.noexc41 unwind label %bb.o

.noexc41:                                         ; preds = %.noexc40
  invoke void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE24with_capacity_and_hasherCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
          to label %.noexc42 unwind label %bb.o

.noexc42:                                         ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !210
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !207

.noexc.i:                                         ; preds = %bb.b
  %i.z = load i64, ptr %i.c, align 8, !range !134, !noalias !224, !noundef !3 ; 2 uses
  switch i64 %i.z, label %bb.d [
    i64 -2, label %bb.c
    i64 -1, label %.thread30.i
  ]

.thread30.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  br label %.loopexit

bb.c:                                             ; preds = %.noexc.i
  %i.aa = load ptr, ptr %i.x, align 8, !noalias !224, !nonnull !3, !align !122, !noundef !3
  br label %.thread.i

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !224
  store i64 %i.z, ptr %i.b, align 8, !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !224
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatamEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.f unwind label %bb.e, !noalias !228

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #22
          to label %.body.i unwind label %bb.j, !noalias !228

bb.f:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.a, align 8, !range !130, !noalias !224, !noundef !3
  %i.ad = trunc nuw i32 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !224, !nonnull !3, !align !122, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !224
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i unwind label %bb.h, !noalias !228

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.i, !noalias !228

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !228
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !207

.noexc12.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !224
  br label %.thread.i

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !228
  unreachable

.loopexit.i:                                      ; preds = %bb.l, %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.ag, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.body unwind label %bb.n, !noalias !207

.thread.i:                                        ; preds = %.noexc12.i, %bb.c
  %.sroa.9.0.ph.i = phi ptr [ %i.aa, %bb.c ], [ %i.af, %.noexc12.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  br label %.loopexit36.i

bb.k:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.y, align 4, !noalias !224, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !224
  %.sroa.014.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !229 ; 2 uses
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i.i, align 8, !noalias !229 ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  switch i64 %.sroa.014.0.copyload.i, label %bb.l [
    i64 -2, label %.loopexit36.i
    i64 -1, label %.loopexit
  ]

.loopexit36.i:                                    ; preds = %bb.k, %.thread.i
  %.sroa.9.020.i = phi ptr [ %.sroa.9.0.ph.i, %.thread.i ], [ %.sroa.9.0.copyload.i, %bb.k ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.020.i, ptr %i.ak, align 8, !alias.scope !207, !noalias !230
  store ptr null, ptr %0, align 8, !alias.scope !207, !noalias !230
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.thread unwind label %bb.o

.thread:                                          ; preds = %.loopexit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !210
  br label %bb.p

end_hunk_1
begin_hunk_2_@_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRhECs2JiOgHzbbc7_10tokenizers:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2047, !noalias !2050, !noundef !3
  %i.c = load i64, ptr %0, align 8, !alias.scope !2047, !noalias !2050, !noundef !3
  %.val.i = load i64, ptr %1, align 8, !noalias !2052, !noundef !3
  %i.d = xor i64 %.val.i, %i.b
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 6364136223846793005 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f                      ; 2 uses
  %i.i = trunc i128 %i.h to i64
  %i.j = and i128 %i.h, 18446744073709551615
  %i.k = zext i64 %i.c to i128
  %i.l = mul nuw i128 %i.j, %i.k                  ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = xor i128 %i.m, %i.l
  %i.o = trunc i128 %i.n to i64                   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 %i.i)
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2055, !noalias !2058, !noundef !3
  %i.c = load i64, ptr %0, align 8, !alias.scope !2055, !noalias !2058, !noundef !3
  %.val.i = load i32, ptr %1, align 4, !noalias !2060, !noundef !3
  %i.d = zext i32 %.val.i to i64
  %i.e = xor i64 %i.b, %i.d
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 6364136223846793005 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g                      ; 2 uses
  %i.j = trunc i128 %i.i to i64
  %i.k = and i128 %i.i, 18446744073709551615
  %i.l = zext i64 %i.c to i128
  %i.m = mul nuw i128 %i.k, %i.l                  ; 2 uses
  %i.n = lshr i128 %i.m, 64
  %i.o = xor i128 %i.n, %i.m
  %i.p = trunc i128 %i.o to i64                   ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 %i.j)
  ret i64 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2063, !noalias !2066, !noundef !3
  %i.c = load i64, ptr %0, align 8, !alias.scope !2063, !noalias !2066, !noundef !3
  %.val.i = load i64, ptr %1, align 8, !noalias !2068, !noundef !3
  %i.d = xor i64 %.val.i, %i.b
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 6364136223846793005 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f                      ; 2 uses
  %i.i = trunc i128 %i.h to i64
  %i.j = and i128 %i.h, 18446744073709551615
  %i.k = zext i64 %i.c to i128
  %i.l = mul nuw i128 %i.j, %i.k                  ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = xor i128 %i.m, %i.l
  %i.o = trunc i128 %i.n to i64                   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 %i.i)
  ret i64 %i.p
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsboAIIHEtPkY_10serde_core2de5impls10StrVisitorNtB7_7Visitor11visit_bytesNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store i8 6, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsboAIIHEtPkY_10serde_core2de5impls10StrVisitorNtB7_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  store i8 5, ptr %i.b, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serialization14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18SeqRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([328 x i8]) align 8 captures(none) dereferenceable(328) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serialization14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([328 x i8]) align 8 captures(none) dereferenceable(328) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters0_1__NtBa_21CharDelimiterSplitDef11deserialize14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor14visit_byte_bufNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.e = icmp eq i64 %i.d, 9
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.g = icmp eq i8 %i.f, 100
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.j = icmp eq i8 %i.i, 101
  br i1 %i.j, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.m = icmp eq i8 %i.l, 108
  br i1 %i.m, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.p = icmp eq i8 %i.o, 105
  br i1 %i.p, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.s = icmp eq i8 %i.r, 109
  br i1 %i.s, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.v = icmp eq i8 %i.u, 105
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.y = icmp eq i8 %i.x, 116
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %i.ab = icmp eq i8 %i.aa, 101
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !2074, !noalias !2071, !noundef !3
  %2 = icmp ne i8 %i.ad, 114
  %spec.select.i = zext i1 %2 to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink.i = phi i8 [ 1, %bb.a ], [ %spec.select.i, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink.i, ptr %i.ae, align 1, !alias.scope !2071, !noalias !2074
  store i8 0, ptr %0, align 8, !alias.scope !2071, !noalias !2074
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.l
  resume { ptr, i32 } %i.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.k
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters0_1__NtBa_21CharDelimiterSplitDef11deserialize14___FieldVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp ne i8 %1, 0
  %spec.select.i = zext i1 %i.a to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.b, align 1, !alias.scope !2076
  store i8 0, ptr %0, align 8, !alias.scope !2076
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtBa_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1F_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB8_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1D_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB8_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1D_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB8_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1D_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXs14_NtNtCsboAIIHEtPkY_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %1, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i32 1, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNvXs1a_NtNtCsboAIIHEtPkY_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(double noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %0, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.d, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13serializationINtB8_16TokenizerVisitorNtNtBc_6models12ModelWrapperNtNtBc_11normalizers17NormalizerWrapperNtNtBc_14pre_tokenizers19PreTokenizerWrapperNtNtBc_10processors20PostProcessorWrapperNtNtBc_8decoders14DecoderWrapperENtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB5i_4read7StrReadEE0Bc_(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2079
  store i64 0, ptr %i.c, align 8, !noalias !2079
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2079
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2079
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.g, align 8, !noalias !2079
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !2079
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !2079
  store ptr %i.c, ptr %i.b, align 8, !noalias !2079
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @73, ptr %i.h, align 8, !noalias !2079
  %i.i = invoke noundef zeroext i1 @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt7Display3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !2083

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %.body unwind label %bb.e, !noalias !2083

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.g, !prof !126

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #25
          to label %.noexc.i unwind label %bb.b, !noalias !2083

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !2083
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.j, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr nonnull %0, ptr nonnull %1) #22
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2079
  %i.m = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = load ptr, ptr %1, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.n(ptr noundef nonnull %0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !70, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !71, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #24
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers.exit

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !70, !invariant.load !3 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !71, !invariant.load !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #24
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.t, %bb.m ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op
end_hunk_2
