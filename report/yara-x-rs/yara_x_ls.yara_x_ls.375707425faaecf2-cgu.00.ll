Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.00?download=true
inline.NumInlined: 4342
inline.NumDeleted: 2233
begin_hunk_0_@_RINvNtNtCsbbTh99npV2h_10serde_json5value2de11visit_arrayNtNvXNvNtCs2w2nn1AeeqK_9lsp_types9code_lenss2_1__NtBZ_8CodeLensNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize9___VisitorECs4KzxGwe94yc_9yara_x_ls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.x:                                             ; preds = %.body, %bb.t
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbbTh99npV2h_10serde_json5value2de11visit_arrayNtNvXNvNtCs2w2nn1AeeqK_9lsp_types9code_lenss4_1__NtBZ_35CodeLensWorkspaceClientCapabilitiesNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize9___VisitorECs4KzxGwe94yc_9yara_x_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.f = icmp ult i64 %i.e, 128102389400760776
  tail call void @llvm.assume(i1 %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.i = load i64, ptr %1, align 8, !range !12, !noundef !5
  %.idx = mul nuw nsw i64 %i.e, 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  store ptr %i.h, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489)
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %bb.d, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6490, !noalias !6491
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !6492 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6493
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.b, align 8, !noalias !6493
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx2.i.i.i.i, i64 64, i1 false), !noalias !6493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6493
  invoke void @_RINvXse_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionbENtB8_11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.m = load i8, ptr %i.a, align 8, !range !18, !noalias !6493, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !6493, !nonnull !5, !align !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6493
  br label %.sink.split

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i, %bb.a
  %i.q = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsbbTh99npV2h_10serde_json5error5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error14invalid_lengthCs4KzxGwe94yc_9yara_x_ls(i64 noundef 0, ptr noundef nonnull @226, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.sink.split unwind label %bb.f

bb.e:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !19, !noalias !6493, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6493
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.u, ptr %i.v, align 1, !alias.scope !6485, !noalias !6486
  store i8 0, ptr %0, align 8, !alias.scope !6485, !noalias !6486
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.val6 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.w = icmp eq ptr %.val6, %.val
  br i1 %i.w, label %bb.j, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.x = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsbbTh99npV2h_10serde_json5error5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error14invalid_lengthCs4KzxGwe94yc_9yara_x_ls(i64 noundef %i.e, ptr noundef nonnull @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.sink.split unwind label %bb.g

.sink.split:                                      ; preds = %bb.i, %bb.c, %bb.d
  %.sink11 = phi ptr [ %i.q, %bb.d ], [ %i.p, %bb.c ], [ %i.x, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink11, ptr %i.y, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %storemerge.sink = phi i8 [ 0, %bb.h ], [ 1, %.sink.split ]
  store i8 %storemerge.sink, ptr %0, align 8
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbbTh99npV2h_10serde_json5value2de11visit_arrayNtNvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBZ_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize9___VisitorEB11_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.039.i = alloca [48 x i8], align 8        ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 14 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  %i.o = icmp ult i64 %i.n, 128102389400760776
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.r = load i64, ptr %1, align 8, !range !12, !noundef !5
  %.idx = mul nuw nsw i64 %i.n, 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 6 uses
  store ptr %i.q, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6545)
  %i.t = icmp eq i64 %i.n, 0
  br i1 %i.t, label %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 3 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6546, !noalias !6547
  %.sroa.0.0.copyload8.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !6548 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload8.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i
  %.sroa.7.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6549
  store i64 %.sroa.0.0.copyload8.i.i.i.i, ptr %i.h, align 8, !noalias !6549
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx9.i.i.i.i, i64 64, i1 false), !noalias !6549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6549
  invoke void @_RINvXNvNtCs4KzxGwe94yc_9yara_x_ls13configurations_1__NtB5_23FormattingConfigurationNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueEB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.b
  %i.v = load i8, ptr %i.g, align 8, !range !18, !noalias !6549, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit.thread, label %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i

_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i: ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.04.0.copyload.i.i.i.i = load i56, ptr %i.x, align 1, !noalias !6549 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6549
  %extract.t146.i = trunc i56 %.sroa.04.0.copyload.i.i.i.i to i8
  %extract147.i = lshr i56 %.sroa.04.0.copyload.i.i.i.i, 32
  %extract.t148.i = trunc i56 %extract147.i to i8
  %extract149.i = lshr i56 %.sroa.04.0.copyload.i.i.i.i, 40
  %extract.t150.i = trunc i56 %extract149.i to i8
  %extract151.i = lshr i56 %.sroa.04.0.copyload.i.i.i.i, 48
  %extract.t152.i = trunc nuw i56 %extract151.i to i8
  %2 = bitcast i56 %.sroa.04.0.copyload.i.i.i.i to <7 x i8>
  %3 = shufflevector <7 x i8> %2, <7 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = icmp eq i8 %extract.t146.i, 2
  br label %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.thread.i

_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit.thread: ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !6549, !nonnull !5, !align !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6549
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !6541, !noalias !6542
  store i64 -1, ptr %0, align 8, !alias.scope !6541, !noalias !6542
  br label %bb.ab

_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.thread.i: ; preds = %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i, %bb.a
  %i.ab = phi ptr [ %i.u, %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i ], [ %i.u, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i ], [ %i.q, %bb.a ] ; 6 uses
  %.sroa.6.197.off0.i = phi i1 [ %4, %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i ], [ true, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i ], [ true, %bb.a ] ; 4 uses
  %.sroa.6.197.off16.i = phi i8 [ %extract.t148.i, %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i ], [ 0, %bb.a ]
  %.sroa.6.197.off24.i = phi i8 [ %extract.t150.i, %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i ], [ 0, %bb.a ]
  %.sroa.6.197.off32.i = phi i8 [ %extract.t152.i, %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i ], [ 0, %bb.a ]
  %5 = phi <4 x i8> [ %3, %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.i ], [ <i8 2, i8 0, i8 0, i8 0>, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i ], [ <i8 2, i8 0, i8 0, i8 0>, %bb.a ]
  %..sroa.850.0.copyload.i.a = select i1 %.sroa.6.197.off0.i, i8 0, i8 %.sroa.6.197.off32.i
  %..sroa.749.0.copyload.i.a = select i1 %.sroa.6.197.off0.i, i8 0, i8 %.sroa.6.197.off24.i
  %..sroa.648.0.copyload.i = select i1 %.sroa.6.197.off0.i, i8 0, i8 %.sroa.6.197.off16.i
  %6 = insertelement <4 x i1> poison, i1 %.sroa.6.197.off0.i, i64 0
  %7 = shufflevector <4 x i1> %6, <4 x i1> poison, <4 x i32> zeroinitializer
  %8 = select <4 x i1> %7, <4 x i8> splat (i8 1), <4 x i8> %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6550
  call void @llvm.experimental.noalias.scope.decl(metadata !6551)
  call void @llvm.experimental.noalias.scope.decl(metadata !6552)
  call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  %i.ac = icmp eq ptr %i.ab, %i.s
  br i1 %i.ac, label %.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i68.i

.thread:                                          ; preds = %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.thread.i
  store i64 0, ptr %i.j, align 8, !noalias !6550
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !noalias !6550
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.ae, align 8, !noalias !6550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6550
  br label %bb.k

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i68.i: ; preds = %_RINvXs4_NtCsaeRQ2XwCvzm_10serde_core2deQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementNtNtCs4KzxGwe94yc_9yara_x_ls13configuration23FormattingConfigurationEB25_.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 3 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6554, !noalias !6555
  %.sroa.0.0.copyload2.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !6556 ; 2 uses
  %.not.i.i.i69.i = icmp eq i64 %.sroa.0.0.copyload2.i.i.i.i, -1
  br i1 %.not.i.i.i69.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i68.i
  %.sroa.7.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6557
  store i64 %.sroa.0.0.copyload2.i.i.i.i, ptr %i.f, align 8, !noalias !6557
  %.sroa.7.0..sroa_idx.i.i.i70.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i.i.i70.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx3.i.i.i.i, i64 64, i1 false), !noalias !6557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6557
  invoke void @_RINvXsh_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleENtB8_11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueEB1k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.f)
          to label %.noexc7 unwind label %bb.w

.noexc7:                                          ; preds = %bb.c
  %i.ag = load i64, ptr %i.e, align 8, !range !4, !noalias !6557, !noundef !5 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !6558 ; 2 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6557
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !6541, !noalias !6542
  store i64 -1, ptr %0, align 8, !alias.scope !6541, !noalias !6542
  br label %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit.thread20

bb.e:                                             ; preds = %.noexc7
  %.sroa.10.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx87.i, align 8, !noalias !6558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6557
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i68.i
  %.sink167.i = phi i64 [ %i.ag, %bb.e ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i68.i ]
  %.sink165.i = phi ptr [ %i.aj, %bb.e ], [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i68.i ]
  %.sink.i = phi i64 [ %.sroa.10.0.copyload.i, %bb.e ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i68.i ]
  store i64 %.sink167.i, ptr %i.j, align 8, !noalias !6550
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sink165.i, ptr %i.al, align 8, !noalias !6550
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sink.i, ptr %i.am, align 8, !noalias !6550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6550
  call void @llvm.experimental.noalias.scope.decl(metadata !6559)
  call void @llvm.experimental.noalias.scope.decl(metadata !6560)
  call void @llvm.experimental.noalias.scope.decl(metadata !6561)
  %i.an = icmp eq ptr %i.af, %i.s
  br i1 %i.an, label %bb.k, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i72.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i72.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 144 ; 3 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6562, !noalias !6563
  %.sroa.0.0.copyload2.i.i.i73.i = load i64, ptr %i.af, align 8, !noalias !6564 ; 2 uses
  %.not.i.i.i74.i = icmp eq i64 %.sroa.0.0.copyload2.i.i.i73.i, -1
  br i1 %.not.i.i.i74.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i72.i
  %.sroa.7.0..sroa_idx3.i.i.i75.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6565
  store i64 %.sroa.0.0.copyload2.i.i.i73.i, ptr %i.d, align 8, !noalias !6565
  %.sroa.7.0..sroa_idx.i.i.i76.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i.i.i76.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx3.i.i.i75.i, i64 64, i1 false), !noalias !6565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6565
  invoke void @_RINvXse_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB8_11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.d)
          to label %.noexc.i unwind label %bb.h, !noalias !6550

.noexc.i:                                         ; preds = %bb.g
  %i.ap = load i64, ptr %i.c, align 8, !range !6, !noalias !6565, !noundef !5 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, -2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !6566 ; 2 uses
  br i1 %i.aq, label %bb.i, label %bb.j

.body.i:                                          ; preds = %bb.q, %bb.n, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.bd, %bb.n ], [ %i.at, %bb.h ], [ %i.bh, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #18
          to label %.body unwind label %bb.v, !noalias !6550

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i, %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6565
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.au, align 8, !alias.scope !6541, !noalias !6542
  store i64 -1, ptr %0, align 8, !alias.scope !6541, !noalias !6542
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls.exit.i

bb.j:                                             ; preds = %.noexc.i
  %.sroa.1090.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.1090.0.copyload.i = load i64, ptr %.sroa.1090.0..sroa_idx.i, align 8, !noalias !6566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6565
  store i64 %i.ap, ptr %i.i, align 8, !noalias !6550
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.as, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !6550
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.1090.0.copyload.i, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !6550
  %i.av = icmp eq i64 %i.ap, -1
  br label %bb.l

bb.k:                                             ; preds = %.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i72.i, %bb.f
  %i.aw = phi ptr [ %i.ao, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i72.i ], [ %i.s, %bb.f ], [ %i.s, %.thread ]
  store i64 -1, ptr %i.i, align 8, !noalias !6550
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = phi i1 [ true, %bb.k ], [ %i.av, %bb.j ]
  %i.ay = phi ptr [ %i.aw, %bb.k ], [ %i.ao, %bb.j ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6567)
  call void @llvm.experimental.noalias.scope.decl(metadata !6568)
  call void @llvm.experimental.noalias.scope.decl(metadata !6569)
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i78.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i78.i: ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6570, !noalias !6571
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !6572 ; 2 uses
  %.not.i.i.i79.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i79.i, label %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit, label %bb.m

bb.m:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i78.i
  %.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6573
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.b, align 8, !noalias !6573
  %.sroa.7.0..sroa_idx.i.i.i80.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i.i.i80.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx2.i.i.i.i, i64 64, i1 false), !noalias !6573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6573
  invoke void @_RINvXs1_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc83.i unwind label %bb.n, !noalias !6550

.noexc83.i:                                       ; preds = %bb.m
  %i.bb = load i8, ptr %i.a, align 8, !range !18, !noalias !6573, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.o, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #18
          to label %.body.i unwind label %bb.v, !noalias !6550

bb.o:                                             ; preds = %.noexc83.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !6573, !nonnull !5, !align !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6573
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !alias.scope !6541, !noalias !6542
  store i64 -1, ptr %0, align 8, !alias.scope !6541, !noalias !6542
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i unwind label %bb.q, !noalias !6550

bb.q:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.r, !noalias !6550

bb.r:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !6550
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.h, !noalias !6550

bb.s:                                             ; preds = %.noexc83.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !range !18, !noalias !6573, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6573
  br label %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i.i, %bb.o, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6550
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleEEB1c_.exit.i unwind label %bb.t, !noalias !6550

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.u, !noalias !6550

bb.u:                                             ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !6550
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleEEB1c_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs4KzxGwe94yc_9yara_x_ls.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit.thread20 unwind label %bb.w

bb.v:                                             ; preds = %bb.n, %.body.i
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !6550
  unreachable

_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit.thread20: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleEEB1c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6550
  br label %bb.ab

.body:                                            ; preds = %bb.w, %bb.t, %.body.i, %bb.x
  %.pn = phi { ptr, i32 } [ %i.br, %bb.x ], [ %i.bo, %bb.w ], [ %i.bl, %bb.t ], [ %.pn.i, %.body.i ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.ac

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs4KzxGwe94yc_9yara_x_ls13configuration22MetadataValidationRuleEEB1c_.exit.i, %bb.c, %bb.b, %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit: ; preds = %bb.l, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i78.i, %bb.s
  %i.bp = phi i8 [ %i.bk, %bb.s ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i78.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.039.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.039.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !6550
  %.sroa.039.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.039.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.039.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !6550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.039.i, i64 48, i1 false), !noalias !6542
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i8> %8, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !6541, !noalias !6542
  %.sroa.944.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %..sroa.648.0.copyload.i, ptr %.sroa.944.0..sroa_idx.i, align 4, !alias.scope !6541, !noalias !6542
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %..sroa.749.0.copyload.i.a, ptr %.sroa.10.0..sroa_idx.i, align 1, !alias.scope !6541, !noalias !6542
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %..sroa.850.0.copyload.i.a, ptr %.sroa.11.0..sroa_idx.i, align 2, !alias.scope !6541, !noalias !6542
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 %i.bp, ptr %.sroa.12.0..sroa_idx.i, align 1, !alias.scope !6541, !noalias !6542
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.039.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6550
  %.pr.pre = load i64, ptr %0, align 8
  %i.bq = icmp eq i64 %.pr.pre, -1
  br i1 %i.bq, label %bb.ab, label %bb.y

bb.x:                                             ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4KzxGwe94yc_9yara_x_ls13configuration6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k) #18
          to label %.body unwind label %bb.ac

bb.y:                                             ; preds = %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.val6 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.bs = icmp eq ptr %.val6, %.val
  br i1 %i.bs, label %bb.ab, label %bb.z, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsbbTh99npV2h_10serde_json5error5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error14invalid_lengthCs4KzxGwe94yc_9yara_x_ls(i64 noundef %i.n, ptr noundef nonnull @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4KzxGwe94yc_9yara_x_ls13configuration6ConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k)
          to label %bb.ab unwind label %bb.w

bb.ab:                                            ; preds = %bb.y, %bb.aa, %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit, %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit.thread, %_RINvXs0_NvXNvNtCs4KzxGwe94yc_9yara_x_ls13configuration1__NtBb_6ConfigNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB17_7Visitor9visit_seqQNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerEBd_.exit.thread20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.ac:                                            ; preds = %.body, %bb.x
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbbTh99npV2h_10serde_json5value2de15SeqDeserializerECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbbTh99npV2h_10serde_json5value2de11visit_arrayNtNvXNvNtCs4KzxGwe94yc_9yara_x_ls13configurations0_1__NtBZ_22MetadataValidationRuleNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize9___VisitorEB11_(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.057.i = alloca [72 x i8], align 8        ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [104 x i8], align 8               ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  %i.r = icmp ult i64 %i.q, 128102389400760776
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.u = load i64, ptr %1, align 8, !range !12, !noundef !5
  %.idx = mul nuw nsw i64 %i.q, 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 4 uses
  store ptr %i.t, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 7 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.v, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6639)
  %i.w = icmp eq i64 %i.q, 0
  br i1 %i.w, label %bb.f, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 3 uses
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6640, !noalias !6641
  %.sroa.0.0.copyload2.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !6642 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i
  %.sroa.7.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6643
  store i64 %.sroa.0.0.copyload2.i.i.i.i, ptr %i.j, align 8, !noalias !6643
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx3.i.i.i.i, i64 64, i1 false), !noalias !6643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6643
  invoke void @_RINvXs6_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.j)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.b
  %i.y = load i64, ptr %i.i, align 8, !range !4, !noalias !6643, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !6644 ; 2 uses
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6643
  br label %.thread

bb.d:                                             ; preds = %.noexc
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !6644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6643
  store i64 %i.y, ptr %i.m, align 8, !noalias !6636
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ab, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !6636
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6636
  call void @llvm.experimental.noalias.scope.decl(metadata !6645)
  call void @llvm.experimental.noalias.scope.decl(metadata !6646)
  call void @llvm.experimental.noalias.scope.decl(metadata !6647)
  %i.ac = icmp eq i64 %i.q, 1
  br i1 %i.ac, label %bb.j, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i87.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i87.i: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 144 ; 3 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6648, !noalias !6649
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !6650 ; 2 uses
  %.not.i.i.i88.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i88.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i87.i
  %.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6651
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.h, align 8, !noalias !6651
  %.sroa.7.0..sroa_idx.i.i.i89.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i.i.i89.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx2.i.i.i.i, i64 64, i1 false), !noalias !6651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6651
  invoke void @_RINvXs1_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCsbbTh99npV2h_10serde_json5value5ValueECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
          to label %.noexc.i unwind label %bb.g, !noalias !6636

.noexc.i:                                         ; preds = %bb.e
  %i.ae = load i8, ptr %i.g, align 8, !range !18, !noalias !6651, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.f:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KzxGwe94yc_9yara_x_ls.exit.i.i.i.i, %bb.a
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsbbTh99npV2h_10serde_json5error5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error14invalid_lengthCs4KzxGwe94yc_9yara_x_ls(i64 noundef 0, ptr noundef nonnull @228, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
          to label %.thread unwind label %bb.ai

.thread:                                          ; preds = %bb.c, %bb.f
  %.sink.i = phi ptr [ %i.ab, %bb.c ], [ %i.ag, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ah, align 8, !alias.scope !6634, !noalias !6635
  store i64 -1, ptr %0, align 8, !alias.scope !6634, !noalias !6635
  br label %.sink.split

.body117.i:                                       ; preds = %bb.ac, %.body.i, %bb.g
  %.pn80.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ai, %bb.g ], [ %i.bu, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #18
          to label %.body unwind label %bb.ae, !noalias !6636

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls.exit.i116.i, %bb.o, %bb.k, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i

bb.h:                                             ; preds = %.noexc.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !6651, !nonnull !5, !align !16, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6651
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !6634, !noalias !6635
  store i64 -1, ptr %0, align 8, !alias.scope !6634, !noalias !6635
  br label %bb.af

bb.i:                                             ; preds = %.noexc.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.an = load i8, ptr %i.am, align 1, !range !18, !noalias !6651, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6651
  br label %bb.j

end_hunk_0
