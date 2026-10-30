Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_llama2-b5d2d67ec215b578.candle_wasm_example_llama2.2b2abf3c15bdb95-cgu.04?download=true
inline.NumInlined: 642
inline.NumDeleted: 373
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs6_NtNtCsiOg657KYfD4_5serde7private2deINtB6_19FlatMapDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers11punctuations0_1__NtB2Y_14PunctuationDef11deserialize9___VisitorECsemnSGAKhbl_26candle_wasm_example_llama2:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20.sink.split.i: ; preds = %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i, %bb.j
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h), !noalias !626
  br label %_RINvXs0_NvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers11punctuations0_1__NtBb_14PunctuationDef11deserializeNtB6_9___VisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.w:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !626
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs0_NvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers11punctuations0_1__NtBb_14PunctuationDef11deserializeNtB6_9___VisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.j, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs6_NtNtCsiOg657KYfD4_5serde7private2deINtB6_19FlatMapDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtB2Y_14FixedLengthDef11deserialize9___VisitorECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.k, 6
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  store i8 -1, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store ptr %3, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store i64 %4, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !689
  %i.q = icmp eq i64 %i.k, 0
  br i1 %i.q, label %.thread48.i, label %.lr.ph.i.i.lr.ph.i

.lr.ph.i.i.lr.ph.i:                               ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx.i.i32.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.lr.ph.i
  %i.t = phi ptr [ %i.l, %.lr.ph.i.i.lr.ph.i ], [ %i.ay, %bb.s ]
  %i.u = phi ptr [ %i.i, %.lr.ph.i.i.lr.ph.i ], [ %i.ax, %bb.s ]
  %.sroa.06.087.i = phi i64 [ 0, %.lr.ph.i.i.lr.ph.i ], [ %.sroa.06.1.i, %bb.s ] ; 3 uses
  %.sroa.4.086.i = phi i64 [ undef, %.lr.ph.i.i.lr.ph.i ], [ %.sroa.4.1.i, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %.pre.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !692
  %.pre10.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !692
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.v = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 3 uses
  store ptr %i.w, ptr %i.m, align 8, !alias.scope !692
  invoke void @_RNvNtNtCsiOg657KYfD4_5serde7private2de19flat_map_take_entry(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre.i.i.i, i64 noundef %.pre10.i.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.b
  %i.x = load i8, ptr %i.e, align 8, !range !21, !noalias !693, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.x, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !693
  %i.y = load i8, ptr %i.g, align 8, !range !21, !alias.scope !694, !noundef !4
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.f, !noalias !695

bb.e:                                             ; preds = %.noexc.i
  %i.aa = icmp eq ptr %i.w, %i.t
  br i1 %i.aa, label %.thread48.i, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !693
  invoke void @_RINvXsr_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer22deserialize_identifierNtNvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtB3c_14FixedLengthDef11deserialize14___FieldVisitorECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !693
  %i.ab = load i8, ptr %i.d, align 8, !range !22, !noalias !693, !noundef !4
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !695
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #28
          to label %.body.i unwind label %bb.g, !noalias !695

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !695
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.q, %bb.p, %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.r, %bb.m
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.af = load i8, ptr %i.g, align 8, !range !21, !alias.scope !696, !noundef !4
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.u

.thread48.i:                                      ; preds = %bb.s, %bb.e, %bb.a
  %.sroa.4.077.i = phi i64 [ %.sroa.4.086.i, %bb.e ], [ undef, %bb.a ], [ %.sroa.4.1.i, %bb.s ]
  %.sroa.06.067.i = phi i64 [ %.sroa.06.087.i, %bb.e ], [ 0, %bb.a ], [ %.sroa.06.1.i, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !697
  %i.ah = trunc nuw i64 %.sroa.06.067.i to i1
  %.sroa.4.0..i = select i1 %i.ah, i64 %.sroa.4.077.i, i64 5 ; 2 uses
  %i.ai = load i8, ptr %i.g, align 8, !range !21, !alias.scope !698, !noundef !4
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %_RINvXs0_NvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtBb_14FixedLengthDef11deserializeNtB6_9___VisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit25.sink.split.i

bb.i:                                             ; preds = %.noexc23.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !693, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !697
  %i.am = ptrtoint ptr %i.al to i64
  br label %.loopexit57.i

bb.j:                                             ; preds = %.noexc23.i
  %i.an = load i8, ptr %i.s, align 1, !range !22, !noalias !693, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !697
  %cond.i = icmp eq i8 %i.an, 0
  br i1 %cond.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %i.g, align 8, !alias.scope !701 ; 2 uses
  store i8 -1, ptr %i.g, align 8, !alias.scope !701
  %.not.i.i26.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i, -1
  br i1 %.not.i.i26.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i.i.i, i64 31, i1 false)
  store i8 %.sroa.01.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !701
  %i.ao = invoke noundef align 8 ptr @_RINvXsr_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer23deserialize_ignored_anyNtNtB1Z_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %bb.k
  %i.ap = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customReECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 16)
          to label %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.j
  %.not21.i = icmp eq i64 %.sroa.06.087.i, 0
  br i1 %.not21.i, label %bb.o, label %bb.r, !prof !5

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %.sroa.01.0.copyload.i.i29.i = load i8, ptr %i.g, align 8, !alias.scope !704 ; 2 uses
  store i8 -1, ptr %i.g, align 8, !alias.scope !704
  %.not.i.i30.i = icmp eq i8 %.sroa.01.0.copyload.i.i29.i, -1
  br i1 %.not.i.i30.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i32.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx.i.i.i, i64 31, i1 false)
  store i8 %.sroa.01.0.copyload.i.i29.i, ptr %i.a, align 8, !noalias !704
  %i.aq = invoke { i64, ptr } @_RINvXsr_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_u64NtNvXs1a_NtB1Z_5implsjNtB1Z_11Deserialize11deserialize16PrimitiveVisitorECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33.i:                                       ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !704
  br label %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ar = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB6_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error6customReECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 16)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34.i:                                       ; preds = %bb.q
  %i.as = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.ar, 1
  br label %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.r:                                             ; preds = %bb.n
  %i.at = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error15duplicate_fieldCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 6)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.noexc34.i, %.noexc33.i
  %.merged.i.i.i.a = phi { i64, ptr } [ %i.aq, %.noexc33.i ], [ %i.as, %.noexc34.i ] ; 2 uses
  %i.au = extractvalue { i64, ptr } %.merged.i.i.i.a, 0
  %5 = extractvalue { i64, ptr } %.merged.i.i.i.a, 1
  %i.av = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.aw = trunc nuw i64 %i.au to i1
  br i1 %i.aw, label %.loopexit57.i, label %bb.s

bb.s:                                             ; preds = %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.4.1.i = phi i64 [ %i.av, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ %.sroa.4.086.i, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ] ; 2 uses
  %.sroa.06.1.i = phi i64 [ 1, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ %.sroa.06.087.i, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !706
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !707, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = load ptr, ptr %i.n, align 8, !alias.scope !707, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %.thread48.i, label %.lr.ph.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ba = ptrtoint ptr %i.at to i64
  br label %.loopexit57.i

_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !701
  %.not22.i = icmp eq ptr %i.ao, null
  br i1 %.not22.i, label %bb.s, label %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i

_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i: ; preds = %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.m
  %.sroa.0.0.i.i52.i = phi ptr [ %i.ap, %bb.m ], [ %i.ao, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ]
  %i.bb = ptrtoint ptr %.sroa.0.0.i.i52.i to i64
  br label %.loopexit57.i

.loopexit57.i:                                    ; preds = %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i, %bb.t, %bb.i
  %.sroa.6.0.i = phi i64 [ %i.am, %bb.i ], [ %i.bb, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i ], [ %i.ba, %bb.t ], [ %i.av, %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valuejECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ] ; 2 uses
  %i.bc = load i8, ptr %i.g, align 8, !range !21, !alias.scope !708, !noundef !4
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %_RINvXs0_NvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtBb_14FixedLengthDef11deserializeNtB6_9___VisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit25.sink.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit25.sink.split.i: ; preds = %.loopexit57.i, %.thread48.i
  %.sroa.6.1.ph.i = phi i64 [ %.sroa.4.0..i, %.thread48.i ], [ %.sroa.6.0.i, %.loopexit57.i ]
  %.sroa.0.1.ph.i = phi i64 [ 0, %.thread48.i ], [ 1, %.loopexit57.i ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g)
  br label %_RINvXs0_NvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtBb_14FixedLengthDef11deserializeNtB6_9___VisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.u:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs0_NvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers12fixed_lengths0_1__NtBb_14FixedLengthDef11deserializeNtB6_9___VisitorNtNtCseZbltJ5Yqe_10serde_core2de7Visitor9visit_mapINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.thread48.i, %.loopexit57.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit25.sink.split.i
  %.sroa.6.1.i = phi i64 [ %.sroa.6.0.i, %.loopexit57.i ], [ %.sroa.4.0..i, %.thread48.i ], [ %.sroa.6.1.ph.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit25.sink.split.i ]
  %.sroa.0.1.i = phi i64 [ 1, %.loopexit57.i ], [ 0, %.thread48.i ], [ %.sroa.0.1.ph.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit25.sink.split.i ]
  %i.bf = inttoptr i64 %.sroa.6.1.i to ptr
  %i.bg = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i, 0
  %i.bh = insertvalue { i64, ptr } %i.bg, ptr %i.bf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret { i64, ptr } %i.bh
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsiOg657KYfD4_5serde7private2deINtB6_19FlatMapDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_structNtNvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers6digitss0_1__NtB2Y_9DigitsDef11deserialize9___VisitorECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.l, 6
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store ptr %i.j, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  store i8 -1, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  store ptr %4, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store i64 %5, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !750
  %i.r = icmp eq i64 %i.l, 0
  br i1 %i.r, label %.thread48.thread.i, label %.lr.ph.i.i.lr.ph.i

.thread48.thread.i:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !751
  br label %bb.u

.lr.ph.i.i.lr.ph.i:                               ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0..sroa_idx.i.i29.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.lr.ph.i
  %i.w = phi ptr [ %i.m, %.lr.ph.i.i.lr.ph.i ], [ %i.av, %bb.t ]
  %i.x = phi ptr [ %i.j, %.lr.ph.i.i.lr.ph.i ], [ %i.au, %bb.t ]
  %.sroa.04.074.i = phi i8 [ 2, %.lr.ph.i.i.lr.ph.i ], [ %.sroa.04.1.i, %bb.t ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !754
  %.pre10.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !754
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.y = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 3 uses
  store ptr %i.z, ptr %i.n, align 8, !alias.scope !754
  invoke void @_RNvNtNtCsiOg657KYfD4_5serde7private2de19flat_map_take_entry(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.pre.i.i.i, i64 noundef %.pre10.i.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !748

.noexc.i:                                         ; preds = %bb.b
  %i.aa = load i8, ptr %i.e, align 8, !range !21, !noalias !755, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !755
  %i.ab = load i8, ptr %i.h, align 8, !range !21, !alias.scope !756, !noundef !4
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.f, !noalias !757

bb.e:                                             ; preds = %.noexc.i
  %i.ad = icmp eq ptr %i.z, %i.w
  br i1 %i.ad, label %.thread48.i, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !755
  invoke void @_RINvXsr_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer22deserialize_identifierNtNvMNvNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers6digitss0_1__NtB3c_9DigitsDef11deserialize14___FieldVisitorECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc22.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !748

.noexc22.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !755
  %i.ae = load i8, ptr %i.d, align 8, !range !22, !noalias !755, !noundef !4
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.i, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !757
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #28
          to label %.body.i unwind label %bb.g, !noalias !757

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !757
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.p, %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.u, %bb.r, %bb.q, %bb.m
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ai = load i8, ptr %i.h, align 8, !range !21, !alias.scope !758, !noundef !4
  %i.aj = icmp eq i8 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.h

bb.h:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.w, !noalias !748

.thread48.i:                                      ; preds = %bb.t, %bb.e
  %.sroa.04.066.i = phi i8 [ %.sroa.04.074.i, %bb.e ], [ %.sroa.04.1.i, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !751
  %.not19.i = icmp eq i8 %.sroa.04.066.i, 2
  br i1 %.not19.i, label %bb.u, label %bb.v

bb.i:                                             ; preds = %.noexc22.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !755, !nonnull !4, !align !9, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !751
  br label %_RINvYINtNtNtCsiOg657KYfD4_5serde7private2de16FlatStructAccessNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9MapAccess10next_valueNtNtB1G_11ignored_any10IgnoredAnyECsemnSGAKhbl_26candle_wasm_example_llama2.exit.thread.i

bb.j:                                             ; preds = %.noexc22.i
  %i.am = load i8, ptr %i.t, align 1, !range !22, !noalias !755, !noundef !4
end_hunk_0
