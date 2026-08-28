Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.12?download=true
inline.NumInlined: 1265
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB31_9MetaspaceNtB1O_11Deserialize11deserialize1__NtB2W_4TypeB4b_11deserialize9___VisitorEB35_:bb.a

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.s, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.v) #22
          to label %.body.thread unwind label %bb.l

bb.l:                                             ; preds = %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.body.thread64

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 11, ptr %i.b, align 8
  %i.y = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.m unwind label %.body.thread64

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body56

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body56 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.u
  %.sroa.0.1 = phi ptr [ %i.ad, %bb.u ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.q, %bb.f ]
  call void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %.sroa.0.1

bb.t:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.ad = invoke noundef align 8 ptr @_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtBb_4TypeB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor10visit_enumNtNtNtCs5PtHgSLqj5O_10serde_json5value2de16EnumDeserializerEBk_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

.body.thread:                                     ; preds = %.body.i.i, %.body.thread64
  %eh.lpad-body62 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread64 ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.f) #22
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %.body56, %bb.w, %.body.thread
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.w:                                             ; preds = %bb.o, %.body.thread
  %.pn.ph = phi { ptr, i32 } [ %eh.lpad-body62, %.body.thread ], [ %i.z, %bb.o ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #22
          to label %.body56 unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body56
  resume { ptr, i32 } %.pn43
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCsboAIIHEtPkY_10serde_core2de5implsbNtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_boolNtNtB22_5impls11BoolVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCsboAIIHEtPkY_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_boolNtNtBW_5impls11BoolVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor11visit_bytesNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.e = load i64, ptr %i.d, align 8, !range !77, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !126

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %i.h, align 8
  store i8 6, ptr %i.c, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.o = load i64, ptr %i.b, align 8, !range !77, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !133, !noundef !3 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !126

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = icmp ule i64 %i.n, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %i.r, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor14visit_byte_bufNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.45 = alloca [32 x i8], align 8           ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %2 = alloca [24 x i8], align 8                  ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1150
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1147, !noalias !1152, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1147, !noalias !1152, !noundef !3
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b, !noalias !1150

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #22
          to label %common.resume unwind label %bb.d, !noalias !1152

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !range !77, !noalias !1150, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit.thread

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit.thread: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1150
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1152
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.45, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.04.0.copyload = load i64, ptr %1, align 8, !noalias !1152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1150
  %.not = icmp eq i64 %.sroa.04.0.copyload, -1
  br i1 %.not, label %bb.f, label %bb.e, !prof !1153

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.04.0.copyload, ptr %i.c, align 8
  %i.m = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.o, ptr %i.q, align 8
  store i8 6, ptr %2, align 8
  %i.r = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit.thread, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #22
          to label %common.resume unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsboAIIHEtPkY_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !77, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !133, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !126

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs5_NtCsgbNVBrIJ05E_5rayon5sliceINtB6_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtB8_4iter16ParallelIterator15drive_unindexedINtNtB1K_3map11MapConsumerINtNtB1K_4fold12FoldConsumerINtNtB1K_6reduce14ReduceConsumerNCINvNvB1I_11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB4B_6option6OptionjENtNtB4B_7default7Default7defaultEB58_NCINvB3W_8opt_foldjB4s_E0ENCNvNtNtBP_5utils7padding13pad_encodings0EEBP_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_5slice4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4_3map11MapConsumerINtNtB4_4fold12FoldConsumerINtNtB4_6reduce14ReduceConsumerNCINvNvNtB4_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB4r_6option6OptionjENtNtB4r_7default7Default7defaultEB4Y_NCINvB3t_8opt_foldjB4i_E0ENCNvNtNtB1a_5utils7padding13pad_encodings0EEB1a_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs6_NtCsgbNVBrIJ05E_5rayon5sliceINtB6_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1K_8plumbing6bridge8CallbackINtNtB1K_3map11MapConsumerINtNtB1K_4fold12FoldConsumerINtNtB1K_6reduce14ReduceConsumerNCINvNvNtB1K_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB5A_6option6OptionjENtNtB5A_7default7Default7defaultEB67_NCINvB4B_8opt_foldjB5r_E0ENCNvNtNtBP_5utils7padding13pad_encodings0EEEBP_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvXNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtB3_8CallbackINtNtB7_3map11MapConsumerINtNtB7_4fold12FoldConsumerINtNtB7_6reduce14ReduceConsumerNCINvNvNtB7_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB3r_6option6OptionjENtNtB3r_7default7Default7defaultEB3Y_NCINvB2t_8opt_foldjB3i_E0ENCNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7padding13pad_encodings0EEINtB5_16ProducerCallbackRNtNtNtB5z_9tokenizer8encoding8EncodingE8callbackINtNtB9_5slice12IterProducerB6U_EEB5z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1)
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtCsgbNVBrIJ05E_5rayon5sliceINtB6_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB1F_9enumerateINtB2C_9EnumeratepEB1D_13with_producer8CallbackINtNvNtB1F_8plumbing6bridge8CallbackINtNtB1F_3map11MapConsumerINtNtB1F_6reduce14ReduceConsumerNCNvMs4_NtBN_7trainerNtB5h_10BpeTrainer11count_pairss0_0NCB5b_s_0ENCB5b_0EEEEBR_(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXNvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_3map11MapConsumerINtNtBb_6reduce14ReduceConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3D_10BpeTrainer11count_pairss0_0NCB3x_s_0ENCB3x_0EEEINtB27_16ProducerCallbackRNtNtB3F_4word4WordE8callbackINtNtBd_5slice12IterProducerB5L_EEB3J_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNtNtB1a_5value2deNtB2W_5ValueNtB1P_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.e
  store ptr %i.c, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.h, align 8
  call void @_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de13FlatMapAccessNtNtBa_5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_19FlatMapDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB2Z_11SequenceDef11deserialize9___VisitorEB33_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 20 uses
  %i.i = alloca [64 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.m, 6
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8
  store i8 -1, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store ptr %4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  store i64 %5, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1159
  store i64 -1, ptr %i.h, align 8, !noalias !1159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1160
  %i.s = icmp eq i64 %i.m, 0
  br i1 %i.s, label %.thread95.i.thread, label %.lr.ph.i.i.lr.ph.i

.thread95.i.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1164
  br label %bb.x

.lr.ph.i.i.lr.ph.i:                               ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx.i.i67.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.618.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.i.i.lr.ph.i
  %i.v = phi ptr [ %i.n, %.lr.ph.i.i.lr.ph.i ], [ %i.ax, %bb.w ]
  %i.w = phi ptr [ %i.k, %.lr.ph.i.i.lr.ph.i ], [ %i.aw, %bb.w ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1170, !noalias !1171
  %.pre11.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !1170, !noalias !1171
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.x = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  store ptr %i.y, ptr %i.o, align 8, !alias.scope !1170, !noalias !1171
  invoke void @_RNvNtNtCsctIyQp3ax5j_5serde7private2de19flat_map_take_entry(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.pre.i.i.i, i64 noundef %.pre11.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1154

.noexc.i:                                         ; preds = %bb.b
  %i.z = load i8, ptr %i.e, align 8, !range !6, !noalias !1173, !noundef !3
  %.not.i.i.i = icmp eq i8 %i.z, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1173
  %i.aa = load i8, ptr %i.i, align 8, !range !6, !alias.scope !1174, !noalias !1171, !noundef !3
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.f, !noalias !1171

bb.e:                                             ; preds = %.noexc.i
  %i.ac = icmp eq ptr %i.y, %i.v
  br i1 %i.ac, label %.thread95.i, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !1171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1173
  invoke void @_RINvXsr_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer22deserialize_identifierNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB3d_11SequenceDef11deserialize14___FieldVisitorEB3h_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1154

.noexc61.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1173
  %i.ad = load i8, ptr %i.d, align 8, !range !203, !noalias !1173, !noundef !3
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !1171
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.f) #22
          to label %.loopexit.split-lp.i unwind label %bb.g, !noalias !1171

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!948 = distinct !{!948, !949, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!949 = distinct !{!949, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders5strip1__NtBb_5StripNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_: argument 0"}
!952 = distinct !{!952, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders5strip1__NtBb_5StripNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_"}
!953 = !{!951, !954}
!954 = distinct !{!954, !952, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders5strip1__NtBb_5StripNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_: argument 1"}
!955 = !{!954}
!956 = !{!957, !959}
!957 = distinct !{!957, !958, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!958 = distinct !{!958, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!959 = distinct !{!959, !960, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!960 = distinct !{!960, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!961 = !{!962, !959}
!962 = distinct !{!962, !963, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!963 = distinct !{!963, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!964 = !{!965, !967}
!965 = distinct !{!965, !966, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!966 = distinct !{!966, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!967 = distinct !{!967, !968, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!968 = distinct !{!968, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!969 = !{!970, !967}
!970 = distinct !{!970, !971, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!971 = distinct !{!971, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!972 = !{!973}
!973 = distinct !{!973, !974, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences2_1__NtBb_20SequenceDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_: argument 0"}
!974 = distinct !{!974, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences2_1__NtBb_20SequenceDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_"}
!975 = !{!973, !976}
!976 = distinct !{!976, !974, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences2_1__NtBb_20SequenceDeserializerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_: argument 1"}
!977 = !{!976}
!978 = !{!979}
!979 = distinct !{!979, !980, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1h_EEE8push_mutCs2JiOgHzbbc7_10tokenizers: argument 0"}
!980 = distinct !{!980, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1h_EEE8push_mutCs2JiOgHzbbc7_10tokenizers"}
!981 = !{!982, !973, !976}
!982 = distinct !{!982, !980, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1h_EEE8push_mutCs2JiOgHzbbc7_10tokenizers: argument 1"}
!983 = !{!982, !973}
!984 = !{!985, !987}
!985 = distinct !{!985, !986, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!986 = distinct !{!986, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!987 = distinct !{!987, !988, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!988 = distinct !{!988, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!989 = !{!990, !987}
!990 = distinct !{!990, !991, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!991 = distinct !{!991, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!992 = !{!993, !995}
!993 = distinct !{!993, !994, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!994 = distinct !{!994, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!995 = distinct !{!995, !996, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!996 = distinct !{!996, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!997 = !{!998, !995}
!998 = distinct !{!998, !999, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!999 = distinct !{!999, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1000 = !{!1001}
!1001 = distinct !{!1001, !1002, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders9wordpiece1__NtBb_9WordPieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_: argument 0"}
!1002 = distinct !{!1002, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders9wordpiece1__NtBb_9WordPieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_"}
!1003 = !{!1001, !1004}
!1004 = distinct !{!1004, !1002, !"_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders9wordpiece1__NtBb_9WordPieceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1i_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBf_: argument 1"}
!1005 = !{!1004}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1008 = distinct !{!1008, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers"}
!1009 = !{!1010, !1012}
!1010 = distinct !{!1010, !1011, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1011 = distinct !{!1011, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1012 = distinct !{!1012, !1013, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1013 = distinct !{!1013, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1014 = !{!1015, !1012}
!1015 = distinct !{!1015, !1016, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1016 = distinct !{!1016, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1017 = !{!1018, !1020}
!1018 = distinct !{!1018, !1019, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1019 = distinct !{!1019, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1020 = distinct !{!1020, !1021, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1021 = distinct !{!1021, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1022 = !{!1023, !1020}
!1023 = distinct !{!1023, !1024, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1024 = distinct !{!1024, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_RINvXs0_NvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtBb_20UnicodeScriptsHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB22_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBh_: argument 0"}
!1027 = distinct !{!1027, !"_RINvXs0_NvXNvNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizers1_1__NtBb_20UnicodeScriptsHelperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB22_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBh_"}
!1028 = !{!1029, !1031}
!1029 = distinct !{!1029, !1030, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1030 = distinct !{!1030, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1031 = distinct !{!1031, !1032, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1032 = distinct !{!1032, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1033 = !{!1034, !1031}
!1034 = distinct !{!1034, !1035, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1035 = distinct !{!1035, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1036 = !{!1037, !1039}
!1037 = distinct !{!1037, !1038, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1038 = distinct !{!1038, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1039 = distinct !{!1039, !1040, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1040 = distinct !{!1040, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1041 = !{!1042, !1039}
!1042 = distinct !{!1042, !1043, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1043 = distinct !{!1043, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"_RINvXs0_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBh_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_11SplitHelperB1i_11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBl_: argument 0"}
!1046 = distinct !{!1046, !"_RINvXs0_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBh_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_11SplitHelperB1i_11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBl_"}
!1047 = !{!1045, !1048}
!1048 = distinct !{!1048, !1046, !"_RINvXs0_NvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBh_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_11SplitHelperB1i_11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBl_: argument 1"}
!1049 = !{!1048}
!1050 = !{!1051}
!1051 = distinct !{!1051, !1052, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEEB13_: argument 0"}
!1052 = distinct !{!1052, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEEB13_"}
!1053 = !{!1054, !1056}
!1054 = distinct !{!1054, !1055, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1055 = distinct !{!1055, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1056 = distinct !{!1056, !1057, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1057 = distinct !{!1057, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1058 = !{!1059, !1056}
!1059 = distinct !{!1059, !1060, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1060 = distinct !{!1060, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1061 = !{!1062, !1064}
!1062 = distinct !{!1062, !1063, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1063 = distinct !{!1063, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1064 = distinct !{!1064, !1065, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1065 = distinct !{!1065, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1066 = !{!1067, !1064}
!1067 = distinct !{!1067, !1068, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1068 = distinct !{!1068, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1071, !"_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBk_: argument 0"}
!1071 = distinct !{!1071, !"_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBk_"}
!1072 = !{!1070, !1073}
!1073 = distinct !{!1073, !1071, !"_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBk_: argument 1"}
!1074 = !{i8 -1, i8 7}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1077 = distinct !{!1077, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECs2JiOgHzbbc7_10tokenizers"}
!1078 = !{!1073}
!1079 = !{!1080, !1082}
!1080 = distinct !{!1080, !1081, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1081 = distinct !{!1081, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1082 = distinct !{!1082, !1083, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1083 = distinct !{!1083, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1084 = !{!1085, !1082}
!1085 = distinct !{!1085, !1086, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1086 = distinct !{!1086, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1087 = !{!1088, !1090}
!1088 = distinct !{!1088, !1089, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1089 = distinct !{!1089, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1090 = distinct !{!1090, !1091, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1091 = distinct !{!1091, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1092 = !{!1093, !1090}
!1093 = distinct !{!1093, !1094, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1094 = distinct !{!1094, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1097, !"_RINvXNvXs8_NtCs5PtHgSLqj5O_10serde_json3mapINtB9_3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBb_5value5ValueENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1M_7Visitor9visit_mapQNtNtB1s_2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1097 = distinct !{!1097, !"_RINvXNvXs8_NtCs5PtHgSLqj5O_10serde_json3mapINtB9_3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBb_5value5ValueENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1M_7Visitor9visit_mapQNtNtB1s_2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1098 = !{!1096, !1099}
!1099 = distinct !{!1099, !1097, !"_RINvXNvXs8_NtCs5PtHgSLqj5O_10serde_json3mapINtB9_3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBb_5value5ValueENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1M_7Visitor9visit_mapQNtNtB1s_2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1100 = !{!1101, !1103, !1104, !1096, !1099}
!1101 = distinct !{!1101, !1102, !"_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_entryNtNtCscdodAO9FK5_5alloc6string6StringNtB7_5ValueECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1102 = distinct !{!1102, !"_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_entryNtNtCscdodAO9FK5_5alloc6string6StringNtB7_5ValueECs2JiOgHzbbc7_10tokenizers"}
!1103 = distinct !{!1103, !1102, !"_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_entryNtNtCscdodAO9FK5_5alloc6string6StringNtB7_5ValueECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1104 = distinct !{!1104, !1105, !"_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_entryNtNtCscdodAO9FK5_5alloc6string6StringNtBG_5ValueECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1105 = distinct !{!1105, !"_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_entryNtNtCscdodAO9FK5_5alloc6string6StringNtBG_5ValueECs2JiOgHzbbc7_10tokenizers"}
!1106 = !{!1107, !1109, !1101, !1103, !1104, !1096, !1099}
!1107 = distinct !{!1107, !1108, !"_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_entry_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEIB1Y_NtB7_5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1108 = distinct !{!1108, !"_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_entry_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEIB1Y_NtB7_5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1109 = distinct !{!1109, !1108, !"_RINvYNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_entry_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEIB1Y_NtB7_5ValueEECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1110 = !{!1107, !1101, !1104, !1096}
!1111 = !{!1099}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1114 = distinct !{!1114, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1115 = !{!1116, !1118}
!1116 = distinct !{!1116, !1117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1117 = distinct !{!1117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1118 = distinct !{!1118, !1119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1119 = distinct !{!1119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1120 = !{!1121, !1118}
!1121 = distinct !{!1121, !1122, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1122 = distinct !{!1122, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1123 = !{!1124, !1126}
!1124 = distinct !{!1124, !1125, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1125 = distinct !{!1125, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1126 = distinct !{!1126, !1127, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1127 = distinct !{!1127, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1128 = !{!1129, !1126}
!1129 = distinct !{!1129, !1130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1130 = distinct !{!1130, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1131 = !{!1132, !1134}
!1132 = distinct !{!1132, !1133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1133 = distinct !{!1133, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1134 = distinct !{!1134, !1135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1135 = distinct !{!1135, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1136 = !{!1137, !1134}
!1137 = distinct !{!1137, !1138, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1138 = distinct !{!1138, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1139 = !{!1140, !1142}
!1140 = distinct !{!1140, !1141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1141 = distinct !{!1141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1142 = distinct !{!1142, !1143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1143 = distinct !{!1143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers"}
!1144 = !{!1145, !1142}
!1145 = distinct !{!1145, !1146, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1146 = distinct !{!1146, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!1149 = distinct !{!1149, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8"}
!1150 = !{!1151, !1148}
!1151 = distinct !{!1151, !1149, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!1152 = !{!1151}
!1153 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!1154 = !{!1155}
!1155 = distinct !{!1155, !1156, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtBb_11SequenceDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_: argument 0"}
!1156 = distinct !{!1156, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtBb_11SequenceDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_"}
!1157 = !{!1158}
!1158 = distinct !{!1158, !1156, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtBb_11SequenceDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_: argument 1"}
!1159 = !{!1155, !1158}
!1160 = !{!1161, !1163, !1155, !1158}
!1161 = distinct !{!1161, !1162, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB2B_11SequenceDef11deserialize7___FieldEB2F_: argument 0"}
!1162 = distinct !{!1162, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB2B_11SequenceDef11deserialize7___FieldEB2F_"}
!1163 = distinct !{!1163, !1162, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB2B_11SequenceDef11deserialize7___FieldEB2F_: argument 1:pre.rot"}
!1164 = !{!1161, !1165, !1155, !1158}
!1165 = distinct !{!1165, !1162, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB2B_11SequenceDef11deserialize7___FieldEB2F_: argument 1"}
!1166 = !{!1165}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB3v_11SequenceDef11deserialize7___FieldEEB3z_: argument 1"}
!1169 = distinct !{!1169, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB3v_11SequenceDef11deserialize7___FieldEEB3z_"}
!1170 = !{!1168, !1165, !1158}
!1171 = !{!1172, !1161, !1155}
!1172 = distinct !{!1172, !1169, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB3v_11SequenceDef11deserialize7___FieldEEB3z_: argument 0"}
!1173 = !{!1172, !1168, !1161, !1165, !1155, !1158}
!1174 = !{!1175, !1168, !1165, !1158}
!1175 = distinct !{!1175, !1176, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1176 = distinct !{!1176, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1179, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1179 = distinct !{!1179, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers"}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1182, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1M_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1182 = distinct !{!1182, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1M_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers"}
!1183 = !{!1181, !1178, !1158}
!1184 = !{!1181, !1178, !1155, !1158}
!1185 = !{!1186}
!1186 = distinct !{!1186, !1187, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEB37_: argument 1"}
!1187 = distinct !{!1187, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEB37_"}
!1188 = !{!1189}
!1189 = distinct !{!1189, !1190, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEEB40_: argument 1"}
!1190 = distinct !{!1190, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEEB40_"}
!1191 = !{!1189, !1186, !1158}
!1192 = !{!1193, !1194, !1155}
!1193 = distinct !{!1193, !1190, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEEB40_: argument 0"}
!1194 = distinct !{!1194, !1187, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEB37_: argument 0"}
!1195 = !{!1193, !1189, !1194, !1186, !1155, !1158}
!1196 = !{!1197}
!1197 = distinct !{!1197, !1198, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEEB1x_: argument 0"}
!1198 = distinct !{!1198, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEEB1x_"}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1162, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB2B_11SequenceDef11deserialize7___FieldEB2F_: argument 1:h.rot"}
!1201 = !{!1161, !1200, !1155, !1158}
!1202 = !{!1203, !1200, !1158}
!1203 = distinct !{!1203, !1169, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequences0_1__NtB3v_11SequenceDef11deserialize7___FieldEEB3z_: argument 1:h.rot"}
!1204 = !{!1205, !1207, !1158}
!1205 = distinct !{!1205, !1206, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1206 = distinct !{!1206, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1207 = distinct !{!1207, !1208, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1208 = distinct !{!1208, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1209 = !{!1210, !1212, !1158}
!1210 = distinct !{!1210, !1211, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1211 = distinct !{!1211, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1212 = distinct !{!1212, !1213, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1213 = distinct !{!1213, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1214 = !{!1215, !1217, !1158}
!1215 = distinct !{!1215, !1216, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1216 = distinct !{!1216, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1217 = distinct !{!1217, !1218, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1218 = distinct !{!1218, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1219 = !{!1220}
!1220 = distinct !{!1220, !1221, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtBb_12ByteLevelDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_: argument 0"}
!1221 = distinct !{!1221, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtBb_12ByteLevelDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_"}
!1222 = !{!1223}
!1223 = distinct !{!1223, !1221, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtBb_12ByteLevelDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_: argument 1"}
!1224 = !{!1225, !1227, !1220, !1223}
!1225 = distinct !{!1225, !1226, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB2B_12ByteLevelDef11deserialize7___FieldEB2F_: argument 0"}
!1226 = distinct !{!1226, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB2B_12ByteLevelDef11deserialize7___FieldEB2F_"}
!1227 = distinct !{!1227, !1226, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB2B_12ByteLevelDef11deserialize7___FieldEB2F_: argument 1:pre.rot"}
!1228 = !{!1225, !1229, !1220, !1223}
!1229 = distinct !{!1229, !1226, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB2B_12ByteLevelDef11deserialize7___FieldEB2F_: argument 1"}
!1230 = !{!1229}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1233, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB3v_12ByteLevelDef11deserialize7___FieldEEB3z_: argument 1"}
!1233 = distinct !{!1233, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB3v_12ByteLevelDef11deserialize7___FieldEEB3z_"}
!1234 = !{!1232, !1229, !1223}
!1235 = !{!1236, !1225, !1220}
!1236 = distinct !{!1236, !1233, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB3v_12ByteLevelDef11deserialize7___FieldEEB3z_: argument 0"}
!1237 = !{!1236, !1232, !1225, !1229, !1220, !1223}
!1238 = !{!1239, !1232, !1229, !1223}
!1239 = distinct !{!1239, !1240, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1240 = distinct !{!1240, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1241 = !{!1242, !1244, !1223}
!1242 = distinct !{!1242, !1243, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1243 = distinct !{!1243, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1244 = distinct !{!1244, !1245, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1245 = distinct !{!1245, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1246 = !{i8 0, i8 4}
!1247 = !{!1248}
!1248 = distinct !{!1248, !1249, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1249 = distinct !{!1249, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers"}
!1250 = !{!1251}
!1251 = distinct !{!1251, !1252, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1M_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1252 = distinct !{!1252, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1M_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers"}
!1253 = !{!1251, !1248, !1223}
!1254 = !{!1251, !1248, !1220, !1223}
!1255 = !{!1220, !1223}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1258 = distinct !{!1258, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers"}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1261, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1261 = distinct !{!1261, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers"}
!1262 = !{!1260, !1257, !1223}
!1263 = !{!1264, !1265, !1220}
!1264 = distinct !{!1264, !1261, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1265 = distinct !{!1265, !1258, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1266 = !{!1264, !1260, !1265, !1257, !1220, !1223}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1226, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB2B_12ByteLevelDef11deserialize7___FieldEB2F_: argument 1:h.rot"}
!1269 = !{!1225, !1268, !1220, !1223}
!1270 = !{!1271, !1268, !1223}
!1271 = distinct !{!1271, !1233, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtB3v_12ByteLevelDef11deserialize7___FieldEEB3z_: argument 1:h.rot"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1274 = distinct !{!1274, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1277, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1277 = distinct !{!1277, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers"}
!1278 = !{!1276, !1273, !1223}
!1279 = !{!1280, !1281, !1220}
!1280 = distinct !{!1280, !1277, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1281 = distinct !{!1281, !1274, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1282 = !{!1280, !1276, !1281, !1273, !1220, !1223}
!1283 = !{!1284}
!1284 = distinct !{!1284, !1285, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1285 = distinct !{!1285, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers"}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers: argument 1"}
!1288 = distinct !{!1288, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers"}
!1289 = !{!1287, !1284, !1223}
!1290 = !{!1291, !1292, !1220}
!1291 = distinct !{!1291, !1288, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1292 = distinct !{!1292, !1285, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1293 = !{!1291, !1287, !1292, !1284, !1220, !1223}
!1294 = !{!1295, !1297, !1223}
!1295 = distinct !{!1295, !1296, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1296 = distinct !{!1296, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1297 = distinct !{!1297, !1298, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1298 = distinct !{!1298, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1299 = !{!1300, !1302, !1223}
!1300 = distinct !{!1300, !1301, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1301 = distinct !{!1301, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1302 = distinct !{!1302, !1303, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1303 = distinct !{!1303, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtBb_14PunctuationDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_: argument 0"}
!1306 = distinct !{!1306, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtBb_14PunctuationDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1306, !"_RINvXs0_NvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtBb_14PunctuationDef11deserializeNtB6_9___VisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_: argument 1"}
!1309 = !{!1310, !1312, !1305, !1308}
!1310 = distinct !{!1310, !1311, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtB2B_14PunctuationDef11deserialize7___FieldEB2F_: argument 0"}
!1311 = distinct !{!1311, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtB2B_14PunctuationDef11deserialize7___FieldEB2F_"}
!1312 = distinct !{!1312, !1311, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtB2B_14PunctuationDef11deserialize7___FieldEB2F_: argument 1:pre.rot"}
!1313 = !{!1310, !1314, !1305, !1308}
!1314 = distinct !{!1314, !1311, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess8next_keyNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtB2B_14PunctuationDef11deserialize7___FieldEB2F_: argument 1"}
!1315 = !{!1314}
!1316 = !{!1317}
!1317 = distinct !{!1317, !1318, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtB3v_14PunctuationDef11deserialize7___FieldEEB3z_: argument 1"}
!1318 = distinct !{!1318, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtB3v_14PunctuationDef11deserialize7___FieldEEB3z_"}
!1319 = !{!1317, !1314, !1308}
!1320 = !{!1321, !1310, !1305}
!1321 = distinct !{!1321, !1318, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtB3v_14PunctuationDef11deserialize7___FieldEEB3z_: argument 0"}
!1322 = !{!1321, !1317, !1310, !1314, !1305, !1308}
!1323 = !{!1324, !1317, !1314, !1308}
!1324 = distinct !{!1324, !1325, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1325 = distinct !{!1325, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1326 = !{!1327, !1329, !1308}
!1327 = distinct !{!1327, !1328, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1328 = distinct !{!1328, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1329 = distinct !{!1329, !1330, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1330 = distinct !{!1330, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1331 = !{!1332, !1334, !1308}
!1332 = distinct !{!1332, !1333, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1333 = distinct !{!1333, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!1334 = distinct !{!1334, !1335, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1335 = distinct !{!1335, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1338, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1338 = distinct !{!1338, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1M_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1341 = distinct !{!1341, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1M_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers"}
!1342 = !{!1340, !1337, !1308}
!1343 = !{!1340, !1337, !1305, !1308}
!1344 = !{!1305, !1308}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer22SplitDelimiterBehaviorEB2D_: argument 1"}
!1347 = distinct !{!1347, !"_RINvYINtNtNtCsctIyQp3ax5j_5serde7private2de16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer22SplitDelimiterBehaviorEB2D_"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1350, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer22SplitDelimiterBehaviorEEB3w_: argument 1"}
!1350 = distinct !{!1350, !"_RINvXs8_NtNtCsctIyQp3ax5j_5serde7private2deINtB6_16FlatStructAccessNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer22SplitDelimiterBehaviorEEB3w_"}
!1351 = !{!1349, !1346, !1308}
!1352 = !{!1353, !1354, !1305}
end_hunk_1
