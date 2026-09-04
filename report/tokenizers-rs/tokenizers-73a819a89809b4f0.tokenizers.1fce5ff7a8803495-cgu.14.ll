Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.14?download=true
inline.NumInlined: 1470
inline.NumDeleted: 851
begin_hunk_0_@_RINvNtNtCs5PtHgSLqj5O_10serde_json5value2de11visit_arrayNtNvXNvNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB15_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBZ_11SplitHelperB27_11deserialize9___VisitorEB19_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink115.i, ptr %i.ar, align 8, !alias.scope !998, !noalias !999
  store i64 2, ptr %0, align 8, !alias.scope !998, !noalias !999
  br label %.thread19

bb.q:                                             ; preds = %.invoke.i, %bb.t, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.k) #22
          to label %.body unwind label %bb.ac, !noalias !1009

bb.r:                                             ; preds = %.noexc.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !1024, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1024
  br label %bb.v

bb.s:                                             ; preds = %.noexc.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !22, !noalias !1024, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1024
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.ax = icmp eq i64 %i.o, 3
  br i1 %i.ax, label %.invoke.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i47.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i47.i: ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1028, !noalias !1029
  %.sroa.0.0.copyload2.i.i.i48.i = load i8, ptr %i.an, align 8, !noalias !1030 ; 2 uses
  %.not.i.i.i49.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i48.i, -1
  br i1 %.not.i.i.i49.i, label %.invoke.i, label %bb.t

bb.t:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i47.i
  %.sroa.7.0..sroa_idx3.i.i.i50.i = getelementptr inbounds nuw i8, ptr %i.r, i64 97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1031
  store i8 %.sroa.0.0.copyload2.i.i.i48.i, ptr %i.b, align 8, !noalias !1031
  %.sroa.7.0..sroa_idx.i.i.i51.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i51.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i50.i, i64 31, i1 false), !noalias !1031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1031
  invoke void @_RINvXs1_NtNtCsboAIIHEtPkY_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc54.i unwind label %bb.q, !noalias !1009

.noexc54.i:                                       ; preds = %bb.t
  %i.az = load i8, ptr %i.a, align 8, !range !14, !noalias !1031, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %.noexc54.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1031, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1031
  br label %bb.v

.invoke.i:                                        ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i47.i, %bb.s, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i42.i, %bb.n
  %i.bd = phi i64 [ 2, %bb.n ], [ 2, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i42.i ], [ 3, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i47.i ], [ 3, %bb.s ]
  %i.be = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.bd, ptr noundef nonnull @110, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
          to label %bb.v unwind label %bb.q, !noalias !1009

bb.v:                                             ; preds = %.invoke.i, %bb.u, %bb.r
  %.sink117.i = phi ptr [ %i.bc, %bb.u ], [ %i.be, %.invoke.i ], [ %i.au, %bb.r ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink117.i, ptr %i.bf, align 8, !alias.scope !998, !noalias !999
  store i64 2, ptr %0, align 8, !alias.scope !998, !noalias !999
  %i.bg = load i64, ptr %i.k, align 8, !range !5, !alias.scope !1032, !noalias !1009, !noundef !6
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEBH_.exit.i unwind label %bb.x, !noalias !1009

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx.i)
          to label %.body unwind label %bb.y, !noalias !1009

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1009
  unreachable

bb.z:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEBH_.exit.i unwind label %bb.aa, !noalias !1009

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx.i)
          to label %.body unwind label %bb.ab, !noalias !1009

bb.ab:                                            ; preds = %bb.aa
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1009
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEBH_.exit.i: ; preds = %bb.z, %bb.w
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.49.0..sroa_idx.i)
          to label %.thread19 unwind label %bb.ad

.thread19:                                        ; preds = %.noexc11, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1009
  br label %.sink.split

bb.ac:                                            ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1009
  unreachable

.body:                                            ; preds = %bb.ad, %bb.aa, %bb.x, %bb.q, %bb.f, %bb.af
  %.pn = phi { ptr, i32 } [ %i.br, %bb.af ], [ %i.bn, %bb.ad ], [ %i.as, %bb.q ], [ %i.ab, %bb.f ], [ %i.bi, %bb.x ], [ %i.bk, %bb.aa ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aj

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5split12SplitPatternEBH_.exit.i, %bb.p, %bb.l, %bb.k, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB1r_5SplitNtB6_11Deserialize11deserialize4TypeENtB6_15DeserializeSeed11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB1v_.exit.thread.i.i.i.i, %bb.e, %bb.d, %bb.ai
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %.noexc54.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !range !14, !noalias !1031, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !999
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bp, ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !998, !noalias !999
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.aw, ptr %.sroa.525.0..sroa_idx.i, align 1, !alias.scope !998, !noalias !999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1009
  %.pr.pre = load i64, ptr %0, align 8
  %i.bq = icmp eq i64 %.pr.pre, 2
  br i1 %i.bq, label %.sink.split, label %bb.ag

bb.af:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBJ_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize11SplitHelperEBN_(ptr noalias noundef align 8 dereferenceable(40) %i.l) #22
          to label %.body unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.val6 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.bs = icmp eq ptr %.val6, %.val
  br i1 %i.bs, label %.sink.split, label %bb.ah, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.bt = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.o, ptr noundef nonnull @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
          to label %bb.ai unwind label %bb.af

bb.ai:                                            ; preds = %bb.ah
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %i.bu, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtBJ_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize11SplitHelperEBN_(ptr noalias noundef align 8 dereferenceable(40) %i.l)
          to label %.sink.split unwind label %bb.ad

.sink.split:                                      ; preds = %bb.ag, %.thread19, %.thread, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.aj:                                            ; preds = %.body, %bb.af
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs5PtHgSLqj5O_10serde_json5value2de11visit_arrayNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB14_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBZ_15MetaspaceHelperB2e_11deserialize9___VisitorEB18_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 7 uses
  %i.p = icmp ult i64 %i.o, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6 ; 12 uses
  %i.s = load i64, ptr %1, align 8, !range !9, !noundef !6
  %.idx = shl nuw nsw i64 %i.o, 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 3 uses
  store ptr %i.r, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 8 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.u = icmp eq i64 %i.o, 0
  br i1 %i.u, label %.invoke, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1107, !noalias !1108
  %.sroa.0.0.copyload5.i.i.i.i = load i8, ptr %i.r, align 8, !noalias !1109 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload5.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %.invoke, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1110
  store i8 %.sroa.0.0.copyload5.i.i.i.i, ptr %i.k, align 8, !noalias !1110
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx6.i.i.i.i, i64 31, i1 false), !noalias !1110
  %i.w = invoke noundef align 8 ptr @_RINvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBa_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize1__NtB5_4TypeB1j_11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBe_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not4.i.i.i.i = icmp eq ptr %i.w, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1110
  br i1 %.not4.i.i.i.i, label %bb.c, label %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread

bb.c:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.x = icmp eq i64 %i.o, 1
  br i1 %i.x, label %.invoke, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i56.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i56.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1114, !noalias !1115
  %.sroa.0.0.copyload2.i.i.i.i = load i8, ptr %i.v, align 8, !noalias !1116 ; 2 uses
  %.not.i.i.i57.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i, -1
  br i1 %.not.i.i.i57.i, label %.invoke, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i56.i
  %.sroa.7.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1117
  store i8 %.sroa.0.0.copyload2.i.i.i.i, ptr %i.j, align 8, !noalias !1117
  %.sroa.7.0..sroa_idx.i.i.i58.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i58.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i.i, i64 31, i1 false), !noalias !1117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1117
  invoke void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_charNtNtBW_5impls11CharVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %.noexc7 unwind label %bb.t

.noexc7:                                          ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 8, !range !20, !noalias !1117, !noundef !6
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !1117, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1117
  br label %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread

bb.f:                                             ; preds = %.noexc7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !range !21, !noalias !1117, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1117
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %i.af = icmp eq i64 %i.o, 2
  br i1 %i.af, label %.invoke, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i61.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i61.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 3 uses
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1121, !noalias !1122
  %.sroa.0.0.copyload2.i.i.i62.i = load i8, ptr %i.y, align 8, !noalias !1123 ; 2 uses
  %.not.i.i.i63.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i62.i, -1
  br i1 %.not.i.i.i63.i, label %.invoke, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i61.i
  %.sroa.7.0..sroa_idx3.i.i.i64.i = getelementptr inbounds nuw i8, ptr %i.r, i64 65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1124
  store i8 %.sroa.0.0.copyload2.i.i.i62.i, ptr %i.h, align 8, !noalias !1124
  %.sroa.7.0..sroa_idx.i.i.i65.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i65.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i64.i, i64 31, i1 false), !noalias !1124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1124
  invoke void @_RINvXse_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionbENtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %.noexc9 unwind label %bb.t

.noexc9:                                          ; preds = %bb.g
  %i.ah = load i8, ptr %i.g, align 8, !range !14, !noalias !1124, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1124, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1124
  br label %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread

bb.i:                                             ; preds = %.noexc9
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.am = load i8, ptr %i.al, align 1, !range !18, !noalias !1124, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1124
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.an = icmp eq i64 %i.o, 3
  br i1 %i.an, label %bb.m, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i68.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i68.i: ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 3 uses
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1128, !noalias !1129
  %.sroa.0.0.copyload2.i.i.i69.i = load i8, ptr %i.ag, align 8, !noalias !1130 ; 2 uses
  %.not.i.i.i70.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i69.i, -1
  br i1 %.not.i.i.i70.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i68.i
  %.sroa.7.0..sroa_idx3.i.i.i71.i = getelementptr inbounds nuw i8, ptr %i.r, i64 97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1131
  store i8 %.sroa.0.0.copyload2.i.i.i69.i, ptr %i.f, align 8, !noalias !1131
  %.sroa.7.0..sroa_idx.i.i.i72.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i72.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i71.i, i64 31, i1 false), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1131
  invoke void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaces_1__NtB5_13PrependSchemeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc11 unwind label %bb.t

.noexc11:                                         ; preds = %bb.j
  %i.ap = load i8, ptr %i.e, align 8, !range !14, !noalias !1131, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1131, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1131
  br label %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread

bb.l:                                             ; preds = %.noexc11
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.au = load i8, ptr %i.at, align 1, !range !18, !noalias !1131, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1131
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i68.i, %bb.i
  %2 = phi ptr [ %i.ao, %bb.l ], [ %i.ao, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i68.i ], [ %i.ag, %bb.i ] ; 6 uses
  %3 = phi i8 [ %i.au, %bb.l ], [ 2, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i68.i ], [ 2, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.av = icmp eq ptr %2, %i.t
  br i1 %i.av, label %.invoke, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i75.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i75.i: ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1135, !noalias !1136
  %.sroa.0.0.copyload2.i.i.i76.i = load i8, ptr %2, align 8, !noalias !1137 ; 2 uses
  %.not.i.i.i77.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i76.i, -1
  br i1 %.not.i.i.i77.i, label %.invoke, label %bb.n

bb.n:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i75.i
  %.sroa.7.0..sroa_idx3.i.i.i78.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1138
  store i8 %.sroa.0.0.copyload2.i.i.i76.i, ptr %i.d, align 8, !noalias !1138
  %.sroa.7.0..sroa_idx.i.i.i79.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i79.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i78.i, i64 31, i1 false), !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1138
  invoke void @_RINvXse_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionbENtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc13 unwind label %bb.t

.noexc13:                                         ; preds = %bb.n
  %i.ax = load i8, ptr %i.c, align 8, !range !14, !noalias !1138, !noundef !6
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc13
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1138, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1138
  br label %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread

bb.p:                                             ; preds = %.noexc13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !18, !noalias !1138, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1138
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.bd = icmp eq ptr %i.aw, %i.t
  br i1 %i.bd, label %.invoke, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i83.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i83.i: ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1142, !noalias !1143
  %.sroa.0.0.copyload4.i.i.i.i = load i8, ptr %i.aw, align 8, !noalias !1144 ; 2 uses
  %.not.i.i.i84.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i, -1
  br i1 %.not.i.i.i84.i, label %.invoke, label %bb.q

bb.q:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i83.i
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1145
  store i8 %.sroa.0.0.copyload4.i.i.i.i, ptr %i.b, align 8, !noalias !1145
  %.sroa.7.0..sroa_idx.i.i.i85.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i85.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx5.i.i.i.i, i64 31, i1 false), !noalias !1145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1145
  invoke void @_RINvXse_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc14 unwind label %bb.t

.noexc14:                                         ; preds = %bb.q
  %i.bf = load i64, ptr %i.a, align 8, !range !23, !noalias !1145, !noundef !6 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1146 ; 2 uses
  br i1 %i.bg, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1145
  br label %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread

.invoke:                                          ; preds = %bb.p, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i83.i, %bb.m, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i75.i, %bb.f, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i61.i, %bb.c, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i56.i, %bb.a, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %4 = phi i64 [ 4, %bb.m ], [ 2, %bb.f ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i ], [ 1, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i56.i ], [ 2, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i61.i ], [ 4, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i75.i ], [ 5, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i.i83.i ], [ 5, %bb.p ]
  %i.bj = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %4, ptr noundef nonnull @112, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
          to label %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread unwind label %bb.t

bb.s:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.bm, %bb.u ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.z

bb.t:                                             ; preds = %.invoke, %bb.q, %bb.n, %bb.j, %bb.g, %bb.d, %bb.b, %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread: ; preds = %.invoke, %bb.r, %bb.o, %bb.h, %bb.e, %.noexc, %bb.k
  %.sink.i.sink = phi ptr [ %i.bj, %.invoke ], [ %i.ak, %bb.h ], [ %i.ba, %bb.o ], [ %i.as, %bb.k ], [ %i.bi, %bb.r ], [ %i.w, %.noexc ], [ %i.ac, %bb.e ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.sink, ptr %i.bl, align 8, !alias.scope !1102, !noalias !1103
  store i64 -2, ptr %0, align 8, !alias.scope !1102, !noalias !1103
  br label %bb.y

bb.u:                                             ; preds = %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.l) #22
          to label %bb.s unwind label %bb.z

bb.v:                                             ; preds = %.noexc14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1145
  store i64 %i.bf, ptr %0, align 8, !alias.scope !1102, !noalias !1103
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bi, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !1102, !noalias !1103
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !1102, !noalias !1103
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ae, ptr %.sroa.638.0..sroa_idx.i, align 8, !alias.scope !1102, !noalias !1103
  %.sroa.739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.am, ptr %.sroa.739.0..sroa_idx.i, align 4, !alias.scope !1102, !noalias !1103
  %.sroa.840.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %3, ptr %.sroa.840.0..sroa_idx.i, align 1, !alias.scope !1102, !noalias !1103
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.bc, ptr %.sroa.9.0..sroa_idx.i, align 2, !alias.scope !1102, !noalias !1103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.val6 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.bn = icmp eq ptr %.val6, %.val
  br i1 %i.bn, label %bb.y, label %bb.w, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.o, ptr noundef nonnull @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  store ptr %i.bo, ptr %.sroa.436.0..sroa_idx.i, align 8
  store i64 -2, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBI_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize15MetaspaceHelperEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %bb.y unwind label %bb.t

bb.y:                                             ; preds = %bb.v, %bb.x, %_RINvXs0_NvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBg_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes_1__NtBb_15MetaspaceHelperB1p_11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerEBk_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.z:                                             ; preds = %bb.s, %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCs5PtHgSLqj5O_10serde_json5value2de11visit_arrayNtNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtB12_6string9MustBeStrpENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize16MustBeStrVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 3 uses
  %i.d = icmp ult i64 %i.c, 288230376151711744
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !9, !noundef !6
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.c
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8
  %i.i = invoke noundef align 8 ptr @_RINvYNtNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtBd_6string9MustBeStrpENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize16MustBeStrVisitorNtB1h_7Visitor9visit_seqQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.val9 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.l = icmp eq ptr %.val9, %.val
  br i1 %i.l, label %bb.h, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.c, ptr noundef nonnull @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.sroa.0.1 = phi ptr [ %i.i, %bb.d ], [ null, %bb.f ], [ %i.m, %bb.g ]
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.1

bb.i:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15SeqDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs2JiOgHzbbc7_10tokenizers8decodersNtB3_14DecoderWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB5_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.414.i = alloca [39 x i8], align 1        ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.11.sroa.9.sroa.5 = alloca [24 x i8], align 8 ; 3 uses
  %i.k = alloca [64 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 15 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [40 x i8], align 8               ; 9 uses
  %.sroa.24.sroa.22.sroa.12 = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.8421 = alloca [7 x i8], align 1          ; 5 uses
  %.sroa.12426 = alloca [24 x i8], align 8        ; 5 uses
  %.sroa.6417.sroa.0 = alloca [7 x i8], align 1   ; 4 uses
  %.sroa.6417.sroa.7 = alloca [24 x i8], align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6417.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6417.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8421)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1158
  call void @_RINvXsr_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtB6_14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1), !noalias !1159
  %i.ac = load i8, ptr %i.h, align 8, !range !17, !noalias !1158, !noundef !6 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1158, !nonnull !6, !align !12, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1158
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i, i64 7, i1 false), !noalias !1158
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !1158
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx.i, i64 16, i1 false), !noalias !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1158
  store i8 %i.ac, ptr %i.i, align 8, !noalias !1158
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1158
  invoke void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers8decodersNtB3c_14DecoderWrapperNtB22_11Deserialize11deserialize1__NtB39_6TaggedB49_11deserialize9___VisitorEB3e_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.e unwind label %bb.d, !noalias !1158

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCs2JiOgHzbbc7_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB14_.exit39.i, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXNtCs2JiOgHzbbc7_10tokenizers8decodersNtB12_14DecoderWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize13DecoderHelperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB14_.exit25.i, %bb.h, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.i) #22
          to label %common.resume unwind label %bb.m, !noalias !1158

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr %i.f, align 8, !range !24, !noalias !1158, !noundef !6
  %i.ai = icmp eq i8 %i.ah, -1
  br i1 %i.ai, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1158, !nonnull !6, !align !12, !noundef !6
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !noalias !1158
  store i8 -2, ptr %i.g, align 8, !noalias !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1158
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !1158
  %.pr.i = load i8, ptr %i.g, align 8, !noalias !1158 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1158
end_hunk_0
