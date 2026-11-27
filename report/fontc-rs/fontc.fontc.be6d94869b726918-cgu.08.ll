Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc.fontc.be6d94869b726918-cgu.08?download=true
inline.NumInlined: 228
inline.NumDeleted: 130
begin_hunk_0_@_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENvMBT_BR_10is_dynamicECsglDVE6xSTcO_5fontc:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx23.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !103
  %i.ac = add i64 %i.q, 1
  store i64 %i.ac, ptr %i.j, align 8, !alias.scope !105, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0CsglDVE6xSTcO_5fontc.exit.i

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.ad = load ptr, ptr %i.g, align 8, !alias.scope !107, !noalias !104, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.ad, i64 %i.v ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.i, i64 24, i1 false), !noalias !103
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.7.0..sroa_idx12.i, align 8, !noalias !103
  %.sroa.8.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.8.0..sroa_idx20.i, align 8, !noalias !103
  %.sroa.9.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx25.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !103
  %i.af = add i64 %i.v, 1
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !107, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0CsglDVE6xSTcO_5fontc.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0CsglDVE6xSTcO_5fontc.exit.i, %bb.a
  %i.ag = load ptr, ptr %i.d, align 8, !alias.scope !103, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !103, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103
  store i64 %i.ai, ptr %i.c, align 8, !noalias !103
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ag, ptr %i.aj, align 8, !noalias !103
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.q unwind label %bb.p, !noalias !103

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0CsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %.not.not.i = icmp eq ptr %i.o, %i.l
  br i1 %.not.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit.i, label %bb.c

bb.n:                                             ; preds = %bb.j, %bb.f
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.t, %bb.f ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.d)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !103
  unreachable

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.p ], [ %eh.lpad-body.ph.i, %bb.n ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %bb.b unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.r:                                             ; preds = %.body, %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.b
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE9move_tailCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !range !9, !noundef !5
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = add i64 %i.d, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.k
  %i.p = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  store i64 %i.k, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.g, i64 noundef %1, i64 noundef 8, i64 noundef 24)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCLBQfCopcP_18tracing_subscriber8registryINtB4_7SpanRefINtNtNtB6_5layer7layered7LayeredINtNtNtB6_6filter13layer_filters8FilteredINtNtNtB6_3fmt9fmt_layer5LayerNtNtB4_7sharded8RegistryNtNtB2h_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1C_3env9EnvFilterB2G_EB2G_EE15try_with_filterB3A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = and i64 %i.c, %2
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  tail call void @_RNvXs6_NtCs1c7GmC1ft6u_12sharded_slab4poolINtB5_3RefNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store ptr %i.f, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCLBQfCopcP_18tracing_subscriber8registryINtB4_7SpanRefNtNtB4_7sharded8RegistryE15try_with_filterCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = and i64 %i.c, %2
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  tail call void @_RNvXs6_NtCs1c7GmC1ft6u_12sharded_slab4poolINtB5_3RefNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store ptr %i.f, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E21reserve_one_uncheckedB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !111, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_.exit, label %.thread

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !111, !noundef !5 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %.thread, label %bb.d, !prof !10

.thread:                                          ; preds = %bb.a, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_.exit
  %.sink12.i47 = phi i64 [ %i.e, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_.exit ], [ %i.b, %bb.a ]
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i47, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = shl nuw i64 1, %i.h
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E8try_growB4b_(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 -1, label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit
    i64 0, label %bb.c
  ], !prof !112

bb.b:                                             ; preds = %.thread
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #24
  unreachable

bb.c:                                             ; preds = %.thread
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit: ; preds = %.thread
  ret void

bb.d:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E8try_growB4b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0, i64 noundef range(i64 1, -9223372036854775807) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E10triple_mutB4b_.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !8

bb.a:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E10triple_mutB4b_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E10triple_mutB4b_.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.l, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit, !prof !11

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65.not = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond65.not, label %bb.l, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit48, !prof !11

bb.g:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.m = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #26 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #26 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond.not.i, label %bb.k, label %_RINvCsgkGe90ZnUBq_8smallvec10deallocateINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtNtNtBG_6filter13layer_filters8FilteredINtNtNtBG_3fmt9fmt_layer5LayerNtNtBE_7sharded8RegistryNtNtB2L_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB26_3env9EnvFilterB3a_EB3a_EEEB44_.exit, !prof !11

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store i64 0, ptr %i.a, align 8, !noalias !115
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !115
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !noalias !115
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10deallocateINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtNtNtBG_6filter13layer_filters8FilteredINtNtNtBG_3fmt9fmt_layer5LayerNtNtBE_7sharded8RegistryNtNtB2L_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB26_3env9EnvFilterB3a_EB3a_EEEB44_.exit: ; preds = %bb.j
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit48, %bb.g, %_RINvCsgkGe90ZnUBq_8smallvec10deallocateINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtNtNtBG_6filter13layer_filters8FilteredINtNtNtBG_3fmt9fmt_layer5LayerNtNtBE_7sharded8RegistryNtNtB2L_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB26_3env9EnvFilterB3a_EB3a_EEEB44_.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsgkGe90ZnUBq_8smallvec10deallocateINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtNtNtBG_6filter13layer_filters8FilteredINtNtNtBG_3fmt9fmt_layer5LayerNtNtBE_7sharded8RegistryNtNtB2L_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB26_3env9EnvFilterB3a_EB3a_EEEB44_.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsgkGe90ZnUBq_8smallvec10deallocateINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBG_5layer7layered7LayeredINtNtNtBG_6filter13layer_filters8FilteredINtNtNtBG_3fmt9fmt_layer5LayerNtNtBE_7sharded8RegistryNtNtB2L_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB26_3env9EnvFilterB3a_EB3a_EEEB44_.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBI_5layer7layered7LayeredINtNtNtBI_6filter13layer_filters8FilteredINtNtNtBI_3fmt9fmt_layer5LayerNtNtBG_7sharded8RegistryNtNtB2N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB28_3env9EnvFilterB3c_EB3c_EEEB46_.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !124, !noundef !5 ; 5 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 3 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsglDVE6xSTcO_5fontc.exit

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsglDVE6xSTcO_5fontc.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !124, !noundef !5 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.q, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsglDVE6xSTcO_5fontc.exit
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !125, !nonnull !5, !noundef !5
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !126
  br label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.pn = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.sink12.i41922 = phi i64 [ %i.f, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.o = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %.sink12.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.b ], [ 8, %bb.c ] ; 5 uses
  %i.p = sub nuw nsw i64 64, %.pn                 ; 2 uses
  %i.q = shl nuw i64 1, %i.p                      ; 3 uses
  %.not.i = icmp ult i64 %i.q, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !126
  unreachable

bb.e:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i
  %i.r = icmp samesign ult i64 %.sink12.i41922, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.q, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl i64 56, %i.p                         ; 3 uses
  %or.cond.not.i = icmp samesign ugt i64 %.sink12.i41922, 144115188075855871
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit.i, !prof !11

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit.i
  %or.cond65.not.i = icmp ugt i64 %.sink.i.i, 164703072086692425
  br i1 %or.cond65.not.i, label %bb.p, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit48.i, !prof !11

bb.j:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !126
  %i.t = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #26, !noalias !126 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit48.i: ; preds = %bb.i
  %i.v = mul nuw nsw i64 %.sink.i.i, 56
  %i.w = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #26 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !126
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !126
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !126
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !126
  br label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = mul nuw nsw i64 %i.o, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !126
  %i.z = mul nuw nsw i64 %i.o, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !126
  %i.aa = mul i64 %.sink.i.i, 56                  ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 164703072086692425
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsgkGe90ZnUBq_8smallvec10deallocateNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit.i, !prof !11

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  store i64 0, ptr %i.a, align 8, !noalias !127
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !127
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !noalias !127
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10deallocateNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #26
  br label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit

bb.o:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit48.i, %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #24
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvCsgkGe90ZnUBq_8smallvec10deallocateNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsglDVE6xSTcO_5fontc.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E6insertCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(464) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !130, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.b, label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !130, !nonnull !5, !noundef !5
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit

bb.c:                                             ; preds = %bb.h, %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #23
          to label %bb.m unwind label %bb.l

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sink12.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %.sink11.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %.sink.i = phi i64 [ %i.b, %bb.b ], [ 8, %bb.a ]
  %i.i = icmp eq i64 %i.h, %.sink.i
  br i1 %i.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit
  invoke fastcc void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(464) %0)
          to label %bb.f unwind label %bb.c

bb.e:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit, %bb.f
  %i.j = phi i64 [ %.pre10, %bb.f ], [ %i.h, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.m, %bb.f ], [ %.sink12.i, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit ]
  %.sroa.04.0 = phi ptr [ %i.d, %bb.f ], [ %.sink11.i, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit ]
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.h, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %.pre10 = load i64, ptr %i.d, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.sroa.07.0, i64 %1 ; 3 uses
  %i.o = icmp ult i64 %1, %i.j
  br i1 %i.o, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.k unwind label %bb.c

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %.sroa.04.0, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = sub nuw i64 %i.j, %1
  %i.s = mul nuw nsw i64 %i.r, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.n, i64 %i.s, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !139, !noundef !5 ; 5 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 3 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsglDVE6xSTcO_5fontc.exit

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsglDVE6xSTcO_5fontc.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !139, !noundef !5 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.q, !prof !10

bb.b:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsglDVE6xSTcO_5fontc.exit
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !140, !nonnull !5, !noundef !5
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !141
  br label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.pn = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.sink12.i41922 = phi i64 [ %i.f, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.o = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %.sink12.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.b ], [ 8, %bb.c ] ; 5 uses
  %i.p = sub nuw nsw i64 64, %.pn                 ; 2 uses
  %i.q = shl nuw i64 1, %i.p                      ; 3 uses
  %.not.i = icmp ult i64 %i.q, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !141
  unreachable

bb.e:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit.i
  %i.r = icmp samesign ult i64 %.sink12.i41922, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.q, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = shl i64 80, %i.p                         ; 3 uses
  %or.cond.not.i = icmp samesign ugt i64 %.sink12.i41922, 72057594037927935
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit.i, !prof !11

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit.i
  %or.cond65.not.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond65.not.i, label %bb.p, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit48.i, !prof !11

bb.j:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !141
  %i.t = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #26, !noalias !141 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit48.i: ; preds = %bb.i
  %i.v = mul nuw nsw i64 %.sink.i.i, 80
  %i.w = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #26 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !141
  store i64 %i.o, ptr %i.n, align 8, !alias.scope !141
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !141
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !141
  br label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit

bb.l:                                             ; preds = %bb.j
  %i.y = mul nuw nsw i64 %i.o, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !141
  %i.z = mul nuw nsw i64 %i.o, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !141
  %i.aa = mul i64 %.sink.i.i, 80                  ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsgkGe90ZnUBq_8smallvec10deallocateNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit.i, !prof !11

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  store i64 0, ptr %i.a, align 8, !noalias !142
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !142
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !noalias !142
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10deallocateNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #26
  br label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit

bb.o:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit48.i, %bb.j
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #24
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvCsgkGe90ZnUBq_8smallvec10deallocateNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsglDVE6xSTcO_5fontc.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E6insertCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !145, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.b, label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !145, !nonnull !5, !noundef !5
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit

bb.c:                                             ; preds = %bb.h, %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(80) %2) #23
          to label %bb.m unwind label %bb.l

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sink12.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %.sink11.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  %.sink.i = phi i64 [ %i.b, %bb.b ], [ 8, %bb.a ]
  %i.i = icmp eq i64 %i.h, %.sink.i
  br i1 %i.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit
  invoke fastcc void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(656) %0)
          to label %bb.f unwind label %bb.c

bb.e:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit, %bb.f
  %i.j = phi i64 [ %.pre10, %bb.f ], [ %i.h, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.m, %bb.f ], [ %.sink12.i, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit ]
  %.sroa.04.0 = phi ptr [ %i.d, %bb.f ], [ %.sink11.i, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc.exit ]
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.h, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %.pre10 = load i64, ptr %i.d, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.sroa.07.0, i64 %1 ; 3 uses
  %i.o = icmp ult i64 %1, %i.j
  br i1 %i.o, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.k unwind label %bb.c

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %.sroa.04.0, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.r = sub nuw i64 %i.j, %1
  %i.s = mul nuw nsw i64 %i.r, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.n, i64 %i.s, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs10_CsgkGe90ZnUBq_8smallvecNtB6_18CollectionAllocErrNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !146, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtCs1c7GmC1ft6u_12sharded_slab4poolINtB5_3RefNtNtNtCsgCLBQfCopcP_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs6CpVowoi7NE_12tracing_core5field5FieldNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field10ValueMatchEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs6CpVowoi7NE_12tracing_core5field5FieldTNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field10ValueMatchINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEEEENtNtNtB2O_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBK_5layer7layered7LayeredINtNtNtBK_6filter13layer_filters8FilteredINtNtNtBK_3fmt9fmt_layer5LayerNtNtBI_7sharded8RegistryNtNtB2P_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2a_3env9EnvFilterB3e_EB3e_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB48_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field13CallsiteMatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBR_5layer7layered7LayeredINtNtNtBR_6filter13layer_filters8FilteredINtNtNtBR_3fmt9fmt_layer5LayerNtNtBP_7sharded8RegistryNtNtB2W_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2h_3env9EnvFilterB3l_EB3l_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB4f_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field13CallsiteMatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env5field9SpanMatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvMNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directiveNtBU_9Directive11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1T_EE0INtB7_5FnMutTB1T_EE8call_mutCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE8grow_oneBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs6CpVowoi7NE_12tracing_core4span2IdNtB6_5Debug3fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCsgCLBQfCopcP_18tracing_subscriber5layer7layered7LayeredINtNtNtB9_6filter13layer_filters8FilteredINtNtNtB9_3fmt9fmt_layer5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB1N_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB18_3env9EnvFilterB2c_EB2c_ENtB2g_10LookupSpan4spanB3h_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs5Xr050g3D4S_3std3ffi6os_strNtB5_8OsStringINtNtCsf3Ta7LF998c_4core7convert4FromRNtNtCsgCecv3eZDcN_5alloc6string6StringE4fromCsglDVE6xSTcO_5fontc(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs7SuSGX4jtHW_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCs5MxzpKags6U_14tracing_chrome(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn }
attributes #25 = { noinline noreturn }
attributes #26 = { nounwind }
attributes #27 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!5 = !{}
!6 = !{i64 8}
!7 = !{i64 -1, i64 -9223372036854775808}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{!"branch_weights", i32 -8583494, i32 8583493}
!11 = !{!"branch_weights", i32 2002, i32 2000}
!12 = distinct !{!12, i1 true, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc"}
!13 = distinct !{!13, !12, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc: argument 1"}
!14 = !{!13}
!15 = distinct !{!15, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc"}
!16 = distinct !{!16, !15, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc: argument 1"}
!17 = distinct !{!17, i1 true, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB5_8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc"}
!18 = distinct !{!18, !17, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB5_8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitRNtNtCsgCecv3eZDcN_5alloc6string6StringEE4nextCsglDVE6xSTcO_5fontc"}
!20 = distinct !{!20, !19, !"_RNvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitRNtNtCsgCecv3eZDcN_5alloc6string6StringEE4nextCsglDVE6xSTcO_5fontc: argument 0"}
!21 = distinct !{!21, i1 true, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc"}
!22 = distinct !{!22, !21, !"_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsgCecv3eZDcN_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsglDVE6xSTcO_5fontc: argument 1:Peel0"}
!23 = !{!20, !18, !16}
!24 = !{!22}
!25 = !{!20, !18, !22}
!26 = distinct !{!26, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc"}
!27 = distinct !{!27, !26, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc: argument 0"}
!28 = !{!27}
!29 = distinct !{!29, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc"}
!30 = distinct !{!30, !29, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc: argument 0"}
!31 = distinct !{!31, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc"}
!32 = distinct !{!32, !31, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc: argument 0"}
!33 = !{!30}
!34 = !{!32}
!35 = distinct !{!35, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveNtNtB1m_9directive15StaticDirectiveQNCINvMB1i_B1g_11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EE0E0CsglDVE6xSTcO_5fontc"}
!36 = distinct !{!36, !35, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveNtNtB1m_9directive15StaticDirectiveQNCINvMB1i_B1g_11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EE0E0CsglDVE6xSTcO_5fontc: argument 2"}
!37 = distinct !{!37, !35, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveNtNtB1m_9directive15StaticDirectiveQNCINvMB1i_B1g_11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EE0E0CsglDVE6xSTcO_5fontc: argument 1"}
!38 = distinct !{!38, !35, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveNtNtB1m_9directive15StaticDirectiveQNCINvMB1i_B1g_11make_tablesINtNtCsgCecv3eZDcN_5alloc3vec3VecB1g_EE0E0CsglDVE6xSTcO_5fontc: argument 0"}
!39 = !{!38, !37, !36}
!40 = !{!38, !36}
!41 = !{i64 -2, i64 5}
!42 = distinct !{!42, i1 true, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtCsgCLBQfCopcP_18tracing_subscriber8registry5ScopeINtNtNtBQ_5layer7layered7LayeredINtNtNtBQ_6filter13layer_filters8FilteredINtNtNtBQ_3fmt9fmt_layer5LayerNtNtBO_7sharded8RegistryNtNtB2T_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2e_3env9EnvFilterB3i_EB3i_EENtB2_12IntoIterator9into_iterB4c_"}
!43 = distinct !{!43, !42, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtCsgCLBQfCopcP_18tracing_subscriber8registry5ScopeINtNtNtBQ_5layer7layered7LayeredINtNtNtBQ_6filter13layer_filters8FilteredINtNtNtBQ_3fmt9fmt_layer5LayerNtNtBO_7sharded8RegistryNtNtB2T_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2e_3env9EnvFilterB3i_EB3i_EENtB2_12IntoIterator9into_iterB4c_: argument 1"}
!44 = distinct !{!44, !42, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtCsgCLBQfCopcP_18tracing_subscriber8registry5ScopeINtNtNtBQ_5layer7layered7LayeredINtNtNtBQ_6filter13layer_filters8FilteredINtNtNtBQ_3fmt9fmt_layer5LayerNtNtBO_7sharded8RegistryNtNtB2T_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2e_3env9EnvFilterB3i_EB3i_EENtB2_12IntoIterator9into_iterB4c_: argument 0"}
!45 = distinct !{!45, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E11try_reserveB4b_"}
!46 = distinct !{!46, !45, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E11try_reserveB4b_: argument 0"}
!47 = distinct !{!47, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E10triple_mutB4b_"}
!48 = distinct !{!48, !47, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E10triple_mutB4b_: argument 1"}
!49 = distinct !{!49, i1 true, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_"}
!50 = distinct !{!50, !49, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 1:pre.rot"}
!51 = distinct !{!51, !49, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 0:pre.rot"}
!52 = distinct !{!52, i1 true, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_"}
!53 = distinct !{!53, !52, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 1"}
!54 = distinct !{!54, !52, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_"}
!56 = distinct !{!56, !55, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 1"}
!57 = distinct !{!57, !55, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 0"}
!58 = distinct !{!58, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E4pushB4b_"}
!59 = distinct !{!59, !58, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E4pushB4b_: argument 0"}
!60 = distinct !{!60, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E10triple_mutB4b_"}
!61 = distinct !{!61, !60, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E10triple_mutB4b_: argument 1"}
!62 = distinct !{!62, !58, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E4pushB4b_: argument 1"}
!63 = distinct !{!63, i1 true, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_"}
!64 = distinct !{!64, !63, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 1:h.rot"}
!65 = distinct !{!65, !63, !"_RNvXNtCsgCLBQfCopcP_18tracing_subscriber8registryINtB2_5ScopeINtNtNtB4_5layer7layered7LayeredINtNtNtB4_6filter13layer_filters8FilteredINtNtNtB4_3fmt9fmt_layer5LayerNtNtB2_7sharded8RegistryNtNtB2d_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB1y_3env9EnvFilterB2C_EB2C_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB3w_: argument 0:h.rot"}
!66 = !{!44, !43}
!67 = !{!48, !46}
!68 = !{!50}
!69 = !{!51, !50}
!70 = !{!53}
!71 = !{!54, !53}
!72 = !{!54}
!73 = !{!56}
!74 = !{!57}
!75 = !{!57, !56}
!76 = !{!61, !59}
!77 = !{!59}
!78 = !{!62}
!79 = !{!64}
!80 = !{!65, !64}
!81 = distinct !{!81, i1 true, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsglDVE6xSTcO_5fontc"}
!82 = distinct !{!82, !81, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsglDVE6xSTcO_5fontc: argument 0"}
!83 = distinct !{!83, i1 true, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsglDVE6xSTcO_5fontc"}
!84 = distinct !{!84, !83, !"_RNvXsq_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsglDVE6xSTcO_5fontc: argument 0"}
!85 = distinct !{!85, i1 true, !"_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB29_9partition6extendBX_INtB8_3VecBX_ENvMBZ_BX_10is_dynamicE0ECsglDVE6xSTcO_5fontc"}
!86 = distinct !{!86, !85, !"_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB29_9partition6extendBX_INtB8_3VecBX_ENvMBZ_BX_10is_dynamicE0ECsglDVE6xSTcO_5fontc: argument 0"}
!87 = distinct !{!87, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0CsglDVE6xSTcO_5fontc"}
!88 = distinct !{!88, !87, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveINtNtCsgCecv3eZDcN_5alloc3vec3VecB1i_ENvMB1k_B1i_10is_dynamicE0CsglDVE6xSTcO_5fontc: argument 0"}
!89 = distinct !{!89, i1 true, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsglDVE6xSTcO_5fontc"}
!90 = distinct !{!90, !89, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsglDVE6xSTcO_5fontc: argument 0"}
!91 = distinct !{!91, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsglDVE6xSTcO_5fontc"}
!92 = distinct !{!92, !91, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsglDVE6xSTcO_5fontc: argument 0"}
!93 = distinct !{!93, !89, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsglDVE6xSTcO_5fontc: argument 1"}
!94 = distinct !{!94, !91, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsglDVE6xSTcO_5fontc: argument 1"}
!95 = distinct !{!95, i1 true, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsglDVE6xSTcO_5fontc"}
!96 = distinct !{!96, !95, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsglDVE6xSTcO_5fontc: argument 0"}
!97 = distinct !{!97, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsglDVE6xSTcO_5fontc"}
!98 = distinct !{!98, !97, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsglDVE6xSTcO_5fontc: argument 0"}
!99 = distinct !{!99, !95, !"_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E10extend_oneCsglDVE6xSTcO_5fontc: argument 1"}
!100 = distinct !{!100, !97, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9DirectiveE8push_mutCsglDVE6xSTcO_5fontc: argument 1"}
!101 = !{!82}
!102 = !{!84}
!103 = !{!86}
!104 = !{!88, !86}
!105 = !{!92, !90}
!106 = !{!94, !93, !88, !86}
!107 = !{!98, !96}
!108 = !{!100, !99, !88, !86}
!109 = distinct !{!109, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_"}
!110 = distinct !{!110, !109, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_: argument 1"}
!111 = !{!110}
!112 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!113 = distinct !{!113, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsgkGe90ZnUBq_8smallvec18CollectionAllocErrE6unwrapCsglDVE6xSTcO_5fontc"}
!114 = distinct !{!114, !113, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsgkGe90ZnUBq_8smallvec18CollectionAllocErrE6unwrapCsglDVE6xSTcO_5fontc: argument 0"}
!115 = !{!114}
!116 = distinct !{!116, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsglDVE6xSTcO_5fontc"}
!117 = distinct !{!117, !116, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCsglDVE6xSTcO_5fontc: argument 1"}
!118 = distinct !{!118, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E8try_growCsglDVE6xSTcO_5fontc"}
!119 = distinct !{!119, !118, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E8try_growCsglDVE6xSTcO_5fontc: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc"}
!121 = distinct !{!121, !120, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc: argument 1"}
!122 = distinct !{!122, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsgkGe90ZnUBq_8smallvec18CollectionAllocErrE6unwrapCsglDVE6xSTcO_5fontc"}
!123 = distinct !{!123, !122, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsgkGe90ZnUBq_8smallvec18CollectionAllocErrE6unwrapCsglDVE6xSTcO_5fontc: argument 0"}
!124 = !{!117}
!125 = !{!121, !119}
!126 = !{!119}
!127 = !{!123, !119}
!128 = distinct !{!128, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc"}
!129 = distinct !{!129, !128, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCsglDVE6xSTcO_5fontc: argument 1"}
!130 = !{!129}
!131 = distinct !{!131, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsglDVE6xSTcO_5fontc"}
!132 = distinct !{!132, !131, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCsglDVE6xSTcO_5fontc: argument 1"}
!133 = distinct !{!133, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E8try_growCsglDVE6xSTcO_5fontc"}
!134 = distinct !{!134, !133, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E8try_growCsglDVE6xSTcO_5fontc: argument 0"}
!135 = distinct !{!135, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc"}
!136 = distinct !{!136, !135, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc: argument 1"}
!137 = distinct !{!137, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsgkGe90ZnUBq_8smallvec18CollectionAllocErrE6unwrapCsglDVE6xSTcO_5fontc"}
!138 = distinct !{!138, !137, !"_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsgkGe90ZnUBq_8smallvec18CollectionAllocErrE6unwrapCsglDVE6xSTcO_5fontc: argument 0"}
!139 = !{!132}
!140 = !{!136, !134}
!141 = !{!134}
!142 = !{!138, !134}
!143 = distinct !{!143, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc"}
!144 = distinct !{!144, !143, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecANtNtNtNtCsgCLBQfCopcP_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCsglDVE6xSTcO_5fontc: argument 1"}
!145 = !{!144}
!146 = !{i64 0, i64 -9223372036854775807}
!147 = distinct !{!147, i1 true, !"_RNvXNtCs6CpVowoi7NE_12tracing_core6parentNtB2_6ParentNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt"}
!148 = distinct !{!148, !147, !"_RNvXNtCs6CpVowoi7NE_12tracing_core6parentNtB2_6ParentNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt: argument 0"}
!149 = distinct !{!149, !147, !"_RNvXNtCs6CpVowoi7NE_12tracing_core6parentNtB2_6ParentNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt: argument 1"}
!150 = !{!148}
!151 = !{i64 0, i64 3}
!152 = !{!148, !149}
!153 = distinct !{!153, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryECsglDVE6xSTcO_5fontc"}
!154 = distinct !{!154, !153, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryECsglDVE6xSTcO_5fontc: argument 0"}
!155 = distinct !{!155, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsglDVE6xSTcO_5fontc"}
!156 = distinct !{!156, !155, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsglDVE6xSTcO_5fontc: argument 0"}
!157 = distinct !{!157, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsglDVE6xSTcO_5fontc"}
!158 = distinct !{!158, !157, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsglDVE6xSTcO_5fontc: argument 0"}
!159 = distinct !{!159, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc"}
!160 = distinct !{!160, !159, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc: argument 0"}
!161 = distinct !{!161, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryECsglDVE6xSTcO_5fontc"}
!162 = distinct !{!162, !161, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryECsglDVE6xSTcO_5fontc: argument 0"}
!163 = distinct !{!163, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryECsglDVE6xSTcO_5fontc"}
!164 = distinct !{!164, !163, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5waker5EntryECsglDVE6xSTcO_5fontc: argument 0"}
!165 = distinct !{!165, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsglDVE6xSTcO_5fontc"}
!166 = distinct !{!166, !165, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context7ContextECsglDVE6xSTcO_5fontc: argument 0"}
!167 = distinct !{!167, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsglDVE6xSTcO_5fontc"}
!168 = distinct !{!168, !167, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerEECsglDVE6xSTcO_5fontc: argument 0"}
!169 = distinct !{!169, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc"}
!170 = distinct !{!170, !169, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc: argument 0"}
!171 = !{!154}
!172 = !{!156}
!173 = !{!158}
!174 = !{!160}
!175 = !{!160, !158, !156, !154, !162}
!176 = !{!160, !158, !156, !154}
!177 = !{!164}
!178 = !{!166}
!179 = !{!168}
!180 = !{!170}
!181 = !{!170, !168, !166, !164, !162}
!182 = !{!170, !168, !166, !164}
!183 = distinct !{!183, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_"}
!184 = distinct !{!184, !183, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_: argument 1"}
!185 = !{!184}
!186 = distinct !{!186, i1 true, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_"}
!187 = distinct !{!187, !186, !"_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAINtNtCsgCLBQfCopcP_18tracing_subscriber8registry7SpanRefINtNtNtBN_5layer7layered7LayeredINtNtNtBN_6filter13layer_filters8FilteredINtNtNtBN_3fmt9fmt_layer5LayerNtNtBL_7sharded8RegistryNtNtB2S_6format13DefaultFieldsNtCsglDVE6xSTcO_5fontc12LogFormatterENtNtB2d_3env9EnvFilterB3h_EB3h_EEj10_E6tripleB4b_: argument 1"}
!188 = !{!187}
!189 = distinct !{!189, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueECsglDVE6xSTcO_5fontc"}
!190 = distinct !{!190, !189, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueECsglDVE6xSTcO_5fontc: argument 0"}
!191 = distinct !{!191, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECsglDVE6xSTcO_5fontc"}
!192 = distinct !{!192, !191, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECsglDVE6xSTcO_5fontc: argument 0"}
!193 = distinct !{!193, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc"}
!194 = distinct !{!194, !193, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc: argument 0"}
!195 = distinct !{!195, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueECsglDVE6xSTcO_5fontc"}
!196 = distinct !{!196, !195, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueECsglDVE6xSTcO_5fontc: argument 0"}
!197 = distinct !{!197, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueECsglDVE6xSTcO_5fontc"}
!198 = distinct !{!198, !197, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueECsglDVE6xSTcO_5fontc: argument 0"}
!199 = distinct !{!199, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECsglDVE6xSTcO_5fontc"}
!200 = distinct !{!200, !199, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECsglDVE6xSTcO_5fontc: argument 0"}
!201 = distinct !{!201, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc"}
!202 = distinct !{!202, !201, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc: argument 0"}
!203 = !{!190}
!204 = !{!192}
!205 = !{!194}
!206 = !{!194, !192, !190, !196}
!207 = !{!194, !192, !190}
!208 = !{!198}
!209 = !{!200}
!210 = !{!202}
end_hunk_1
