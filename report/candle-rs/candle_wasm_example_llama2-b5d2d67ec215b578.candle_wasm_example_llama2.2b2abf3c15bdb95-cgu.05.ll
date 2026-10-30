Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_llama2-b5d2d67ec215b578.candle_wasm_example_llama2.2b2abf3c15bdb95-cgu.05?download=true
inline.NumInlined: 810
inline.NumDeleted: 439
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2:bb.a
  %.not.i33 = icmp eq i64 %.sroa.5.038, 0
  %..i34 = select i1 %.not.i33, i64 632, i64 728
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i34, i64 noundef 8) #30, !noalias !205
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBb_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE16extend_desugaredINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array14IArrayIntoIterBG_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs9_NtNtCsjlHezul7jxg_14implicit_clone6unsync5arrayINtB5_14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.e, %bb.d ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #28
          to label %bb.m unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !range !8, !noundef !4
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.g = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %i.h = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.k, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.k = load i64, ptr %1, align 8, !range !10, !alias.scope !216, !noundef !4
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !219, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !219, !noundef !4
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !noalias !219
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcSNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.g, %bb.h, %bb.i
  ret void

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.k, %bb.f
  %i.r = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.t = add nuw nsw i64 %i.g, 1
  store i64 %i.t, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.j:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #28
          to label %bb.c unwind label %bb.l

bb.k:                                             ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.j

bb.l:                                             ; preds = %bb.j, %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i1 noundef zeroext %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %1 to i64                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !230, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !9, !alias.scope !230, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.a, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  br i1 %1, label %.lr.ph.i.i, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECsemnSGAKhbl_26candle_wasm_example_llama2.exit

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 %2, ptr %i.j, align 1, !noalias !231
  %i.k = add i64 %i.g, 1
  br label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit, %.lr.ph.i.i
  %.val6.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.g, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit ]
  store i64 %.val6.i.i, ptr %i.b, align 8, !noalias !232
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB12_6string6StringEEEp6OutputuEL_EEEB2k_.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB12_6string6StringEEEp6OutputuEL_EEEB2k_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !239, !noundef !4 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB12_6string6StringEEEp6OutputuEL_EEEB2k_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !noalias !240, !noundef !4
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !noalias !240
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB12_6string6StringEEEp6OutputuEL_EEEB2k_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_E9drop_slowB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB12_6string6StringEEEp6OutputuEL_EEEB2k_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !247, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !247, !noundef !4 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %.sroa.0.0.i.i.i1 = phi i64 [ %i.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.sroa.0.0.i.i.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i1, 1     ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.d, !noalias !247

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i: ; preds = %.lr.ph3
  %i.k = add nuw nsw i64 %.sroa.0.1.i.i.i2, 1     ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.sroa.0.1.i.i.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i unwind label %bb.e, !noalias !247

bb.e:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !247
  unreachable

.body.i:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i, %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideECsemnSGAKhbl_26candle_wasm_example_llama2.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 5 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.c = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.a, -2
  %i.e = icmp samesign ugt i64 %i.a, 1
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %bb.c [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit
    i64 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.g, align 8, !alias.scope !256, !noundef !4 ; 2 uses
  %i.h = icmp ugt i32 %.val.i, 1027
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val.i) #30, !noalias !256
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !260, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !260, !noundef !4
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !260
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyECsemnSGAKhbl_26candle_wasm_example_llama2.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !270, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !270, !noundef !4
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !270
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.c = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !292
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !296, !nonnull !4, !noundef !4
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !297
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !301, !nonnull !4, !noundef !4
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !302
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit

end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsemnSGAKhbl_26candle_wasm_example_llama2:bb.a
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag5ValueNtNtNtCsey8dOKI5XLb_7web_sys8features23gen_HtmlTextAreaElement19HtmlTextAreaElementEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !402, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !403, !noundef !4
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !noalias !403
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.invoke.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

.invoke.i:                                        ; preds = %bb.n, %bb.g
  %i.ao = phi ptr [ %i.p, %bb.g ], [ %i.aj, %bb.n ]
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.p:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ar) #28
          to label %.body.i unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %.invoke.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.p, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.ad, %bb.l ], [ %i.aq, %bb.p ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val7.i = load ptr, ptr %i.av, align 8, !alias.scope !373, !align !16, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val8.i = load i64, ptr %i.aw, align 8, !alias.scope !373
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsemnSGAKhbl_26candle_wasm_example_llama2(ptr %.val7.i, i64 %.val8.i) #28
          to label %bb.s unwind label %bb.af

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %.invoke.i, %bb.n, %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag5ValueNtNtNtCsey8dOKI5XLb_7web_sys8features23gen_HtmlTextAreaElement19HtmlTextAreaElementEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.g, %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i = load ptr, ptr %i.ax, align 8, !alias.scope !373, !align !16, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val6.i = load i64, ptr %i.ay, align 8, !alias.scope !373
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsemnSGAKhbl_26candle_wasm_example_llama2(ptr %.val.i, i64 %.val6.i)
          to label %bb.v unwind label %bb.u

bb.s:                                             ; preds = %bb.u, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.u ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !407, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !408, !noundef !4
  %i.bc = add i64 %i.bb, -1                       ; 2 uses
  store i64 %i.bc, ptr %i.ba, align 8, !noalias !408
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.af

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag9VTagInnerECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !412, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !413, !noundef !4
  %i.bi = add i64 %i.bh, -1                       ; 2 uses
  store i64 %i.bi, ptr %i.bg, align 8, !noalias !413
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit13.i

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs9OLX912zl7o_3yew4html12NodeRefInnerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit13.i unwind label %bb.x

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.x, %bb.t, %bb.s
  %.pn2.i = phi { ptr, i32 } [ %i.bk, %bb.x ], [ %.pn.i, %bb.t ], [ %.pn.i, %bb.s ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom10AttributesECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #28
          to label %bb.y unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit13.i: ; preds = %bb.w, %bb.v
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom10AttributesECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %bb.ac unwind label %bb.ab

bb.y:                                             ; preds = %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.pn4.i = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %.pn2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !415, !noundef !4 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = load i64, ptr %i.bm, align 8, !noalias !416, !noundef !4
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %i.bm, align 8, !noalias !416
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.af

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit13.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit13.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !418, !noundef !4 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load i64, ptr %i.bt, align 8, !noalias !419, !noundef !4
  %i.bw = add i64 %i.bv, -1                       ; 2 uses
  store i64 %i.bw, ptr %i.bt, align 8, !noalias !419
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bs) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.af:                                            ; preds = %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.t, %.body.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OLX912zl7o_3yew11virtual_dom3key3KeyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  resume { ptr, i32 } %.pn4.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !422, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !422, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.b, !noalias !422

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i unwind label %bb.c, !noalias !422

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !422
  unreachable

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.d

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !425, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !425, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [240 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !425

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [240 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.m) #28
          to label %bb.c unwind label %bb.e, !noalias !425

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !425
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEEB1j_.exit unwind label %bb.f

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEEB1j_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !428, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !428, !noundef !4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b, !inline_history !429

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !432, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !432, !noundef !4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b, !inline_history !433

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !440, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !440, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i6 = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i6 ; 6 uses
  %i.g = add nuw i64 %.sroa.0.0.i6, 1             ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !17, !alias.scope !441, !noundef !4 ; 3 uses
  %i.i = icmp ne i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -2
  %i.k = icmp samesign ugt i64 %i.h, 1
  %i.l = select i1 %i.k, i64 %i.j, i64 6
  switch i64 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i [
    i64 3, label %bb.b
    i64 5, label %bb.c
    i64 6, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers8sequence8SequenceECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.h, !inline_history !442

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.body1 unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.c, %bb.b, %.lr.ph
  %i.t = icmp eq i64 %i.g, %i.d
  br i1 %i.t, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph24
  %i.u = add nuw i64 %.sroa.0.1.i23, 1            ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.d
  br i1 %i.v, label %.body, label %.lr.ph24

bb.h:                                             ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body1

.body1:                                           ; preds = %bb.e, %bb.h
  %eh.lpad-body2 = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.p, %bb.e ]
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %.body, label %.lr.ph24

.lr.ph24:                                         ; preds = %.body1, %bb.g
  %.sroa.0.1.i23 = phi i64 [ %i.u, %bb.g ], [ %i.g, %.body1 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i23
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(48) %i.y) #28
          to label %bb.g unwind label %bb.i, !inline_history !443

bb.i:                                             ; preds = %.lr.ph24
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !443
  unreachable

.body:                                            ; preds = %bb.g, %.body1
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.j

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.j:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !447, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !447, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw i64 %.sroa.0.0.i1, 1             ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !446

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw i64 %.sroa.0.1.i2, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #28
          to label %bb.c unwind label %bb.e, !inline_history !446

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !446
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !464, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !464, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !468, !noalias !464, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !469
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.c, !noalias !464

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.110.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !473, !noalias !464, !nonnull !4, !noundef !4
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !474
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i unwind label %bb.e, !noalias !464

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !464
  unreachable

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !477, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !477, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !477

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #28
          to label %bb.c unwind label %bb.e, !noalias !477

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !477
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !486, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !486, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !11, !alias.scope !487, !noalias !486, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.c, !noalias !486

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !11, !alias.scope !488, !noalias !486, !noundef !4
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i unwind label %bb.e, !noalias !486

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !486
  unreachable

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !491, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !491, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.b, !noalias !491

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i unwind label %bb.c, !noalias !491

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !491
  unreachable

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.d

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !495, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !495, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw i64 %.sroa.0.0.i.i1, 1           ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(256) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !495, !inline_history !494

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw i64 %.sroa.0.1.i.i2, 1           ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(256) %i.m) #28
          to label %bb.c unwind label %bb.e, !noalias !495, !inline_history !494

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !495, !inline_history !494
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !498, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !498, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.b, !noalias !498

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.c, !noalias !498

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.e, !noalias !498

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !498
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.m = add nuw nsw i64 %.sroa.0.1.i.i14, 1      ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %.body, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.m, %bb.d ], [ %i.h, %.body.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #28
          to label %bb.d unwind label %bb.f, !noalias !498

bb.f:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !498
  unreachable

.body:                                            ; preds = %bb.d, %.body.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtBG_6string6StringB1g_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.g

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtBG_6string6StringB1g_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !501, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !501, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.b, !noalias !501

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i unwind label %bb.c, !noalias !501

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !501
  unreachable

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.d

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !508, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array6IArrayNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !511, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !511, !noundef !4
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !511
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array6IArrayNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcSNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array6IArrayNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsjlHezul7jxg_14implicit_clone6unsync5array6IArrayNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm7RmsNormECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !540, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !540
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !542, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !543
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !545, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.m = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !546
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10layer_norm9LayerNormECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !572, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !572
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !573, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !574
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !575, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.m = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !576
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit2: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !587, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !587, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 4 uses
  %i.f = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !11, !alias.scope !588, !noalias !587, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i.i unwind label %bb.c, !noalias !587

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e) #28
          to label %.body.i.i.i unwind label %bb.g, !noalias !587

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !range !12, !alias.scope !589, !noalias !587, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i.i
  %i.m = icmp eq i64 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.i, !noalias !587

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.i, !noalias !587

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !587
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %bb.f, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i.i
  %i.p = icmp eq i64 %i.f, %.val1.i
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i22, 1    ; 2 uses
  %i.r = icmp eq i64 %i.q, %.val1.i
  br i1 %i.r, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.c ]
  %i.t = icmp eq i64 %i.f, %.val1.i
  br i1 %i.t, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.q, %bb.h ], [ %i.f, %.body.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i22
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #28
          to label %bb.h unwind label %bb.j, !noalias !587

bb.j:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !587
  unreachable

.body.i:                                          ; preds = %bb.h, %.body.i.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !alias.scope !594, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #28
          to label %bb.h unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr %0, align 8, !range !12, !alias.scope !595, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.g = icmp eq i64 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVectENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std9backtrace11BytesOrWideEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VechEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew11virtual_dom10AttributesECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !614, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !614, !noundef !4
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !noalias !614
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEE9drop_slowB2i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.h, align 8, !noundef !4 ; 6 uses
  %i.i = icmp eq i64 %.val1, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 3 uses
  %i.k = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.l = load i64, ptr %i.j, align 8, !range !13, !alias.scope !616, !noundef !4 ; 5 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.n = icmp ne i64 %i.l, 3
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i64 %i.l, -2
  %i.p = icmp samesign ugt i64 %i.l, 1
  %i.q = select i1 %i.p, i64 %i.o, i64 1
  switch i64 %i.q, label %bb.f [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i.i.i.i = load i32, ptr %i.r, align 8, !alias.scope !618, !noundef !4 ; 2 uses
  %i.s = icmp ugt i32 %.val.i.i.i.i, 1027
  br i1 %i.s, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val.i.i.i.i) #30, !noalias !619
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !623, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noalias !624, !noundef !4
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !noalias !624
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph.i.i
  %i.z = icmp eq i64 %i.k, %.val1
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph
  %i.aa = add nuw nsw i64 %.sroa.0.1.i.i7, 1      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %.val1
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = icmp eq i64 %i.k, %.val1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i7 = phi i64 [ %i.aa, %bb.k ], [ %i.k, %bb.l ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i7
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #28
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.ag = mul nuw nsw i64 %.val1, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef 8) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcINtNtCs2upMkKV4wAv_8indexmap3map8IndexMapNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringNtNtCs9OLX912zl7o_3yew11virtual_dom19AttributeOrPropertyEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

._crit_edge:                                      ; preds = %bb.k, %bb.l
  %i.ah = mul nuw nsw i64 %.val1, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ah, i64 noundef 8) #30
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !629, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.d, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !630, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !630, !noundef !4 ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.h
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.0.0.i.i1 = phi i64 [ %i.l, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.0.0.i.i1
  %i.l = add nuw i64 %.sroa.0.0.i.i1, 1           ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k)
          to label %bb.f unwind label %bb.h, !noalias !630, !inline_history !627

bb.g:                                             ; preds = %.lr.ph3
  %i.m = add nuw i64 %.sroa.0.1.i.i2, 1           ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %.body, label %.lr.ph3

bb.h:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.l, %i.h
  br i1 %i.p, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i2 = phi i64 [ %i.m, %bb.g ], [ %i.l, %bb.h ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #28
          to label %bb.g unwind label %bb.i, !noalias !630, !inline_history !627

bb.i:                                             ; preds = %.lr.ph3
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !630, !inline_history !627
  unreachable

.body:                                            ; preds = %bb.g, %bb.h
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.j

bb.j:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !628
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body
  resume { ptr, i32 } %i.o

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.f, %bb.e
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !639, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !18, !alias.scope !640, !noundef !4
  switch i64 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit [
    i64 -1, label %bb.e
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !11, !alias.scope !641, !noundef !4
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker9ModelDataEBF_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker11WorkerInputEBF_.exit
  %.sink.i.sink.i.sink = phi ptr [ %i.i, %bb.f ], [ %i.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker11WorkerInputEBF_.exit ], [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker9ModelDataEBF_.exit ], [ %i.h, %bb.e ], [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i.sink.i.sink)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split, %bb.d, %bb.b, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker9ModelDataEBF_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.q, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker9ModelDataEBF_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split

bb.j:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !range !11, !alias.scope !642, !noundef !4
  %.not.i = icmp eq i64 %i.p, -1
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker11WorkerInputEBF_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker11WorkerInputEBF_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker11WorkerInputEBF_.exit: ; preds = %bb.j, %bb.k
  %.sink1.i = phi i64 [ 24, %bb.k ], [ 8, %bb.j ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink1.i
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtCsgCecv3eZDcN_5alloc6string6StringEEB11_.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model19CausalSelfAttentionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !743, !nonnull !4, !noundef !4
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !743
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !745, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !746
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32
          to label %.body unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !748, !noundef !4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.m = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !749
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

end_hunk_1
begin_hunk_2_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2:bb.a
bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ %.pn.i2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i1 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCslUjavNzuXCV_15spm_precompiled11PrecompiledECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %bb.b

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i1 unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace7ReplaceECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i1: ; preds = %bb.j, %bb.i
  %.pn.i2 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.o, %bb.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i1

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i1, %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace7ReplaceECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.b

bb.l:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 8
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 6
  switch i64 %i.e, label %bb.b [
    i64 3, label %bb.c
    i64 5, label %bb.d
    i64 6, label %bb.e
  ]

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split5SplitECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !1027
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split5SplitECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers5utils4onig8SysRegexECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers5utils4onig8SysRegexECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split5SplitECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1034, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 8
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 6
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.i
    i64 6, label %bb.o
  ]

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace7ReplaceECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers8decoders3ctc3CTCECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers8decoders3ctc3CTCECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %._crit_edge, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.y, %._crit_edge ], [ %i.j, %bb.g ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers8decoders3ctc3CTCECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %bb.b

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1036, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1036, !noundef !4 ; 4 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.t = icmp eq i64 %i.v, %i.r
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i1 = phi i64 [ %i.v, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %.sroa.0.0.i.i1
  %i.v = add nuw i64 %.sroa.0.0.i.i1, 1           ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.u)
          to label %bb.j unwind label %bb.l, !noalias !1035, !inline_history !1032

bb.k:                                             ; preds = %.lr.ph3
  %i.w = add nuw i64 %.sroa.0.1.i.i2, 1           ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.r
  br i1 %i.x, label %._crit_edge, label %.lr.ph3

bb.l:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = icmp eq i64 %i.v, %i.r
  br i1 %i.z, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i2 = phi i64 [ %i.w, %bb.k ], [ %i.v, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.aa) #28
          to label %bb.k unwind label %bb.m, !noalias !1035, !inline_history !1032

._crit_edge:                                      ; preds = %bb.k, %bb.l
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.n, !inline_history !1033

bb.m:                                             ; preds = %.lr.ph3
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1035, !inline_history !1032
  unreachable

bb.n:                                             ; preds = %._crit_edge
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1033
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.j, %bb.i
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !inline_history !1033
  br label %bb.b

bb.o:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.r

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace7ReplaceECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.q, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %i.ae, %bb.p ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %common.resume unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace7ReplaceECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !1073, !noundef !4
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.e
    i32 1, label %bb.g
    i32 2, label %bb.j
    i32 3, label %bb.l
    i32 4, label %bb.n
    i32 5, label %bb.p
    i32 6, label %bb.r
    i32 7, label %bb.b
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.c = load i64, ptr %i.b, align 8, !range !10, !alias.scope !1076, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1079, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !1079, !noundef !4
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !noalias !1079
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1082, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !1082, !noundef !4
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !1082
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.p = load i64, ptr %i.o, align 8, !range !10, !alias.scope !1085, !noundef !4
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1088, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !1088, !noundef !4
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !1088
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.j:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1091, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !1091, !noundef !4
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !noalias !1091
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vcomp5VCompE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.l:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1094, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !1094, !noundef !4
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !noalias !1094
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.n:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1097, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !1097, !noundef !4
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !1097
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom7vportal7VPortalE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.p:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i32, ptr %i.al, align 4, !noundef !4 ; 2 uses
  %i.am = icmp ugt i32 %.val, 1027
  br i1 %i.am, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.r:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1100, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1100, !noundef !4
  %i.aq = add i64 %i.ap, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !noalias !1100
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtCs9OLX912zl7o_3yew11virtual_dom9vsuspense9VSuspenseE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vraw4VRawECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsemnSGAKhbl_26candle_wasm_example_llama2(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  %i.b = icmp eq i64 %.8.val, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtB4_6option6OptionINtNtBG_2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtB4_6option6OptionINtNtBG_2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !1116, !noundef !4 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !noalias !1117, !noundef !4
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !noalias !1117
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.d, %.8.val
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.d, %.8.val
  br i1 %i.l, label %.loopexit.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1119, !noundef !4 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.i.i
  %i.q = load i64, ptr %i.o, align 8, !noalias !1120, !noundef !4
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.o, align 8, !noalias !1120
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i.i
  %i.t = icmp eq i64 %i.n, %.8.val
  br i1 %i.t, label %.loopexit.i, label %.lr.ph12.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.v = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef 8) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtNtB4_6option6OptionINtNtBG_2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

.loopexit.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners8ListenerEL_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i.i, %bb.d
  %i.w = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #30
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1135, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.j
    i8 3, label %bb.j
    i8 4, label %bb.j
    i8 5, label %bb.j
    i8 6, label %bb.j
    i8 7, label %bb.j
    i8 8, label %bb.j
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 11, label %bb.j
    i8 12, label %bb.k
    i8 13, label %bb.j
    i8 14, label %bb.l
    i8 15, label %bb.j
    i8 16, label %bb.j
    i8 17, label %bb.m
    i8 18, label %bb.j
    i8 19, label %bb.o
    i8 20, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1136, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1136, !noundef !4 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph31

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %.sroa.0.0.i.i30 = phi i64 [ %i.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.0.0.i.i30 ; 3 uses
  %i.j = add nuw i64 %.sroa.0.0.i.i30, 1          ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %bb.d unwind label %bb.c, !noalias !1136, !inline_history !1123

bb.c:                                             ; preds = %.lr.ph31
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #28
          to label %.body8 unwind label %bb.e, !noalias !1136, !inline_history !1123

bb.d:                                             ; preds = %.lr.ph31
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.g, !inline_history !1123

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1136, !inline_history !1123
  unreachable

bb.f:                                             ; preds = %.lr.ph33
  %i.o = add nuw i64 %.sroa.0.1.i.i32, 1          ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.f
  br i1 %i.p, label %.body, label %.lr.ph33

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body8

.body8:                                           ; preds = %bb.c, %bb.g
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.k, %bb.c ]
  %i.r = icmp eq i64 %i.j, %i.f
  br i1 %i.r, label %.body, label %.lr.ph33

.lr.ph33:                                         ; preds = %.body8, %bb.f
  %.sroa.0.1.i.i32 = phi i64 [ %i.o, %bb.f ], [ %i.j, %.body8 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.0.1.i.i32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.s) #28
          to label %bb.f unwind label %bb.h, !noalias !1136, !inline_history !1124

bb.h:                                             ; preds = %.lr.ph33
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1136, !inline_history !1124
  unreachable

.body:                                            ; preds = %bb.f, %.body8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1125
  unreachable

common.resume.sink.split:                         ; preds = %bb.n, %bb.p
  %.sink = phi ptr [ %i.ab, %bb.p ], [ %i.y, %bb.n ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ac, %bb.p ], [ %i.z, %bb.n ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 32, i64 noundef 8) #30, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body6, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body9, %.body ], [ %i.ao, %.body6 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.b
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.l, %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB19_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %bb.j

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %bb.j

bb.m:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1137, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.n, !noalias !1137, !inline_history !1128

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 32, i64 noundef 8) #30, !noalias !1137
  br label %bb.j

bb.o:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1138, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit3 unwind label %bb.p, !noalias !1138, !inline_history !1128

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit3: ; preds = %bb.o
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 32, i64 noundef 8) #30, !noalias !1138
  br label %bb.j

bb.q:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1139, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1139, !noundef !4 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.aj = icmp eq i64 %i.al, %i.ah
  br i1 %i.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %.sroa.0.0.i.i427 = phi i64 [ %i.al, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.0.0.i.i427
  %i.al = add nuw i64 %.sroa.0.0.i.i427, 1        ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ak)
          to label %bb.r unwind label %bb.t, !noalias !1139, !inline_history !1133

bb.s:                                             ; preds = %.lr.ph29
  %i.am = add nuw i64 %.sroa.0.1.i.i528, 1        ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.ah
  br i1 %i.an, label %.body6, label %.lr.ph29

bb.t:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = icmp eq i64 %i.al, %i.ah
  br i1 %i.ap, label %.body6, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.t, %bb.s
  %.sroa.0.1.i.i528 = phi i64 [ %i.am, %bb.s ], [ %i.al, %bb.t ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %.sroa.0.1.i.i528
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aq) #28
          to label %bb.s unwind label %bb.u, !noalias !1139, !inline_history !1133

bb.u:                                             ; preds = %.lr.ph29
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1139, !inline_history !1133
  unreachable

.body6:                                           ; preds = %bb.s, %bb.t
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.body6
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1134
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.r, %bb.q
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8sequence8SequenceECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1145, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1145, !noundef !4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b, !noalias !1144, !inline_history !21

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c, !inline_history !22

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !22
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !inline_history !22
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers5utils8SequenceECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1151, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1151, !noundef !4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b, !noalias !1150, !inline_history !23

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c, !inline_history !24

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !inline_history !24
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers8sequence8SequenceECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1157, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1157, !noundef !4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b, !noalias !1156, !inline_history !1158

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c, !inline_history !1159

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1159
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !inline_history !1159
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2 unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3 unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer13pre_tokenizer5SplitECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i: ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #28
          to label %bb.g unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
  ret void

bb.f:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit14 unwind label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit15 unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit14: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %.body unwind label %bb.p

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit14

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit15: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1166, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1166, !noundef !4 ; 4 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %i.j
  br i1 %i.l, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit15, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %.sroa.0.0.i.i.i25 = phi i64 [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit15 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.0.i.i.i25
  %i.n = add nuw nsw i64 %.sroa.0.0.i.i.i25, 1    ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.d, !noalias !1166

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i: ; preds = %.lr.ph27
  %i.o = add nuw nsw i64 %.sroa.0.1.i.i.i26, 1    ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %.body.i, label %.lr.ph27

bb.d:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.n, %i.j
  br i1 %i.r, label %.body.i, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i
  %.sroa.0.1.i.i.i26 = phi i64 [ %i.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.1.i.i.i26
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i unwind label %bb.e, !noalias !1166

bb.e:                                             ; preds = %.lr.ph27
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1166
  unreachable

.body.i:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i, %bb.d
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.f

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit15
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.g

bb.f:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %bb.g, %.body.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit14
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit14 ], [ %i.w, %bb.g ], [ %i.q, %.body.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionmEENtNtNtBR_3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.p

bb.g:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionmEENtNtNtBR_3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit16 unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body, %bb.h
  %.pn4 = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn2, %.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.p

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit16: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit17 unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %.pn4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit18 unwind label %bb.p

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit16
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit17: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit19 unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit18: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.j
  %.pn8 = phi { ptr, i32 } [ %i.af, %bb.j ], [ %.pn6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20 unwind label %bb.p

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit17
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit18

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit19: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit21 unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit18, %bb.k
  %.pn10 = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %.pn8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit18 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #28
          to label %.body22 unwind label %bb.p

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit19
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit21: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.m unwind label %bb.l, !inline_history !1167

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit21
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body22 unwind label %bb.n

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit21
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1167
  unreachable

.body22:                                          ; preds = %bb.o, %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20
  %.pn12 = phi { ptr, i32 } [ %.pn10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20 ], [ %i.an, %bb.o ], [ %i.ak, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEENtNtBV_4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapjINtNtNtB4_3ops5range5RangejEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEENtNtBV_4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ao)
  ret void

bb.p:                                             ; preds = %.body22, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit18, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %.body, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit20, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit14
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdREh4IfnNf_5ahash8hash_map8AHashMapjINtNtNtB4_3ops5range5RangejEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.body22
  resume { ptr, i32 } %.pn12
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1174, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !1174, !noundef !4
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !1174
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RceE9drop_slowCs6w5S7JBAafr_3yew(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #32
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RceEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 72057594037927936) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %.sroa.0.028 = phi i64 [ %i.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.028 ; 12 uses
  %i.c = add nuw nsw i64 %.sroa.0.028, 1          ; 4 uses
  %i.d = load i64, ptr %i.b, align 8, !range !19, !alias.scope !1177, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775805
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 3
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
    i64 3, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8sequence8SequenceECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.n, !inline_history !1178

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i15.invoke unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i15.invoke: ; preds = %bb.c, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i15.invoke unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.i:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i: ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.s, %bb.j ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template12SpecialTokenEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template12SpecialTokenEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.n

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i, %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i15.invoke, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i, %bb.b, %.lr.ph
  %i.z = icmp eq i64 %i.c, %1
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a
  ret void

bb.m:                                             ; preds = %.lr.ph64
  %i.aa = add nuw nsw i64 %.sroa.0.163, 1         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %1
  br i1 %i.ab, label %._crit_edge65, label %.lr.ph64

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i15.invoke, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.d, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template8TemplateECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i ], [ %i.p, %bb.g ], [ %i.ac, %bb.n ], [ %i.k, %bb.d ]
  %i.ad = icmp eq i64 %i.c, %1
  br i1 %i.ad, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %.body, %bb.m
  %.sroa.0.163 = phi i64 [ %i.aa, %bb.m ], [ %i.c, %.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.163
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ae) #28
          to label %bb.m unwind label %bb.o

._crit_edge65:                                    ; preds = %bb.m, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %.lr.ph64
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %.sroa.0.027 = phi i64 [ %i.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.0.027 ; 13 uses
  %i.c = add nuw nsw i64 %.sroa.0.027, 1          ; 4 uses
  %i.d = load i64, ptr %i.b, align 8, !range !20, !alias.scope !1181, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775798
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 10
  switch i64 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit [
    i64 7, label %bb.b
    i64 10, label %bb.c
    i64 11, label %bb.g
    i64 12, label %bb.k
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers5utils8SequenceECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.m, !inline_history !1182

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i12 unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i14 unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i12: ; preds = %bb.e, %bb.d
  %.pn.i13 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.j, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i14: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.m

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i12, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.r, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.body unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers11normalizers7replace14ReplacePatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.m

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.m

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i14, %bb.b, %.lr.ph
  %i.z = icmp eq i64 %i.c, %1
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a
  ret void

bb.l:                                             ; preds = %.lr.ph63
  %i.aa = add nuw nsw i64 %.sroa.0.162, 1         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %1
  br i1 %i.ab, label %._crit_edge64, label %.lr.ph63

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i14, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i, %bb.k, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i12, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ %i.ac, %bb.m ], [ %.pn.i13, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i12 ]
  %i.ad = icmp eq i64 %i.c, %1
  br i1 %i.ad, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %.body, %bb.l
  %.sroa.0.162 = phi i64 [ %i.aa, %bb.l ], [ %i.c, %.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.0.162
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ae) #28
          to label %bb.l unwind label %bb.n

._crit_edge64:                                    ; preds = %bb.l, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.n:                                             ; preds = %.lr.ph63
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %.sroa.0.014 = phi i64 [ %i.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.014 ; 6 uses
  %i.c = add nuw nsw i64 %.sroa.0.014, 1          ; 4 uses
  %i.d = load i64, ptr %i.b, align 8, !range !17, !alias.scope !1185, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 8
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 6
  switch i64 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit [
    i64 3, label %bb.b
    i64 5, label %bb.c
    i64 6, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers8sequence8SequenceECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.h, !inline_history !1186

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.body unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_RNvXs5_CsaDYez5zQOqj_4onigNtB5_5RegexNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.c, %bb.b, %.lr.ph
  %i.p = icmp eq i64 %i.c, %1
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph32
  %i.q = add nuw nsw i64 %.sroa.0.131, 1          ; 2 uses
  %i.r = icmp eq i64 %i.q, %1
  br i1 %i.r, label %._crit_edge33, label %.lr.ph32

bb.h:                                             ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers5split12SplitPatternECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.l, %bb.e ]
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %.body, %bb.g
  %.sroa.0.131 = phi i64 [ %i.q, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.131
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #28
          to label %bb.g unwind label %bb.i

._crit_edge33:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.lr.ph32
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit1 unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit1: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #28
          to label %bb.d unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtBQ_6string6StringENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.f = ptrtoint ptr %.val1.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 43690) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.k = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !25, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.r = icmp samesign ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.n, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.t, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  invoke void @_RINvXsH_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsgCecv3eZDcN_5alloc6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.ao, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.q

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.v = load i64, ptr %i.c, align 8, !range !26, !noundef !4 ; 2 uses
  switch i64 %i.v, label %bb.j [
    i64 -2, label %bb.f
    i64 -1, label %bb.n
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.w = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !1196, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !alias.scope !1196, !noundef !4 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %.lr.ph
  %i.ab = icmp eq i64 %i.ad, %i.z
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %.sroa.0.0.i.i.i13 = phi i64 [ %i.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.0.0.i.i.i13
  %i.ad = add nuw nsw i64 %.sroa.0.0.i.i.i13, 1   ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.g, !noalias !1196

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i: ; preds = %.lr.ph15
  %i.ae = add nuw nsw i64 %.sroa.0.1.i.i.i14, 1   ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.z
  br i1 %i.af, label %.body.i, label %.lr.ph15

bb.g:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %i.ad, %i.z
  br i1 %i.ah, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i
  %.sroa.0.1.i.i.i14 = phi i64 [ %i.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.0.1.i.i.i14
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i unwind label %bb.h, !noalias !1196

bb.h:                                             ; preds = %.lr.ph15
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1196
  unreachable

.body.i:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i, %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.j:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.v, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i64 16, i1 false)
  %i.al = load i64, ptr %i.t, align 8, !alias.scope !1197, !noundef !4 ; 3 uses
  %i.am = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1197, !noundef !4
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs5Xr050g3D4S_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !1198

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.aq = load ptr, ptr %i.s, align 8, !alias.scope !1197, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.as = add i64 %i.al, 1
  store i64 %i.as, ptr %i.t, align 8, !alias.scope !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = tail call { i64, i64 } @_RNvXst_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB5_15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess9size_hintCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = extractvalue { i64, i64 } %i.e, 1
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 8192)
  %.sroa.07.0 = select i1 %i.g, i64 %i.i, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.07.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 128)
  %i.j = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !25, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.q = icmp samesign ule i64 %.sroa.07.0, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.c
  invoke void @_RINvXst_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.ae, %bb.k ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.p

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !range !1206, !noundef !4 ; 2 uses
  switch i64 %i.u, label %bb.i [
    i64 -2, label %bb.f
    i64 -1, label %bb.m
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.v = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.x = load ptr, ptr %i.r, align 8, !alias.scope !1208, !nonnull !4, !noundef !4
  %i.y = load i64, ptr %i.s, align 8, !alias.scope !1208, !noundef !4
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.x, i64 noundef %i.y) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.g, !noalias !1207, !inline_history !21

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.h, !inline_history !22

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !22
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !inline_history !22
  br label %bb.o

bb.i:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.u, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.3.0..sroa_idx, i64 120, i1 false)
  %i.ab = load i64, ptr %i.s, align 8, !alias.scope !1209, !noundef !4 ; 3 uses
  %i.ac = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1209, !noundef !4
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.k, !noalias !1210

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b) #28
          to label %.body unwind label %bb.l
end_hunk_2
begin_hunk_3_@_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2:bb.a
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = tail call { i64, i64 } @_RNvXst_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB5_15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess9size_hintCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = extractvalue { i64, i64 } %i.e, 1
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 21845)
  %.sroa.07.0 = select i1 %i.g, i64 %i.i, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.07.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.j = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !25, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.q = icmp samesign ule i64 %.sroa.07.0, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  invoke void @_RINvXst_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.aa, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %bb.o unwind label %bb.n

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !range !1236, !noundef !4 ; 2 uses
  switch i64 %i.u, label %bb.g [
    i64 -2, label %bb.f
    i64 -1, label %bb.k
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.v = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
  br label %bb.m

bb.g:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.u, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, i64 40, i1 false)
  %i.x = load i64, ptr %i.s, align 8, !alias.scope !1237, !noundef !4 ; 3 uses
  %i.y = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1237, !noundef !4
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.i, !noalias !1238

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #28
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.ac = load ptr, ptr %i.r, align 8, !alias.scope !1237, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ae = add i64 %i.x, 1
  store i64 %i.ae, ptr %i.s, align 8, !alias.scope !1237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.m:                                             ; preds = %bb.f, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = tail call { i64, i64 } @_RNvXst_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB5_15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess9size_hintCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = extractvalue { i64, i64 } %i.e, 1
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16384)
  %.sroa.07.0 = select i1 %i.g, i64 %i.i, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.07.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
  %i.j = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !25, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.q = icmp samesign ule i64 %.sroa.07.0, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  invoke void @_RINvXst_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.an, %bb.n ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.s

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !range !1247, !noundef !4 ; 2 uses
  switch i64 %i.u, label %bb.l [
    i64 -2, label %bb.f
    i64 -1, label %bb.p
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.v = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.x = load ptr, ptr %i.r, align 8, !alias.scope !1249, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = load i64, ptr %i.s, align 8, !alias.scope !1249, !noundef !4 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.aa = icmp eq i64 %i.ac, %i.y
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i13 = phi i64 [ %i.ac, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %.sroa.0.0.i.i13
  %i.ac = add nuw i64 %.sroa.0.0.i.i13, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ab)
          to label %bb.g unwind label %bb.i, !noalias !1248, !inline_history !1243

bb.h:                                             ; preds = %.lr.ph15
  %i.ad = add nuw i64 %.sroa.0.1.i.i14, 1         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.y
  br i1 %i.ae, label %.body.i, label %.lr.ph15

bb.i:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = icmp eq i64 %i.ac, %i.y
  br i1 %i.ag, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i14 = phi i64 [ %i.ad, %bb.h ], [ %i.ac, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ah) #28
          to label %bb.h unwind label %bb.j, !noalias !1248, !inline_history !1243

bb.j:                                             ; preds = %.lr.ph15
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1248, !inline_history !1243
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k, !inline_history !1250

bb.k:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1250
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.af, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.g, %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !inline_history !1250
  br label %bb.r

bb.l:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.u, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx, i64 56, i1 false)
  %i.ak = load i64, ptr %i.s, align 8, !alias.scope !1251, !noundef !4 ; 3 uses
  %i.al = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1251, !noundef !4
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.q unwind label %bb.n, !noalias !1252

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #28
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.p:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content15SeqDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.ap = load ptr, ptr %i.r, align 8, !alias.scope !1251, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.ar = add i64 %i.ak, 1
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.s:                                             ; preds = %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.f = ptrtoint ptr %.val1.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 32768) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.k = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !25, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.r = icmp samesign ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.n, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  invoke void @_RINvXsH_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %bb.p unwind label %bb.o

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.v = load i64, ptr %i.c, align 8, !range !1256, !noundef !4 ; 3 uses
  switch i64 %i.v, label %bb.g [
    i64 -3, label %bb.f
    i64 -2, label %bb.l
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.w = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
  br label %bb.n

bb.g:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.v, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !1257, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1257, !noundef !4
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.i, !noalias !1258

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = icmp eq i64 %i.v, -1
  br i1 %i.ac, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.l:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ae = load ptr, ptr %i.s, align 8, !alias.scope !1257, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.n:                                             ; preds = %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtBb_7Visitor9visit_seqINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB3Q_4read9SliceReadEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = zext i1 %2 to i8
  store i8 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.h = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !25, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.p, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  invoke void @_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.ak, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.q

_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.r = load i64, ptr %i.c, align 8, !range !26, !noundef !4 ; 2 uses
  switch i64 %i.r, label %bb.j [
    i64 -2, label %bb.f
    i64 -1, label %bb.n
  ]

bb.f:                                             ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.s = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.u = load ptr, ptr %i.o, align 8, !alias.scope !1268, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = load i64, ptr %i.p, align 8, !alias.scope !1268, !noundef !4 ; 4 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, %i.v
  br i1 %i.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %.sroa.0.0.i.i.i12 = phi i64 [ %i.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.0.i.i.i12
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i.i12, 1    ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.g, !noalias !1268

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i: ; preds = %.lr.ph14
  %i.aa = add nuw nsw i64 %.sroa.0.1.i.i.i13, 1   ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.v
  br i1 %i.ab, label %.body.i, label %.lr.ph14

bb.g:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = icmp eq i64 %i.z, %i.v
  br i1 %i.ad, label %.body.i, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i
  %.sroa.0.1.i.i.i13 = phi i64 [ %i.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.1.i.i.i13
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i unwind label %bb.h, !noalias !1268

bb.h:                                             ; preds = %.lr.ph14
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1268
  unreachable

.body.i:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i, %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.j:                                             ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.r, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, i64 32, i1 false)
  %i.ah = load i64, ptr %i.p, align 8, !alias.scope !1269, !noundef !4 ; 3 uses
  %i.ai = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1269, !noundef !4
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !1270

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %_RINvYINtNtCsaPlfBUY5LAj_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess12next_elementNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.am = load ptr, ptr %i.o, align 8, !alias.scope !1269, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.ao = add i64 %i.ah, 1
  store i64 %i.ao, ptr %i.p, align 8, !alias.scope !1269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorTNtNtBQ_6string6StringB28_EENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.f = ptrtoint ptr %.val1.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 21845) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.k = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !25, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.r = icmp samesign ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.n, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  invoke void @_RINvXsH_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgCecv3eZDcN_5alloc6string6StringB3E_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringB2S_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.ab, %bb.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %bb.o unwind label %bb.n

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringB2S_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.v = load i64, ptr %i.c, align 8, !range !26, !noundef !4 ; 2 uses
  switch i64 %i.v, label %bb.g [
    i64 -2, label %bb.f
    i64 -1, label %bb.k
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringB2S_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.w = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
  br label %bb.m

bb.g:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringB2S_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.v, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, i64 40, i1 false)
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !1274, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1274, !noundef !4
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_EE8grow_oneCshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.i, !noalias !1275

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #28
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringB2S_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr %i.s, align 8, !alias.scope !1274, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %i.t, align 8, !alias.scope !1274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.m:                                             ; preds = %bb.f, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorTNtNtBQ_6string6StringdEENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.f = ptrtoint ptr %.val1.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 32768) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.k = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !25, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.r = icmp samesign ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.n, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.t, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  invoke void @_RINvXsH_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgCecv3eZDcN_5alloc6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.ao, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.q

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.v = load i64, ptr %i.c, align 8, !range !26, !noundef !4 ; 2 uses
  switch i64 %i.v, label %bb.j [
    i64 -2, label %bb.f
    i64 -1, label %bb.n
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.w = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !1285, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !alias.scope !1285, !noundef !4 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %.lr.ph
  %i.ab = icmp eq i64 %i.ad, %i.z
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %.sroa.0.0.i.i.i13 = phi i64 [ %i.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.0.0.i.i.i13
  %i.ad = add nuw nsw i64 %.sroa.0.0.i.i.i13, 1   ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.g, !noalias !1285

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i: ; preds = %.lr.ph15
  %i.ae = add nuw nsw i64 %.sroa.0.1.i.i.i14, 1   ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.z
  br i1 %i.af, label %.body.i, label %.lr.ph15

bb.g:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %i.ad, %i.z
  br i1 %i.ah, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i
  %.sroa.0.1.i.i.i14 = phi i64 [ %i.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.0.1.i.i.i14
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i unwind label %bb.h, !noalias !1285

bb.h:                                             ; preds = %.lr.ph15
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1285
  unreachable

.body.i:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i, %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.j:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.v, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %i.al = load i64, ptr %i.t, align 8, !alias.scope !1286, !noundef !4 ; 3 uses
  %i.am = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1286, !noundef !4
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEE8grow_oneCshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !1287

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.aq = load ptr, ptr %i.s, align 8, !alias.scope !1286, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.as = add i64 %i.al, 1
  store i64 %i.as, ptr %i.t, align 8, !alias.scope !1286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorTNtNtBQ_6string6StringdEENtBb_7Visitor9visit_seqQNtNtNtCsaPlfBUY5LAj_10serde_json5value2de15SeqDeserializerECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = tail call { i64, i64 } @_RNvXs8_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB5_15SeqDeserializerNtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess9size_hint(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = extractvalue { i64, i64 } %i.e, 1
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 32768)
  %.sroa.07.0 = select i1 %i.g, i64 %i.i, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.07.0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.j = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !25, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.q = icmp samesign ule i64 %.sroa.07.0, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  invoke void @_RINvXs8_NtNtCsaPlfBUY5LAj_10serde_json5value2deNtB6_15SeqDeserializerNtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataTNtNtCsgCecv3eZDcN_5alloc6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQNtNtNtCsaPlfBUY5LAj_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.an, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.q

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQNtNtNtCsaPlfBUY5LAj_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !range !26, !noundef !4 ; 2 uses
  switch i64 %i.u, label %bb.j [
    i64 -2, label %bb.f
    i64 -1, label %bb.n
  ]

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQNtNtNtCsaPlfBUY5LAj_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.v = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !align !16, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  %i.x = load ptr, ptr %i.r, align 8, !alias.scope !1297, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = load i64, ptr %i.s, align 8, !alias.scope !1297, !noundef !4 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %.lr.ph
  %i.aa = icmp eq i64 %i.ac, %i.y
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  %.sroa.0.0.i.i.i13 = phi i64 [ %i.ac, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.0.0.i.i.i13
  %i.ac = add nuw nsw i64 %.sroa.0.0.i.i.i13, 1   ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.g, !noalias !1297

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i: ; preds = %.lr.ph15
  %i.ad = add nuw nsw i64 %.sroa.0.1.i.i.i14, 1   ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.y
  br i1 %i.ae, label %.body.i, label %.lr.ph15

bb.g:                                             ; preds = %.lr.ph
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = icmp eq i64 %i.ac, %i.y
  br i1 %i.ag, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i
  %.sroa.0.1.i.i.i14 = phi i64 [ %i.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.0.1.i.i.i14
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i unwind label %bb.h, !noalias !1297

bb.h:                                             ; preds = %.lr.ph15
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1297
  unreachable

.body.i:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i.i.i, %bb.g
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.af, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.j:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQNtNtNtCsaPlfBUY5LAj_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.u, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, i64 24, i1 false)
  %i.ak = load i64, ptr %i.s, align 8, !alias.scope !1298, !noundef !4 ; 3 uses
  %i.al = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1298, !noundef !4
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEE8grow_oneCshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l, !noalias !1299

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQNtNtNtCsaPlfBUY5LAj_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.ap = load ptr, ptr %i.r, align 8, !alias.scope !1298, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.ar = add i64 %i.ak, 1
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtBG_6string6StringdEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitormENtBb_7Visitor9visit_seqQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %.val.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = ptrtoint ptr %.val1.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 262144) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.j = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !25, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.q = icmp samesign ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXsH_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatamEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementmECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.m

_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementmECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.d
  %i.w = load i32, ptr %i.b, align 8, !range !1302, !noundef !4
  %i.x = trunc nuw i32 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementmECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !4, !align !16, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.l

bb.g:                                             ; preds = %_RINvXs4_NtCseZbltJ5Yqe_10serde_core2deQINtNtNtNtCsiOg657KYfD4_5serde7private2de7content18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementmECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.aa = load i32, ptr %i.t, align 4, !range !1302, !noundef !4
  %i.ab = trunc nuw i32 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.u, align 8
  %i.ad = load i64, ptr %i.s, align 8, !alias.scope !1303, !noundef !4 ; 3 uses
  %i.ae = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1303, !noundef !4
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1iR9fsnIZRd_7bit_vec(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #32
          to label %bb.k unwind label %bb.e

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.ag = load ptr, ptr %i.r, align 8, !alias.scope !1303, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ad
  store i32 %i.ac, ptr %i.ah, align 4
  %i.ai = add i64 %i.ad, 1
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.l:                                             ; preds = %bb.f, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.v
}

end_hunk_3
begin_hunk_4_@_RNvXs_NvNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect14default_extendTINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEIB17_mEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1D_mEEE6extendCsemnSGAKhbl_26candle_wasm_example_llama2:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1780, !noundef !4 ; 2 uses
  %i.j = load i64, ptr %0, align 8, !range !9, !alias.scope !1780, !noundef !4
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.c, label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef 8, i64 noundef 8)
          to label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.e

_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1781, !noundef !4 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !range !9, !alias.scope !1781, !noundef !4
  %i.q = sub i64 %i.p, %i.o
  %i.r = icmp ugt i64 %i.g, %i.q
  br i1 %i.r, label %bb.d, label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter6traits7collectTINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEIBQ_mEEINtB5_6ExtendTB1m_mEE14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit, !prof !5

bb.d:                                             ; preds = %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.o, i64 noundef range(i64 1, 0) %i.g, i64 noundef 4, i64 noundef 4)
          to label %_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter6traits7collectTINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEIBQ_mEEINtB5_6ExtendTB1m_mEE14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.e

_RNvXs2_NtNtNtCsf3Ta7LF998c_4core4iter6traits7collectTINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEIBQ_mEEINtB5_6ExtendTB1m_mEE14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB2c_8for_each4callBX_NCINvNvNtB2g_7collect14default_extend18unchecked_extenderTINtB8_3VecBY_EIB4C_mEEBX_E0E0ECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %bb.c, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEEECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1785
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !1785
  %i.h = load i64, ptr %i.a, align 8, !range !10, !noalias !1785, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !25, !noalias !1785, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1785
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !1785
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1785, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1785
  store i64 %i.k, ptr %i.c, align 8, !noalias !1785
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1785
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1785
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !1786

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1785
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !1786
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !1785
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.g unwind label %bb.e, !noalias !1786

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !1785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1785
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1792
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !1792
  %i.f = load i64, ptr %i.a, align 8, !range !10, !noalias !1792, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !25, !noalias !1792, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1792
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !1792
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1792, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1792
  store i64 %i.i, ptr %0, align 8, !alias.scope !1791
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !1791
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !1791
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %i.p = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !1791
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !1791
  br label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2.exit

_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCsl6Ztq2JS0CE_4slab5EntryINtNtCsf3Ta7LF998c_4core6option6OptionINtNtB7_2rc2RcDINtNtNtB1c_3ops8function2FnTINtNtB1c_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_EEEENtNtB23_4drop4Drop4dropB2R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1v_6string6StringEEEp6OutputuEL_EEEEB2N_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  %i.h = load i64, ptr %i.f, align 8, !range !10, !alias.scope !1804, !noundef !4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1806, !noundef !4 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !noalias !1807, !noundef !4
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.k, align 8, !noalias !1807
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDINtNtNtCsf3Ta7LF998c_4core3ops8function2FnTINtNtBL_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB7_6string6StringEEEp6OutputuEL_E9drop_slowB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1v_6string6StringEEEp6OutputuEL_EEEEB2N_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %.sroa.0.1.i7, 1         ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.g, %i.d
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.e
  %.sroa.0.1.i7 = phi i64 [ %i.q, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i7
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #28
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1v_6string6StringEEEp6OutputuEL_EEEEB2N_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsl6Ztq2JS0CE_4slab5EntryINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcDINtNtNtB4_3ops8function2FnTINtNtB4_6result6ResultNtNtCsemnSGAKhbl_26candle_wasm_example_llama26worker12WorkerOutputNtNtB1u_6string6StringEEEp6OutputuEL_EEEEB2M_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !11, !alias.scope !1814, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !11, !alias.scope !1815, !noundef !4
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorB1i_EEENtNtNtBK_3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBZ_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1841, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1843
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1847, !nonnull !4, !noundef !4
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !1848
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %.body.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #32
          to label %.body.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1852, !nonnull !4, !noundef !4
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !1853
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i.i, %.lr.ph.i
  %i.v = icmp eq i64 %i.g, %i.d
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBZ_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.sroa.0.1.i23, 1        ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.e, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  %i.z = icmp eq i64 %i.g, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.h
  %.sroa.0.1.i23 = phi i64 [ %i.w, %bb.h ], [ %i.g, %.body.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i23
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aa) #28
          to label %bb.h unwind label %bb.j

._crit_edge:                                      ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.j:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBZ_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentB1i_EEENtNtNtBK_3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBZ_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %i.h = load i8, ptr %i.f, align 8, !range !14, !alias.scope !1858, !noundef !4
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.c, !inline_history !15

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #34
          to label %.body.i unwind label %bb.d, !inline_history !15

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !15
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBZ_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.0.1.i22, 1        ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.j, %bb.c ]
  %i.r = icmp eq i64 %i.g, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.e
  %.sroa.0.1.i22 = phi i64 [ %i.o, %bb.e ], [ %i.g, %.body.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.s) #28
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBZ_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBY_EEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionmEENtNtNtBK_3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCshigRrDowciq_6float86F8E4M3ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #28
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw i64 %.sroa.0.0.i1, 1             ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1859

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw i64 %.sroa.0.1.i2, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #28
          to label %bb.c unwind label %bb.e, !inline_history !1859

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1859
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsdsILkMb8ZHY_4half6bfloat4bf16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsdsILkMb8ZHY_4half8binary163f16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #28
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEBG_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [240 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [240 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEBF_(ptr noalias nofree noundef align 8 dereferenceable(240) %i.m) #28
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockEBG_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1860

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.m) #28
          to label %bb.c unwind label %bb.e, !inline_history !1860

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1860
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1878, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1879
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !1883, !nonnull !4, !noundef !4
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !1884
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #32
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #28
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw i64 %.sroa.0.0.i1, 1             ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1885

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw i64 %.sroa.0.1.i2, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #28
          to label %bb.c unwind label %bb.e, !inline_history !1885

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1885
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !11, !alias.scope !1892, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !11, !alias.scope !1893, !noundef !4
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit8.i, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i21 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.0.i21 ; 5 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i21, 1        ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i.i unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i.i: ; preds = %bb.c, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.i, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.f

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i.i, %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %.lr.ph23
  %i.p = add nuw nsw i64 %.sroa.0.1.i22, 1        ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph23

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit3.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %.pn.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit2.i.i ]
  %i.s = icmp eq i64 %i.h, %i.d
  br i1 %i.s, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i22 = phi i64 [ %i.p, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(80) %i.t) #28
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph23
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer10normalizer16NormalizedStringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer13pre_tokenizer5SplitECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer13pre_tokenizer5SplitECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer13pre_tokenizer5SplitECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(104) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer13pre_tokenizer5SplitECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(104) %i.m) #28
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer13pre_tokenizer5SplitECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw i64 %.sroa.0.0.i1, 1             ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(256) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1894

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw i64 %.sroa.0.1.i2, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(256) %i.m) #28
          to label %bb.c unwind label %bb.e, !inline_history !1894

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1894
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer8encoding8EncodingECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCskNPKTEkpOem_12aho_corasick3nfa13noncontiguous10TransitionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCskNPKTEkpOem_12aho_corasick3nfa13noncontiguous5MatchENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCskNPKTEkpOem_12aho_corasick3nfa13noncontiguous5StateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives10SmallIndexENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives7StateIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCskNPKTEkpOem_12aho_corasick4util10primitives9PatternIDENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCshBhMCGs0DAb_10tokenizers6models3bpe4word6SymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecReENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringBD_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringBD_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i13, 1        ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.m = add nuw nsw i64 %.sroa.0.1.i14, 1        ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #28
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringBD_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringdEECsemnSGAKhbl_26candle_wasm_example_llama2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBD_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.c
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBD_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add nuw i64 %.sroa.0.0.i13, 1            ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g) #33
          to label %bb.c unwind label %bb.b, !inline_history !1895

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #34
          to label %.body unwind label %bb.d, !inline_history !1895

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.f, !inline_history !1895

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1895
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.m = add nuw i64 %.sroa.0.1.i14, 1            ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body, %bb.e
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.e ], [ %i.h, %.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q) #28
          to label %bb.e unwind label %bb.g, !inline_history !1896

._crit_edge:                                      ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !inline_history !1896
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBD_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTRNtNtNtCshBhMCGs0DAb_10tokenizers9tokenizer16added_vocabulary10AddedTokenmEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VeclENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecxENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsemnSGAKhbl_26candle_wasm_example_llama2() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsemnSGAKhbl_26candle_wasm_example_llama2() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsemnSGAKhbl_26candle_wasm_example_llama2(i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1I_10tensor_catB1E_3catB1D_NtNtB1I_5shape1DEs_0EINtNtB6_6result6ResultzNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1I_10tensor_catB1E_3catB1D_NtNtB1I_5shape1DEs_0EINtNtB6_6result6ResultzNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1I_10tensor_catB1E_3catB1D_jEs_0EINtNtB6_6result6ResultzNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1I_10tensor_catB1E_3catB1D_jEs_0EINtNtB6_6result6ResultzNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtCsjlHezul7jxg_14implicit_clone6unsync5arrayINtB5_14IArrayIntoIterNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsemnSGAKhbl_26candle_wasm_example_llama2(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template12SpecialTokenEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTjINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEENtNtBV_4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionmEENtNtNtBR_3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace15BacktraceSymbolENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsaPlfBUY5LAj_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsemnSGAKhbl_26candle_wasm_example_llama25model5BlockENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers10processors20PostProcessorWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers11normalizers17NormalizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers8decoders14DecoderWrapperENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCshBhMCGs0DAb_10tokenizers9tokenizer5TokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCshBhMCGs0DAb_10tokenizers10processors8template5PieceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

end_hunk_4
