Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/descriptor?download=true
inline.NumInlined: 22466
inline.NumDeleted: 7935
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE4$_10NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
bb.k:                                             ; preds = %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1.val.val2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !148, !noalias !3574 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.bq, align 1, !noalias !3574
  %i.br = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.bs = xor i64 %i.br, -1
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.i.i.i.i
  %.sroa.08.0.i.i.i.i = phi i64 [ %i.br, %bb.k ], [ 7, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.i.i.i.i ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.bt, %bb.k ], [ @.str.147, %_ZNK6google8protobuf14DescriptorPool6Tables13FindExtensionEPKNS0_10DescriptorEi.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3574
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bv = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.val1.val.val, ptr noundef nonnull %i.bu), !noalias !3574
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  store i64 %i.by, ptr %3, align 8, !tbaa !475, !noalias !3574
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !476, !noalias !3574
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !148, !noalias !3574 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %.0.copyload.i.i.i7.i.i.i.i = load i16, ptr %i.cc, align 1, !noalias !3574
  %i.cd = zext i16 %.0.copyload.i.i.i7.i.i.i.i to i64 ; 2 uses
  %i.ce = xor i64 %i.cd, -1
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !382, !noalias !3574
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !175, !noalias !3574 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !63, !noalias !3574
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !65, !noalias !3574
  call void @llvm.experimental.noalias.scope.decl(metadata !3575)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !60, !alias.scope !3576
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !65, !alias.scope !3576
  store i8 0, ptr %i.cn, align 8, !tbaa !64, !alias.scope !3576
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3576
  store i64 %i.by, ptr %2, align 16, !noalias !3576
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bu, ptr %i.cp, align 8, !noalias !3576
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.08.0.i.i.i.i, ptr %i.cq, align 16, !noalias !3576
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.5.0.i.i.i.i, ptr %i.cr, align 8, !noalias !3576
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.cd, ptr %i.cs, align 16, !noalias !3576
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.cf, ptr %i.ct, align 8, !noalias !3576
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.cm, ptr %i.cu, align 16, !noalias !3576
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ck, ptr %i.cv, align 8, !noalias !3576
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %0, i64 82, ptr nonnull @.str.408, ptr noundef nonnull %2, i64 noundef 4)
          to label %"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS1_15FieldDescriptorERKNS1_20FieldDescriptorProtoEE4$_10JEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit" unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %0, align 8, !tbaa !63, !alias.scope !3576 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cn
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.cz = load i64, ptr %i.cn, align 8, !tbaa !64, !alias.scope !3576
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.cw

"_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS1_15FieldDescriptorERKNS1_20FieldDescriptorProtoEE4$_10JEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3576
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3574
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder15CrossLinkMethodEPNS4_16MethodDescriptorERKNS4_21MethodDescriptorProtoEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3586
  %i.a = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3587
  store i64 1, ptr %2, align 8, !noalias !3587
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.68, ptr %i.b, align 8, !noalias !3587
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3587
  %i.c = ptrtoint ptr %.val.val to i64
  %i.d = and i64 %i.c, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63, !noalias !3587
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65, !noalias !3587
  store i64 %i.h, ptr %3, align 8, !noalias !3587
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.i, align 8, !noalias !3587
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3587
  store i64 24, ptr %4, align 8, !noalias !3587
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.388, ptr %i.j, align 8, !noalias !3587
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3587
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3587
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3587
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder15CrossLinkMethodEPNS4_16MethodDescriptorERKNS4_21MethodDescriptorProtoEE3$_1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !3588
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !714
  %i.b = getelementptr i8, ptr %.val1, i64 176
  %.val1.val = load ptr, ptr %i.b, align 8, !tbaa !594
  tail call void @_ZNK6google8protobuf6Symbol18GetVisibilityErrorB5cxx11EPNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef %.val1.val, i64 0, ptr nonnull @.str.74)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder15CrossLinkMethodEPNS4_16MethodDescriptorERKNS4_21MethodDescriptorProtoEE3$_2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3598
  %i.a = getelementptr i8, ptr %.val, i64 40
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !3599
  store i64 1, ptr %2, align 8, !noalias !3599
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.68, ptr %i.b, align 8, !noalias !3599
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !3599
  %i.c = ptrtoint ptr %.val.val to i64
  %i.d = and i64 %i.c, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63, !noalias !3599
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65, !noalias !3599
  store i64 %i.h, ptr %3, align 8, !noalias !3599
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.f, ptr %i.i, align 8, !noalias !3599
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !3599
  store i64 24, ptr %4, align 8, !noalias !3599
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.388, ptr %i.j, align 8, !noalias !3599
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !3599
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !3599
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !3599
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder15CrossLinkMethodEPNS4_16MethodDescriptorERKNS4_21MethodDescriptorProtoEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !3600
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !716
  %i.b = getelementptr i8, ptr %.val1, i64 176
  %.val1.val = load ptr, ptr %i.b, align 8, !tbaa !594
  tail call void @_ZNK6google8protobuf6Symbol18GetVisibilityErrorB5cxx11EPNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef %.val1.val, i64 0, ptr nonnull @.str.74)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #37 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEET_SK_SK_T0_.exit"
  %i.h = icmp eq i64 %i.ch, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44, !llvm.loop !3601

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.du, %bb.b ] ; 3 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i27.lcssa, 3             ; 2 uses
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1                     ; 3 uses
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i.i27.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.l
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_SL_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_SL_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.r, align 4, !tbaa !112 ; 3 uses
  %i.s = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.040.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.040.i.i.i.i, 1                 ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.w
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.v, align 4, !tbaa !112 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 4, !tbaa !112 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i to i32
  %.sroa.03.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i.i.i to i32
  %i.y = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i.i
  %i.z = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.aa = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i, %.sroa.24.0.extract.trunc.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = select i1 %i.y, i1 true, i1 %spec.select.i.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ab, i64 %i.w, i64 %i.u ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.i.i.i
  %i.ae = load i64, ptr %i.ac, align 4, !tbaa !112
  store i64 %i.ae, ptr %i.ad, align 4, !tbaa !112
  %i.af = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3602

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ag, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i64, ptr %i.p, align 4, !tbaa !112
  store i64 %i.ah, ptr %i.q, align 4, !tbaa !112
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.l, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_SL_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %.sroa.03.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i.i.i.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.099.i.i.i.i.i, %bb.g ] ; 3 uses
  %.099.in.i.i.i.i.i = add nsw i64 %.08.i.i.i.i.i, -1
  %.099.i.i.i.i.i = sdiv i64 %.099.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aj, align 4, !tbaa !112 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i to i32
  %i.ak = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i.i.i
  %i.al = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i
  %i.am = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i, %.sroa.24.0.extract.trunc.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.al, i1 %i.am, i1 false
  %i.an = select i1 %i.ak, i1 true, i1 %spec.select.i.i.i.i.i.i.i
  br i1 %i.an, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_SL_T1_T2_.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.08.i.i.i.i.i
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %i.ao, align 4, !tbaa !112
  %i.ap = icmp sgt i64 %.099.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ap, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_SL_T1_T2_.exit.i.i.i", !llvm.loop !3603

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_SL_T1_T2_.exit.i.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.08.i.i.i.i.i, %bb.f ], [ %.099.i.i.i.i.i, %bb.g ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.aq, align 4, !tbaa !112
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ar = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_RT0_.exit.i.i", label %bb.c, !llvm.loop !3604

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_T0_SL_T1_T2_.exit.i.i.i"
  %i.as = icmp sgt i64 %.fr.i.i27.lcssa, 8
  br i1 %i.as, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.at, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_RT0_.exit.i.i" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_RT0_.exit.i.i" ]
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.at, align 4, !tbaa !112 ; 3 uses
  %i.au = load i64, ptr %.fr28, align 4, !tbaa !112
  store i64 %i.au, ptr %i.at, align 4, !tbaa !112
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 3                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = icmp sgt i64 %i.ax, 2
  br i1 %i.ba, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i26.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i26.i
  %.040.i.i.i27.i = phi i64 [ %spec.select.i.i.i37.i, %.lr.ph.i.i.i26.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bb = shl i64 %.040.i.i.i27.i, 1              ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %i.be
  %.sroa.01.0.copyload.i.i.i.i28.i = load i64, ptr %i.bd, align 4, !tbaa !112 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i29.i = load i64, ptr %i.bf, align 4, !tbaa !112 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i30.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i28.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i31.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i28.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i32.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i31.i to i32
  %.sroa.03.0.extract.trunc.i.i.i.i.i33.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i29.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i.i34.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i29.i, 32
  %.sroa.24.0.extract.trunc.i.i.i.i.i35.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i.i34.i to i32
  %i.bg = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i30.i, %.sroa.03.0.extract.trunc.i.i.i.i.i33.i
  %i.bh = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i.i33.i, %.sroa.0.0.extract.trunc.i.i.i.i.i30.i
  %i.bi = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i32.i, %.sroa.24.0.extract.trunc.i.i.i.i.i35.i
  %spec.select.i.i.i.i.i36.i = select i1 %i.bh, i1 %i.bi, i1 false
  %i.bj = select i1 %i.bg, i1 true, i1 %spec.select.i.i.i.i.i36.i
  %spec.select.i.i.i37.i = select i1 %i.bj, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %spec.select.i.i.i37.i
  %i.bl = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.040.i.i.i27.i
  %i.bm = load i64, ptr %i.bk, align 4, !tbaa !112
  store i64 %i.bm, ptr %i.bl, align 4, !tbaa !112
  %i.bn = icmp slt i64 %spec.select.i.i.i37.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i, !llvm.loop !3602

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i26.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i37.i, %.lr.ph.i.i.i26.i ] ; 5 uses
  %i.bo = and i64 %i.aw, 8
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.br
  br i1 %i.bs, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i12.i
  %i.bx = load i64, ptr %i.bv, align 4, !tbaa !112
  store i64 %i.bx, ptr %i.bw, align 4, !tbaa !112
  br label %.lr.ph.i.i.i.i14.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.i, %.thread.i.i.i
  %.1.i4.i.i.i = phi i64 [ %i.bu, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.i ]
  %.sroa.03.0.extract.trunc.i.i.i.i.i.i15.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32 ; 2 uses
  %.sroa.24.0.extract.shift.i.i.i.i.i.i16.i = lshr i64 %.sroa.03.0.copyload.i.i10.i, 32
  %.sroa.24.0.extract.trunc.i.i.i.i.i.i17.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i.i.i16.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i14.i
  %.08.i.i.i.i18.i = phi i64 [ %.1.i4.i.i.i, %.lr.ph.i.i.i.i14.i ], [ %.099.i.i56.i.i.i, %bb.k ] ; 3 uses
  %.099.in.i.i.i.i19.i = add nsw i64 %.08.i.i.i.i18.i, -1
  %.099.i.i56.i.i.i = lshr i64 %.099.in.i.i.i.i19.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %.099.i.i56.i.i.i
  %.sroa.01.0.copyload.i.i.i.i.i20.i = load i64, ptr %i.by, align 4, !tbaa !112 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i21.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i.i20.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i.i.i22.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i.i20.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i23.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i22.i to i32
  %i.bz = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i21.i, %.sroa.03.0.extract.trunc.i.i.i.i.i.i15.i
  %i.ca = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i.i.i15.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i21.i
  %i.cb = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i23.i, %.sroa.24.0.extract.trunc.i.i.i.i.i.i17.i
  %spec.select.i.i.i.i.i.i24.i = select i1 %i.ca, i1 %i.cb, i1 false
  %i.cc = select i1 %i.bz, i1 true, i1 %spec.select.i.i.i.i.i.i24.i
  br i1 %i.cc, label %bb.k, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_RT0_.exit.i.i"

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.08.i.i.i.i18.i
  store i64 %.sroa.01.0.copyload.i.i.i.i.i20.i, ptr %i.cd, align 4, !tbaa !112
  %.not7.i.i.i = icmp eq i64 %.099.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_RT0_.exit.i.i", label %bb.j, !llvm.loop !3603

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_RT0_.exit.i.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.i ], [ %.08.i.i.i.i18.i, %bb.j ], [ 0, %bb.k ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i25.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.ce, align 4, !tbaa !112
  %i.cf = icmp sgt i64 %i.aw, 8
  br i1 %i.cf, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_T0_.exit", !llvm.loop !3605

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2543 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02642 = phi i64 [ %i.ch, %bb.b ], [ %2, %.lr.ph ]
  %i.cg = phi i64 [ %i.dv, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ch = add nsw i64 %.02642, -1                 ; 3 uses
  %i.ci = lshr i64 %i.cg, 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr28, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %storemerge2543, i64 -8 ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.f, align 4, !tbaa !112 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cj, align 4, !tbaa !112 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i to i32 ; 6 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 6 uses
  %.sroa.24.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.24.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i.i.i to i32 ; 3 uses
  %i.cl = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i
  %i.cm = icmp sge i32 %.sroa.03.0.extract.trunc.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.cn = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i, %.sroa.24.0.extract.trunc.i.i.i.i
  %spec.select.i.i.i.i17 = select i1 %i.cm, i1 %i.cn, i1 false
  %i.co = select i1 %i.cl, i1 true, i1 %spec.select.i.i.i.i17
  %.sroa.0.0.copyload.i27.i.i = load i64, ptr %i.ck, align 4, !tbaa !112 ; 4 uses
  %.sroa.03.0.extract.trunc.i.i31.i.i = trunc i64 %.sroa.0.0.copyload.i27.i.i to i32 ; 8 uses
  %.sroa.24.0.extract.shift.i.i32.i.i = lshr i64 %.sroa.0.0.copyload.i27.i.i, 32
  %.sroa.24.0.extract.trunc.i.i33.i.i = trunc nuw i64 %.sroa.24.0.extract.shift.i.i32.i.i to i32 ; 4 uses
  br i1 %i.co, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph44
  %i.cp = icmp slt i32 %.sroa.03.0.extract.trunc.i.i.i.i, %.sroa.03.0.extract.trunc.i.i31.i.i
  %i.cq = icmp sge i32 %.sroa.03.0.extract.trunc.i.i31.i.i, %.sroa.03.0.extract.trunc.i.i.i.i
  %i.cr = icmp slt i32 %.sroa.24.0.extract.trunc.i.i.i.i, %.sroa.24.0.extract.trunc.i.i33.i.i
  %spec.select.i.i34.i.i = select i1 %i.cq, i1 %i.cr, i1 false
  %i.cs = select i1 %i.cp, i1 true, i1 %spec.select.i.i34.i.i
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = load i64, ptr %.fr28, align 4, !tbaa !112
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.fr28, align 4, !tbaa !112
  store i64 %i.ct, ptr %i.cj, align 4, !tbaa !112
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cu = icmp slt i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.03.0.extract.trunc.i.i31.i.i
  %i.cv = icmp sge i32 %.sroa.03.0.extract.trunc.i.i31.i.i, %.sroa.0.0.extract.trunc.i.i.i.i
  %i.cw = icmp slt i32 %.sroa.2.0.extract.trunc.i.i.i.i, %.sroa.24.0.extract.trunc.i.i33.i.i
  %spec.select.i.i43.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = select i1 %i.cu, i1 true, i1 %spec.select.i.i43.i.i
  %i.cy = load i64, ptr %.fr28, align 4, !tbaa !112 ; 2 uses
  br i1 %i.cx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.copyload.i27.i.i, ptr %.fr28, align 4, !tbaa !112
  store i64 %i.cy, ptr %i.ck, align 4, !tbaa !112
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6google8protobuf17DescriptorBuilder19SuggestFieldNumbersEPNS3_14FileDescriptorERKNS3_19FileDescriptorProtoEE5RangeSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS4_19SuggestFieldNumbersES6_S9_E3$_3EEEvT_SK_SK_SK_T0_.exit.i.preheader"
end_hunk_0
