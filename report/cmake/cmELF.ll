Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmELF?download=true
inline.NumInlined: 1271
inline.NumDeleted: 626
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK17cmELFInternalImplI12cmELFTypes64E19GetNumberOfSectionsEv:bb.a
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
  %.not26 = icmp eq ptr %i.d, %i.e
  br i1 %.not26, label %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 3 uses
  %.pre18.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !104
  store ptr %i.l, ptr %0, align 8, !tbaa !111
  store ptr %i.l, ptr %i.k, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  store ptr %i.m, ptr %i.j, align 8, !tbaa !113
  br label %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i, %bb.c
  %i.n = phi ptr [ %.pre18.pre, %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseISt4pairIlmESaIS1_EE11_M_allocateEm.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not15 = icmp eq ptr %i.o, %i.n
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit, %bb.d
  %.sroa.011.016 = phi ptr [ %i.r, %bb.d ], [ %i.o, %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 8
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt4pairIlmESaIS1_EE12emplace_backIJRlRmEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.016, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.d unwind label %.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.n
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit.split-lp:                               ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre19, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlmESaIS1_EED2Ev.exit, label %bb.e

.loopexit:                                        ; preds = %bb.d, %_ZNSt6vectorISt4pairIlmESaIS1_EE7reserveEm.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.loopexit.split-lp
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %.pre19 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre19, i64 noundef %i.w) #22
  br label %_ZNSt6vectorISt4pairIlmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIlmESaIS1_EED2Ev.exit:        ; preds = %.loopexit.split-lp, %bb.e
  resume { ptr, i32 } %lpad.loopexit
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
begin_hunk_1_@_ZNSt6vectorI9Elf64_DynSaIS0_EE17_M_default_appendEm:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !245
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !243

_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !159
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorI9Elf64_DynSaIS0_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
  unreachable

_ZNKSt6vectorI9Elf64_DynSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #21 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI9Elf64_DynSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !245
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !244

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !245
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !245
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !245
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !245
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !243

_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorI9Elf64_DynSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorI9Elf64_DynSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorI9Elf64_DynSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorI9Elf64_DynSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseI9Elf64_DynSaIS0_EE13_M_deallocateEPS0_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI9Elf64_DynSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #22
  br label %_ZNSt12_Vector_baseI9Elf64_DynSaIS0_EE13_M_deallocateEPS0_m.exit38

_ZNSt12_Vector_baseI9Elf64_DynSaIS0_EE13_M_deallocateEPS0_m.exit38: ; preds = %_ZNSt6vectorI9Elf64_DynSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !154
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !159
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !155
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP9Elf64_DynmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI9Elf64_DynSaIS0_EE13_M_deallocateEPS0_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt4pairIlmESaIS1_EE12emplace_backIJRlRmEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !164
  store i64 %i.e, ptr %i.b, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %2, align 8, !tbaa !164
  store i64 %i.g, ptr %i.f, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %i.a, align 8, !tbaa !112
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !111    ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt4pairIlmESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

_ZNKSt6vectorISt4pairIlmESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load i64, ptr %1, align 8, !tbaa !164
  store i64 %i.v, ptr %i.u, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %2, align 8, !tbaa !164
  store i64 %i.x, ptr %i.w, align 8, !tbaa !123
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIlmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorISt4pairIlmESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNKSt6vectorISt4pairIlmESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNKSt6vectorISt4pairIlmESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !249
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIlmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt6vectorISt4pairIlmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorISt4pairIlmESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIlmESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.z, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i34.i = icmp eq ptr %i.i, null
  br i1 %.not.i34.i, label %_ZNSt6vectorISt4pairIlmESaIS1_EE17_M_realloc_insertIJRlRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIlmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ad) #22
  br label %_ZNSt6vectorISt4pairIlmESaIS1_EE17_M_realloc_insertIJRlRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorISt4pairIlmESaIS1_EE17_M_realloc_insertIJRlRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIlmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i, %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !111
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlmESaIS1_EE17_M_realloc_insertIJRlRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  %i.af = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt4pairIlmESaIS1_EE17_M_realloc_insertIJRlRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.b, %bb.b ]
  ret ptr %i.af
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = distinct !{ptr @_ZN13cmELFInternalD2Ev, null, null}
!3 = distinct !{!3, !97}
!4 = distinct !{!4, !97}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTS13cmELFInternal", !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"long", !10, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !19, i64 8, !10, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!10, !10, i64 0}
!23 = !{!"p1 _ZTSSt14basic_ifstreamIcSt11char_traitsIcEE", !14, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"vtable pointer", !9, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !19, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!33 = !{!"_ZTSSt6locale", !32, i64 0}
!34 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !10, i64 64, !11, i64 192, !31, i64 200, !33, i64 208}
!35 = !{!34, !28, i64 32}
!36 = !{!"_ZTSN13cmELFInternal13ByteOrderTypeE", !10, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS5cmELF", !14, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTS17cmELFInternalImplI12cmELFTypes32E", !14, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!15, !15, i64 0}
!43 = !{!"p1 _ZTS17cmELFInternalImplI12cmELFTypes64E", !14, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!20, !16, i64 0}
!46 = !{!"p1 _ZTSSi", !14, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm0EPSiLb0EE", !46, i64 0}
!48 = !{!47, !46, i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!"_ZTSSt11_Tuple_implILm0EJPSiSt14default_deleteISiEEE", !47, i64 0}
!51 = !{!"_ZTSSt5tupleIJPSiSt14default_deleteISiEEE", !50, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_implISiSt14default_deleteISiEE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_dataISiSt14default_deleteISiELb1ELb1EE", !52, i64 0}
!54 = !{!"_ZTSSt10unique_ptrISiSt14default_deleteISiEE", !53, i64 0}
!55 = !{!"_ZTSN5cmELF8FileTypeE", !10, i64 0}
!56 = !{!"short", !10, i64 0}
!57 = !{!"bool", !10, i64 0}
!58 = !{!"_ZTSSt4lessIjE"}
!59 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !58, i64 0}
!60 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!61 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!62 = !{!"_ZTSSt18_Rb_tree_node_base", !60, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!63 = !{!"_ZTSSt15_Rb_tree_header", !62, i64 0, !19, i64 32}
!64 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !59, i64 0, !63, i64 8}
!65 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !64, i64 0}
!66 = !{!"_ZTSSt3mapIjN5cmELF11StringEntryESt4lessIjESaISt4pairIKjS1_EEE", !65, i64 0}
!67 = !{!"_ZTS13cmELFInternal", !38, i64 8, !54, i64 16, !36, i64 24, !55, i64 28, !56, i64 32, !57, i64 34, !11, i64 36, !66, i64 40}
!68 = !{!67, !55, i64 28}
!69 = !{!67, !56, i64 32}
!70 = !{!67, !11, i64 36}
!71 = !{!67, !38, i64 8}
!72 = !{!67, !36, i64 24}
!73 = !{!63, !60, i64 0}
!74 = !{!63, !61, i64 8}
!75 = !{!63, !61, i64 16}
!76 = !{!63, !61, i64 24}
!77 = !{!63, !19, i64 32}
!78 = !{!67, !57, i64 34}
!79 = !{!"_ZTS10Elf32_Ehdr", !10, i64 0, !56, i64 16, !56, i64 18, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !56, i64 40, !56, i64 42, !56, i64 44, !56, i64 46, !56, i64 48, !56, i64 50}
!80 = !{!"_ZTSNSt12_Vector_baseI10Elf32_ShdrSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseI10Elf32_ShdrSaIS0_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseI10Elf32_ShdrSaIS0_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorI10Elf32_ShdrSaIS0_EE", !82, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseI9Elf32_DynSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!85 = !{!"_ZTSNSt12_Vector_baseI9Elf32_DynSaIS0_EE12_Vector_implE", !84, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseI9Elf32_DynSaIS0_EE", !85, i64 0}
!87 = !{!"_ZTSSt6vectorI9Elf32_DynSaIS0_EE", !86, i64 0}
!88 = !{!"_ZTS17cmELFInternalImplI12cmELFTypes32E", !67, i64 0, !79, i64 88, !83, i64 144, !87, i64 168}
!89 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !33, i64 56}
!90 = !{!89, !16, i64 40}
!91 = !{!89, !16, i64 32}
!92 = !{!88, !56, i64 106}
!93 = !{!88, !56, i64 136}
!94 = !{!80, !14, i64 8}
!95 = !{!80, !14, i64 0}
!96 = !{!"_ZTS10Elf32_Shdr", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!84, !14, i64 0}
!99 = !{!84, !14, i64 16}
!100 = !{!80, !14, i64 16}
!101 = !{i8 0, i8 2}
!102 = !{}
!103 = !{ptr @_ZN13cmELFInternalD2Ev}
!104 = !{!14, !14, i64 0}
!105 = !{!96, !11, i64 20}
!106 = !{!84, !14, i64 8}
!107 = !{!96, !11, i64 16}
!108 = !{!96, !11, i64 36}
!109 = !{!"p1 _ZTSSt4pairIlmE", !14, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseISt4pairIlmESaIS1_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!111 = !{!110, !109, i64 0}
!112 = !{!110, !109, i64 8}
!113 = !{!110, !109, i64 16}
!114 = !{!109, !109, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!116 = !{!115, !16, i64 0}
!117 = !{!115, !16, i64 8}
!118 = !{!115, !16, i64 16}
!119 = !{!"_ZTSSt4pairIlmE", !19, i64 0, !19, i64 8}
!120 = !{!119, !19, i64 0}
!121 = !{!"_ZTS9Elf32_Dyn", !11, i64 0, !10, i64 4}
!122 = !{!121, !11, i64 0}
!123 = !{!119, !19, i64 8}
!124 = !{!16, !16, i64 0}
!125 = !{!11, !11, i64 0}
!126 = !{!61, !61, i64 0}
!127 = !{!"_ZTSN5cmELF11StringEntryE", !20, i64 0, !19, i64 32, !19, i64 40, !11, i64 48}
!128 = !{!"_ZTSSt4pairIKjN5cmELF11StringEntryEE", !11, i64 0, !127, i64 8}
!129 = !{!128, !19, i64 40}
!130 = !{!"p1 int", !14, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!127, !11, i64 48}
!133 = !{!127, !19, i64 32}
!134 = !{!127, !19, i64 40}
!135 = !{!62, !61, i64 24}
!136 = !{!"p1 _ZTSSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !14, i64 0}
!137 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKjN5cmELF11StringEntryEEE", !14, i64 0}
!138 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN5cmELF11StringEntryEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeE", !136, i64 0, !137, i64 8}
!139 = !{!138, !137, i64 8}
!140 = !{!"_ZTS10Elf64_Ehdr", !10, i64 0, !56, i64 16, !56, i64 18, !11, i64 20, !19, i64 24, !19, i64 32, !19, i64 40, !11, i64 48, !56, i64 52, !56, i64 54, !56, i64 56, !56, i64 58, !56, i64 60, !56, i64 62}
!141 = !{!"_ZTSNSt12_Vector_baseI10Elf64_ShdrSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!142 = !{!"_ZTSNSt12_Vector_baseI10Elf64_ShdrSaIS0_EE12_Vector_implE", !141, i64 0}
!143 = !{!"_ZTSSt12_Vector_baseI10Elf64_ShdrSaIS0_EE", !142, i64 0}
!144 = !{!"_ZTSSt6vectorI10Elf64_ShdrSaIS0_EE", !143, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseI9Elf64_DynSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseI9Elf64_DynSaIS0_EE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseI9Elf64_DynSaIS0_EE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorI9Elf64_DynSaIS0_EE", !147, i64 0}
!149 = !{!"_ZTS17cmELFInternalImplI12cmELFTypes64E", !67, i64 0, !140, i64 88, !144, i64 152, !148, i64 176}
!150 = !{!149, !56, i64 106}
!151 = !{!149, !56, i64 148}
!152 = !{!141, !14, i64 8}
!153 = !{!141, !14, i64 0}
!154 = !{!145, !14, i64 0}
!155 = !{!145, !14, i64 16}
!156 = !{!141, !14, i64 16}
!157 = !{!"_ZTS10Elf64_Shdr", !11, i64 0, !11, i64 4, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !11, i64 40, !11, i64 44, !19, i64 48, !19, i64 56}
!158 = !{!157, !19, i64 32}
!159 = !{!145, !14, i64 8}
!160 = !{!157, !19, i64 24}
!161 = !{!157, !19, i64 56}
!162 = !{!"_ZTS9Elf64_Dyn", !19, i64 0, !10, i64 8}
!163 = !{!162, !19, i64 0}
!164 = !{!19, !19, i64 0}
!165 = !{!"llvm.loop.unroll.disable"}
!166 = distinct !{!166, i1 true, !"_ZSt11make_uniqueISt14basic_ifstreamIcSt11char_traitsIcEEJRPKcRKSt13_Ios_OpenmodeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!167 = distinct !{!167, !166, !"_ZSt11make_uniqueISt14basic_ifstreamIcSt11char_traitsIcEEJRPKcRKSt13_Ios_OpenmodeEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!168 = distinct !{null, null, null, null}
end_hunk_1
