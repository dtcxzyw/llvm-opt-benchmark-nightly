Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_vector_test?download=true
inline.NumInlined: 4251
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 299
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC2ERKS5_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = zext i16 %.pre to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit

_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit: ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i16 @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104
  ret i16 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat($_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC5EOS5_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  store ptr %i.a, ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.e = load <2 x i16>, ptr %i.c, align 8, !tbaa !93
  store <2 x i16> %i.e, ptr %i.b, align 8, !tbaa !93
  store ptr null, ptr %1, align 8, !tbaa !100
  store i16 0, ptr %i.d, align 2, !tbaa !101
  store i16 0, ptr %i.c, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC2ESt16initializer_listIiERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat($_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC5ESt16initializer_listIiERKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = trunc i64 %2 to i16                      ; 2 uses
  store i16 %i.b, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !101
  %i.d = icmp ugt i64 %2, 65535
  br i1 %i.d, label %bb.b, label %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_SA_mSB_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i.i
  %i.e = icmp samesign ugt i64 %2, 16383
  br i1 %i.e, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = shl nuw nsw i64 %2, 2                    ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !100
  store i16 %i.b, ptr %i.c, align 2, !tbaa !93
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_SA_mSB_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_SA_mSB_.exit

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_SA_mSB_.exit: ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC2ERKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC5ERKS5_RKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104  ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.b, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !101
  %.not.i.i = icmp eq i16 %i.b, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i16 %i.b, 16383
  br i1 %i.e, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = shl nuw i16 %i.b, 2
  %i.g = zext i16 %i.f to i64
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !100
  store i16 %i.b, ptr %i.d, align 2, !tbaa !93
  %.pre = load i16, ptr %i.a, align 8, !tbaa !104 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %.not.i.i6 = icmp ne i16 %.pre, 0
  %i.j = icmp ne ptr %i.i, null
  %or.cond = select i1 %.not.i.i6, i1 %i.j, i1 false, !prof !41
  br i1 %or.cond, label %bb.e, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit, !prof !41

bb.e:                                             ; preds = %bb.d
  %i.k = zext i16 %.pre to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit: ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC2EOS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEC5EOS5_RKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.b, align 2, !tbaa !101
  %i.c = load ptr, ptr %1, align 8, !tbaa !100
  store ptr %i.c, ptr %0, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load <2 x i16>, ptr %i.d, align 8, !tbaa !93
  store <2 x i16> %i.f, ptr %i.a, align 8, !tbaa !93
  store ptr null, ptr %1, align 8, !tbaa !100
  store i16 0, ptr %i.e, align 2, !tbaa !101
  store i16 0, ptr %i.d, align 8, !tbaa !102
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat($_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !101  ; 2 uses
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !87
  %i.d = zext i16 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.e) #25
  br label %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignIPiEEvT_S8_PNS_11move_detail13disable_if_orIvNS9_7is_sameINS9_17integral_constantIjLj1EEENSC_IjLj0EEEEENS9_14is_convertibleIS8_tEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a, ptr noundef %i.e, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEaSESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignIPKiEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_tEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignIPKiEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_tEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 65535
  br i1 %i.e, label %bb.b, label %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit: ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i16                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !101
  %4 = zext i16 %i.h to i64                       ; 2 uses
  %5 = icmp samesign ugt i64 %i.d, %4
  br i1 %5, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.i = icmp samesign ugt i64 %i.d, 16383
  br i1 %i.i, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 5 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.l, align 8, !tbaa !104
  %i.m = shl nuw nsw i64 %4, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.m) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !100
  store i16 %i.f, ptr %i.g, align 2, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 0, ptr %i.n, align 8, !tbaa !104
  %i.o = icmp ne ptr %1, %2
  %i.p = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.p, %i.o
  br i1 %spec.select.i.i.i, label %bb.h, label %bb.i, !prof !43

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.c
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.j, %bb.g ]
  %i.r = ptrtoint ptr %.0.i.i.i to i64
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i16
  store i16 %i.v, ptr %i.n, align 8, !tbaa !102
  br label %bb.s

bb.j:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !100    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = zext i16 %i.y to i64                     ; 5 uses
  %i.aa = icmp samesign ugt i64 %i.d, %i.z
  br i1 %i.aa, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %bb.l, !prof !40

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp ne ptr %i.w, null
  %i.ac = icmp ne ptr %1, null
  %or.cond.i.i.i16 = and i1 %i.ac, %i.ab
  br i1 %or.cond.i.i.i16, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.ad, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  br label %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i

_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %bb.n, %bb.k
  %.0.i = phi ptr [ %i.w, %bb.k ], [ %i.af, %bb.n ] ; 2 uses
  %.0.i.i.i17 = phi ptr [ %1, %bb.k ], [ %i.ae, %bb.n ] ; 2 uses
  %i.ag = icmp ne ptr %.0.i, null
  %i.ah = icmp ne ptr %.0.i.i.i17, null
  %or.cond.i.i15.i = and i1 %i.ag, %i.ah
  br i1 %or.cond.i.i15.i, label %bb.o, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPKiPiEEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %i.ai = sub nuw nsw i64 %i.d, %i.z
  %i.aj = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.0.i.i.i17, i64 %i.aj, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPKiPiEEvRT_T0_mT1_m.exit

bb.p:                                             ; preds = %bb.j
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPKiPiEEvRT_T0_mT1_m.exit, label %bb.q, !prof !40

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp ne ptr %i.w, null
  %i.al = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i.i18.i, label %bb.r, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPKiPiEEvRT_T0_mT1_m.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPKiPiEEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPKiPiEEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIPKiPiEENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %bb.o, %bb.p, %bb.q, %bb.r
  store i16 %i.f, ptr %i.x, align 8, !tbaa !102
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPKiPiEEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.d, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 0, ptr %i.a, align 8, !tbaa !104
  %i.b = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !743
  %i.e = zext i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.f) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !100
  store ptr %i.g, ptr %0, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = load <2 x i16>, ptr %i.h, align 8, !tbaa !93
  store <2 x i16> %i.j, ptr %i.a, align 8, !tbaa !93
  store ptr null, ptr %1, align 8, !tbaa !100
  store i16 0, ptr %i.i, align 2, !tbaa !101
  store i16 0, ptr %i.h, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE16priv_move_assignIS4_EEvONS1_IiT_vEEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIiS7_E4typeELj0EEENSA_12is_differentISG_S4_EENSA_5bool_ILb0EEESL_E4typeE.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignIPKiEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_tEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignEtRKi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = zext i16 %1 to i64
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignINS0_17constant_iteratorIiEEEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_tEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %2, i64 %i.a, ptr null, i64 0, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignINS0_17constant_iteratorIiEEEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_tEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 16 uses
  %i.b = icmp ugt i64 %i.a, 65535
  br i1 %i.b, label %bb.b, label %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit: ; preds = %bb.a
  %i.c = trunc nuw i64 %i.a to i16                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !101
  %6 = zext i16 %i.e to i64                       ; 2 uses
  %7 = icmp samesign ugt i64 %i.a, %6
  br i1 %7, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.f = icmp samesign ugt i64 %i.a, 16383
  br i1 %i.f, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.a, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 6 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.j, align 8, !tbaa !104
  %i.k = shl nuw nsw i64 %6, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.k) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.h, ptr %0, align 8, !tbaa !100
  store i16 %i.c, ptr %i.d, align 2, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not12.i.i = icmp eq i64 %2, %4
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.pre.i.i = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check81 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check81, label %.lr.ph.i.i.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec83 = and i64 %i.a, 16376                  ; 4 uses
  %i.m = shl nuw nsw i64 %n.vec83, 2
  %i.n = getelementptr i8, ptr %i.h, i64 %i.m     ; 2 uses
  %i.o = sub i64 %2, %n.vec83
  %broadcast.splatinsert84 = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat85 = shufflevector <4 x i32> %broadcast.splatinsert84, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next89, %vector.body86 ] ; 2 uses
  %i.p = shl i64 %index87, 2
  %next.gep88 = getelementptr i8, ptr %i.h, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep88, i64 16
  store <4 x i32> %broadcast.splat85, ptr %next.gep88, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat85, ptr %i.q, align 4, !tbaa !63
  %index.next89 = add nuw i64 %index87, 8         ; 2 uses
  %i.r = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.r, label %middle.block90, label %vector.body86, !llvm.loop !744

middle.block90:                                   ; preds = %vector.body86
  %cmp.n91 = icmp eq i64 %i.a, %n.vec83
  br i1 %cmp.n91, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block90
  %.014.i.i.ph = phi ptr [ %i.h, %.lr.ph.preheader.i.i ], [ %i.n, %middle.block90 ]
  %.sroa.2.013.i.i.ph = phi i64 [ %2, %.lr.ph.preheader.i.i ], [ %i.o, %middle.block90 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.2.013.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i.preheader ]
  store i32 %.pre.i.i, ptr %.014.i.i, align 4, !tbaa !63
  %i.s = add i64 %.sroa.2.013.i.i, -1             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.s, %4
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !745

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block90, %bb.g
  %.0.lcssa.i.i = phi ptr [ %i.h, %bb.g ], [ %i.n, %middle.block90 ], [ %i.t, %.lr.ph.i.i ]
  %i.u = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.v = ptrtoint ptr %i.h to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i16
  store i16 %i.y, ptr %i.l, align 8, !tbaa !102
  br label %bb.k

bb.h:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !100    ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !104 ; 3 uses
  %i.ac = zext i16 %i.ab to i64                   ; 6 uses
  %i.ad = icmp samesign ugt i64 %i.a, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not4.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.i
  %.pre.i.i25 = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check46 = icmp ult i16 %i.ab, 8
  br i1 %min.iters.check46, label %scalar.ph45.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.i.i24
  %n.vec48 = and i64 %i.ac, 65528                 ; 3 uses
  %i.ae = shl nuw nsw i64 %n.vec48, 2
  %i.af = getelementptr i8, ptr %i.z, i64 %i.ae   ; 2 uses
  %i.ag = and i64 %i.ac, 7
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %.pre.i.i25, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph47
  %index52 = phi i64 [ 0, %vector.ph47 ], [ %index.next54, %vector.body51 ] ; 2 uses
  %i.ah = shl i64 %index52, 2
  %next.gep53 = getelementptr i8, ptr %i.z, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep53, i64 16
  store <4 x i32> %broadcast.splat50, ptr %next.gep53, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat50, ptr %i.ai, align 4, !tbaa !63
  %index.next54 = add nuw i64 %index52, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.aj, label %middle.block55, label %vector.body51, !llvm.loop !746

middle.block55:                                   ; preds = %vector.body51
  %cmp.n56 = icmp eq i64 %n.vec48, %i.ac
  br i1 %cmp.n56, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %scalar.ph45.preheader

scalar.ph45.preheader:                            ; preds = %.lr.ph.i.i24, %middle.block55
  %.ph = phi ptr [ %i.z, %.lr.ph.i.i24 ], [ %i.af, %middle.block55 ]
  %.06.i.i.ph = phi i64 [ %i.ac, %.lr.ph.i.i24 ], [ %i.ag, %middle.block55 ]
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
  %i.ak = phi ptr [ %i.am, %scalar.ph45 ], [ %.ph, %scalar.ph45.preheader ] ; 2 uses
  %.06.i.i = phi i64 [ %i.al, %scalar.ph45 ], [ %.06.i.i.ph, %scalar.ph45.preheader ]
  %i.al = add nsw i64 %.06.i.i, -1                ; 2 uses
  store i32 %.pre.i.i25, ptr %i.ak, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %.not.i.i26 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i26, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %scalar.ph45, !llvm.loop !747

_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %scalar.ph45, %middle.block55, %bb.i
  %.0.i = phi ptr [ %i.z, %bb.i ], [ %i.af, %middle.block55 ], [ %i.am, %scalar.ph45 ] ; 3 uses
  %i.an = sub nsw i64 %i.a, %i.ac                 ; 5 uses
  %.pre.i19.i = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check60 = icmp ult i64 %i.an, 8
  br i1 %min.iters.check60, label %.lr.ph.i20.i.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %n.vec62 = and i64 %i.an, -8                    ; 3 uses
  %i.ao = and i64 %i.an, 7
  %i.ap = shl i64 %n.vec62, 2
  %i.aq = getelementptr i8, ptr %.0.i, i64 %i.ap
  %broadcast.splatinsert63 = insertelement <4 x i32> poison, i32 %.pre.i19.i, i64 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph61
  %index66 = phi i64 [ 0, %vector.ph61 ], [ %index.next75, %vector.body65 ] ; 2 uses
  %i.ar = shl i64 %index66, 2
  %next.gep67 = getelementptr i8, ptr %.0.i, i64 %i.ar ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep67) ]
  %i.as = getelementptr i8, ptr %next.gep67, i64 16
  store <4 x i32> %broadcast.splat64, ptr %next.gep67, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat64, ptr %i.as, align 4, !tbaa !63
  %index.next75 = add nuw i64 %index66, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next75, %n.vec62
  br i1 %i.at, label %middle.block76, label %vector.body65, !llvm.loop !748

middle.block76:                                   ; preds = %vector.body65
  %cmp.n77 = icmp eq i64 %i.an, %n.vec62
  br i1 %cmp.n77, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %middle.block76
  %.016.i.i.ph = phi i64 [ %i.an, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.ao, %middle.block76 ]
  %.01315.i.i.ph = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.aq, %middle.block76 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %.016.i.i = phi i64 [ %i.au, %.lr.ph.i20.i ], [ %.016.i.i.ph, %.lr.ph.i20.i.preheader ]
  %.01315.i.i = phi ptr [ %i.av, %.lr.ph.i20.i ], [ %.01315.i.i.ph, %.lr.ph.i20.i.preheader ] ; 3 uses
  %i.au = add i64 %.016.i.i, -1                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  store i32 %.pre.i19.i, ptr %.01315.i.i, align 4, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  %.not.i21.i = icmp eq i64 %i.au, 0
  br i1 %.not.i21.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i20.i, !llvm.loop !749

bb.j:                                             ; preds = %bb.h
  %.not5.i.i = icmp eq i64 %i.a, 0
  br i1 %.not5.i.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.preheader.i23.i

.lr.ph.preheader.i23.i:                           ; preds = %bb.j
  %.pre.i24.i = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i25.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i23.i
  %n.vec = and i64 %i.a, 65528                    ; 3 uses
  %i.aw = shl nuw nsw i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.z, i64 %i.aw
  %i.ay = and i64 %i.a, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i24.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i25.i.preheader

.lr.ph.i25.i.preheader:                           ; preds = %.lr.ph.preheader.i23.i, %middle.block
  %.07.i.i.ph = phi ptr [ %i.z, %.lr.ph.preheader.i23.i ], [ %i.ax, %middle.block ]
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep22) ]
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !1674
  %wide.load30 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !65, !alias.scope !1674
  %i.ai = getelementptr i8, ptr %next.gep22, i64 16
  store <4 x i32> %wide.load, ptr %next.gep22, align 4, !tbaa !65, !alias.scope !1675, !noalias !1676
  store <4 x i32> %wide.load30, ptr %i.ai, align 4, !tbaa !65, !alias.scope !1675, !noalias !1676
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi21, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1670

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !1677, !noalias !1674
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader33

.lr.ph.i.i.i.i.preheader33:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %.020.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ] ; 4 uses
  %.0919.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 2 uses
  %.01618.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 2 uses
  %i.an = add i64 %.020.i.i.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.prol
  %i.ao = phi i32 [ %i.aq, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader33 ]
  %.020.i.i.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i.i.i.prol ], [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ]
  %.0919.i.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.0919.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader33 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.ap = load i32, ptr %.0919.i.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.ap, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !65
  %i.aq = add i32 %i.ao, 1                        ; 3 uses
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.prol, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %i.at = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1671

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader33
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader33 ], [ %i.aq, %.lr.ph.i.i.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ], [ %i.at, %.lr.ph.i.i.i.i.prol ]
  %.0919.i.i.i.i.unr = phi ptr [ %.0919.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader33 ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %i.au = icmp ult i64 %i.an, 3
  br i1 %i.au, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.av = phi i32 [ %i.bj, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.0919.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aw = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !65
  store i32 %i.aw, ptr %.01618.i.i.i.i, align 4, !tbaa !65
  %i.ax = add i32 %i.av, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !65
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !65
  %i.bb = add i32 %i.av, 2
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !65
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !65
  %i.bf = add i32 %i.av, 3
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !65
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !65
  %i.bj = add i32 %i.av, 4                        ; 2 uses
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bk = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %i.bm = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1672

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.br, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bs, %.lr.ph.i20.i.i ], [ %i.bn, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bo = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.bo, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.br, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !14

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSF_mT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i16 %i.s, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter36 = and i64 %i.t, 3                   ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.bt, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i.prol ], [ %i.r, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = add nsw i64 %.05.i.i.prol, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.bu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1673

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.prol ]
  %i.bx = icmp ult i16 %i.s, 4
  br i1 %i.bx, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !65
  %i.cb = add i32 %i.by, -2
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !65
  %i.cd = add i32 %i.by, -3
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cf = add nsw i64 %.05.i.i, -4                ; 2 uses
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !65
  %i.cg = add i32 %i.by, -4
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %i.ci = load i16, ptr %i.a, align 2, !tbaa !94
  %i.cj = zext i16 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ck) #25
  %.pre.i = load i16, ptr %i.e, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %.loopexit.i
  %i.cl = phi i16 [ %i.s, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.cm = ptrtoint ptr %2 to i64
  %i.cn = ptrtoint ptr %i.r to i64
  %i.co = sub i64 %i.cm, %i.cn
  store ptr %i.q, ptr %1, align 8, !tbaa !92
  %i.cp = trunc i64 %3 to i16
  %i.cq = add i16 %i.cl, %i.cp
  store i16 %i.cq, ptr %i.e, align 8, !tbaa !95
  %i.cr = trunc nuw i64 %i.n to i16
  store i16 %i.cr, ptr %i.a, align 2, !tbaa !93
  %i.cs = getelementptr inbounds i8, ptr %i.q, i64 %i.co
  store ptr %i.cs, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignIPiEEvT_S8_PNS_11move_detail13disable_if_orIvNS9_7is_sameINS9_17integral_constantIjLj1EEENSC_IjLj0EEEEENS9_14is_convertibleIS8_tEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 65535
  br i1 %i.e, label %bb.b, label %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit: ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i16                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !101
  %4 = zext i16 %i.h to i64                       ; 2 uses
  %5 = icmp samesign ugt i64 %i.d, %4
  br i1 %5, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.i = icmp samesign ugt i64 %i.d, 16383
  br i1 %i.i, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 5 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.l, align 8, !tbaa !104
  %i.m = shl nuw nsw i64 %4, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.m) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !100
  store i16 %i.f, ptr %i.g, align 2, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 0, ptr %i.n, align 8, !tbaa !104
  %i.o = icmp ne ptr %1, %2
  %i.p = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.p, %i.o
  br i1 %spec.select.i.i.i, label %bb.h, label %bb.i, !prof !43

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.c
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.j, %bb.g ]
  %i.r = ptrtoint ptr %.0.i.i.i to i64
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i16
  store i16 %i.v, ptr %i.n, align 8, !tbaa !102
  br label %bb.s

bb.j:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !100    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = zext i16 %i.y to i64                     ; 5 uses
  %i.aa = icmp samesign ugt i64 %i.d, %i.z
  br i1 %i.aa, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, label %bb.l, !prof !40

bb.l:                                             ; preds = %bb.k
  %i.ab = icmp ne ptr %i.w, null
  %i.ac = icmp ne ptr %1, null
  %or.cond.i.i.i16 = and i1 %i.ac, %i.ab
  br i1 %or.cond.i.i.i16, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.ad, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  br label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i: ; preds = %bb.n, %bb.k
  %.0.i = phi ptr [ %i.w, %bb.k ], [ %i.af, %bb.n ] ; 2 uses
  %.0.i.i.i17 = phi ptr [ %1, %bb.k ], [ %i.ae, %bb.n ] ; 2 uses
  %i.ag = icmp ne ptr %.0.i, null
  %i.ah = icmp ne ptr %.0.i.i.i17, null
  %or.cond.i.i15.i = and i1 %i.ag, %i.ah
  br i1 %or.cond.i.i15.i, label %bb.o, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i
  %i.ai = sub nuw nsw i64 %i.d, %i.z
  %i.aj = shl nuw nsw i64 %i.ai, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.0.i.i.i17, i64 %i.aj, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EEvRT_T0_mT1_m.exit

bb.p:                                             ; preds = %bb.j
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EEvRT_T0_mT1_m.exit, label %bb.q, !prof !40

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp ne ptr %i.w, null
  %i.al = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i.i18.i, label %bb.r, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EEvRT_T0_mT1_m.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, %bb.o, %bb.p, %bb.q, %bb.r
  store i16 %i.f, ptr %i.x, align 8, !tbaa !102
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEESB_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !101  ; 6 uses
  %i.c = sub i16 16383, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %.neg.i = sub i16 %3, %i.b
  %i.f = add i16 %.neg.i, %i.e
  %i.g = icmp ult i16 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i16 %i.b, 8192
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i16 %i.b, 3
  %i.j = udiv i16 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEtt.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i16 %i.b, -24577
  %i.l = shl i16 %i.b, 3
  %i.m = tail call i16 @llvm.umin.i16(i16 %i.l, i16 16383)
  %i.n = select i1 %i.k, i16 16383, i16 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEtt.exit

_ZNK5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEtt.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i16 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i16 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i16 @llvm.umax.i16(i16 %i.o, i16 %.0.i.i) ; 2 uses
  %i.q = icmp ugt i16 %i.o, 16383
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit, !prof !40

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEtt.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEtt.exit
  %i.r = shl nuw i16 %i.p, 2
  %i.s = zext i16 %i.r to i64
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 5 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !100    ; 7 uses
  %i.v = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = load i16, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = zext i16 %3 to i64                      ; 2 uses
  %i.ac = icmp ne ptr %i.u, %2
  %i.ad = icmp ne ptr %i.u, null
  %spec.select.i.i.i.i = and i1 %i.ad, %i.ac
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i, !prof !43

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 4 %i.u, i64 %i.x, i1 false)
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  br label %_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit
  %.0.i.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit ] ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %3, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_4test25small_size_type_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS5_T_m.exit.i.i, label %bb.h, !prof !40

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %i.af = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i.i.i, i8 0, i64 %i.af, i1 false)
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_4test25small_size_type_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS5_T_m.exit.i.i

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_4test25small_size_type_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS5_T_m.exit.i.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %i.ag = icmp ne ptr %2, %i.aa
  %i.ah = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ah, %i.ag
  br i1 %spec.select.i.i18.i.i, label %bb.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, !prof !43

bb.i:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_4test25small_size_type_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS5_T_m.exit.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %i.ab
  %i.aj = ptrtoint ptr %i.aa to i64
  %i.ak = sub i64 %i.aj, %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 4 %2, i64 %i.ak, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i: ; preds = %bb.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_4test25small_size_type_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS5_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPitSA_tT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i
  %i.al = load i16, ptr %i.a, align 2, !tbaa !101
  %i.am = zext i16 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.an) #25
  %.pre = load i16, ptr %i.d, align 8, !tbaa !102
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPitSA_tT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPitSA_tT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %bb.j
  %i.ao = phi i16 [ %i.y, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre, %bb.j ]
  store ptr %i.t, ptr %1, align 8, !tbaa !100
  %i.ap = add i16 %i.ao, %3
  store i16 %i.ap, ptr %i.d, align 8, !tbaa !102
  store i16 %i.p, ptr %i.a, align 2, !tbaa !93
  %sext = shl i64 %i.x, 46
end_hunk_1
