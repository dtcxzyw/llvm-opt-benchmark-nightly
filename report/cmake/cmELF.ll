Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmELF?download=true
inline.NumInlined: 1271
inline.NumDeleted: 626
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17cmELFInternalImplI12cmELFTypes64ED0Ev:bb.a
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !232
  br label %_ZNSt6vectorI9Elf64_DynSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9Elf64_DynSaIS0_EED2Ev.exit.i:       ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI10Elf64_ShdrSaIS0_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9Elf64_DynSaIS0_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22, !inline_history !232
  br label %_ZNSt6vectorI10Elf64_ShdrSaIS0_EED2Ev.exit.i

_ZNSt6vectorI10Elf64_ShdrSaIS0_EED2Ev.exit.i:     ; preds = %bb.c, %_ZNSt6vectorI9Elf64_DynSaIS0_EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV13cmELFInternal, i64 16), ptr %0, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef %i.q)
          to label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i unwind label %bb.d, !inline_history !233

bb.d:                                             ; preds = %_ZNSt6vectorI10Elf64_ShdrSaIS0_EED2Ev.exit.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #23, !inline_history !233
  unreachable

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorI10Elf64_ShdrSaIS0_EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN17cmELFInternalImplI12cmELFTypes64ED2Ev.exit, label %_ZNKSt14default_deleteISiEclEPSi.exit.i.i.i

_ZNKSt14default_deleteISiEclEPSi.exit.i.i.i:      ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !231
  br label %_ZN17cmELFInternalImplI12cmELFTypes64ED2Ev.exit

_ZN17cmELFInternalImplI12cmELFTypes64ED2Ev.exit:  ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i, %_ZNKSt14default_deleteISiEclEPSi.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK17cmELFInternalImplI12cmELFTypes64E19GetNumberOfSectionsEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load i16, ptr %i.a, align 4, !tbaa !151
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !158
  %i.k = add i64 %i.j, %i.c
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 65536)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.a ], [ %i.l, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN17cmELFInternalImplI12cmELFTypes64E23GetDynamicEntryPositionEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17cmELFInternalImplI12cmELFTypes64E18LoadDynamicSectionEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not = and i1 %i.b, %i.a
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !154
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = trunc i64 %i.j to i32
  %.not = icmp slt i32 %1, %i.k
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !153
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !160
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !161
  %i.v = zext nneg i32 %1 to i64
  %i.w = mul i64 %i.u, %i.v
  %i.x = add i64 %i.w, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17cmELFInternalImplI12cmELFTypes64E17GetDynamicEntriesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call noundef zeroext i1 @_ZN17cmELFInternalImplI12cmELFTypes64E18LoadDynamicSectionEv(ptr noundef nonnull align 8 dereferenceable(200) %1)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !154  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ugt i64 %i.h, 9223372036854775792
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %.not24 = icmp eq ptr %i.d, %i.e
  br i1 %.not24, label %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 3 uses
  %.pre16.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !104
  store ptr %i.l, ptr %0, align 8, !tbaa !111
  store ptr %i.l, ptr %i.k, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  store ptr %i.m, ptr %i.j, align 8, !tbaa !113
  br label %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i, %bb.c
  %i.n = phi ptr [ %.pre16.pre, %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not14 = icmp eq ptr %i.o, %i.n
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit, %bb.d
  %.sroa.011.015 = phi ptr [ %i.r, %bb.d ], [ %i.o, %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt4pairIlmESaIS1_EE12emplace_backIJRlRmEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.015, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.n
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre17, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlmESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.pre17 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre17, i64 noundef %i.x) #22
  br label %_ZNSt6vectorISt4pairIlmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIlmESaIS1_EED2Ev.exit:        ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17cmELFInternalImplI12cmELFTypes64E20EncodeDynamicEntriesERKSt6vectorISt4pairIlmESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.41") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.Elf64_Dyn, align 8          ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq ptr %i.b, %i.c
  br i1 %.not30, label %_ZNSt6vectorIcSaIcEE7reserveEm.exit, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 3 uses
  %.pre22.pre = load ptr, ptr %i.a, align 8, !tbaa !114
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !114
  store ptr %i.j, ptr %0, align 8, !tbaa !116
  store ptr %i.j, ptr %i.i, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store ptr %i.k, ptr %i.h, align 8, !tbaa !118
  br label %_ZNSt6vectorIcSaIcEE7reserveEm.exit

_ZNSt6vectorIcSaIcEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i, %bb.b
  %i.l = phi ptr [ %.pre22.pre, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i ], [ %i.c, %bb.b ] ; 2 uses
  %.not20 = icmp eq ptr %i.m, %i.l
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIcSaIcEE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN2cm6appendISt6vectorIcSaIcEEPcTnNSt9enable_ifIXaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm17is_input_iteratorIT0_EE5valuesr3std14is_convertibleINSt15iterator_traitsIS7_E10value_typeENS6_10value_typeEEE5valueEiE4typeELi0EEEvRS6_S7_S7_.exit, %_ZNSt6vectorIcSaIcEE7reserveEm.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN2cm6appendISt6vectorIcSaIcEEPcTnNSt9enable_ifIXaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm17is_input_iteratorIT0_EE5valuesr3std14is_convertibleINSt15iterator_traitsIS7_E10value_typeENS6_10value_typeEEE5valueEiE4typeELi0EEEvRS6_S7_S7_.exit
  %.sroa.017.021 = phi ptr [ %i.m, %.lr.ph ], [ %i.ac, %_ZN2cm6appendISt6vectorIcSaIcEEPcTnNSt9enable_ifIXaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm17is_input_iteratorIT0_EE5valuesr3std14is_convertibleINSt15iterator_traitsIS7_E10value_typeENS6_10value_typeEEE5valueEiE4typeELi0EEEvRS6_S7_S7_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.r = load i64, ptr %.sroa.017.021, align 8, !tbaa !120 ; 2 uses
  store i64 %i.r, ptr %3, align 8, !tbaa !163
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.021, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !123  ; 2 uses
  store i64 %i.t, ptr %i.n, align 8, !tbaa !22
  %i.u = load i8, ptr %i.o, align 2, !tbaa !78, !range !101, !noundef !102
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = bitcast i64 %i.r to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %3, align 8, !tbaa !22
  %6 = bitcast i64 %i.t to <8 x i8>
  %7 = shufflevector <8 x i8> %6, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %7, ptr %i.n, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.x = load ptr, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPcEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ab, ptr noundef nonnull %3, ptr noundef nonnull %i.p)
          to label %_ZN2cm6appendISt6vectorIcSaIcEEPcTnNSt9enable_ifIXaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm17is_input_iteratorIT0_EE5valuesr3std14is_convertibleINSt15iterator_traitsIS7_E10value_typeENS6_10value_typeEEE5valueEiE4typeELi0EEEvRS6_S7_S7_.exit unwind label %bb.f

_ZN2cm6appendISt6vectorIcSaIcEEPcTnNSt9enable_ifIXaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm17is_input_iteratorIT0_EE5valuesr3std14is_convertibleINSt15iterator_traitsIS7_E10value_typeENS6_10value_typeEEE5valueEiE4typeELi0EEEvRS6_S7_S7_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.l
  br i1 %.not, label %._crit_edge, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre23, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %.pre23 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.pre23, i64 noundef %i.ai) #22
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN17cmELFInternalImplI12cmELFTypes64E23GetDynamicSectionStringEj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.69", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.72", align 1     ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !125
  %i.i = icmp ult i32 %i.h, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit, %_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  br label %.lr.ph.i.i.i.i

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !125
  %i.m = icmp ult i32 %1, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i.preheader, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !129
  %.not44 = icmp eq i64 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %spec.select62 = select i1 %.not44, ptr null, ptr %i.p
  br label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !125
  %i.s = icmp ult i32 %i.r, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.t, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !125
  %i.w = icmp ult i32 %1, %i.v
  br i1 %i.w, label %.critedge.i, label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit

.critedge.i:                                      ; preds = %bb.a, %bb.c, %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.a, ptr %2, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.x = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit

_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.x, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.ab, align 8, !tbaa !132
  %i.ac = call noundef zeroext i1 @_ZN17cmELFInternalImplI12cmELFTypes64E18LoadDynamicSectionEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br i1 %i.ac, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEEixERS5_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.ag = sext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !153 ; 3 uses
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !236
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !152
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6
  %.not = icmp ugt i64 %i.ar, %i.al
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ax = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef 0, i64 noundef %i.aw, ptr noundef nonnull @.str.21, i64 noundef 47) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ay, align 4, !tbaa !68
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %i.al ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !104 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !104 ; 2 uses
  %.not6467 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not6467, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.be = load i32, ptr %i.a, align 4, !tbaa !125
  %i.bf = zext i32 %i.be to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.thread59
  %.sroa.047.068 = phi ptr [ %i.bb, %.lr.ph ], [ %i.ed, %.thread59 ] ; 4 uses
  %i.bg = load i64, ptr %.sroa.047.068, align 8, !tbaa !163
  %.not43 = icmp eq i64 %i.bg, %i.bf
  br i1 %.not43, label %bb.h, label %.thread59

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.047.068, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !22 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !158 ; 3 uses
  %.not41 = icmp ult i64 %i.bi, %i.bk
  br i1 %.not41, label %bb.i, label %.thread57

.thread57:                                        ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !21
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef 0, i64 noundef %i.bp, ptr noundef nonnull @.str.22, i64 noundef 71) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.br, align 4, !tbaa !68
  br label %.loopexit
end_hunk_0
