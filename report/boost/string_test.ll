Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE12emplace_backIJRKS5_EEERS5_DpOT_:bb.a
bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.n, i64 %i.x, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i:   ; preds = %bb.d, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.x
  store i8 0, ptr %i.ao, align 1, !tbaa !51
  %i.ap = load i8, ptr %i.f, align 8, !tbaa !51
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i
  %i.ar = trunc i64 %i.x to i8
  %i.as = shl i8 %i.ar, 1
  %i.at = or disjoint i8 %i.as, 1
  store i8 %i.at, ptr %i.f, align 8
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JRKS6_EEEvRS7_PT_DpOT0_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i
  %i.au = load i64, ptr %i.f, align 8
  %i.av = shl i64 %i.x, 1
  %i.aw = and i64 %i.au, 1
  %i.ax = or disjoint i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.f, align 8
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JRKS6_EEEvRS7_PT_DpOT0_.exit

.body.i.i:                                        ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #27
  resume { ptr, i32 } %i.ay

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JRKS6_EEEvRS7_PT_DpOT0_.exit: ; preds = %bb.e, %bb.f
  %i.az = load i64, ptr %i.a, align 8, !tbaa !109
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !109
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bb = load ptr, ptr %0, align 8, !tbaa !107
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bc, i64 noundef 1, ptr nonnull %1)
  %i.bd = load ptr, ptr %2, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JRKS6_EEEvRS7_PT_DpOT0_.exit
  %.0 = phi ptr [ %i.f, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JRKS6_EEEvRS7_PT_DpOT0_.exit ], [ %i.bd, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 6 uses
  %i.c = sub i64 384307168202282325, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !195  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 384307168202282325)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 384307168202282325
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !72

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = mul nuw nsw i64 %i.o, 24                 ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !107    ; 4 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %4 to i64
  invoke void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS6_EEEEEvRT_T0_SG_SG_T1_mT2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.s, ptr noundef %2, ptr noundef %i.u, ptr noundef nonnull %i.r, i64 noundef %3, i64 %i.v)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !107
  %i.x = load i64, ptr %i.a, align 8, !tbaa !110
  %i.y = mul i64 %i.x, 24
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #27
  br label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mSF_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #27
  resume { ptr, i32 } %i.z

_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mSF_mT_.exit: ; preds = %bb.g, %bb.h
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.aa, %i.ab
  store ptr %i.r, ptr %1, align 8, !tbaa !107
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !195
  %i.ae = add i64 %i.ad, %3
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !195
  store i64 %i.o, ptr %i.a, align 8, !tbaa !56
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ac
  store ptr %i.af, ptr %0, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS6_EEEEEvRT_T0_SG_SG_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i19 = alloca [24 x i8], align 8 ; 4 uses
  %7 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %8 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %9 = alloca %"struct.boost::container::dtl::scoped_destructor_range", align 8 ; 7 uses
  %i.a = inttoptr i64 %6 to ptr                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %4, ptr %9, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !975
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i
  %.018.i = phi ptr [ %i.p, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %1, %bb.a ] ; 8 uses
  %.01517.i = phi ptr [ %i.q, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %4, %bb.a ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  store i8 1, ptr %.01517.i, align 1
  %i.d = load i8, ptr %.018.i, align 1, !tbaa !51
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, ptr noundef nonnull align 8 dereferenceable(24) %.018.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !71
  %i.f = load i64, ptr %.01517.i, align 8
  %i.g = and i64 %i.f, -2
  store i64 %i.g, ptr %.01517.i, align 8
  %i.h = load i64, ptr %.018.i, align 8
  %i.i = and i64 %i.h, -2
  store i64 %i.i, ptr %.01517.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 1 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.018.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.q, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ] ; 15 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  store ptr %.015.lcssa.i, ptr %i.b, align 8, !tbaa !200
  store i8 1, ptr %.015.lcssa.i, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 16 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !51
  %i.t = load i8, ptr %i.a, align 1, !tbaa !51    ; 2 uses
  %i.u = trunc i8 %i.t to i1                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = lshr i8 %i.t, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad
  %i.af = select i1 %i.u, ptr %i.ab, ptr %i.ae    ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, i64 noundef %i.ai)
          to label %.noexc.i.i.i.i unwind label %.body.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  br i1 %i.aj, label %bb.d, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.ak = load i8, ptr %.015.lcssa.i, align 1, !tbaa !51 ; 2 uses
  %i.al = trunc i8 %i.ak to i1
  %i.am = lshr i8 %i.ak, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.an
  %i.ap = load ptr, ptr %i.s, align 8
  %i.aq = load i64, ptr %.015.lcssa.i, align 8
  %i.ar = lshr i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %i.at = select i1 %i.al, ptr %i.ao, ptr %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.d, %.noexc.i.i.i.i
  %i.au = load i8, ptr %.015.lcssa.i, align 1, !tbaa !51
  %i.av = trunc i8 %i.au to i1
  %i.aw = load ptr, ptr %i.s, align 8
  %i.ax = select i1 %i.av, ptr %i.r, ptr %i.aw    ; 2 uses
  %i.ay = icmp eq ptr %i.af, %i.y
  br i1 %i.ay, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.y, i64 %i.ai, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i: ; preds = %bb.e, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ai
  store i8 0, ptr %i.az, align 1, !tbaa !51
  %i.ba = load i8, ptr %.015.lcssa.i, align 8, !tbaa !51
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
  %i.bc = trunc i64 %i.ai to i8
  %i.bd = shl i8 %i.bc, 1
  %i.be = or disjoint i8 %i.bd, 1
  store i8 %i.be, ptr %.015.lcssa.i, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
  %i.bf = load i64, ptr %.015.lcssa.i, align 8
  %i.bg = shl i64 %i.ai, 1
  %i.bh = and i64 %i.bf, 1
  %i.bi = or disjoint i64 %i.bh, %i.bg
  store i64 %i.bi, ptr %.015.lcssa.i, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

.body.i.i.i:                                      ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.015.lcssa.i) #27
  call void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  resume { ptr, i32 } %i.bj

_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.g, %bb.f
  %.not16.i20 = icmp eq ptr %2, %3
  br i1 %.not16.i20, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit27, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24
  %.018.i22 = phi ptr [ %i.bx, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24 ], [ %2, %.lr.ph.i21.preheader ] ; 8 uses
  %.01517.i23 = phi ptr [ %i.by, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24 ], [ %i.bk, %.lr.ph.i21.preheader ] ; 10 uses
  store i8 1, ptr %.01517.i23, align 1
  %i.bl = load i8, ptr %.018.i22, align 1, !tbaa !51
  %i.bm = trunc i8 %i.bl to i1
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i23, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i23, ptr noundef nonnull align 8 dereferenceable(24) %.018.i22, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24

bb.i:                                             ; preds = %.lr.ph.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i23, i64 24, i1 false), !tbaa.struct !71
  %i.bn = load i64, ptr %.01517.i23, align 8
  %i.bo = and i64 %i.bn, -2
  store i64 %i.bo, ptr %.01517.i23, align 8
  %i.bp = load i64, ptr %.018.i22, align 8
  %i.bq = and i64 %i.bp, -2
  store i64 %i.bq, ptr %.01517.i23, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.018.i22, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %.01517.i23, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.018.i22, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61
  %i.bw = getelementptr inbounds nuw i8, ptr %.01517.i23, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i22, ptr noundef nonnull align 1 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24: ; preds = %bb.i, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i22, i64 24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i23, i64 24
  %.not.i25 = icmp eq ptr %i.bx, %3
  br i1 %.not.i25, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit27, label %.lr.ph.i21, !llvm.loop !10

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit27: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24, %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !199    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not2 = icmp eq ptr %i.b, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit
  %i.d = phi ptr [ %i.n, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.p, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit ], [ %i.b, %bb.a ] ; 5 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !51
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.l = icmp ne ptr %i.i, null
  %i.m = icmp ugt i64 %i.k, 23
  %or.cond.i.i.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.k) #27
  %.pre = load ptr, ptr %0, align 8, !tbaa !199
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !200
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %i.n = phi ptr [ %i.d, %.lr.ph ], [ %i.d, %bb.b ], [ %.pre3, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %i.e, %.lr.ph ], [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !199
  %.not = icmp eq ptr %i.p, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !976

._crit_edge:                                      ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE7destroyIS6_EEvRS7_PT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEENS0_12vec_iteratorIPS7_Lb0EEESI_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !103  ; 6 uses
  %i.c = sub i64 288230376151711743, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !196  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = icmp ugt i64 %i.m, 288230376151711743
  br i1 %i.n, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !72

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 288230376151711743)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
  %i.s = load ptr, ptr %1, align 8, !tbaa !104
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mSH_mT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.r, i64 noundef %i.p, ptr noundef %2, i64 noundef %3, ptr %4)
  %i.w = load ptr, ptr %1, align 8, !tbaa !104
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.v
  store ptr %i.x, ptr %0, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mSH_mT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.c
  %i.e = ptrtoint ptr %5 to i64
  invoke void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JRKS8_EEEEEvRT_T0_SI_SI_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.a, ptr noundef %3, ptr noundef %i.d, ptr noundef %1, i64 noundef %4, i64 %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %.not3.i = icmp eq i64 %i.f, 0
  br i1 %.not3.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit.i
  %.05.i = phi i64 [ %i.g, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit.i ], [ %i.f, %bb.c ]
  %storemerge4.i = phi ptr [ %i.m, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  %i.g = add i64 %.05.i, -1                       ; 2 uses
  %i.h = load ptr, ptr %storemerge4.i, align 8, !tbaa !66 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !51
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 32
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !9

.loopexit:                                        ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit.i, %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !103
  %i.q = shl i64 %i.p, 5
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #27
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %.not.i16 = icmp eq ptr %1, null
  br i1 %.not.i16, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit17, label %bb.e

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit: ; preds = %bb.b, %.loopexit
  store ptr %1, ptr %0, align 8, !tbaa !104
  %i.s = load i64, ptr %i.b, align 8, !tbaa !196
  %i.t = add i64 %i.s, %4
  store i64 %i.t, ptr %i.b, align 8, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.u, align 8, !tbaa !56
  ret void

bb.e:                                             ; preds = %bb.d
  %i.v = shl i64 %2, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef %i.v) #27
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit17

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit17: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JRKS8_EEEEEvRT_T0_SI_SI_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.boost::container::dtl::scoped_destructor_range.28", align 8 ; 7 uses
  %i.b = inttoptr i64 %6 to ptr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %4, ptr %7, align 8, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %0, ptr %i.d, align 8, !tbaa !978
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.018.i = phi ptr [ %i.q, %bb.c ], [ %1, %bb.a ] ; 6 uses
  %.01517.i = phi ptr [ %i.r, %bb.c ], [ %4, %bb.a ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16 ; 3 uses
  store ptr %i.e, ptr %.01517.i, align 8, !tbaa !64
  %i.f = load ptr, ptr %.018.i, align 8, !tbaa !66 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.018.i, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.f, ptr %.01517.i, align 8, !tbaa !66
  %i.m = load i64, ptr %i.g, align 8, !tbaa !51
  store i64 %i.m, ptr %i.e, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !67
  store ptr %i.g, ptr %.018.i, align 8, !tbaa !66
  store i64 0, ptr %i.n, align 8, !tbaa !67
  store i8 0, ptr %i.g, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %.018.i, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i, !llvm.loop !977

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit: ; preds = %bb.c, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.r, %bb.c ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  store ptr %.015.lcssa.i, ptr %i.c, align 8, !tbaa !204
  %i.s = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 16 ; 3 uses
  store ptr %i.s, ptr %.015.lcssa.i, align 8, !tbaa !64
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.v, ptr %i.a, align 8, !tbaa !56
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.015.lcssa.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.x, ptr %.015.lcssa.i, align 8, !tbaa !66
  %i.y = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.y, ptr %i.s, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !51
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !51
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !67
  %i.ad = load ptr, ptr %.015.lcssa.i, align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not16.i19 = icmp eq ptr %2, %3
  br i1 %.not16.i19, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit26, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %bb.h
  %.018.i21 = phi ptr [ %i.as, %bb.h ], [ %2, %.lr.ph.i20.preheader ] ; 6 uses
  %.01517.i22 = phi ptr [ %i.at, %bb.h ], [ %i.af, %.lr.ph.i20.preheader ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 16 ; 3 uses
  store ptr %i.ag, ptr %.01517.i22, align 8, !tbaa !64
  %i.ah = load ptr, ptr %.018.i21, align 8, !tbaa !66 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i21, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

bb.g:                                             ; preds = %.lr.ph.i20
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i21, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !67 ; 2 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %.lr.ph.i20
  store ptr %i.ah, ptr %.01517.i22, align 8, !tbaa !66
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !51
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.018.i21, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !67
  store ptr %i.ai, ptr %.018.i21, align 8, !tbaa !66
  store i64 0, ptr %i.ap, align 8, !tbaa !67
  store i8 0, ptr %i.ai, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i21, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 32
  %.not.i24 = icmp eq ptr %i.as, %3
  br i1 %.not.i24, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit26, label %.lr.ph.i20, !llvm.loop !977

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit26: ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !203    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.not2 = icmp eq ptr %i.b, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit
  %i.d = phi ptr [ %i.k, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit ], [ %i.c, %bb.a ]
  %i.e = phi ptr [ %i.m, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !51
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  %.pre = load ptr, ptr %0, align 8, !tbaa !203
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !204
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.k = phi ptr [ %.pre3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !203
  %.not = icmp eq ptr %i.m, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !979

._crit_edge:                                      ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS8_EEvRS9_PT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 6 uses
  %i.c = sub i64 384307168202282325, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !195  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 384307168202282325)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 384307168202282325
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !72

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = mul nuw nsw i64 %i.o, 24                 ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !107    ; 4 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %4 to i64
  invoke void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JS6_EEEEEvRT_T0_SE_SE_T1_mT2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.s, ptr noundef %2, ptr noundef %i.u, ptr noundef nonnull %i.r, i64 noundef %3, i64 %i.v)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !107
  %i.x = load i64, ptr %i.a, align 8, !tbaa !110
  %i.y = mul i64 %i.x, 24
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #27
  br label %_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mSD_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #27
  resume { ptr, i32 } %i.z

_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mSD_mT_.exit: ; preds = %bb.g, %bb.h
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.aa, %i.ab
  store ptr %i.r, ptr %1, align 8, !tbaa !107
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !195
  %i.ae = add i64 %i.ad, %3
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !195
  store i64 %i.o, ptr %i.a, align 8, !tbaa !56
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ac
  store ptr %i.af, ptr %0, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JS6_EEEEEvRT_T0_SE_SE_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i21 = alloca [24 x i8], align 8 ; 4 uses
  %7 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %.sroa.0.i.i.i.i.i19 = alloca [24 x i8], align 8 ; 4 uses
  %8 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %9 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.a = inttoptr i64 %6 to ptr                   ; 7 uses
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i
  %.018.i = phi ptr [ %i.n, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %1, %bb.a ] ; 8 uses
  %.01517.i = phi ptr [ %i.o, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %4, %bb.a ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  store i8 1, ptr %.01517.i, align 1
  %i.b = load i8, ptr %.018.i, align 1, !tbaa !51
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, ptr noundef nonnull align 8 dereferenceable(24) %.018.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !71
  %i.d = load i64, ptr %.01517.i, align 8
  %i.e = and i64 %i.d, -2
  store i64 %i.e, ptr %.01517.i, align 8
  %i.f = load i64, ptr %.018.i, align 8
  %i.g = and i64 %i.f, -2
  store i64 %i.g, ptr %.01517.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 1 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !10

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.o, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  store i8 1, ptr %.015.lcssa.i, align 1
  %i.p = load i8, ptr %i.a, align 1, !tbaa !51
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.e:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, i64 24, i1 false), !tbaa.struct !71
  %i.r = load i64, ptr %.015.lcssa.i, align 8
  %i.s = and i64 %i.r, -2
  store i64 %i.s, ptr %.015.lcssa.i, align 8
  %i.t = load i64, ptr %i.a, align 8
  %i.u = and i64 %i.t, -2
  store i64 %i.u, ptr %.015.lcssa.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.e, %bb.d
  %.not16.i22 = icmp eq ptr %2, %3
  br i1 %.not16.i22, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit29, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26
  %.018.i24 = phi ptr [ %i.ao, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26 ], [ %2, %.lr.ph.i23.preheader ] ; 8 uses
  %.01517.i25 = phi ptr [ %i.ap, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26 ], [ %i.ab, %.lr.ph.i23.preheader ] ; 10 uses
  store i8 1, ptr %.01517.i25, align 1
  %i.ac = load i8, ptr %.018.i24, align 1, !tbaa !51
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i25, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i25, ptr noundef nonnull align 8 dereferenceable(24) %.018.i24, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i21, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i21)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26

bb.g:                                             ; preds = %.lr.ph.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i25, i64 24, i1 false), !tbaa.struct !71
  %i.ae = load i64, ptr %.01517.i25, align 8
  %i.af = and i64 %i.ae, -2
  store i64 %i.af, ptr %.01517.i25, align 8
  %i.ag = load i64, ptr %.018.i24, align 8
  %i.ah = and i64 %i.ag, -2
  store i64 %i.ah, ptr %.01517.i25, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i24, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i25, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %.018.i24, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i25, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i24, ptr noundef nonnull align 1 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26: ; preds = %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i24, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i25, i64 24
  %.not.i27 = icmp eq ptr %i.ao, %3
  br i1 %.not.i27, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit29, label %.lr.ph.i23, !llvm.loop !10

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit29: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26, %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %4 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !107, !nonnull !85, !noundef !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c ; 23 uses
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i8 0, ptr %i.e, align 1, !tbaa !51
  %i.g = load i8, ptr %3, align 1, !tbaa !51      ; 2 uses
  %i.h = trunc i8 %i.g to i1                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = lshr i8 %i.g, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.p = load i64, ptr %3, align 8
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.s = select i1 %i.h, ptr %i.o, ptr %i.r       ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.l to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.v)
          to label %.noexc.i.i.i.i unwind label %.body.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  br i1 %i.w, label %bb.c, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i

bb.c:                                             ; preds = %.noexc.i.i.i.i
  %i.x = load i8, ptr %i.d, align 1, !tbaa !51    ; 2 uses
  %i.y = trunc i8 %i.x to i1
  %i.z = lshr i8 %i.x, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = load i64, ptr %i.d, align 8
  %i.ae = lshr i64 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = select i1 %i.y, ptr %i.ab, ptr %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i: ; preds = %bb.c, %.noexc.i.i.i.i
  %i.ah = load i8, ptr %i.d, align 1, !tbaa !51
  %i.ai = trunc i8 %i.ah to i1
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = select i1 %i.ai, ptr %i.e, ptr %i.aj    ; 2 uses
  %i.al = icmp eq ptr %i.s, %i.l
  br i1 %i.al, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.l, i64 %i.v, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i: ; preds = %bb.d, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.v
  store i8 0, ptr %i.am, align 1, !tbaa !51
  %i.an = load i8, ptr %i.d, align 8, !tbaa !51
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
  %i.ap = trunc i64 %i.v to i8
  %i.aq = shl i8 %i.ap, 1
  %i.ar = or disjoint i8 %i.aq, 1
  store i8 %i.ar, ptr %i.d, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
  %i.as = load i64, ptr %i.d, align 8
  %i.at = shl i64 %i.v, 1
  %i.au = and i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %i.d, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

.body.i.i.i:                                      ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #27
  resume { ptr, i32 } %i.aw

_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.e, %bb.f
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !109
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !109
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.g:                                             ; preds = %bb.a
  %i.az = ptrtoint ptr %i.d to i64
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24
  %i.bd = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 6 uses
  store i8 1, ptr %i.d, align 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !51
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !71
  %i.bg = load <2 x i64>, ptr %i.bd, align 8
  %i.bh = and <2 x i64> %i.bg, <i64 -2, i64 -1>
  store <2 x i64> %i.bh, ptr %i.d, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 1 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit: ; preds = %bb.h, %bb.i
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !109
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !109
  %i.bn = add nsw i64 %i.bc, -1                   ; 2 uses
  %.not9.i = icmp eq i64 %i.bn, 0
  br i1 %.not9.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i
  %.012.i = phi ptr [ %i.bp, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i ], [ %i.d, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0611.i = phi i64 [ %i.bs, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i ], [ %i.bn, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0710.i = phi ptr [ %i.bo, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i ], [ %i.bd, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %i.bo = getelementptr inbounds i8, ptr %.0710.i, i64 -24 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.012.i, i64 -24 ; 2 uses
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.preheader
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #30
  unreachable

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i: ; preds = %.lr.ph.i.preheader
  %i.bs = add i64 %.0611.i, -1                    ; 2 uses
  %.not.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader, !llvm.loop !11

_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit
  %.not.i.i14 = icmp eq ptr %1, %3
  br i1 %.not.i.i14, label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit, label %bb.k, !prof !72

bb.k:                                             ; preds = %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit
  %i.bt = load i8, ptr %3, align 1, !tbaa !51     ; 2 uses
  %i.bu = trunc i8 %i.bt to i1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = select i1 %i.bu, ptr %i.bv, ptr %i.bx   ; 3 uses
  %i.bz = lshr i8 %i.bt, 1
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ca
  %i.cc = load i64, ptr %3, align 8
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cd
  %i.cf = select i1 %i.bu, ptr %i.cb, ptr %i.ce   ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.by to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 5 uses
  %i.cj = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ci)
  br i1 %i.cj, label %bb.l, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ck = load i8, ptr %1, align 1, !tbaa !51     ; 2 uses
  %i.cl = trunc i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cn = lshr i8 %i.ck, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load i64, ptr %1, align 8
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.cv = select i1 %i.cl, ptr %i.cp, ptr %i.cu
  store i8 0, ptr %i.cv, align 1, !tbaa !51
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.cw = load i8, ptr %1, align 1, !tbaa !51
  %i.cx = trunc i8 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = select i1 %i.cx, ptr %i.cy, ptr %i.da   ; 2 uses
  %i.dc = icmp eq ptr %i.cf, %i.by
  br i1 %i.dc, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.by, i64 %i.ci, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i:     ; preds = %bb.m, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE7reserveEm.exit.i.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.ci
  store i8 0, ptr %i.dd, align 1, !tbaa !51
  %i.de = load i8, ptr %1, align 8, !tbaa !51
  %i.df = trunc i8 %i.de to i1
  br i1 %i.df, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i
  %i.dg = trunc i64 %i.ci to i8
  %i.dh = shl i8 %i.dg, 1
  %i.di = or disjoint i8 %i.dh, 1
  store i8 %i.di, ptr %1, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i
  %i.dj = load i64, ptr %1, align 8
  %i.dk = shl i64 %i.ci, 1
  %i.dl = and i64 %i.dj, 1
  %i.dm = or disjoint i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %1, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.o, %bb.n, %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !104, !nonnull !85, !noundef !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.d ; 18 uses
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !64
  %i.g = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !56
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !66
  %i.l = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.l, ptr %i.f, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !51
  store i8 %i.n, ptr %i.m, align 1, !tbaa !51
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit

_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !67
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.s = load i64, ptr %i.c, align 8, !tbaa !102
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.c, align 8, !tbaa !102
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %1 to i64
  %i.v = ptrtoint ptr %i.e to i64
  %i.w = sub i64 %i.v, %i.u
  %i.x = ashr exact i64 %i.w, 5
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.e, align 8, !tbaa !64
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !66  ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.e, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !67 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !66
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !51
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !51
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.e, i64 -24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aj = getelementptr inbounds i8, ptr %i.e, i64 -24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !67
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !66
  store i64 0, ptr %i.aj, align 8, !tbaa !67
  store i8 0, ptr %i.ab, align 8, !tbaa !51
  %i.al = load i64, ptr %i.c, align 8, !tbaa !102
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.c, align 8, !tbaa !102
  %i.an = add nsw i64 %i.x, -1                    ; 2 uses
  %.not8.i = icmp eq i64 %i.an, 0
  br i1 %.not8.i, label %_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %.011.i = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ], [ %i.e, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit ] ; 5 uses
  %.0610.i = phi i64 [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ], [ %i.an, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit ]
  %.079.i = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ], [ %i.y, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit ] ; 6 uses
  %i.ao = add i64 %.0610.i, -1                    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.079.i, i64 -32 ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr %.011.i, i64 -32 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 6 uses
  %i.as = getelementptr inbounds i8, ptr %.011.i, i64 -16 ; 4 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !66 ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %.079.i, i64 -16 ; 6 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i
  br i1 %i.aw, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph.i
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ax = getelementptr inbounds i8, ptr %.079.i, i64 -24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !51
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.011.i, i64 -24
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !67
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !51
  %.pre.i.i = load ptr, ptr %i.ap, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %.011.i, i64 -24
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !66
  %i.bg = getelementptr inbounds i8, ptr %.079.i, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !67
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !67
  %i.bi = load i64, ptr %i.av, align 8, !tbaa !51
  store i64 %i.bi, ptr %i.as, align 8, !tbaa !51
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !51
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !66
  %i.bk = getelementptr inbounds i8, ptr %.079.i, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !67
  %i.bm = getelementptr inbounds i8, ptr %.011.i, i64 -24
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !67
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !51
  store i64 %i.bn, ptr %i.as, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !66
  store i64 %i.bj, ptr %i.av, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bo = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ar, %bb.j ], [ %i.av, %bb.k ]
  %i.bp = getelementptr inbounds i8, ptr %.079.i, i64 -24
  store i64 0, ptr %i.bp, align 8, !tbaa !67
  store i8 0, ptr %i.bo, align 1, !tbaa !51
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit, label %.lr.ph.i, !llvm.loop !980

_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit, %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIcSt11char_traitsIcEvvEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %4 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [24 x i8], align 8  ; 4 uses
  %5 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<char>, void>::short_t", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !107, !nonnull !85, !noundef !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c ; 20 uses
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 1
  %i.e = load i8, ptr %3, align 1, !tbaa !51
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !71
  %i.g = load i64, ptr %i.d, align 8
  %i.h = and i64 %i.g, -2
  store i64 %i.h, ptr %i.d, align 8
  %i.i = load i64, ptr %3, align 8
  %i.j = and i64 %i.i, -2
  store i64 %i.j, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.c, %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !109
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.b, align 8, !tbaa !109
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.e:                                             ; preds = %bb.a
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 6 uses
  store i8 1, ptr %i.d, align 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !51
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !71
  %i.z = load <2 x i64>, ptr %i.w, align 8
  %i.aa = and <2 x i64> %i.z, <i64 -2, i64 -1>
  store <2 x i64> %i.aa, ptr %i.d, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 1 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !109
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.b, align 8, !tbaa !109
  %i.ag = add nsw i64 %i.v, -1                    ; 2 uses
  %.not9.i = icmp eq i64 %i.ag, 0
  br i1 %.not9.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i
  %.012.i = phi ptr [ %i.ai, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i ], [ %i.d, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0611.i = phi i64 [ %i.al, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i ], [ %i.ag, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0710.i = phi ptr [ %i.ah, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i ], [ %i.w, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %i.ah = getelementptr inbounds i8, ptr %.0710.i, i64 -24 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.012.i, i64 -24 ; 2 uses
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.preheader
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #30
  unreachable

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i: ; preds = %.lr.ph.i.preheader
  %i.al = add i64 %.0611.i, -1                    ; 2 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader, !llvm.loop !11

_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEaSEOS4_.exit.i, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit
  %.not.i.i14 = icmp eq ptr %1, %3
  br i1 %.not.i.i14, label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit, label %bb.i, !prof !72

bb.i:                                             ; preds = %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #30
  unreachable

_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.i, %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIcSt11char_traitsIcEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIcSt11char_traitsIcEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %17 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !112    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 384
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph34

.lr.ph:                                           ; preds = %.lr.ph34
  %i.h = icmp eq i64 %i.q, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph34, !llvm.loop !981

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa31 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %.lcssa29 = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.y, %.lr.ph ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %.lcssa29, ptr %14, align 8, !tbaa !112
  store ptr %.lcssa, ptr %15, align 8, !tbaa !112
  store ptr %.lcssa, ptr %16, align 8, !tbaa !112
  call void @_ZSt13__heap_selectIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_SC_T0_(ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph._crit_edge, %.lr.ph.i.i
  %i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %.lcssa, %.lr.ph._crit_edge ]
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -24 ; 4 uses
  store ptr %.lcssa29, ptr %10, align 8, !tbaa !112
  store ptr %i.j, ptr %11, align 8, !tbaa !112
  store ptr %i.j, ptr %12, align 8, !tbaa !112
  call void @_ZSt10__pop_heapIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %.lcssa31
  %i.m = icmp sgt i64 %i.l, 24
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !982

_ZSt14__partial_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %.loopexit

.lr.ph34:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.01633 = phi i64 [ %i.q, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.n = phi ptr [ %i.x, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.o = phi ptr [ %i.y, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 4 uses
  %i.p = phi i64 [ %i.ab, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.q = add nsw i64 %.01633, -1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.r = udiv i64 %i.p, 48
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.r
  store ptr %i.o, ptr %3, align 8, !tbaa !112, !noalias !991
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !112, !alias.scope !992, !noalias !991
  store ptr %i.s, ptr %5, align 8, !tbaa !112, !noalias !991
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 -24
  store ptr %i.u, ptr %6, align 8, !tbaa !112, !alias.scope !993, !noalias !991
  call void @_ZSt22__move_median_to_firstIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6), !noalias !991
  store ptr %i.t, ptr %7, align 8, !tbaa !112, !alias.scope !994, !noalias !991
  store ptr %i.n, ptr %8, align 8, !tbaa !112, !noalias !991
  store ptr %i.o, ptr %9, align 8, !tbaa !112, !noalias !991
  call void @_ZSt21__unguarded_partitionIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEET_SC_SC_SC_T0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %17, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.v = load ptr, ptr %17, align 8, !tbaa !115
  store ptr %i.v, ptr %18, align 8, !tbaa !112
  %i.w = load ptr, ptr %1, align 8, !tbaa !115
  store ptr %i.w, ptr %19, align 8, !tbaa !112
  call void @_ZSt16__introsort_loopIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, i64 noundef %i.q)
  %i.x = load ptr, ptr %17, align 8, !tbaa !115   ; 4 uses
  store ptr %i.x, ptr %1, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.y = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 384
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !981

.loopexit:                                        ; preds = %.lr.ph34, %bb.a, %_ZSt14__partial_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIcSt11char_traitsIcEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvED2Ev:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !136
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i
  %.05.i = phi i64 [ %i.d, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i ], [ %i.b, %.lr.ph.i.preheader ]
  %storemerge4.i = phi ptr [ %i.k, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i ], [ %i.c, %.lr.ph.i.preheader ] ; 3 uses
  %i.d = add i64 %.05.i, -1                       ; 2 uses
  %i.e = load ptr, ptr %storemerge4.i, align 8, !tbaa !137 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !51
  %i.i = shl i64 %i.h, 2
  %i.j = add i64 %i.i, 4
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #29
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 32
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.i, !llvm.loop !13

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !135  ; 2 uses
  %.not.i1 = icmp eq i64 %i.m, 0
  br i1 %.not.i1, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !146
  %i.o = shl i64 %i.m, 5
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.o) #27
  br label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 6 uses
  %i.c = sub i64 384307168202282325, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !205  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 384307168202282325)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 384307168202282325
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !72

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = mul nuw nsw i64 %i.o, 24                 ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !130    ; 4 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %4 to i64
  invoke void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS6_EEEEEvRT_T0_SG_SG_T1_mT2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.s, ptr noundef %2, ptr noundef %i.u, ptr noundef nonnull %i.r, i64 noundef %3, i64 %i.v)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !130
  %i.x = load i64, ptr %i.a, align 8, !tbaa !129
  %i.y = mul i64 %i.x, 24
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #27
  br label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mSF_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #27
  resume { ptr, i32 } %i.z

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mSF_mT_.exit: ; preds = %bb.g, %bb.h
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.aa, %i.ab
  store ptr %i.r, ptr %1, align 8, !tbaa !130
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !205
  %i.ae = add i64 %i.ad, %3
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !205
  store i64 %i.o, ptr %i.a, align 8, !tbaa !56
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ac
  store ptr %i.af, ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS6_EEEEEvRT_T0_SG_SG_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i19 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %7 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %8 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %9 = alloca %"struct.boost::container::dtl::scoped_destructor_range.57", align 8 ; 7 uses
  %i.a = inttoptr i64 %6 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %4, ptr %9, align 8, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !1132
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i
  %.018.i = phi ptr [ %i.p, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %1, %bb.a ] ; 8 uses
  %.01517.i = phi ptr [ %i.q, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %4, %bb.a ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  store i8 1, ptr %.01517.i, align 4
  %i.d = load i8, ptr %.018.i, align 1, !tbaa !51
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, ptr noundef nonnull align 8 dereferenceable(24) %.018.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !138
  %i.f = load i64, ptr %.01517.i, align 8
  %i.g = and i64 %i.f, -2
  store i64 %i.g, ptr %.01517.i, align 8
  %i.h = load i64, ptr %.018.i, align 8
  %i.i = and i64 %i.h, -2
  store i64 %i.i, ptr %.01517.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.018.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !14

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.q, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  store ptr %.015.lcssa.i, ptr %i.b, align 8, !tbaa !210
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit unwind label %bb.f

_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %.not16.i20 = icmp eq ptr %2, %3
  br i1 %.not16.i20, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit27, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24
  %.018.i22 = phi ptr [ %i.ae, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24 ], [ %2, %.lr.ph.i21.preheader ] ; 8 uses
  %.01517.i23 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24 ], [ %i.r, %.lr.ph.i21.preheader ] ; 10 uses
  store i8 1, ptr %.01517.i23, align 4
  %i.s = load i8, ptr %.018.i22, align 1, !tbaa !51
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i23, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i23, ptr noundef nonnull align 8 dereferenceable(24) %.018.i22, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i22, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24

bb.e:                                             ; preds = %.lr.ph.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i23, i64 24, i1 false), !tbaa.struct !138
  %i.u = load i64, ptr %.01517.i23, align 8
  %i.v = and i64 %i.u, -2
  store i64 %i.v, ptr %.01517.i23, align 8
  %i.w = load i64, ptr %.018.i22, align 8
  %i.x = and i64 %i.w, -2
  store i64 %i.x, ptr %.01517.i23, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i22, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %.01517.i23, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %.018.i22, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %.01517.i23, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i22, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24: ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i22, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01517.i23, i64 24
  %.not.i25 = icmp eq ptr %i.ae, %3
  br i1 %.not.i25, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit27, label %.lr.ph.i21, !llvm.loop !14

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit27: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i24, %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret void

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !209    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %.not2 = icmp eq ptr %i.b, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit
  %i.d = phi ptr [ %i.o, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.q, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit ], [ %i.b, %bb.a ] ; 5 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !51
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98   ; 2 uses
  %i.l = icmp ne ptr %i.i, null
  %i.m = icmp ugt i64 %i.k, 5
  %or.cond.i.i.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = shl i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  %.pre = load ptr, ptr %0, align 8, !tbaa !209
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !210
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %i.o = phi ptr [ %i.d, %.lr.ph ], [ %i.d, %bb.b ], [ %.pre3, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %i.e, %.lr.ph ], [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !209
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1133

._crit_edge:                                      ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEENS0_12vec_iteratorIPS7_Lb0EEESI_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !135  ; 6 uses
  %i.c = sub i64 288230376151711743, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !206  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = icmp ugt i64 %i.m, 288230376151711743
  br i1 %i.n, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !72

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 288230376151711743)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 5
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31
  %i.s = load ptr, ptr %1, align 8, !tbaa !136
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mSH_mT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.r, i64 noundef %i.p, ptr noundef %2, i64 noundef %3, ptr %4)
  %i.w = load ptr, ptr %1, align 8, !tbaa !136
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.v
  store ptr %i.x, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mSH_mT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.c
  %i.e = ptrtoint ptr %5 to i64
  invoke void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JRKS8_EEEEEvRT_T0_SI_SI_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.a, ptr noundef %3, ptr noundef %i.d, ptr noundef %1, i64 noundef %4, i64 %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %.not3.i = icmp eq i64 %i.f, 0
  br i1 %.not3.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i
  %.05.i = phi i64 [ %i.g, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i ], [ %i.f, %bb.c ]
  %storemerge4.i = phi ptr [ %i.n, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  %i.g = add i64 %.05.i, -1                       ; 2 uses
  %i.h = load ptr, ptr %storemerge4.i, align 8, !tbaa !137 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !51
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #29
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 32
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !13

.loopexit:                                        ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !135
  %i.r = shl i64 %i.q, 5
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.not.i16 = icmp eq ptr %1, null
  br i1 %.not.i16, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev.exit17, label %bb.e

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev.exit: ; preds = %bb.b, %.loopexit
  store ptr %1, ptr %0, align 8, !tbaa !136
  %i.t = load i64, ptr %i.b, align 8, !tbaa !206
  %i.u = add i64 %i.t, %4
  store i64 %i.u, ptr %i.b, align 8, !tbaa !206
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.v, align 8, !tbaa !56
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = shl i64 %2, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef %i.w) #27
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev.exit17

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev.exit17: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_NS0_3dtl20insert_emplace_proxyIS9_JRKS8_EEEEEvRT_T0_SI_SI_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.boost::container::dtl::scoped_destructor_range.61", align 8 ; 7 uses
  %i.b = inttoptr i64 %6 to ptr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %4, ptr %7, align 8, !tbaa !213
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %0, ptr %i.d, align 8, !tbaa !1135
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.018.i = phi ptr [ %i.r, %bb.c ], [ %1, %bb.a ] ; 6 uses
  %.01517.i = phi ptr [ %i.s, %bb.c ], [ %4, %bb.a ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16 ; 3 uses
  store ptr %i.e, ptr %.01517.i, align 8, !tbaa !122
  %i.f = load ptr, ptr %.018.i, align 8, !tbaa !137 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.018.i, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = icmp ult i64 %i.j, 4
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  %i.m = tail call ptr @wmemcpy(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i64 noundef %i.l) #27 ; 0 uses
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.f, ptr %.01517.i, align 8, !tbaa !137
  %i.n = load i64, ptr %i.g, align 8, !tbaa !51
  store i64 %i.n, ptr %i.e, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !124
  store ptr %i.g, ptr %.018.i, align 8, !tbaa !137
  store i64 0, ptr %i.o, align 8, !tbaa !124
  store i32 0, ptr %i.g, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %.018.i, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit, label %.lr.ph.i, !llvm.loop !1134

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit: ; preds = %bb.c, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.s, %bb.c ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  store ptr %.015.lcssa.i, ptr %i.c, align 8, !tbaa !214
  %i.t = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 16 ; 3 uses
  store ptr %i.t, ptr %.015.lcssa.i, align 8, !tbaa !122
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !137  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !124  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.w, ptr %i.a, align 8, !tbaa !56
  %i.x = icmp ugt i64 %i.w, 3
  br i1 %i.x, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.015.lcssa.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.y, ptr %.015.lcssa.i, align 8, !tbaa !137
  %i.z = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  store i64 %i.z, ptr %i.t, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit
  %i.aa = phi i64 [ %i.z, %.noexc ], [ %i.w, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit ] ; 4 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !94
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ad = call ptr @wmemcpy(ptr noundef %i.ab, ptr noundef %i.u, i64 noundef %i.w) #27 ; 0 uses
  %.pre6.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !56
  %.pre7.i.i.i.i.i = load ptr, ptr %.015.lcssa.i, align 8, !tbaa !137
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.ae = phi ptr [ %i.ab, %._crit_edge.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %.pre7.i.i.i.i.i, %bb.e ]
  %i.af = phi i64 [ %i.aa, %._crit_edge.i.i.i.i.i ], [ %i.aa, %bb.d ], [ %.pre6.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  store i32 0, ptr %i.ah, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not16.i19 = icmp eq ptr %2, %3
  br i1 %.not16.i19, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit26, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %bb.h
  %.018.i21 = phi ptr [ %i.aw, %bb.h ], [ %2, %.lr.ph.i20.preheader ] ; 6 uses
  %.01517.i22 = phi ptr [ %i.ax, %bb.h ], [ %i.ai, %.lr.ph.i20.preheader ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 16 ; 3 uses
  store ptr %i.aj, ptr %.01517.i22, align 8, !tbaa !122
  %i.ak = load ptr, ptr %.018.i21, align 8, !tbaa !137 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.018.i21, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i23

bb.g:                                             ; preds = %.lr.ph.i20
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i21, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !124 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 4
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  %i.ar = call ptr @wmemcpy(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.al, i64 noundef %i.aq) #27 ; 0 uses
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %.lr.ph.i20
  store ptr %i.ak, ptr %.01517.i22, align 8, !tbaa !137
  %i.as = load i64, ptr %i.al, align 8, !tbaa !51
  store i64 %i.as, ptr %i.aj, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i23, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i21, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !124
  store ptr %i.al, ptr %.018.i21, align 8, !tbaa !137
  store i64 0, ptr %i.at, align 8, !tbaa !124
  store i32 0, ptr %i.al, align 8, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i21, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i22, i64 32
  %.not.i24 = icmp eq ptr %i.aw, %3
  br i1 %.not.i24, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit26, label %.lr.ph.i20, !llvm.loop !1134

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_SA_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit26: ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !213    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %.not2 = icmp eq ptr %i.b, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit
  %i.d = phi ptr [ %i.l, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit ], [ %i.c, %bb.a ]
  %i.e = phi ptr [ %i.n, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !51
  %i.j = shl i64 %i.i, 2
  %i.k = add i64 %i.j, 4
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.k) #29
  %.pre = load ptr, ptr %0, align 8, !tbaa !213
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !214
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i
  %i.l = phi ptr [ %.pre3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.m = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !213
  %.not = icmp eq ptr %i.n, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1136

._crit_edge:                                      ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 6 uses
  %i.c = sub i64 384307168202282325, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !205  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 384307168202282325)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 384307168202282325
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !72

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.471) #26
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = mul nuw nsw i64 %i.o, 24                 ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !130    ; 4 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %4 to i64
  invoke void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JS6_EEEEEvRT_T0_SE_SE_T1_mT2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.s, ptr noundef %2, ptr noundef %i.u, ptr noundef nonnull %i.r, i64 noundef %3, i64 %i.v)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %1, align 8, !tbaa !130
  %i.x = load i64, ptr %i.a, align 8, !tbaa !129
  %i.y = mul i64 %i.x, 24
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #27
  br label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mSD_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #27
  resume { ptr, i32 } %i.z

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mSD_mT_.exit: ; preds = %bb.g, %bb.h
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.aa, %i.ab
  store ptr %i.r, ptr %1, align 8, !tbaa !130
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !205
  %i.ae = add i64 %i.ad, %3
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !205
  store i64 %i.o, ptr %i.a, align 8, !tbaa !56
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ac
  store ptr %i.af, ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_NS0_3dtl20insert_emplace_proxyIS7_JS6_EEEEEvRT_T0_SE_SE_T1_mT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i21 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %7 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %.sroa.0.i.i.i.i.i19 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %8 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %9 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = inttoptr i64 %6 to ptr                   ; 7 uses
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i
  %.018.i = phi ptr [ %i.n, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %1, %bb.a ] ; 8 uses
  %.01517.i = phi ptr [ %i.o, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ], [ %4, %bb.a ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  store i8 1, ptr %.01517.i, align 4
  %i.b = load i8, ptr %.018.i, align 1, !tbaa !51
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, ptr noundef nonnull align 8 dereferenceable(24) %.018.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i, i64 24, i1 false), !tbaa.struct !138
  %i.d = load i64, ptr %.01517.i, align 8
  %i.e = and i64 %i.d, -2
  store i64 %i.e, ptr %.01517.i, align 8
  %i.f = load i64, ptr %.018.i, align 8
  %i.g = and i64 %i.f, -2
  store i64 %i.g, ptr %.01517.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i, ptr noundef nonnull align 4 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !14

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i, %bb.a
  %.015.lcssa.i = phi ptr [ %4, %bb.a ], [ %i.o, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  store i8 1, ptr %.015.lcssa.i, align 4
  %i.p = load i8, ptr %i.a, align 1, !tbaa !51
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i19, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i19)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.e:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.015.lcssa.i, i64 24, i1 false), !tbaa.struct !138
  %i.r = load i64, ptr %.015.lcssa.i, align 8
  %i.s = and i64 %i.r, -2
  store i64 %i.s, ptr %.015.lcssa.i, align 8
  %i.t = load i64, ptr %i.a, align 8
  %i.u = and i64 %i.t, -2
  store i64 %i.u, ptr %.015.lcssa.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !98
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.e, %bb.d
  %.not16.i22 = icmp eq ptr %2, %3
  br i1 %.not16.i22, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit29, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.015.lcssa.i, i64 %5
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26
  %.018.i24 = phi ptr [ %i.ao, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26 ], [ %2, %.lr.ph.i23.preheader ] ; 8 uses
  %.01517.i25 = phi ptr [ %i.ap, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26 ], [ %i.ab, %.lr.ph.i23.preheader ] ; 10 uses
  store i8 1, ptr %.01517.i25, align 4
  %i.ac = load i8, ptr %.018.i24, align 1, !tbaa !51
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i25, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01517.i25, ptr noundef nonnull align 8 dereferenceable(24) %.018.i24, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i24, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i21, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i21)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26

bb.g:                                             ; preds = %.lr.ph.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.01517.i25, i64 24, i1 false), !tbaa.struct !138
  %i.ae = load i64, ptr %.01517.i25, align 8
  %i.af = and i64 %i.ae, -2
  store i64 %i.af, ptr %.01517.i25, align 8
  %i.ag = load i64, ptr %.018.i24, align 8
  %i.ah = and i64 %i.ag, -2
  store i64 %i.ah, ptr %.01517.i25, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i24, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i25, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %.018.i24, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i25, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018.i24, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26: ; preds = %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i24, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i25, i64 24
  %.not.i27 = icmp eq ptr %i.ao, %3
  br i1 %.not.i27, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit29, label %.lr.ph.i23, !llvm.loop !14

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit29: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i26, %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %4 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !130, !nonnull !85, !noundef !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c ; 12 uses
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.e = load i64, ptr %i.b, align 8, !tbaa !128
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.b, align 8, !tbaa !128
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 6 uses
  store i8 1, ptr %i.d, align 4
  %i.l = load i8, ptr %i.k, align 4, !tbaa !51
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !138
  %i.n = load <2 x i64>, ptr %i.k, align 8
  %i.o = and <2 x i64> %i.n, <i64 -2, i64 -1>
  store <2 x i64> %i.o, ptr %i.d, align 8
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %i.s = load i64, ptr %i.b, align 8, !tbaa !128
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.b, align 8, !tbaa !128
  %i.u = add nsw i64 %i.j, -1                     ; 2 uses
  %.not9.i = icmp eq i64 %i.u, 0
  br i1 %.not9.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i
  %.012.i = phi ptr [ %i.w, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.d, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0611.i = phi i64 [ %i.z, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.u, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0710.i = phi ptr [ %i.v, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.k, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %i.v = getelementptr inbounds i8, ptr %.0710.i, i64 -24 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.012.i, i64 -24 ; 2 uses
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.preheader
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #30
  unreachable

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i: ; preds = %.lr.ph.i.preheader
  %i.z = add i64 %.0611.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader, !llvm.loop !15

_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit
  %.not.i.i14 = icmp eq ptr %1, %3
  br i1 %.not.i.i14, label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit
  %i.aa = load i8, ptr %3, align 1, !tbaa !51     ; 2 uses
  %i.ab = trunc i8 %i.aa to i1                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = select i1 %i.ab, ptr %i.ac, ptr %i.ae   ; 3 uses
  %i.ag = lshr i8 %i.aa, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i64, ptr %3, align 8
  %i.ak = lshr i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ak
  %i.am = select i1 %i.ab, ptr %i.ai, ptr %i.al   ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = ashr exact i64 %i.ap, 2                 ; 3 uses
  %i.ar = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aq)
  br i1 %i.ar, label %bb.h, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.as = load i8, ptr %1, align 1, !tbaa !51     ; 2 uses
  %i.at = trunc i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = lshr i8 %i.as, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i64, ptr %1, align 8
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %i.bd = select i1 %i.at, ptr %i.ax, ptr %i.bc
  store i32 0, ptr %i.bd, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.be = load i8, ptr %1, align 1, !tbaa !51
  %i.bf = trunc i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = select i1 %i.bf, ptr %i.bg, ptr %i.bi   ; 2 uses
  %i.bk = icmp eq ptr %i.am, %i.af
  br i1 %i.bk, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i
  %i.bl = tail call ptr @wmemcpy(ptr noundef %i.bj, ptr noundef %i.af, i64 noundef %i.aq) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i:     ; preds = %bb.i, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.ap
  store i32 0, ptr %i.bm, align 4, !tbaa !94
  %i.bn = load i8, ptr %1, align 8, !tbaa !51
  %i.bo = trunc i8 %i.bn to i1
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i
  %i.bp = trunc i64 %i.aq to i8
  %i.bq = shl i8 %i.bp, 1
  %i.br = or disjoint i8 %i.bq, 1
  store i8 %i.br, ptr %1, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.k:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i.i
  %i.bs = load i64, ptr %1, align 8
  %i.bt = ashr exact i64 %i.ap, 1
  %i.bu = and i64 %i.bs, 1
  %i.bv = or disjoint i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %1, align 8
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.k, %bb.j, %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !85, !noundef !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.d ; 17 uses
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !122
  %i.g = load ptr, ptr %3, align 8, !tbaa !137    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !124  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !56
  %i.j = icmp ugt i64 %i.i, 3
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !137
  %i.l = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  store i64 %i.l, ptr %i.f, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.b
  %i.m = phi i64 [ %i.l, %.noexc.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.k, %.noexc.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i32, ptr %i.g, align 4, !tbaa !94
  store i32 %i.o, ptr %i.n, align 4, !tbaa !94
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = call ptr @wmemcpy(ptr noundef %i.n, ptr noundef %i.g, i64 noundef %i.i) #27 ; 0 uses
  %.pre6.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !56
  %.pre7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !137
  br label %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit

_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.c, %bb.d
  %i.q = phi ptr [ %i.n, %._crit_edge.i.i.i.i.i ], [ %i.n, %bb.c ], [ %.pre7.i.i.i.i.i, %bb.d ]
  %i.r = phi i64 [ %i.m, %._crit_edge.i.i.i.i.i ], [ %i.m, %bb.c ], [ %.pre6.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !124
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  store i32 0, ptr %i.t, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.u = load i64, ptr %i.c, align 8, !tbaa !134
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.c, align 8, !tbaa !134
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.e to i64
  %i.y = sub i64 %i.x, %i.w
  %i.z = ashr exact i64 %i.y, 5
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !122
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !137 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds i8, ptr %i.e, i64 -24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !124 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 4
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  %i.aj = tail call ptr @wmemcpy(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, i64 noundef %i.ai) #27 ; 0 uses
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !137
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !51
  store i64 %i.ak, ptr %i.ab, align 8, !tbaa !51
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.al = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !124
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !124
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !137
  store i64 0, ptr %i.al, align 8, !tbaa !124
  store i32 0, ptr %i.ad, align 8, !tbaa !94
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !134
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !134
  %i.aq = add nsw i64 %i.z, -1                    ; 2 uses
  %.not8.i = icmp eq i64 %i.aq, 0
  br i1 %.not8.i, label %_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i
  %.011.i = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i ], [ %i.e, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit ] ; 5 uses
  %.0610.i = phi i64 [ %i.ar, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i ], [ %i.aq, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit ]
  %.079.i = phi ptr [ %i.as, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i ], [ %i.aa, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit ] ; 6 uses
  %i.ar = add i64 %.0610.i, -1                    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.079.i, i64 -32 ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %.011.i, i64 -32 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !137 ; 8 uses
  %i.av = getelementptr inbounds i8, ptr %.011.i, i64 -16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !137 ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %.079.i, i64 -16 ; 6 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i
  br i1 %i.az, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph.i
  br i1 %i.az, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i
  %i.ba = getelementptr inbounds i8, ptr %.079.i, i64 -24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !124 ; 4 uses
  %i.bc = icmp ult i64 %i.bb, 4
  tail call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.ax, align 4, !tbaa !94
  store i32 %i.bd, ptr %i.au, align 4, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.be = tail call ptr @wmemcpy(ptr noundef %i.au, ptr noundef %i.ax, i64 noundef %i.bb) #27 ; 0 uses
  %.pre.i.i = load i64, ptr %i.ba, align 8, !tbaa !124
  %.pre30.i.i = load ptr, ptr %i.at, align 8, !tbaa !137
  %.pre31.pre.i.i = load ptr, ptr %i.as, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.pre31.i.i = phi ptr [ %i.ax, %bb.g ], [ %.pre31.pre.i.i, %bb.i ], [ %i.ax, %bb.h ]
  %i.bf = phi ptr [ %i.au, %bb.g ], [ %.pre30.i.i, %bb.i ], [ %i.au, %bb.h ]
  %i.bg = phi i64 [ %i.bb, %bb.g ], [ %.pre.i.i, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.011.i, i64 -24
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !124
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  store i32 0, ptr %i.bi, align 4, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.bj = getelementptr inbounds i8, ptr %.011.i, i64 -24
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !137
  %i.bk = getelementptr inbounds i8, ptr %.079.i, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !124
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !124
  %i.bm = load i64, ptr %i.ay, align 8, !tbaa !51
  store i64 %i.bm, ptr %i.av, align 8, !tbaa !51
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !51
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !137
  %i.bo = getelementptr inbounds i8, ptr %.079.i, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !124
  %i.bq = getelementptr inbounds i8, ptr %.011.i, i64 -24
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !124
  %i.br = load i64, ptr %i.ay, align 8, !tbaa !51
  store i64 %i.br, ptr %i.av, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.au, ptr %i.as, align 8, !tbaa !137
  store i64 %i.bn, ptr %i.ay, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i
  %i.bs = phi ptr [ %.pre31.i.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i ], [ %i.au, %bb.j ], [ %i.ay, %bb.k ]
  %i.bt = getelementptr inbounds i8, ptr %.079.i, i64 -24
  store i64 0, ptr %i.bt, align 8, !tbaa !124
  store i32 0, ptr %i.bs, align 4, !tbaa !94
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit, label %.lr.ph.i, !llvm.loop !1137

_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit.i, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JS8_EEEvRS9_PT_DpOT0_.exit
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container15move_backward_nIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit, %_ZNK5boost9container3dtl17insert_copy_proxyINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %4 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %5 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !130, !nonnull !85, !noundef !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c ; 20 uses
  %.not = icmp eq ptr %i.d, %1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 4
  %i.e = load i8, ptr %3, align 1, !tbaa !51
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !138
  %i.g = load i64, ptr %i.d, align 8
  %i.h = and i64 %i.g, -2
  store i64 %i.h, ptr %i.d, align 8
  %i.i = load i64, ptr %3, align 8
  %i.j = and i64 %i.i, -2
  store i64 %i.j, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit

_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.c, %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !128
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.b, align 8, !tbaa !128
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit

bb.e:                                             ; preds = %bb.a
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 6 uses
  store i8 1, ptr %i.d, align 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !51
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !138
  %i.z = load <2 x i64>, ptr %i.w, align 8
  %i.aa = and <2 x i64> %i.z, <i64 -2, i64 -1>
  store <2 x i64> %i.aa, ptr %i.d, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !128
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.b, align 8, !tbaa !128
  %i.ag = add nsw i64 %i.v, -1                    ; 2 uses
  %.not9.i = icmp eq i64 %i.ag, 0
  br i1 %.not9.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i
  %.012.i = phi ptr [ %i.ai, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.d, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0611.i = phi i64 [ %i.al, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.ag, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %.0710.i = phi ptr [ %i.ah, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.w, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit ]
  %i.ah = getelementptr inbounds i8, ptr %.0710.i, i64 -24 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.012.i, i64 -24 ; 2 uses
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.preheader
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #30
  unreachable

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i: ; preds = %.lr.ph.i.preheader
  %i.al = add i64 %.0611.i, -1                    ; 2 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, label %.lr.ph.i.preheader, !llvm.loop !15

_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit
  %.not.i.i14 = icmp eq ptr %1, %3
  br i1 %.not.i.i14, label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit, label %bb.i, !prof !72

bb.i:                                             ; preds = %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #30
  unreachable

_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE17copy_n_and_updateIPS7_EEvRS8_T_m.exit: ; preds = %bb.i, %_ZN5boost9container15move_backward_nIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit, %_ZNK5boost9container3dtl17insert_move_proxyINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE33priv_shrink_to_fit_dynamic_bufferINS_11move_detail17integral_constantIjLj1EEEEEvT_PNS6_9enable_ifINS6_7is_sameIS9_S8_EENS6_13enable_if_natEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98
  %i.g = add nuw nsw i64 %i.d, 1                  ; 3 uses
  %i.h = icmp ugt i64 %i.c, 4611686018427387901
  br i1 %i.h, label %bb.b, label %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i, !prof !72

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container15throw_bad_allocEv() #26
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i: ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #31
          to label %bb.g unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #27 ; 0 uses
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.r = tail call ptr @wmemcpy(ptr noundef nonnull %i.j, ptr noundef %i.q, i64 noundef %i.g) #27 ; 0 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !97
  store i64 %i.g, ptr %i.e, align 8, !tbaa !98
  %i.s = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.s) #27
  br label %bb.h

.body:                                            ; preds = %bb.d
  %i.t = extractvalue { ptr, i32 } %i.n, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #27 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.body
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 16
  %.not9 = icmp eq i32 %i.a, 0
  %i.b = and i32 %1, 17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !72

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container17throw_logic_errorEPKc(ptr noundef nonnull @.str.454) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !56     ; 2 uses
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.d, label %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i, !prof !72

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9container15throw_bad_allocEv() #26
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i: ; preds = %bb.c
  %i.f = shl nuw nsw i64 %i.d, 2
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
          to label %_ZN5boost9container13new_allocatorIwE8allocateEm.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i, %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #27 ; 0 uses
  br i1 %.not9, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void @__cxa_end_catch()
  br label %_ZN5boost9container13new_allocatorIwE8allocateEm.exit

_ZN5boost9container13new_allocatorIwE8allocateEm.exit: ; preds = %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ %i.g, %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i ]
  store ptr null, ptr %4, align 8, !tbaa !173
end_hunk_1
