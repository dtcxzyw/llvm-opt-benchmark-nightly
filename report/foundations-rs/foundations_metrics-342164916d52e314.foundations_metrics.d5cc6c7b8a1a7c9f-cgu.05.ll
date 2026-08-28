Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_metrics-342164916d52e314.foundations_metrics.d5cc6c7b8a1a7c9f-cgu.05?download=true
inline.NumInlined: 220
inline.NumDeleted: 114
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs9a0jf852eb6_17prometheus_client8registry10DescriptorINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtBE_6MetricEL_EEECsim2LhUzKY4R_19foundations_metrics:bb.a
bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !706
  %i.n = load i64, ptr %i.m, align 8, !dbg !706, !range !321, !invariant.load !14 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0, !dbg !710
  br i1 %i.o, label %common.resume, label %bb.h, !dbg !710

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !706
  %i.q = load i64, ptr %i.p, align 8, !dbg !711, !range !463, !invariant.load !14
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22, !dbg !714
  br label %common.resume, !dbg !719

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !688

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs9a0jf852eb6_17prometheus_client8registry6MetricEL_EECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %bb.e, %bb.f
  ret void, !dbg !688

bb.i:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !dbg !688
  unreachable, !dbg !688
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyENvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_familyENtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model12MetricFamilyEB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !720 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !723
  %i.c = load i64, ptr %i.b, align 8, !dbg !723, !noundef !14 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !dbg !725, !nonnull !14, !noundef !14 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !726
  %i.f = load ptr, ptr %i.e, align 8, !dbg !726, !noundef !14
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyENvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_familyENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model12MetricFamilyENCINvNtB12_16in_place_collect24write_in_place_with_dropB6h_E0INtNtBc_6result6ResultB5G_zEEB3C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !dbg !727

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyENvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_familyEEB3O_.exit unwind label %bb.g, !dbg !733

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1, !dbg !727
  %i.j = ptrtoint ptr %i.i to i64, !dbg !738
  %i.k = ptrtoint ptr %i.d to i64, !dbg !738
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !738
  %i.m = udiv exact i64 %i.l, 104, !dbg !738      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !745
  store ptr %i.d, ptr %i.a, align 8, !dbg !748
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !748
  store i64 %i.m, ptr %i.n, align 8, !dbg !748
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !748
  store i64 %i.c, ptr %i.o, align 8, !dbg !748
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyE32forget_allocation_drop_remainingCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !dbg !749

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model12MetricFamilyEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %bb.b unwind label %bb.g, !dbg !751

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8, !dbg !752
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !752
  store ptr %i.d, ptr %i.q, align 8, !dbg !752
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !752
  store i64 %i.m, ptr %i.r, align 8, !dbg !752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !751
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !757
  ret void, !dbg !760

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !dbg !761
  unreachable, !dbg !761

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model12MetricFamilyENvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_familyEEB3O_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !761
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairENCNvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_metric0ENtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairEB4a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !762 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !763
  %i.c = load i64, ptr %i.b, align 8, !dbg !763, !noundef !14 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !dbg !765, !nonnull !14, !noundef !14 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !766
  %i.f = load ptr, ptr %i.e, align 8, !dbg !766, !noundef !14
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairENCNvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_metric0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairENCINvNtB12_16in_place_collect24write_in_place_with_dropB6g_E0INtNtBc_6result6ResultB5F_zEEB3A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !dbg !767

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairENCNvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_metric0EEB3M_.exit unwind label %bb.g, !dbg !772

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1, !dbg !767
  %i.j = ptrtoint ptr %i.i to i64, !dbg !777
  %i.k = ptrtoint ptr %i.d to i64, !dbg !777
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !777
  %i.m = udiv exact i64 %i.l, 48, !dbg !777       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !784
  store ptr %i.d, ptr %i.a, align 8, !dbg !787
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !787
  store i64 %i.m, ptr %i.n, align 8, !dbg !787
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !787
  store i64 %i.c, ptr %i.o, align 8, !dbg !787
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairE32forget_allocation_drop_remainingCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e, !dbg !788

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairNtNtNtCskerazqDcV1J_28foundations_metrics_registry5proto5model9LabelPairEECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %bb.b unwind label %bb.g, !dbg !790

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8, !dbg !791
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !791
  store ptr %i.d, ptr %i.q, align 8, !dbg !791
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !791
  store i64 %i.m, ptr %i.r, align 8, !dbg !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !790
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !796
  ret void, !dbg !799

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !dbg !800
  unreachable, !dbg !800

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtNtCs9a0jf852eb6_17prometheus_client8encoding19prometheus_protobuf21prometheus_data_model9LabelPairENCNvNtNtCsim2LhUzKY4R_19foundations_metrics7metrics16native_histogram21convert_native_metric0EEB3M_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !800
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsim2LhUzKY4R_19foundations_metrics(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 !dbg !801 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8, !dbg !803
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !803

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3, !dbg !803                 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a, !dbg !803
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a, !dbg !803
  %bound0 = icmp ult ptr %0, %scevgep5, !dbg !803
  %bound1 = icmp ult ptr %1, %scevgep, !dbg !803
  %found.conflict = and i1 %bound0, %bound1, !dbg !803
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !816

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body, !dbg !816

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !816 ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !826 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index, !dbg !830 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832), !dbg !835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836), !dbg !835
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !838 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !dbg !838, !alias.scope !841, !noalias !844
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !dbg !838, !alias.scope !841, !noalias !844
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !846 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !dbg !846, !alias.scope !844, !noalias !832
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !dbg !846, !alias.scope !844, !noalias !832
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !dbg !848, !alias.scope !841, !noalias !844
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !dbg !848, !alias.scope !841, !noalias !844
  store <2 x i64> %wide.load, ptr %i.c, align 1, !dbg !850, !alias.scope !844, !noalias !832
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !dbg !850, !alias.scope !844, !noalias !832
  %index.next = add nuw i64 %index, 4, !dbg !816  ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec, !dbg !803
  br i1 %i.f, label %middle.block, label %vector.body, !dbg !803, !llvm.loop !851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec, !dbg !803
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader, !dbg !803

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1, !dbg !803
  %lcmp.mod.not = trunc i64 %2 to i1, !dbg !803
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit, !dbg !803

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1, !dbg !816
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph, !dbg !826 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph, !dbg !830 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832), !dbg !835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836), !dbg !835
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !dbg !838, !alias.scope !832, !noalias !836
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !dbg !846, !alias.scope !836, !noalias !832
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !dbg !848, !alias.scope !832, !noalias !836
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !dbg !850, !alias.scope !836, !noalias !832
  br label %scalar.ph.prol.loopexit, !dbg !803

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg, !dbg !803
  br i1 %i.j, label %.loopexit, label %scalar.ph, !dbg !803

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void, !dbg !854

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1, !dbg !816    ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04, !dbg !826 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04, !dbg !830 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832), !dbg !835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836), !dbg !835
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !dbg !838, !alias.scope !832, !noalias !836
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !dbg !846, !alias.scope !836, !noalias !832
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !dbg !848, !alias.scope !832, !noalias !836
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !dbg !850, !alias.scope !836, !noalias !832
  %i.n = add nuw i64 %.sroa.0.04, 2, !dbg !816    ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k, !dbg !826 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k, !dbg !830 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855), !dbg !835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857), !dbg !835
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !dbg !838, !alias.scope !855, !noalias !857
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !dbg !846, !alias.scope !857, !noalias !855
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !dbg !848, !alias.scope !855, !noalias !857
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !dbg !850, !alias.scope !857, !noalias !855
  %exitcond.not.1 = icmp eq i64 %i.n, %2, !dbg !859
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !dbg !803, !llvm.loop !865
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEINtNtNtB9_7sources4once4OncedEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddTdINtNtNtBb_4sync6atomic6AtomicyEEuNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB44_13TimeHistogram3newB10_E0NCINvNvB2k_8for_each4callB3m_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB66_3VecB3m_E14extend_trustedINtB33_3MapBO_B3V_EE0E0E0EB48_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !866 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !871
  %i.c = load ptr, ptr %i.b, align 8, !dbg !871, !noundef !14 ; 4 uses
  %.not = icmp eq ptr %i.c, null, !dbg !871
  br i1 %.not, label %bb.e, label %bb.b, !dbg !873

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !871
  %i.e = load ptr, ptr %i.d, align 8, !dbg !874, !nonnull !14, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !875
  store ptr %1, ptr %i.a, align 8, !noalias !878
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !881
  br i1 %i.f, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_folddTdINtNtNtBb_4sync6atomic6AtomicyEEuNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3g_13TimeHistogram3newBP_E0NCINvNvB1v_8for_each4callB2y_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5h_3VecB2y_E14extend_trustedINtB2f_3MapINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OncedEEB37_EE0E0E0EB3k_.exit, label %bb.c, !dbg !898

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.e to i64, !dbg !899
  %i.h = ptrtoint ptr %i.c to i64, !dbg !899
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !899
  %i.j = lshr exact i64 %i.i, 3, !dbg !899
  br label %bb.d, !dbg !911

bb.d:                                             ; preds = %.noexc, %bb.c
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %.noexc ], !dbg !912 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.01.0.i.i, !dbg !913
  %.val.i.i = load double, ptr %i.k, align 8, !dbg !917, !noalias !878, !noundef !14
  invoke void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_folddTdINtNtNtBb_4sync6atomic6AtomicyEEuNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2c_13TimeHistogram3newINtNtBV_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEE0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5t_3VecB1u_E14extend_trustedINtBT_3MapINtNtBV_5chain5ChainB3w_INtNtNtBX_7sources4once4OncedEEB23_EE0E0E0INtB7_5FnMutTudEE8call_mutB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %.val.i.i)
          to label %.noexc unwind label %bb.h, !dbg !918

.noexc:                                           ; preds = %bb.d
  %i.l = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !923 ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.j, !dbg !926
  br i1 %i.m, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_folddTdINtNtNtBb_4sync6atomic6AtomicyEEuNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3g_13TimeHistogram3newBP_E0NCINvNvB1v_8for_each4callB2y_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5h_3VecB2y_E14extend_trustedINtB2f_3MapINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OncedEEB37_EE0E0E0EB3k_.exit, label %bb.d, !dbg !926

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_folddTdINtNtNtBb_4sync6atomic6AtomicyEEuNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3g_13TimeHistogram3newBP_E0NCINvNvB1v_8for_each4callB2y_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5h_3VecB2y_E14extend_trustedINtB2f_3MapINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OncedEEB37_EE0E0E0EB3k_.exit: ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !927, !noalias !875
  br label %bb.e, !dbg !928

bb.e:                                             ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_folddTdINtNtNtBb_4sync6atomic6AtomicyEEuNCINvMsb_NtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB3g_13TimeHistogram3newBP_E0NCINvNvB1v_8for_each4callB2y_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5h_3VecB2y_E14extend_trustedINtB2f_3MapINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OncedEEB37_EE0E0E0EB3k_.exit, %bb.a
  %i.n = load i64, ptr %0, align 8, !dbg !929, !range !931, !noundef !14
  %.val6 = load ptr, ptr %1, align 8, !dbg !932   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !932
  %.val7 = load i64, ptr %i.o, align 8, !dbg !932 ; 4 uses
  switch i64 %i.n, label %.lr.ph.i [
    i64 2, label %bb.g
    i64 0, label %bb.f
  ], !dbg !933

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !934
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !934
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !929
  %i.q = load double, ptr %i.p, align 8, !dbg !935
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload, i64 %.val7, !dbg !936 ; 2 uses
  store double %i.q, ptr %i.r, align 8, !dbg !960, !noalias !963
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !960
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !960, !noalias !963
  %i.s = add i64 %.val7, 1, !dbg !972
  br label %bb.f, !dbg !978

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.val6.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.val7, %bb.e ], !dbg !979
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  br label %bb.g, !dbg !980

bb.g:                                             ; preds = %bb.e, %bb.f
  %.val6.i.sink = phi i64 [ %.val6.i, %bb.f ], [ %.val7, %bb.e ]
  store i64 %.val6.i.sink, ptr %.val6, align 8, !dbg !932
  ret void, !dbg !981

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !dbg !980, !nonnull !14, !align !689, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !980
  %.val5 = load i64, ptr %i.u, align 8, !dbg !980, !noundef !14
  store i64 %.val5, ptr %.val, align 8, !dbg !982
  resume { ptr, i32 } %i.t, !dbg !994
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterdEINtNtNtB9_7sources4once4OncedEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddTdyEuNCINvMs2_NtNtCs9a0jf852eb6_17prometheus_client7metrics9histogramNtB3B_9Histogram3newINtB15_3VecdEE0NCINvNvB2l_8for_each4callB3n_NCINvMsk_B15_IB4P_B3n_E14extend_trustedINtB34_3MapBO_B3s_EE0E0E0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !995 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !996 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !996, !noundef !14
  %.not = icmp eq ptr %i.c, null, !dbg !996
  br i1 %.not, label %bb.c, label %bb.b, !dbg !998

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !999
  invoke void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduQNCINvNtNtB15_8adapters3map8map_folddTdyEuNCINvMs2_NtNtCs9a0jf852eb6_17prometheus_client7metrics9histogramNtB2P_9Histogram3newINtB8_3VecdEE0NCINvNvBZ_8for_each4callB2B_NCINvMsk_B8_IB43_B2B_E14extend_trustedINtB26_3MapINtNtB28_5chain5ChainBI_INtNtNtB15_7sources4once4OncedEEB2G_EE0E0E0ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.d unwind label %bb.g, !dbg !1000

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.d = load i64, ptr %0, align 8, !dbg !1001, !range !931, !noundef !14
  %.val6 = load ptr, ptr %1, align 8, !dbg !1003  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1003
  %.val7 = load i64, ptr %i.e, align 8, !dbg !1003 ; 4 uses
  switch i64 %i.d, label %.lr.ph.i [
    i64 2, label %bb.f
    i64 0, label %bb.e
  ], !dbg !1004

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1005
  br label %bb.c, !dbg !1006

.lr.ph.i:                                         ; preds = %bb.c
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1007
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !1007
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1001
  %i.g = load double, ptr %i.f, align 8, !dbg !1008
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload, i64 %.val7, !dbg !1009 ; 2 uses
  store double %i.g, ptr %i.h, align 8, !dbg !1022, !noalias !1025
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1022
  store i64 0, ptr %i.i, align 8, !dbg !1022, !noalias !1025
  %i.j = add i64 %.val7, 1, !dbg !1034
  br label %bb.e, !dbg !1037

bb.e:                                             ; preds = %bb.c, %.lr.ph.i
  %.val6.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.val7, %bb.c ], !dbg !1038
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  br label %bb.f, !dbg !1039

bb.f:                                             ; preds = %bb.c, %bb.e
  %.val6.i.sink = phi i64 [ %.val6.i, %bb.e ], [ %.val7, %bb.c ]
  store i64 %.val6.i.sink, ptr %.val6, align 8, !dbg !1003
  ret void, !dbg !1040

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !dbg !1039, !nonnull !14, !align !689, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1039
  %.val5 = load i64, ptr %i.l, align 8, !dbg !1039, !noundef !14
  store i64 %.val5, ptr %.val, align 8, !dbg !1041
  resume { ptr, i32 } %i.k, !dbg !1050
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2I_9Histogram3newBP_E0NCINvNvB1v_8for_each4callB2x_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4E_3VecB2x_E14extend_trustedINtB2e_3MapBP_B2C_EE0E0E0EB2M_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1051 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !1052 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1052
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1052 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1052
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !1052 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !1055
  %i.a = icmp eq ptr %0, %1, !dbg !1064
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit, label %bb.b, !dbg !1065

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !1066
  %i.c = ptrtoint ptr %0 to i64, !dbg !1066
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !1066       ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !1066       ; 3 uses
  %i.f = icmp eq i64 %i.d, 8, !dbg !1078
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !1078

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !1078
  br label %bb.c, !dbg !1078

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.p, %bb.c ], !dbg !1079 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.q, %bb.c ], !dbg !1083 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !1079
  %.val15.i = load double, ptr %i.h, align 8, !dbg !1084, !noalias !1085, !noundef !14
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !1088 ; 2 uses
  store double %.val15.i, ptr %i.i, align 8, !dbg !1100, !noalias !1103
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1100
  store i64 0, ptr %i.j, align 8, !dbg !1100, !noalias !1103
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !1079
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !1079
  %.val15.i.1 = load double, ptr %i.l, align 8, !dbg !1084, !noalias !1085, !noundef !14
  %i.m = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !1088 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16, !dbg !1088
  store double %.val15.i.1, ptr %i.n, align 8, !dbg !1100, !noalias !1103
  %i.o = getelementptr i8, ptr %i.m, i64 24, !dbg !1100
  store i64 0, ptr %i.o, align 8, !dbg !1100, !noalias !1103
  %i.p = add i64 %i.g, 2, !dbg !1112              ; 3 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 2, !dbg !1115 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !1118   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1118
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !1118

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = trunc i64 %i.e to i1, !dbg !1118
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit, !dbg !1118

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.q, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !1118
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !1118
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !1079
  %.val15.i.epil = load double, ptr %i.r, align 8, !dbg !1084, !noalias !1085, !noundef !14
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !1088 ; 2 uses
  store double %.val15.i.epil, ptr %i.s, align 8, !dbg !1100, !noalias !1103
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !1100
  store i64 0, ptr %i.t, align 8, !dbg !1100, !noalias !1103
  %i.u = add i64 %.epil.init, 1, !dbg !1112
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNtB1K_3map8map_folddTdyEuNCINvMNtNtCsim2LhUzKY4R_19foundations_metrics7metrics9histogramNtB2R_9Histogram3newINtB1I_6CopiedBF_EE0NCINvNvBS_8for_each4callB2G_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB2G_E14extend_trustedINtB2m_3MapB46_B2L_EE0E0E0E0EB2V_.exit.loopexit.unr-lcssa ], [ %i.u, %.epil.preheader ], !dbg !1119
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !1119, !noalias !1085
  ret void, !dbg !1130
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2I_3VecdE14extend_trustedBP_E0E0ECsim2LhUzKY4R_19foundations_metrics(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !1131 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !1132 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1132
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1132 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1132
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !1132 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !1135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !1135
  %i.a = icmp eq ptr %0, %1, !dbg !1144
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsim2LhUzKY4R_19foundations_metrics.exit, label %bb.b, !dbg !1145

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !1146
  %i.c = ptrtoint ptr %0 to i64, !dbg !1146       ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !1146       ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !1146             ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 80, !dbg !1158
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !1158

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !1158
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2, !dbg !1158
  %i.h = sub i64 %i.c, %i.g, !dbg !1158
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !1158
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !1159

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !1159

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1159 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !1160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !1164
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !1164, !noalias !1165
  %wide.load3 = load <2 x double>, ptr %i.l, align 8, !dbg !1164, !noalias !1165
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !1168 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !1178
  store <2 x double> %wide.load, ptr %i.m, align 8, !dbg !1178, !noalias !1181
  store <2 x double> %wide.load3, ptr %i.n, align 8, !dbg !1178, !noalias !1181
  %index.next = add nuw i64 %index, 4, !dbg !1159 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !1188
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !1188, !llvm.loop !1189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !1188
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsim2LhUzKY4R_19foundations_metrics.exit, label %scalar.ph.preheader, !dbg !1188

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !1188         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1188
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !1188

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !1160 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !1159 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !1160
  %.val15.i.prol = load double, ptr %i.q, align 8, !dbg !1164, !noalias !1165, !noundef !14
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !1168
  store double %.val15.i.prol, ptr %i.r, align 8, !dbg !1178, !noalias !1181
  %i.s = add i64 %i.p, 1, !dbg !1190              ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !1193 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !1188 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !1188
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !1188, !llvm.loop !1196

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !1188
  %i.v = icmp ugt i64 %i.u, -4, !dbg !1188
  br i1 %i.v, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsim2LhUzKY4R_19foundations_metrics.exit, label %scalar.ph, !dbg !1188

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !1160 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !1159 ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !1160
  %.val15.i = load double, ptr %i.x, align 8, !dbg !1164, !noalias !1165, !noundef !14
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !1168
  store double %.val15.i, ptr %i.y, align 8, !dbg !1178, !noalias !1181
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !1160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !1160
  %.val15.i.1 = load double, ptr %i.aa, align 8, !dbg !1164, !noalias !1165, !noundef !14
  %i.ab = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !1168
  %i.ac = getelementptr i8, ptr %i.ab, i64 8, !dbg !1168
  store double %.val15.i.1, ptr %i.ac, align 8, !dbg !1178, !noalias !1181
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !1160
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !1160
  %.val15.i.2 = load double, ptr %i.ae, align 8, !dbg !1164, !noalias !1165, !noundef !14
  %i.af = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !1168
  %i.ag = getelementptr i8, ptr %i.af, i64 16, !dbg !1168
  store double %.val15.i.2, ptr %i.ag, align 8, !dbg !1178, !noalias !1181
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !1160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !1160
  %.val15.i.3 = load double, ptr %i.ai, align 8, !dbg !1164, !noalias !1165, !noundef !14
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !1168
  %i.ak = getelementptr i8, ptr %i.aj, i64 24, !dbg !1168
  store double %.val15.i.3, ptr %i.ak, align 8, !dbg !1178, !noalias !1181
  %i.al = add i64 %i.w, 4, !dbg !1190             ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !1193 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !1188
  br i1 %i.an, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsim2LhUzKY4R_19foundations_metrics.exit, label %scalar.ph, !dbg !1188, !llvm.loop !1198

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsim2LhUzKY4R_19foundations_metrics.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !1199
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !1199, !noalias !1165
  ret void, !dbg !1208
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtBc_11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEE10initializeNCINvB1a_11get_or_initNCNvB4s_12info_metrics0E0zE0E0B4u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !1209 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1212, !nonnull !14, !align !689, !noundef !14 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1213, !align !689, !noundef !14 ; 5 uses
  store ptr null, ptr %i.a, align 8, !dbg !1221
  %.not = icmp eq ptr %i.b, null, !dbg !1223
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1226, !prof !94

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCskerazqDcV1J_28foundations_metrics_registry8registry8registerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_13encode_metric12EncodeMetricEL_EECsim2LhUzKY4R_19foundations_metrics(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, i24 65792), !dbg !1227, !noalias !1241
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @7), !dbg !1246, !noalias !1241 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !1246
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !1246
  store i64 0, ptr %i.b, align 8, !dbg !1266
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false), !dbg !1266
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1266
  store i64 %i.d, ptr %.sroa.515.0..sroa_idx.i, align 8, !dbg !1266
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1266
  store i64 %i.e, ptr %.sroa.616.0..sroa_idx.i, align 8, !dbg !1266
  ret void, !dbg !1273

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !dbg !1274
  unreachable, !dbg !1274
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtBh_11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEE10initializeNCINvB1f_11get_or_initNCNvB4x_12info_metrics0E0zE0E0INtNtNtB41_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB4z_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !1275 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1280, !nonnull !14, !align !689, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281), !dbg !1280
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1284, !alias.scope !1281, !noalias !1290, !align !689, !noundef !14 ; 5 uses
  store ptr null, ptr %i.a, align 8, !dbg !1293, !alias.scope !1281, !noalias !1290
  %.not.i.i = icmp eq ptr %i.b, null, !dbg !1294
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtBf_11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEE10initializeNCINvB1d_11get_or_initNCNvB4v_12info_metrics0E0zE0E0INtNtNtB3Z_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB4x_.exit, !dbg !1296, !prof !94

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24, !dbg !1297, !noalias !1298
  unreachable, !dbg !1297

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtBf_11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdNtNtCsim2LhUzKY4R_19foundations_metrics4info9InfoEntryEEE10initializeNCINvB1d_11get_or_initNCNvB4v_12info_metrics0E0zE0E0INtNtNtB3Z_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB4x_.exit: ; preds = %bb.a
  tail call void @_RINvNtCskerazqDcV1J_28foundations_metrics_registry8registry8registerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_13encode_metric12EncodeMetricEL_EECsim2LhUzKY4R_19foundations_metrics(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, i24 65792), !dbg !1299, !noalias !1303
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsim2LhUzKY4R_19foundations_metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @7), !dbg !1308, !noalias !1303 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0, !dbg !1308
  %i.e = extractvalue { i64, i64 } %i.c, 1, !dbg !1308
  store i64 0, ptr %i.b, align 8, !dbg !1313, !noalias !1298
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false), !dbg !1313, !noalias !1298
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1313
  store i64 %i.d, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !dbg !1313, !noalias !1298
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1313
  store i64 %i.e, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !dbg !1313, !noalias !1298
  ret void, !dbg !1280
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsim2LhUzKY4R_19foundations_metrics6labels10serializer17invalid_label_set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !1315 {
bb.a:
end_hunk_0
