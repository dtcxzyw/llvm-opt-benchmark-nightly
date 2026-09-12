Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB5_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB7_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.x, %bb.ac, %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bd = load i64, ptr %i.h, align 8, !range !9, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !21, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.be, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.bi = load i64, ptr %i.bh, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #25
          to label %bb.bs unwind label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bg, 3
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 1701869940, ptr %i.bj, align 1
  store i64 %i.bg, ptr %i.t, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bj, ptr %.sroa.4338.0..sroa_idx, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 4, ptr %.sroa.6339.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  invoke void @_RINvNtCs5PtHgSLqj5O_10serde_json5value8to_valueRNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtBR_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize8EnumTypeEBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bl)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.t) #28
          to label %.thread unwind label %bb.br

bb.aa:                                            ; preds = %bb.y
  %i.bn = load i8, ptr %i.s, align 8, !range !34, !noundef !5 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, -1
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !5, !align !7, !noundef !5
  %i.br = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bq)
          to label %bb.bo unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.692.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.692.0..sroa_idx93, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4341.0..sroa_idx, i64 7, i1 false)
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5342.0.copyload = load ptr, ptr %.sroa.5342.0..sroa_idx, align 8
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.897.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.897.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6343.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 %i.bn, ptr %i.r, align 8
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5342.0.copyload, ptr %.sroa.694.0..sroa_idx95, align 8
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bs = load i8, ptr %i.u, align 8, !range !34, !alias.scope !658, !noundef !5
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i8 5, ptr %i.q, align 8
  %i.bv = load i8, ptr %i.bl, align 8, !range !25, !noundef !5
  switch i8 %i.bv, label %default.unreachable437 [
    i8 0, label %bb.ag
    i8 1, label %.noexc394
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
    i8 5, label %bb.ak
    i8 6, label %bb.al
    i8 7, label %bb.am
    i8 8, label %bb.an
    i8 9, label %bb.ao
    i8 10, label %bb.ap
    i8 11, label %bb.aq
  ]

default.unreachable437:                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  unreachable

bb.af:                                            ; preds = %bb.bu
  unreachable

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bw = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4bertNtB6_16BertPreTokenizerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not388 = icmp eq ptr %i.bw, null
  br i1 %.not388, label %bb.as, label %bb.ar

.noexc394:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !659
  call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels2_1__NtB23_21ByteLevelDeserializerNtBW_11Deserialize11deserialize9___VisitorEB27_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bx = load i8, ptr %i.a, align 8, !range !4, !noalias !659, !noundef !5
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.au, label %bb.av

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters_1__NtB5_18CharDelimiterSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bz = load i32, ptr %i.p, align 8, !range !20, !noundef !5
  %i.ca = trunc nuw i32 %i.bz to i1
  br i1 %i.ca, label %bb.aw, label %bb.ax

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cb = load i64, ptr %i.o, align 8, !range !12, !noundef !5 ; 4 uses
  %i.cc = icmp eq i64 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %i.cc, label %bb.ay, label %bb.az

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cf = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not387 = icmp eq ptr %i.cf, null
  br i1 %.not387, label %bb.as, label %bb.ba

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences_1__NtB5_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cg = load i64, ptr %i.n, align 8, !range !12, !noundef !5 ; 4 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  br i1 %i.ch, label %bb.bb, label %bb.bc

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB6_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.ck = load i64, ptr %i.m, align 8, !range !28, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  br i1 %i.cl, label %bb.bd, label %bb.be

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations_1__NtB5_11PunctuationNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.co = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.bf, label %bb.bg

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cq = call noundef align 8 ptr @_RINvXsg_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_15WhitespaceSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not386 = icmp eq ptr %i.cq, null
  br i1 %.not386, label %bb.as, label %bb.bh

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers6digitss_1__NtB5_6DigitsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cr = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.bi, label %bb.bj

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ct = call noundef align 8 ptr @_RINvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB6_14UnicodeScriptsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBc_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %bb.as, label %bb.bk

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cu = call { i64, ptr } @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths_1__NtB5_11FixedLengthNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %i.cv = extractvalue { i64, ptr } %i.cu, 0
  %i.cw = extractvalue { i64, ptr } %i.cu, 1      ; 2 uses
  %i.cx = trunc nuw i64 %i.cv to i1
  br i1 %i.cx, label %bb.bl, label %bb.bm

bb.ar:                                            ; preds = %bb.ag
  %i.cy = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bw)
  br label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.an, %bb.aj, %bb.ag, %bb.bm, %bb.bj, %bb.bg, %bb.be, %bb.bc, %bb.az, %bb.ax, %bb.av
  %.sroa.42.sroa.11.0 = phi i64 [ undef, %bb.bm ], [ undef, %bb.av ], [ undef, %bb.ax ], [ undef, %bb.az ], [ undef, %bb.ag ], [ undef, %bb.bc ], [ %.sroa.5367.sroa.6.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.42.sroa.0.0 = phi ptr [ undef, %bb.bm ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.ce, %bb.az ], [ undef, %bb.ag ], [ %i.cj, %bb.bc ], [ %.sroa.5367.sroa.0.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.0 = phi i24 [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc62, %bb.bm ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext, %bb.av ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc66, %bb.az ], [ undef, %bb.ag ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc70, %bb.bc ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc58, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.28.sroa.0.sroa.0.0 = phi i8 [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc48, %bb.bm ], [ %.sroa.5.1.copyload, %bb.av ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc50, %bb.az ], [ undef, %bb.ag ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc52, %bb.bc ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc46, %bb.be ], [ %i.dw, %bb.bg ], [ undef, %bb.aj ], [ %i.ec, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.28.sroa.20.0 = phi i64 [ %i.ef, %bb.bm ], [ 0, %bb.av ], [ 0, %bb.ax ], [ %i.cb, %bb.az ], [ 0, %bb.ag ], [ %i.cg, %bb.bc ], [ %i.dr, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.aj ], [ 0, %bb.bj ], [ 0, %bb.an ], [ 0, %bb.ap ]
  %.sroa.09.0 = phi i64 [ 13, %bb.bm ], [ 3, %bb.av ], [ 4, %bb.ax ], [ 5, %bb.az ], [ 2, %bb.ag ], [ 7, %bb.bc ], [ %i.ck, %bb.be ], [ 9, %bb.bg ], [ 6, %bb.aj ], [ 11, %bb.bj ], [ 10, %bb.an ], [ 12, %bb.ap ]
  %i.cz = phi <2 x i64> [ undef, %bb.bm ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.dl, %bb.az ], [ undef, %bb.ag ], [ %i.do, %bb.bc ], [ %i.dq, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bn

bb.at:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.ar
  %.sink = phi ptr [ %i.ee, %bb.bl ], [ %i.ed, %bb.bk ], [ %i.ea, %bb.bi ], [ %i.dx, %bb.bh ], [ %i.du, %bb.bf ], [ %i.dp, %bb.bd ], [ %i.dn, %bb.bb ], [ %i.dm, %bb.ba ], [ %i.dk, %bb.ay ], [ %i.dh, %bb.aw ], [ %i.dd, %bb.au ], [ %i.cy, %bb.ar ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.da, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.au:                                            ; preds = %.noexc394
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !659, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  %i.dd = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dc)
  br label %bb.at

bb.av:                                            ; preds = %.noexc394
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.5.1.copyload = load i8, ptr %i.de, align 1, !noalias !660
  %.sroa.7.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.7.1.copyload = load i16, ptr %.sroa.7.1..sroa_idx, align 2, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext = zext i16 %.sroa.7.1.copyload to i24
  br label %bb.as

bb.aw:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !align !7, !noundef !5
  %i.dh = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.at

bb.ax:                                            ; preds = %bb.ah
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !range !27, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.dj to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift = lshr i32 %i.dj, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc = trunc nuw nsw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift to i24
  br label %bb.as

bb.ay:                                            ; preds = %bb.ai
  %i.dk = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.at

bb.az:                                            ; preds = %bb.ai
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dl = load <2 x i64>, ptr %.sroa.5354.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.28.sroa.0.0.extract.trunc27 = trunc i64 %i.cb to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc50 = trunc i64 %i.cb to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift65 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc27, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc66 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift65 to i24
  br label %bb.as

bb.ba:                                            ; preds = %bb.aj
  %i.dm = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cf)
  br label %bb.at

bb.bb:                                            ; preds = %bb.ak
  %i.dn = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.at

bb.bc:                                            ; preds = %bb.ak
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5361.0.copyload = load i64, ptr %.sroa.5361.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.28.sroa.0.0.extract.trunc29 = trunc i64 %i.cg to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc52 = trunc i64 %i.cg to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift69 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc29, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc70 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift69 to i24
  %i.do = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5361.0.copyload, i64 0
  br label %bb.as

bb.bd:                                            ; preds = %bb.al
  %i.dp = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.at

bb.be:                                            ; preds = %bb.al
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5367.sroa.0.0.copyload = load ptr, ptr %.sroa.5367.0..sroa_idx, align 8
  %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dq = load <2 x i64>, ptr %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5367.sroa.6.0.copyload = load i64, ptr %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dr = ptrtoint ptr %i.cn to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc = trunc i64 %i.dr to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc46 = trunc i64 %i.dr to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift57 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc58 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift57 to i24
  br label %bb.as

bb.bf:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !5, !align !7, !noundef !5
  %i.du = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.bg:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as

bb.bh:                                            ; preds = %bb.an
  %i.dx = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cq)
  br label %bb.at

bb.bi:                                            ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ea = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.bj:                                            ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.as

bb.bk:                                            ; preds = %bb.ap
  %i.ed = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ct)
  br label %bb.at

bb.bl:                                            ; preds = %bb.aq
  %i.ee = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cw)
  br label %bb.at

bb.bm:                                            ; preds = %bb.aq
  %i.ef = ptrtoint ptr %i.cw to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc25 = trunc i64 %i.ef to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc48 = trunc i64 %i.ef to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift61 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc25, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc62 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift61 to i24
  br label %bb.as

bb.bn:                                            ; preds = %bb.cg, %bb.as
  %.sroa.42.sroa.11.1 = phi i64 [ %.sroa.42.sroa.11.2, %bb.cg ], [ %.sroa.42.sroa.11.0, %bb.as ]
  %.sroa.42.sroa.0.1 = phi ptr [ %.sroa.42.sroa.0.2, %bb.cg ], [ %.sroa.42.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.1 = phi i24 [ %.sroa.28.sroa.0.sroa.20.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.0.1 = phi i8 [ %.sroa.28.sroa.0.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.20.1 = phi i64 [ %.sroa.28.sroa.20.2, %bb.cg ], [ %.sroa.28.sroa.20.0, %bb.as ]
  %.sroa.09.1 = phi i64 [ %.sroa.09.2, %bb.cg ], [ %.sroa.09.0, %bb.as ]
  %i.eg = phi <2 x i64> [ %i.eu, %bb.cg ], [ %i.cz, %bb.as ]
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.28.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.sroa.0.sroa.20.0.insert.ext = zext i24 %.sroa.28.sroa.0.sroa.20.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.20.0.insert.shift = shl nuw nsw i64 %.sroa.28.sroa.0.sroa.20.0.insert.ext, 8
  %.sroa.28.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.28.sroa.0.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.0.sroa.20.0.insert.shift, %.sroa.28.sroa.0.sroa.0.0.insert.ext
  %.sroa.28.sroa.20.0.insert.ext = and i64 %.sroa.28.sroa.20.1, -4294967296
  %.sroa.28.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.20.0.insert.ext, %.sroa.28.sroa.0.sroa.0.0.insert.insert
  store i64 %.sroa.28.sroa.0.0.insert.insert, ptr %.sroa.28.0..sroa_idx12, align 8
  %.sroa.42.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.42.sroa.0.1, ptr %.sroa.42.0..sroa_idx19, align 8
  %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.eg, ptr %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.42.sroa.11.1, ptr %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  br label %bb.ch

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.t, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ch

bb.bo:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.eh, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.br:                                            ; preds = %.thread, %bb.z
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bs:                                            ; preds = %bb.x
  unreachable

.thread:                                          ; preds = %bb.bp, %bb.z, %bb.v
  %.pn414 = phi { ptr, i32 } [ %i.bm, %bb.z ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %i.ei, %bb.bp ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.br

bb.bt:                                            ; preds = %bb.r
  %i.el = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %i.em, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

bb.bu:                                            ; preds = %bb.r
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5376.sroa.0.0.copyload = load ptr, ptr %.sroa.5376.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.en = load <2 x i64>, ptr %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.5376.sroa.6.0.copyload = load i64, ptr %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eo = ptrtoint ptr %i.aw to i64               ; 11 uses
  %.sroa.3.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.eo to i8 ; 8 uses
  %i.ep = icmp ne i64 %i.at, 8
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nsw i64 %i.at, -2
  %i.er = icmp samesign ugt i64 %i.at, 1
  %i.es = select i1 %i.er, i64 %i.eq, i64 6       ; 2 uses
  switch i64 %i.es, label %bb.af [
    i64 0, label %bb.cg
    i64 1, label %bb.bv
    i64 2, label %bb.bw
    i64 3, label %bb.bx
    i64 4, label %bb.by
    i64 5, label %bb.bz
    i64 6, label %bb.ca
    i64 7, label %bb.cb
    i64 8, label %bb.cc
    i64 9, label %bb.cd
    i64 10, label %bb.ce
    i64 11, label %bb.cf
  ]

bb.bv:                                            ; preds = %bb.bu
  %2 = trunc i64 %i.eo to i24
  %3 = lshr i24 %2, 8
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift55 = lshr i32 %.sroa.3.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc56 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift55 to i24
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc28 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift67 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc28, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc68 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift67 to i24
  br label %bb.cg

bb.by:                                            ; preds = %bb.bu
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc30 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift71 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc30, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc72 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift71 to i24
  %i.et = insertelement <2 x i64> %i.en, i64 undef, i64 1
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc24 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift59 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc24, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc60 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift59 to i24
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bu
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc26 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift63 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc26, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc64 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift63 to i24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bu, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sroa.42.sroa.11.2 = phi i64 [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ %.sroa.5376.sroa.6.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.42.sroa.0.2 = phi ptr [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bx ], [ undef, %bb.by ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bz ], [ %.sroa.5376.sroa.0.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.2 = phi i24 [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc64, %bb.cf ], [ %3, %bb.bv ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc56, %bb.bw ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc68, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc72, %bb.bz ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc60, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.0.2 = phi i8 [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cf ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bv ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bw ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bx ], [ undef, %bb.by ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bz ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.ca ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cb ], [ undef, %bb.cc ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.20.2 = phi i64 [ %i.eo, %bb.cf ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.eo, %bb.bx ], [ 0, %bb.by ], [ %i.eo, %bb.bz ], [ %i.eo, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.cd ], [ 0, %bb.ce ], [ %i.es, %bb.bu ]
  %.sroa.09.2 = phi i64 [ 13, %bb.cf ], [ 3, %bb.bv ], [ 4, %bb.bw ], [ 5, %bb.bx ], [ 6, %bb.by ], [ 7, %bb.bz ], [ %i.at, %bb.ca ], [ 9, %bb.cb ], [ 10, %bb.cc ], [ 11, %bb.cd ], [ 12, %bb.ce ], [ 2, %bb.bu ]
  %i.eu = phi <2 x i64> [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %i.en, %bb.bx ], [ undef, %bb.by ], [ %i.et, %bb.bz ], [ %i.en, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bn

bb.ch:                                            ; preds = %bb.p, %bb.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB5_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.414.i = alloca [39 x i8], align 1        ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 17 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.9401 = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.14 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9401)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !669
  call void @_RINvYQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !670
  %i.z = load i8, ptr %i.f, align 8, !range !26, !noalias !669, !noundef !5 ; 2 uses
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !669, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !669
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i, i64 7, i1 false), !noalias !669
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !669
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx.i, i64 16, i1 false), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !669
  store i8 %i.z, ptr %i.g, align 8, !noalias !669
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !669
  invoke void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB3e_19PreTokenizerWrapperNtB22_11Deserialize11deserialize1__NtB39_6TaggedB4n_11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.d, !noalias !670

bb.d:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g) #28
          to label %common.resume unwind label %bb.o, !noalias !670

bb.e:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.d, align 8, !range !34, !noalias !669, !noundef !5
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !669, !nonnull !5, !align !7, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !669
  store i8 -2, ptr %i.e, align 8, !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !669
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !669
  %.pr.i = load i8, ptr %i.e, align 8, !noalias !669 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !669
  %i.aj = icmp eq i8 %.pr.i, -2
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.9401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401.0..sroa_idx, i64 7, i1 false), !noalias !671
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !671
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, i64 24, i1 false), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !669
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %.thread.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB14_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize18PreTokenizerHelperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB16_(ptr noalias noundef align 8 dereferenceable(40) %i.e)
          to label %bb.i unwind label %bb.d, !noalias !670

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !669
  invoke void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB1n_5value2deNtB39_5ValueNtB22_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.j unwind label %bb.d, !noalias !670

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.b, align 8, !range !34, !noalias !669, !noundef !5
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414.i)
  %.sroa.414.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.414.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.414.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !669
  store i8 -1, ptr %i.c, align 8, !noalias !669
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.i, i64 39, i1 false), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i, i64 7, i1 false), !noalias !671
  %.sroa.10.0..sroa_idx403 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.10.0.copyload404 = load ptr, ptr %.sroa.10.0..sroa_idx403, align 8, !noalias !671
  %.sroa.14.0..sroa_idx405 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx405, i64 24, i1 false), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !669
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !669, !nonnull !5, !align !7, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !noalias !669
  store i8 -2, ptr %i.c, align 8, !noalias !669
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB14_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize18PreTokenizerHelperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB16_(ptr noalias noundef align 8 dereferenceable(40) %i.c)
          to label %bb.m unwind label %bb.d, !noalias !670

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !669
  %i.ap = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 66)
          to label %bb.n unwind label %bb.d, !noalias !670

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !670
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !670
  unreachable

common.resume:                                    ; preds = %.thread, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn414, %.thread ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b, %bb.n
  %.sroa.10.1.ph = phi ptr [ %i.ap, %bb.n ], [ %i.ac, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9401)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1.ph, ptr %i.ar, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ch

bb.q:                                             ; preds = %bb.k, %bb.g
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload404, %bb.k ], [ %.sroa.10.0.copyload, %bb.g ] ; 3 uses
  %i.as = phi i8 [ -1, %bb.k ], [ %.pr.i, %bb.g ] ; 3 uses
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9401)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.not427 = icmp eq i8 %i.as, -1
end_hunk_0
begin_hunk_1_@_RINvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB5_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEEB7_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.x, %bb.ac, %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bd = load i64, ptr %i.h, align 8, !range !9, !noundef !5
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !21, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.be, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.bi = load i64, ptr %i.bh, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #25
          to label %bb.bs unwind label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bg, 3
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 1701869940, ptr %i.bj, align 1
  store i64 %i.bg, ptr %i.t, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bj, ptr %.sroa.4338.0..sroa_idx, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 4, ptr %.sroa.6339.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  invoke void @_RINvNtCs5PtHgSLqj5O_10serde_json5value8to_valueRNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtBR_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize8EnumTypeEBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bl)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.t) #28
          to label %.thread unwind label %bb.br

bb.aa:                                            ; preds = %bb.y
  %i.bn = load i8, ptr %i.s, align 8, !range !34, !noundef !5 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, -1
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !5, !align !7, !noundef !5
  %i.br = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bq)
          to label %bb.bo unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.692.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.692.0..sroa_idx93, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4341.0..sroa_idx, i64 7, i1 false)
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5342.0.copyload = load ptr, ptr %.sroa.5342.0..sroa_idx, align 8
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.897.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.897.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6343.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 %i.bn, ptr %i.r, align 8
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5342.0.copyload, ptr %.sroa.694.0..sroa_idx95, align 8
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bs = load i8, ptr %i.u, align 8, !range !34, !alias.scope !672, !noundef !5
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i8 5, ptr %i.q, align 8
  %i.bv = load i8, ptr %i.bl, align 8, !range !25, !noundef !5
  switch i8 %i.bv, label %default.unreachable437 [
    i8 0, label %bb.ag
    i8 1, label %.noexc394
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
    i8 5, label %bb.ak
    i8 6, label %bb.al
    i8 7, label %bb.am
    i8 8, label %bb.an
    i8 9, label %bb.ao
    i8 10, label %bb.ap
    i8 11, label %bb.aq
  ]

default.unreachable437:                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  unreachable

bb.af:                                            ; preds = %bb.bu
  unreachable

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bw = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4bertNtB6_16BertPreTokenizerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not388 = icmp eq ptr %i.bw, null
  br i1 %.not388, label %bb.as, label %bb.ar

.noexc394:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !673
  call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels2_1__NtB23_21ByteLevelDeserializerNtBW_11Deserialize11deserialize9___VisitorEB27_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bx = load i8, ptr %i.a, align 8, !range !4, !noalias !673, !noundef !5
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.au, label %bb.av

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters_1__NtB5_18CharDelimiterSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bz = load i32, ptr %i.p, align 8, !range !20, !noundef !5
  %i.ca = trunc nuw i32 %i.bz to i1
  br i1 %i.ca, label %bb.aw, label %bb.ax

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cb = load i64, ptr %i.o, align 8, !range !12, !noundef !5 ; 4 uses
  %i.cc = icmp eq i64 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %i.cc, label %bb.ay, label %bb.az

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cf = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not387 = icmp eq ptr %i.cf, null
  br i1 %.not387, label %bb.as, label %bb.ba

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences_1__NtB5_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cg = load i64, ptr %i.n, align 8, !range !12, !noundef !5 ; 4 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  br i1 %i.ch, label %bb.bb, label %bb.bc

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB6_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.ck = load i64, ptr %i.m, align 8, !range !28, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  br i1 %i.cl, label %bb.bd, label %bb.be

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations_1__NtB5_11PunctuationNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.co = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.bf, label %bb.bg

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cq = call noundef align 8 ptr @_RINvXsg_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_15WhitespaceSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not386 = icmp eq ptr %i.cq, null
  br i1 %.not386, label %bb.as, label %bb.bh

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers6digitss_1__NtB5_6DigitsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cr = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.bi, label %bb.bj

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ct = call noundef align 8 ptr @_RINvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB6_14UnicodeScriptsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBc_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %bb.as, label %bb.bk

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cu = call { i64, ptr } @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths_1__NtB5_11FixedLengthNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %i.cv = extractvalue { i64, ptr } %i.cu, 0
  %i.cw = extractvalue { i64, ptr } %i.cu, 1      ; 2 uses
  %i.cx = trunc nuw i64 %i.cv to i1
  br i1 %i.cx, label %bb.bl, label %bb.bm

bb.ar:                                            ; preds = %bb.ag
  %i.cy = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bw)
  br label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.an, %bb.aj, %bb.ag, %bb.bm, %bb.bj, %bb.bg, %bb.be, %bb.bc, %bb.az, %bb.ax, %bb.av
  %.sroa.42.sroa.11.0 = phi i64 [ undef, %bb.bm ], [ undef, %bb.av ], [ undef, %bb.ax ], [ undef, %bb.az ], [ undef, %bb.ag ], [ undef, %bb.bc ], [ %.sroa.5367.sroa.6.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.42.sroa.0.0 = phi ptr [ undef, %bb.bm ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.ce, %bb.az ], [ undef, %bb.ag ], [ %i.cj, %bb.bc ], [ %.sroa.5367.sroa.0.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.0 = phi i24 [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc62, %bb.bm ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext, %bb.av ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc66, %bb.az ], [ undef, %bb.ag ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc70, %bb.bc ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc58, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.28.sroa.0.sroa.0.0 = phi i8 [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc48, %bb.bm ], [ %.sroa.5.1.copyload, %bb.av ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc50, %bb.az ], [ undef, %bb.ag ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc52, %bb.bc ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc46, %bb.be ], [ %i.dw, %bb.bg ], [ undef, %bb.aj ], [ %i.ec, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  %.sroa.28.sroa.20.0 = phi i64 [ %i.ef, %bb.bm ], [ 0, %bb.av ], [ 0, %bb.ax ], [ %i.cb, %bb.az ], [ 0, %bb.ag ], [ %i.cg, %bb.bc ], [ %i.dr, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.aj ], [ 0, %bb.bj ], [ 0, %bb.an ], [ 0, %bb.ap ]
  %.sroa.09.0 = phi i64 [ 13, %bb.bm ], [ 3, %bb.av ], [ 4, %bb.ax ], [ 5, %bb.az ], [ 2, %bb.ag ], [ 7, %bb.bc ], [ %i.ck, %bb.be ], [ 9, %bb.bg ], [ 6, %bb.aj ], [ 11, %bb.bj ], [ 10, %bb.an ], [ 12, %bb.ap ]
  %i.cz = phi <2 x i64> [ undef, %bb.bm ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.dl, %bb.az ], [ undef, %bb.ag ], [ %i.do, %bb.bc ], [ %i.dq, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.aj ], [ undef, %bb.bj ], [ undef, %bb.an ], [ undef, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bn

bb.at:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.ar
  %.sink = phi ptr [ %i.ee, %bb.bl ], [ %i.ed, %bb.bk ], [ %i.ea, %bb.bi ], [ %i.dx, %bb.bh ], [ %i.du, %bb.bf ], [ %i.dp, %bb.bd ], [ %i.dn, %bb.bb ], [ %i.dm, %bb.ba ], [ %i.dk, %bb.ay ], [ %i.dh, %bb.aw ], [ %i.dd, %bb.au ], [ %i.cy, %bb.ar ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.da, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.au:                                            ; preds = %.noexc394
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !673, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !673
  %i.dd = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dc)
  br label %bb.at

bb.av:                                            ; preds = %.noexc394
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.5.1.copyload = load i8, ptr %i.de, align 1, !noalias !674
  %.sroa.7.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.7.1.copyload = load i16, ptr %.sroa.7.1..sroa_idx, align 2, !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !673
  %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext = zext i16 %.sroa.7.1.copyload to i24
  br label %bb.as

bb.aw:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !align !7, !noundef !5
  %i.dh = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.at

bb.ax:                                            ; preds = %bb.ah
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !range !27, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.dj to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift = lshr i32 %i.dj, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc = trunc nuw nsw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift to i24
  br label %bb.as

bb.ay:                                            ; preds = %bb.ai
  %i.dk = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.at

bb.az:                                            ; preds = %bb.ai
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dl = load <2 x i64>, ptr %.sroa.5354.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.28.sroa.0.0.extract.trunc27 = trunc i64 %i.cb to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc50 = trunc i64 %i.cb to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift65 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc27, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc66 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift65 to i24
  br label %bb.as

bb.ba:                                            ; preds = %bb.aj
  %i.dm = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cf)
  br label %bb.at

bb.bb:                                            ; preds = %bb.ak
  %i.dn = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.at

bb.bc:                                            ; preds = %bb.ak
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5361.0.copyload = load i64, ptr %.sroa.5361.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.28.sroa.0.0.extract.trunc29 = trunc i64 %i.cg to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc52 = trunc i64 %i.cg to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift69 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc29, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc70 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift69 to i24
  %i.do = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5361.0.copyload, i64 0
  br label %bb.as

bb.bd:                                            ; preds = %bb.al
  %i.dp = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.at

bb.be:                                            ; preds = %bb.al
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5367.sroa.0.0.copyload = load ptr, ptr %.sroa.5367.0..sroa_idx, align 8
  %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dq = load <2 x i64>, ptr %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5367.sroa.6.0.copyload = load i64, ptr %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dr = ptrtoint ptr %i.cn to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc = trunc i64 %i.dr to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc46 = trunc i64 %i.dr to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift57 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc58 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift57 to i24
  br label %bb.as

bb.bf:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !5, !align !7, !noundef !5
  %i.du = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.bg:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !range !29, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as

bb.bh:                                            ; preds = %bb.an
  %i.dx = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cq)
  br label %bb.at

bb.bi:                                            ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ea = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.bj:                                            ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !range !4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.as

bb.bk:                                            ; preds = %bb.ap
  %i.ed = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ct)
  br label %bb.at

bb.bl:                                            ; preds = %bb.aq
  %i.ee = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cw)
  br label %bb.at

bb.bm:                                            ; preds = %bb.aq
  %i.ef = ptrtoint ptr %i.cw to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc25 = trunc i64 %i.ef to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc48 = trunc i64 %i.ef to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift61 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc25, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc62 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift61 to i24
  br label %bb.as

bb.bn:                                            ; preds = %bb.cg, %bb.as
  %.sroa.42.sroa.11.1 = phi i64 [ %.sroa.42.sroa.11.2, %bb.cg ], [ %.sroa.42.sroa.11.0, %bb.as ]
  %.sroa.42.sroa.0.1 = phi ptr [ %.sroa.42.sroa.0.2, %bb.cg ], [ %.sroa.42.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.1 = phi i24 [ %.sroa.28.sroa.0.sroa.20.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.0.1 = phi i8 [ %.sroa.28.sroa.0.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.20.1 = phi i64 [ %.sroa.28.sroa.20.2, %bb.cg ], [ %.sroa.28.sroa.20.0, %bb.as ]
  %.sroa.09.1 = phi i64 [ %.sroa.09.2, %bb.cg ], [ %.sroa.09.0, %bb.as ]
  %i.eg = phi <2 x i64> [ %i.eu, %bb.cg ], [ %i.cz, %bb.as ]
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.28.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.sroa.0.sroa.20.0.insert.ext = zext i24 %.sroa.28.sroa.0.sroa.20.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.20.0.insert.shift = shl nuw nsw i64 %.sroa.28.sroa.0.sroa.20.0.insert.ext, 8
  %.sroa.28.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.28.sroa.0.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.0.sroa.20.0.insert.shift, %.sroa.28.sroa.0.sroa.0.0.insert.ext
  %.sroa.28.sroa.20.0.insert.ext = and i64 %.sroa.28.sroa.20.1, -4294967296
  %.sroa.28.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.20.0.insert.ext, %.sroa.28.sroa.0.sroa.0.0.insert.insert
  store i64 %.sroa.28.sroa.0.0.insert.insert, ptr %.sroa.28.0..sroa_idx12, align 8
  %.sroa.42.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.42.sroa.0.1, ptr %.sroa.42.0..sroa_idx19, align 8
  %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.eg, ptr %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.42.sroa.11.1, ptr %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  br label %bb.ch

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.t, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ch

bb.bo:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.eh, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.br:                                            ; preds = %.thread, %bb.z
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bs:                                            ; preds = %bb.x
  unreachable

.thread:                                          ; preds = %bb.bp, %bb.z, %bb.v
  %.pn414 = phi { ptr, i32 } [ %i.bm, %bb.z ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %i.ei, %bb.bp ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.br

bb.bt:                                            ; preds = %bb.r
  %i.el = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %i.em, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

bb.bu:                                            ; preds = %bb.r
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5376.sroa.0.0.copyload = load ptr, ptr %.sroa.5376.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.en = load <2 x i64>, ptr %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.5376.sroa.6.0.copyload = load i64, ptr %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eo = ptrtoint ptr %i.aw to i64               ; 11 uses
  %.sroa.3.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.eo to i8 ; 8 uses
  %i.ep = icmp ne i64 %i.at, 8
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nsw i64 %i.at, -2
  %i.er = icmp samesign ugt i64 %i.at, 1
  %i.es = select i1 %i.er, i64 %i.eq, i64 6       ; 2 uses
  switch i64 %i.es, label %bb.af [
    i64 0, label %bb.cg
    i64 1, label %bb.bv
    i64 2, label %bb.bw
    i64 3, label %bb.bx
    i64 4, label %bb.by
    i64 5, label %bb.bz
    i64 6, label %bb.ca
    i64 7, label %bb.cb
    i64 8, label %bb.cc
    i64 9, label %bb.cd
    i64 10, label %bb.ce
    i64 11, label %bb.cf
  ]

bb.bv:                                            ; preds = %bb.bu
  %2 = trunc i64 %i.eo to i24
  %3 = lshr i24 %2, 8
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift55 = lshr i32 %.sroa.3.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc56 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift55 to i24
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc28 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift67 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc28, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc68 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift67 to i24
  br label %bb.cg

bb.by:                                            ; preds = %bb.bu
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc30 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift71 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc30, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc72 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift71 to i24
  %i.et = insertelement <2 x i64> %i.en, i64 undef, i64 1
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc24 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift59 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc24, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc60 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift59 to i24
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bu
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc26 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift63 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc26, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc64 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift63 to i24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bu, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sroa.42.sroa.11.2 = phi i64 [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ %.sroa.5376.sroa.6.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.42.sroa.0.2 = phi ptr [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bx ], [ undef, %bb.by ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bz ], [ %.sroa.5376.sroa.0.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.2 = phi i24 [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc64, %bb.cf ], [ %3, %bb.bv ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc56, %bb.bw ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc68, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc72, %bb.bz ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc60, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.0.2 = phi i8 [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cf ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bv ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bw ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bx ], [ undef, %bb.by ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bz ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.ca ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cb ], [ undef, %bb.cc ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.20.2 = phi i64 [ %i.eo, %bb.cf ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.eo, %bb.bx ], [ 0, %bb.by ], [ %i.eo, %bb.bz ], [ %i.eo, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.cd ], [ 0, %bb.ce ], [ %i.es, %bb.bu ]
  %.sroa.09.2 = phi i64 [ 13, %bb.cf ], [ 3, %bb.bv ], [ 4, %bb.bw ], [ 5, %bb.bx ], [ 6, %bb.by ], [ 7, %bb.bz ], [ %i.at, %bb.ca ], [ 9, %bb.cb ], [ 10, %bb.cc ], [ 11, %bb.cd ], [ 12, %bb.ce ], [ 2, %bb.bu ]
  %i.eu = phi <2 x i64> [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %i.en, %bb.bx ], [ undef, %bb.by ], [ %i.et, %bb.bz ], [ %i.en, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bn

bb.ch:                                            ; preds = %bb.p, %bb.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB5_16OrderedVocabIterNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtCs5PtHgSLqj5O_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %i.m, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.q

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4ItermNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.p = invoke noundef nonnull align 4 ptr @_RINvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB6_4ItermNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldRmNCINvXsJ_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB2z_4KeysmBM_EB1o_4foldB2o_NCINvNvB1o_6max_by4foldB2o_NvYB2o_NtNtB1w_3cmp3Ord3cmpE0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o, ptr noalias noundef nonnull %i.a)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = load i32, ptr %i.p, align 4, !noundef !5
  %i.r = add i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.r, ptr %i.t, align 4
  store ptr %i.i, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.u, align 8
  %i.v = invoke noundef align 8 ptr @_RINvYQINtNtCs5PtHgSLqj5O_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringmINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2S_3ops5range5RangemENCINvXs_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB4m_16OrderedVocabIterNtB1r_9Serialize9serializeB3_E0EEB4o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.h unwind label %bb.c

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.w = invoke noundef align 8 ptr @_RINvYQINtNtCs5PtHgSLqj5O_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_mapRemINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources5empty5EmptyTB2m_mEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.c

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.0 = phi ptr [ %i.v, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.x = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.y = icmp ult i64 %i.x, 2305843009213693952
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.p, %bb.n, %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %.sroa.0.0

bb.m:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr %.sroa.0.0) #28
          to label %bb.b unwind label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.ad = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 6
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp samesign ugt i64 %i.ad, 1
  br i1 %i.af, label %bb.o, label %bb.j

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @62, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 18, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @62, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 18, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @61, ptr %i.aj, align 8
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @59, ptr noundef nonnull %i.e, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.q:                                             ; preds = %bb.m, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.e = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !21, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #25
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_1
