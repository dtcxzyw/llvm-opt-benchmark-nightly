Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/app.app.a6aa535f4ccb57b8-cgu.0?download=true
inline.NumInlined: 325
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCsej9Ent4Ed1A_3app4main:bb.a

bb.cj:                                            ; preds = %bb.j
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = icmp ugt i32 %i.ak, 1027
  br i1 %i.ew, label %common.resume.sink.split, label %common.resume

bb.ck:                                            ; preds = %_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE10with_propsCsej9Ent4Ed1A_3app.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = icmp ugt i32 %i.ak, 1027
  br i1 %i.ey, label %common.resume.sink.split, label %common.resume

_RNvMs0_NtCs9OLX912zl7o_3yew8rendererINtB5_8RendererNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE6renderCsej9Ent4Ed1A_3app.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew10dom_bundle8position14DynamicDomSlotECsej9Ent4Ed1A_3app.exit.i.i, %.thread.i.i, %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !789
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs9OLX912zl7o_3yew4html9component5scope5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppEECsej9Ent4Ed1A_3app(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcuE9drop_slowCsej9Ent4Ed1A_3app(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc4WeakuRNtNtBG_5alloc6GlobalEECsej9Ent4Ed1A_3app.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc4WeakuRNtNtBG_5alloc6GlobalEECsej9Ent4Ed1A_3app.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 8) #21
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc4WeakuRNtNtBG_5alloc6GlobalEECsej9Ent4Ed1A_3app.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc4WeakuRNtNtBG_5alloc6GlobalEECsej9Ent4Ed1A_3app.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsf3Ta7LF998c_4core3anyINtNtNtNtCs9OLX912zl7o_3yew4html9component5scope5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB2_3Any7type_idCsej9Ent4Ed1A_3app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @17, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsf3Ta7LF998c_4core3anyINtNtNtNtCs9OLX912zl7o_3yew4html9component9lifecycle14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB2_3Any7type_idCsej9Ent4Ed1A_3app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @18, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs9OLX912zl7o_3yew4html9component9lifecycleINtB5_14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB5_8Stateful13props_changedCsej9Ent4Ed1A_3app(ptr noalias nofree readonly align 8 captures(none) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !836
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !noalias !836
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !8, !alias.scope !835, !noalias !834
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !836
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !8, !alias.scope !835, !noalias !834, !nonnull !8
  invoke void %i.m(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.k)
          to label %_RINvMsj_NtCsgCecv3eZDcN_5alloc2rcINtB6_2RcDNtNtCsf3Ta7LF998c_4core3any3AnyEL_E8downcastuECsej9Ent4Ed1A_3app.exit unwind label %bb.b, !noalias !834

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %1, align 8, !noalias !837, !noundef !8
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %1, align 8, !noalias !837
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtB4_3any3AnyEL_EECsej9Ent4Ed1A_3app.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDNtNtCsf3Ta7LF998c_4core3any3AnyEL_E9drop_slowCs2GcDCvDZtfb_12gloo_history(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtB4_3any3AnyEL_EECsej9Ent4Ed1A_3app.exit.i unwind label %bb.d, !noalias !834

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !834
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcDNtNtB4_3any3AnyEL_EECsej9Ent4Ed1A_3app.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.n

_RINvMsj_NtCsgCecv3eZDcN_5alloc2rcINtB6_2RcDNtNtCsf3Ta7LF998c_4core3any3AnyEL_E8downcastuECsej9Ent4Ed1A_3app.exit: ; preds = %bb.a
  %i.s = load i128, ptr %i.a, align 16, !noalias !836, !noundef !8
  %i.t = icmp eq i128 %i.s, 7954624184318742432034558525444319996 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !836
  %spec.select.i = select i1 %i.t, ptr %1, ptr %2
  %spec.select2.i = select i1 %i.t, ptr null, ptr %1
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %spec.select.i, ptr %i.u, align 8, !alias.scope !834, !noalias !835
  store ptr %spec.select2.i, ptr %i.c, align 8, !alias.scope !834, !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_RINvMsj_NtCsgCecv3eZDcN_5alloc2rcINtB6_2RcDNtNtCsf3Ta7LF998c_4core3any3AnyEL_E8downcastuECsej9Ent4Ed1A_3app.exit
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = load i64, ptr %1, align 8, !noalias !838, !noundef !8
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %1, align 8, !noalias !838
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcuEECsej9Ent4Ed1A_3app.exit5

bb.f:                                             ; preds = %bb.e
  call fastcc void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcuE9drop_slowCsej9Ent4Ed1A_3app(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #20
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcuEECsej9Ent4Ed1A_3app.exit5

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcuEECsej9Ent4Ed1A_3app.exit5: ; preds = %bb.f, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc2rc2RcuEIBY_DNtNtB4_3any3AnyEL_EEECsej9Ent4Ed1A_3app.exit6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 false

bb.g:                                             ; preds = %_RINvMsj_NtCsgCecv3eZDcN_5alloc2rcINtB6_2RcDNtNtCsf3Ta7LF998c_4core3any3AnyEL_E8downcastuECsej9Ent4Ed1A_3app.exit
  %i.y = load i64, ptr %1, align 8, !noalias !839, !noundef !8
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %1, align 8, !noalias !839
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc2rc2RcuEIBY_DNtNtB4_3any3AnyEL_EEECsej9Ent4Ed1A_3app.exit6

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcDNtNtCsf3Ta7LF998c_4core3any3AnyEL_E9drop_slowCs2GcDCvDZtfb_12gloo_history(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #20
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc2rc2RcuEIBY_DNtNtB4_3any3AnyEL_EEECsej9Ent4Ed1A_3app.exit6

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc2rc2RcuEIBY_DNtNtB4_3any3AnyEL_EEECsej9Ent4Ed1A_3app.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc2RcuEECsej9Ent4Ed1A_3app.exit5
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtNtCs9OLX912zl7o_3yew4html9component9lifecycleINtB5_14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB5_8Stateful14flush_messagesCsej9Ent4Ed1A_3app(ptr noalias nofree noundef align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !855
  store i64 0, ptr %i.a, align 8, !noalias !855
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !855
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !855
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !855, !noundef !8
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_RNvMNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope12feat_csr_ssrINtB2_8MsgQueueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgE5drainCsej9Ent4Ed1A_3app.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
          to label %bb.c unwind label %bb.d, !noalias !855

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEECsej9Ent4Ed1A_3app(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23, !noalias !855
  br label %common.resume

_RNvMNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope12feat_csr_ssrINtB2_8MsgQueueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgE5drainCsej9Ent4Ed1A_3app.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !856, !noalias !857 ; 3 uses
  store i64 0, ptr %i.j, align 8, !alias.scope !856, !noalias !857
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !858, !noalias !859
  store i64 8, ptr %i.k, align 8, !alias.scope !858, !noalias !859
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !860, !noalias !861 ; 3 uses
  store i64 0, ptr %i.l, align 8, !alias.scope !860, !noalias !861
  %i.m = inttoptr i64 %.sroa.0.0.copyload.i.1.i.i.i.i.i to ptr ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !855
  %i.n = icmp ult i64 %.sroa.0.0.copyload.i.2.i.i.i.i.i, 164703072086692426
  tail call void @llvm.assume(i1 %i.n)
  %.idx = mul nuw nsw i64 %.sroa.0.0.copyload.i.2.i.i.i.i.i, 56
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i.2.i.i.i.i.i, 0
  br i1 %i.p, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.lr.ph: ; preds = %_RNvMNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope12feat_csr_ssrINtB2_8MsgQueueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgE5drainCsej9Ent4Ed1A_3app.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit

bb.e:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEECsej9Ent4Ed1A_3app(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #23
  br label %common.resume

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.lr.ph, %_RNvXs_NtNtCs9OLX912zl7o_3yew4html9componentNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppNtB4_13BaseComponent6updateCsej9Ent4Ed1A_3app.exit
  %.sroa.0.019 = phi i1 [ false, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.lr.ph ], [ %spec.select, %_RNvXs_NtNtCs9OLX912zl7o_3yew4html9componentNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppNtB4_13BaseComponent6updateCsej9Ent4Ed1A_3app.exit ] ; 2 uses
  %.sroa.4.8.1018 = phi ptr [ %i.m, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.lr.ph ], [ %i.r, %_RNvXs_NtNtCs9OLX912zl7o_3yew4html9componentNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppNtB4_13BaseComponent6updateCsej9Ent4Ed1A_3app.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.8.1018, i64 56 ; 4 uses
  %.sroa.011.0.copyload12 = load i64, ptr %.sroa.4.8.1018, align 8, !noalias !862 ; 2 uses
  %.not = icmp eq i64 %.sroa.011.0.copyload12, -1
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit
  %.sroa.7.0..sroa.4.8.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.8.1018, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.011.0.copyload12, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa.4.8.10.sroa_idx, i64 48, i1 false)
  %i.s = invoke noundef zeroext i1 @_RNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b)
          to label %_RNvXs_NtNtCs9OLX912zl7o_3yew4html9componentNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppNtB4_13BaseComponent6updateCsej9Ent4Ed1A_3app.exit unwind label %bb.e

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit, %_RNvMNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope12feat_csr_ssrINtB2_8MsgQueueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgE5drainCsej9Ent4Ed1A_3app.exit
  %1 = phi ptr [ %i.m, %_RNvMNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope12feat_csr_ssrINtB2_8MsgQueueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgE5drainCsej9Ent4Ed1A_3app.exit ], [ %i.r, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit ] ; 3 uses
  %.sroa.0.0.lcssa = phi i1 [ false, %_RNvMNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope12feat_csr_ssrINtB2_8MsgQueueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgE5drainCsej9Ent4Ed1A_3app.exit ], [ %.sroa.0.019, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit ] ; 2 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 56
  %i.x = icmp eq ptr %i.o, %1
  br i1 %i.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgECsej9Ent4Ed1A_3app.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.thread, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.thread ] ; 2 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %.sroa.0.07.i.i.i
  %i.z = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgECsej9Ent4Ed1A_3app(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.y), !noalias !863
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgECsej9Ent4Ed1A_3app.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgECsej9Ent4Ed1A_3app.exit.i.i: ; preds = %_RNvXs_NtNtCs9OLX912zl7o_3yew4html9componentNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppNtB4_13BaseComponent6updateCsej9Ent4Ed1A_3app.exit, %.lr.ph.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.thread
  %.sroa.0.0.lcssa29 = phi i1 [ %.sroa.0.0.lcssa, %.lr.ph.i.i.i ], [ %.sroa.0.0.lcssa, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit.thread ], [ %spec.select, %_RNvXs_NtNtCs9OLX912zl7o_3yew4html9componentNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppNtB4_13BaseComponent6updateCsej9Ent4Ed1A_3app.exit ]
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEECsej9Ent4Ed1A_3app.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgECsej9Ent4Ed1A_3app.exit.i.i
  %i.ac = mul nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 56
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !863
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEECsej9Ent4Ed1A_3app.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgEECsej9Ent4Ed1A_3app.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgECsej9Ent4Ed1A_3app.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0.lcssa29

_RNvXs_NtNtCs9OLX912zl7o_3yew4html9componentNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppNtB4_13BaseComponent6updateCsej9Ent4Ed1A_3app.exit: ; preds = %bb.f
  %spec.select = select i1 %i.s, i1 true, i1 %.sroa.0.019 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = icmp eq ptr %i.r, %i.o
  br i1 %i.ad, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgECsej9Ent4Ed1A_3app.exit.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3MsgENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsej9Ent4Ed1A_3app.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCs9OLX912zl7o_3yew4html9component9lifecycleINtB5_14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB5_8Stateful4viewCsej9Ent4Ed1A_3app(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @_RNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4view(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtNtCs9OLX912zl7o_3yew4html9component9lifecycleINtB5_14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB5_8Stateful6as_anyCsej9Ent4Ed1A_3app(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @19, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtNtCs9OLX912zl7o_3yew4html9component9lifecycleINtB5_14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB5_8Stateful7destroyCsej9Ent4Ed1A_3app(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCs9OLX912zl7o_3yew4html9component9lifecycleINtB5_14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB5_8Stateful8renderedCsej9Ent4Ed1A_3app(ptr noalias nofree noundef align 8 dereferenceable(160) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component8rendered(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtNtCs9OLX912zl7o_3yew4html9component9lifecycleINtB5_14CompStateInnerNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtB5_8Stateful9any_scopeCsej9Ent4Ed1A_3app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !878, !noalias !879, !nonnull !8, !noundef !8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !880, !noundef !8 ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !noalias !880
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !878, !noalias !879, !noundef !8 ; 10 uses
  %.not.i = icmp eq ptr %i.j, null                ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !noalias !880, !noundef !8 ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.m, ptr %i.j, align 8, !noalias !880
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !878, !noalias !879, !nonnull !8, !noundef !8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !880, !noundef !8 ; 2 uses
  %i.r = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add i64 %i.q, 1                          ; 2 uses
  store i64 %i.s, ptr %i.p, align 8, !noalias !880
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsej9Ent4Ed1A_3app.exit, !prof !20

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsej9Ent4Ed1A_3app.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !878, !noalias !879, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !882
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsej9Ent4Ed1A_3app.exit
  %i.w = load i64, ptr %i.j, align 8, !noalias !882, !noundef !8 ; 2 uses
  %i.x = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !noalias !882
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h, %_RNvXs2_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB5_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsej9Ent4Ed1A_3app.exit
  store ptr %i.j, ptr %i.b, align 8, !noalias !882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !882
  store i64 1, ptr %i.a, align 8, !noalias !882
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !882
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.ab, align 8, !noalias !881
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !881
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !881
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.v, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !881
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !883
  %i.ac = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 177) 48, i64 noundef range(i64 1, 9) 8) #21, !noalias !883 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %_RNvXs_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeNtB4_8AnyScopeINtNtCsf3Ta7LF998c_4core7convert4FromINtB4_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppEE4fromCsej9Ent4Ed1A_3app.exit, !prof !18

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #25
          to label %.noexc.i unwind label %bb.k, !noalias !882

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs9OLX912zl7o_3yew4html9component5scope5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppEECsej9Ent4Ed1A_3app(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %.body.i unwind label %bb.l, !noalias !882

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !882
  unreachable

bb.m:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.k
  br i1 %.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope8AnyScopeEEECsej9Ent4Ed1A_3app.exit.i, label %bb.n

bb.n:                                             ; preds = %.body.i
  %i.ag = load i64, ptr %i.j, align 8, !noalias !884, !noundef !8
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.j, align 8, !noalias !884
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope8AnyScopeEEECsej9Ent4Ed1A_3app.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope8AnyScopeE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope8AnyScopeEEECsej9Ent4Ed1A_3app.exit.i unwind label %bb.p, !noalias !882

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !882
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc2rc2RcNtNtNtNtCs9OLX912zl7o_3yew4html9component5scope8AnyScopeEEECsej9Ent4Ed1A_3app.exit.i: ; preds = %bb.o, %bb.n, %.body.i
  resume { ptr, i32 } %i.ae

_RNvXs_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeNtB4_8AnyScopeINtNtCsf3Ta7LF998c_4core7convert4FromINtB4_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppEE4fromCsej9Ent4Ed1A_3app.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !882
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) @28, i64 16, i1 false), !noalias !885
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.al, align 8, !alias.scope !881, !noalias !885
  store ptr %i.ac, ptr %0, align 8, !alias.scope !881, !noalias !885
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @27, ptr %i.am, align 8, !alias.scope !881, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !882
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtB8_6marker11PhantomDataTNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEENtB6_5Debug3fmtCsej9Ent4Ed1A_3app(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @35, ptr %i.b, align 8, !captures !886
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
